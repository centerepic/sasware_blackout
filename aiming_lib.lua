local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    Camera = workspace.CurrentCamera
end)

local Aiming = {
    FOV = 60,
    NPCs = false,
    Players = true,
    Enabled = true,
    ShowFOV = true,
    AimTracer = true,
    DynamicFOV = true,
    FOVColor = Color3.fromRGB(255, 255, 255),
    AimTracerColor = Color3.fromRGB(255, 0, 0),
    CurrentTarget = nil
}

local InternalFOV = Aiming.FOV
local FOVCircle = Drawing.new("Circle")

FOVCircle.NumSides = 20
FOVCircle.Transparency = 1
FOVCircle.Thickness = 2
FOVCircle.Color = Aiming.FOVColor
FOVCircle.Filled = false

local FOVTracer = Drawing.new("Line")

FOVTracer.Thickness = 2

local function UpdateFOV()

    if Aiming.ShowFOV then
        if Aiming.DynamicFOV then
            InternalFOV = Aiming.FOV * (70 / Camera.FieldOfView)
        else
            InternalFOV = Aiming.FOV
        end
    
        FOVCircle.Visible = true
        FOVCircle.Radius = InternalFOV
        FOVCircle.Color = Aiming.FOVColor
        FOVCircle.Position = UserInputService:GetMouseLocation()
    else
        FOVCircle.Visible = false
    end

end

local function GetCharactersInViewport() : {{Character: Model, Position: Vector2}}
    local ToProcess = {}
    local CharactersOnScreen = {}

    if Aiming.Players then
        for _, Player in ipairs(Players:GetPlayers()) do
            if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                table.insert(ToProcess, Player.Character)
            end
        end
    end

    if Aiming.NPCs then
        for _, NPC in ipairs(workspace.NPCs.Hostile:GetChildren()) do
            if NPC:IsA("Model") and NPC:FindFirstChild("HumanoidRootPart") then
                table.insert(ToProcess, NPC)
            end
        end
    end

    for _, Character in ipairs(ToProcess) do
        local Position, OnScreen = Camera:WorldToViewportPoint(Character.HumanoidRootPart.Position)

        if OnScreen then
            table.insert(CharactersOnScreen, {
                Character = Character,
                Position = Vector2.new(Position.X, Position.Y)
            })
        end
    end

    return CharactersOnScreen
end

local function DistanceFromMouse(Position : Vector2) : number
    return (UserInputService:GetMouseLocation() - Position).Magnitude
end

local function GetPlayersInFOV() : {{Character: Model, Distance: number, Position: Vector2}}
    local Characters = GetCharactersInViewport()
    local PlayersInFOV = {}

    for _, Character in ipairs(Characters) do
        local Distance = DistanceFromMouse(Character.Position)
        if Distance <= InternalFOV then
            table.insert(PlayersInFOV, {
                Character = Character.Character,
                Distance = Distance,
                Position = Character.Position
            })
        end
    end

    return PlayersInFOV
end

local function GetClosestPlayer() : (Model, number, Vector2)
    local PlayersInFOV = GetPlayersInFOV()
    local ClosestPlayer = nil
    local ClosestDistance = math.huge
    local ClosestPosition = nil

    for _, Player in ipairs(PlayersInFOV) do
        if Player.Distance < ClosestDistance then
            ClosestPlayer = Player.Character
            ClosestPosition = Player.Position
            ClosestDistance = Player.Distance
        end
    end

    return ClosestPlayer, ClosestDistance, ClosestPosition
end

local Connection = RunService.RenderStepped:Connect(function()

    if Aiming.Enabled then
        UpdateFOV()
        local ClosestPlayer, Distance, Position = GetClosestPlayer()
        Aiming.CurrentTarget = ClosestPlayer
        if ClosestPlayer then
            FOVTracer.Visible = Aiming.AimTracer
            FOVTracer.From = UserInputService:GetMouseLocation()
            FOVTracer.To = Position
            FOVTracer.Color = Aiming.AimTracerColor
        else
            FOVTracer.Visible = false
        end
    else
        FOVCircle.Visible = false
        FOVTracer.Visible = false
        Aiming.CurrentTarget = nil
    end

end)

local function Unload()
    Connection:Disconnect()
    FOVCircle:Remove()
    FOVTracer:Remove()
end

Aiming.Unload = Unload

return Aiming
