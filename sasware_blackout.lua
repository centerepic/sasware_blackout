local Version = 0.2
local SubVersion = "b"
local Start = os.clock()
Unloaded = false

-- Check if player is kicked, and if they are, initialize the anti-ban
do
    local TeleportService = game:GetService("TeleportService")
    local CoreGui = game:GetService("CoreGui")
    local GuiService = game:GetService("GuiService")
    local MainPlaceId = 15432890326
    local FunnyStrings = {
        "sasware is sponsored by isis",
        "every line in this script is skidded",
        "blackout prerelease better",
        "rvvz is a skid",
        "detected in 3 cycles",
        "anticheat works",
        "buy sasware premium only 3 turkish lira",
        "you. are. PASTED!",
        "sashaa is a skid",
        "your ip has been logged, i am in your house",
        "sasware is sponsored by www.nsa.gov",
        "the voices are so loud",
        "sasware -> pasted",
        "kill them",
        "there is no chrome_e0Cqkan872 emoji"
    }

    local function CheckKick()
        if CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
            return true
        end
        return false
    end

    if CheckKick() then
        
        GuiService:ClearError()

        do
            -- Instances:

            local TeleportGui = Instance.new("ScreenGui")
            local MainFrame = Instance.new("Frame")
            local TextLabel = Instance.new("TextLabel")
            local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
            local Shine = Instance.new("ImageLabel")
            local UIGradient = Instance.new("UIGradient")
            local Lines = Instance.new("Frame")
            local _1 = Instance.new("Frame")
            local _2 = Instance.new("Frame")
            local _4 = Instance.new("Frame")
            local _3 = Instance.new("Frame")
            local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
            local Title = Instance.new("TextLabel")
            local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

            --Properties:

            TeleportGui.Name = "TeleportGui"
            TeleportGui.Parent = CoreGui
            TeleportGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            TeleportGui.IgnoreGuiInset = true
            TeleportGui.DisplayOrder = 999999

            MainFrame.Name = "MainFrame"
            MainFrame.Parent = TeleportGui
            MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            MainFrame.BorderSizePixel = 0
            MainFrame.Size = UDim2.new(1, 0, 1, 0)

            TextLabel.Parent = MainFrame
            TextLabel.AnchorPoint = Vector2.new(0.5, 0)
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderSizePixel = 0
            TextLabel.Position = UDim2.new(0.5, 0, 0.560000002, 0)
            TextLabel.Size = UDim2.new(0.200000003, 0, 0.0149999997, 0)
            TextLabel.Font = Enum.Font.GothamBlack
            TextLabel.Text = FunnyStrings[Random.new(Start):NextInteger(1, #FunnyStrings)]
            TextLabel.TextColor3 = Color3.fromRGB(255, 174, 61)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextWrapped = true

            UIAspectRatioConstraint.Parent = TextLabel
            UIAspectRatioConstraint.AspectRatio = 18.765

            Shine.Name = "Shine"
            Shine.Parent = MainFrame
            Shine.AnchorPoint = Vector2.new(0.5, 0.5)
            Shine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Shine.BackgroundTransparency = 1.000
            Shine.BorderSizePixel = 0
            Shine.Position = UDim2.new(0.5, 0, 0.5, 0)
            Shine.Size = UDim2.new(1.25, 0, 2, 0)
            Shine.ZIndex = 0
            Shine.Image = "rbxassetid://8843864860"
            Shine.ImageTransparency = 0.850

            UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(239, 19, 255)), ColorSequenceKeypoint.new(0.40, Color3.fromRGB(255, 35, 237)), ColorSequenceKeypoint.new(0.60, Color3.fromRGB(101, 74, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(144, 93, 255))}
            UIGradient.Rotation = 90
            UIGradient.Parent = Shine

            Lines.Name = "Lines"
            Lines.Parent = MainFrame
            Lines.AnchorPoint = Vector2.new(0.5, 0.5)
            Lines.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Lines.BackgroundTransparency = 1.000
            Lines.BorderSizePixel = 0
            Lines.Position = UDim2.new(0.5, 0, 0.5, 0)
            Lines.Size = UDim2.new(0.25, 0, 0.0829999968, 0)

            _1.Name = "1"
            _1.Parent = Lines
            _1.BackgroundColor3 = Color3.fromRGB(195, 90, 255)
            _1.BorderSizePixel = 0
            _1.Size = UDim2.new(0, 4, 0, 25)

            _2.Name = "2"
            _2.Parent = Lines
            _2.BackgroundColor3 = Color3.fromRGB(195, 90, 255)
            _2.BorderSizePixel = 0
            _2.Position = UDim2.new(0, 4, 0, 0)
            _2.Size = UDim2.new(0, 21, 0, 4)

            _4.Name = "4"
            _4.Parent = Lines
            _4.AnchorPoint = Vector2.new(1, 1)
            _4.BackgroundColor3 = Color3.fromRGB(195, 90, 255)
            _4.BorderSizePixel = 0
            _4.Position = UDim2.new(1, 0, 1, 0)
            _4.Size = UDim2.new(0, 4, 0, 25)

            _3.Name = "3"
            _3.Parent = Lines
            _3.AnchorPoint = Vector2.new(1, 1)
            _3.BackgroundColor3 = Color3.fromRGB(195, 90, 255)
            _3.BorderSizePixel = 0
            _3.Position = UDim2.new(1, -4, 1, 0)
            _3.Size = UDim2.new(0, 21, 0, 4)

            UIAspectRatioConstraint_2.Parent = Lines
            UIAspectRatioConstraint_2.AspectRatio = 4.239

            Title.Name = "Title"
            Title.Parent = MainFrame
            Title.AnchorPoint = Vector2.new(0.5, 0.5)
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.BorderSizePixel = 0
            Title.Position = UDim2.new(0.5, 0, 0.5, 0)
            Title.Size = UDim2.new(0.224999994, 0, 0.0610000007, 0)
            Title.Font = Enum.Font.GothamBlack
            Title.Text = "BYPASSING BAN..."
            Title.TextColor3 = Color3.fromRGB(195, 90, 255)
            Title.TextScaled = true
            Title.TextSize = 14.000
            Title.TextWrapped = true

            UIAspectRatioConstraint_3.Parent = Title
            UIAspectRatioConstraint_3.AspectRatio = 5.191

            TeleportService:SetTeleportGui(TeleportGui)

        end -- Fake teleport UI, sponsored by Sasware LLC

        TeleportService:Teleport(MainPlaceId)
        return
    end
end

-- Initalize constants

local function RoundVector3(Vector)
    return Vector3.new(math.floor(Vector.X), math.floor(Vector.Y), math.floor(Vector.Z))
end

-- local hookmetamethod_f = newcclosure(function(Object, Metamethod, Function)
--     local Metatable = assert(getrawmetatable(Object), ("bad argument #1 (%s does not have a metatable)"):format(tostring(typeof(Object))))
--     local Original = assert(rawget(Metatable, Metamethod), "bad argument #2 (metamethod doesn't exist)")
--     assert(type(Function) == "function", "bad argument #3 (function expected)")
    
--     return hookfunction(Original, Function)
-- end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CollectionService = game:GetService("CollectionService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local LocalPlayer = Players.LocalPlayer

local Repository = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(Repository .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(Repository .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(Repository .. 'addons/SaveManager.lua'))()

local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/centerepic/script-host/main/ESP_DistanceCheck.lua"))()
local VelocityFly = loadstring(game:HttpGet("https://raw.githubusercontent.com/centerepic/VelocityFly/main/VelocityFly.lua"))()
local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/centerepic/sasware_blackout/main/aiming_lib.lua"))()

Aiming.Enabled = false
Aiming.FOV = 60
Aiming.FOVColor = Color3.fromRGB(255, 255, 255)
Aiming.NPCs = true
Aiming.Players = true

local TeleportLocations = {
    ["Bunker Entrance [Outside]"] = Vector3.new(258, 35, 25),
    ["Bunker Entrance [Inside]"] = Vector3.new(152, 36, 25),
    ["Bunker Reactor Bridge"] = Vector3.new(-267, 28, 25),
    ["Bunker Wave Defense"] = Vector3.new(-104, -12, 30),
    ["Arena"] = Vector3.new(1156, -109, -77)
}

local Collection = {}
function Collect(Item : RBXScriptConnection | thread)
    table.insert(Collection, Item)
end

-- Map elements

local NPCs = workspace:WaitForChild("NPCs")
local Characters = workspace:WaitForChild("Chars")
local Terminals = workspace:WaitForChild("Terminals")
local FastCast = require(ReplicatedStorage.Mods.FastCast)

local Remotes = {
    MinigameResult = ReplicatedStorage.Events.Loot.MinigameResult,
    LootObject = ReplicatedStorage.Events.Loot.LootObject,
    Buy = ReplicatedStorage.Events.Stations.Buy,
    Minigame = ReplicatedStorage.Events.Loot.Minigame,
    Swing = ReplicatedStorage.MeleeStorage.Events.Swing,
    MeleeHit = ReplicatedStorage.MeleeStorage.Events.Hit
}

local Limbs = {
    "Head",
    "Torso"
}

-- Functions

local PreTeleportValue = nil
local function PreTeleport()
    if LocalPlayer.Character then
        PreTeleportValue = LocalPlayer.Character:GetPivot()
    end
end

local function Attribute(Instance : Instance, Name : string, Value : any)
    if Value == nil then
        return Instance:GetAttribute(Name)
    else
        Instance:SetAttribute(Name, Value)
    end
end

local function GetData(Player : Player, GetCharacterData : boolean)
    local PlayerData = {
        Reputation = Attribute(Player, "Reputation"),
        Cash = Attribute(Player, "Cash") or 0,
        Level = Attribute(Player, "Level") or 1,
        Bounty = Attribute(Player, "Bounty") or 0,
        Valuables = Attribute(Player, "Valuables") or 0,
        Combat = Attribute(Player, "InDanger") or false,
    }

    if GetCharacterData and Player:GetAttribute("LoadedCharacterData") == true then -- If the player has spawned in from the menu
        
        local Character = Player.Character
        if Character then
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            if Humanoid then

                PlayerData.Health = Humanoid.Health or 0
                PlayerData.MaxHealth = Humanoid.MaxHealth or 0
                PlayerData.Downed = Attribute(Character, "Downed") or false

            end
        else
            PlayerData.NoCharacter = true
        end

    end

    return PlayerData
end

local function GetClosest(Instances : {Model | BasePart}, Position : Vector3)
    local Closest = nil
    local ClosestDistance = math.huge

    for _, Object in ipairs(Instances) do
        local InstancePosition = Object:GetPivot().Position
        local Distance = (InstancePosition - Position).Magnitude
        if Distance < ClosestDistance then
            Closest = Object
            ClosestDistance = Distance
        end
    end

    return Closest, ClosestDistance
end

local function GetWithinRange(Instances : {Model | BasePart}, Position : Vector3, Range : number)
    local Objects = {}

    for _, Object in ipairs(Instances) do
        local InstancePosition = Object:GetPivot().Position
        local Distance = (InstancePosition - Position).Magnitude
        if Distance <= Range then
            table.insert(Objects, Object)
        end
    end

    return Objects
end

local function Unlock(Container : Model)

end

local function RestoreConnections(Event : RBXScriptSignal)
    pcall(function()
        for _, Connection in next, getconnections(Event) do
            Connection:Enable()
        end
    end)
end

-- Initialize coroutines, functions, connections, etc.

local Functions = {
    AutoRevive = function()
        if LocalPlayer.Character:GetAttribute("Downed") == true then
            local Stats = GetData(LocalPlayer, false)
            local Reputation = Stats.Reputation
            local Faction = nil

            if Reputation > 0 then
                Faction = "Rebel"
            elseif Reputation < 0 then
                Faction = "Vulture"
            else
                Library:Notify("Auto-Revive | You have no faction, cannot auto-revive.")
            end

            if Faction ~= nil then

                PreTeleport()

                if Faction == "Vulture" then
                    LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(1348, 76, 29)))
                elseif Faction == "Rebel" then
                    LocalPlayer.Character:PivotTo(CFrame.new(Vector3.new(403, 36, 671)))
                end

                Library:Notify("Auto-Revive | Initializing, please wait...")

                task.wait(1.5)

                local FriendlyNPCs = {}

                for _, NPC in ipairs(NPCs.Hostile:GetChildren()) do
                    if NPC:GetAttribute("Faction") == Faction then
                        table.insert(FriendlyNPCs, NPC)
                    end
                end

                local Closest, _ = GetClosest(FriendlyNPCs, LocalPlayer.Character:GetPivot().Position)

                LocalPlayer.Character:PivotTo(Closest:GetPivot())
            end     
        end
    end
}

Functions.GuiHooks = function()
    local Gui = LocalPlayer:WaitForChild("PlayerGui")
    local MainGui = Gui:WaitForChild("MainGui")
    local Minimap = MainGui:WaitForChild("Minimap")

    do
        local NoSignal = Minimap:WaitForChild("NoSignal")
        local MapFrame = Minimap:WaitForChild("MapFrame")

        Collect(NoSignal:GetPropertyChangedSignal("Visible"):Connect(function()
            if NoSignal.Visible and Toggles.AlwaysMap.Value then
                NoSignal.Visible = false
            end
        end))

        Collect(MapFrame:GetPropertyChangedSignal("Visible"):Connect(function()
            if (not MapFrame.Visible) and Toggles.AlwaysMap.Value then
                MapFrame.Visible = true
            end
        end))
    end
end

Functions.CharacterAdded = function(Character)
    Collect(Character:GetAttributeChangedSignal("Downed"):Connect(function()
        if Toggles.AutoRevive.Value then
            Functions.AutoRevive()
        end

        if Toggles.AntiDown.Value then
            task.wait()
            Character:SetAttribute("Downed", false)
        end
    end))

    Collect(RunService.Heartbeat:Connect(function()
        if Toggles.Noclip and Toggles.Noclip.Value == true then
            for _, Object in ipairs(Character:GetDescendants()) do
                if Object:IsA("BasePart") then
                    Object.CanCollide = false
                end
            end
        end
    end))

    Functions.GuiHooks()
end

Functions.GotoNearestMerchant = function()
    PreTeleport()
    local Merchants = {}
    for _, NPC in next, NPCs.Other:GetChildren() do
        if NPC.Name == "Merchant" then
            table.insert(Merchants, NPC)
        end
    end

    local Closest, _ = GetClosest(Merchants, LocalPlayer.Character:GetPivot().Position)
    LocalPlayer.Character:PivotTo(Closest:GetPivot() + Closest.PrimaryPart.CFrame.LookVector.Unit * 3)
end

Functions.GotoNearestBroker = function()
    PreTeleport()
    local Brokers = {}
    for _, NPC in next, NPCs.Other:GetChildren() do
        if NPC.Name == "Broker" then
            table.insert(Brokers, NPC)
        end
    end

    local Closest, _ = GetClosest(Brokers, LocalPlayer.Character:GetPivot().Position)
    LocalPlayer.Character:PivotTo(Closest:GetPivot() + Closest.PrimaryPart.CFrame.LookVector.Unit * 3)
end

Functions.GotoNearestTerminal = function()
    PreTeleport()
    local Closest, _ = GetClosest(Terminals:GetChildren(), LocalPlayer.Character:GetPivot().Position)
    LocalPlayer.Character:PivotTo(Closest.CFrame + Closest.CFrame.RightVector.Unit * -3)
end

Functions.UndoLastTeleport = function()
    if PreTeleportValue then
        LocalPlayer.Character:PivotTo(PreTeleportValue)
    else
        Library:Notify("Undo Teleport | No previous teleport to undo.")
    end
end

local BlockedEvents = {}

Collect(Remotes.LootObject.OnClientEvent:Connect(function(LootTable : Folder)
    if Toggles.AutoLootEnabled.Value then
        if Toggles.TakeValuables.Value then
            Remotes.LootObject:FireServer(LootTable, "Valuables")
        end

        if Toggles.TakeCash.Value then
            Remotes.LootObject:FireServer(LootTable, "Cash")
        end
    end
end))

Collect(ProximityPromptService.PromptButtonHoldBegan:Connect(function(ProximityPrompt : ProximityPrompt)
    if Toggles.InstantProximityPrompt.Value then
        fireproximityprompt(ProximityPrompt)
    end
end))

Collect(Remotes.Minigame.OnClientEvent:Connect(function(Minigame : Instance)
    if Toggles.AutoMinigame.Value then
        Remotes.MinigameResult:FireServer(Minigame, true)
    end
end))

local EventBlockerCoroutine = coroutine.create(function()
    while task.wait() do
        for _, Event in next, BlockedEvents do
            pcall(function()
                for _, Connection in next, getconnections(Event) do
                    if not isexecutorclosure(Connection.Function) then
                        Connection:Disable()
                    end
                end
            end)
        end
    end
end)
Collect(EventBlockerCoroutine)
coroutine.resume(EventBlockerCoroutine)

local KillAuraCoroutine = coroutine.create(function()
    while task.wait(.5) do
        if Toggles.KillAuraEnabled.Value and LocalPlayer.Character then
            if not (LocalPlayer.Character:FindFirstChild("ServerMeleeModel")) then
                continue
            end

            local Range = Options.KillAuraRange.Value
            local TargetPart = Options.KillAuraParts.Value

            local TargetNPCs = Toggles.KillAuraNPCs.Value
            local TargetPlayers = Toggles.KillAuraPlayers.Value

            if TargetPlayers then

                local FilteredPlayers = {}

                for _, Player in ipairs(Characters:GetChildren()) do
                    if not Player:GetAttribute("Downed") then
                        table.insert(FilteredPlayers, Player)
                    end
                end

                local Closest, ClosestRange = GetClosest(FilteredPlayers, LocalPlayer.Character:GetPivot().Position)
                if Closest and ClosestRange <= Range then
                    
                    local Limb = Closest:FindFirstChild(TargetPart)
                    if Limb then
                        local Result = Remotes.Swing:InvokeServer()

                        if Result then
                            task.wait(Result.Delay or 0.25)
                            Remotes.MeleeHit:FireServer(Limb, Limb.Position)
                        end
                    end

                    continue

                end
            end

            if TargetNPCs then

                local FilteredNPCs = {}

                for _, NPC in ipairs(NPCs.Hostile:GetChildren()) do
                    if not NPC:GetAttribute("Downed") then
                        table.insert(FilteredNPCs, NPC)
                    end
                end

                local Arena = workspace.Arena
                for _, Child in next, Arena:GetChildren() do
                    if Child:FindFirstChildOfClass("Humanoid") and not Child:GetAttribute("Downed") then
                        table.insert(FilteredNPCs, Child)
                    end
                end

                local Closest, ClosestRange = GetClosest(FilteredNPCs, LocalPlayer.Character:GetPivot().Position)
                if Closest and ClosestRange <= Range then
                    
                    local Limb = Closest:FindFirstChild(TargetPart)
                    if Limb then
                        local Result = Remotes.Swing:InvokeServer()

                        if Result then
                            task.wait(Result.Delay or 0.25)
                            Remotes.MeleeHit:FireServer(Limb, Limb.Position)
                        end
                    end
                end
            end
        end
    end
end)
Collect(KillAuraCoroutine)
coroutine.resume(KillAuraCoroutine)

Collect(LocalPlayer.CharacterAdded:Connect(Functions.CharacterAdded))

-- Initialize UI

local Window = Library:CreateWindow({
    Title = 'sasware | Blackout | ' .. tostring(Version) .. SubVersion,
    Center = true,
    AutoShow = true,
})

local Tabs = {
    Main = Window:AddTab('Main'),
    Combat = Window:AddTab('Combat'),
    Visuals = Window:AddTab('Visuals'),
    UISettings = Window:AddTab('UI Settings')
}

do
    local TeleportsGroupBox = Tabs.Main:AddRightGroupbox('Teleports')
    local CharacterGroupBox = Tabs.Main:AddLeftGroupbox('Character')
    local AssistanceGroupBox = Tabs.Main:AddLeftGroupbox('Assistance')

    TeleportsGroupBox:AddButton('Undo Last Teleport', Functions.UndoLastTeleport)
    TeleportsGroupBox:AddDivider()
    TeleportsGroupBox:AddButton('Nearest Merchant', Functions.GotoNearestMerchant)
    TeleportsGroupBox:AddButton('Nearest Broker', Functions.GotoNearestBroker)
    TeleportsGroupBox:AddButton('Nearest Terminal', Functions.GotoNearestTerminal)

    CharacterGroupBox:AddToggle('AntiDown', {
        Text = 'No Downed [!]',
        Default = false,
        Tooltip = 'Prevents you being downed, you will still bleed out.'
    })

    CharacterGroupBox:AddToggle('NoFall', {
        Text = 'No Fall Damage',
        Default = false,
        Tooltip = 'Prevents you taking fall damage.'
    })

    CharacterGroupBox:AddToggle('NoRagdoll', {
        Text = 'No Ragdoll',
        Default = false,
        Tooltip = 'Prevents you from ragdolling.'
    })

    CharacterGroupBox:AddToggle('Flight', {
        Text = 'Flight',
        Default = false,
        Tooltip = 'Enables flight.',
        Callback = function(Value)
            VelocityFly:Toggle(Value)
        end
    })

    CharacterGroupBox:AddSlider('FlightSpeed', {
        Text = 'Flight Speed',
        Default = 1,
        Min = 1,
        Max = 10,
        Rounding = 0,
        Compact = false
    })

    CharacterGroupBox:AddToggle('Noclip' , {
        Text = 'Noclip',
        Default = false,
        Tooltip = 'Enables noclip.',
        Callback = function(Value)
            if not Value then
                for _, Limb in ipairs(Limbs) do
                    LocalPlayer.Character:FindFirstChild(Limb).CanCollide = true
                end
            end
        end
    })

    Options.FlightSpeed:OnChanged(function()
        VelocityFly.Speed = Options.FlightSpeed.Value
    end)

    CharacterGroupBox:AddToggle('AutoRevive', {
        Text = 'Auto Revive [!]',
        Default = false,
        Tooltip = 'Teleports you to a friendly NPC when downed.'
    })

    AssistanceGroupBox:AddToggle('InstantProximityPrompt', {
        Text = 'Instant Interact',
        Default = false,
        Tooltip = 'Makes all proximityprompts instant.'
    })
    
    AssistanceGroupBox:AddDivider()

    AssistanceGroupBox:AddToggle('AutoMinigame', {
        Text = 'Auto-Minigame',
        Default = false,
        Tooltip = 'Automatically complete minigames.',
        Callback = function(Value)
            if Value then
                BlockedEvents["Minigame"] = Remotes.Minigame.OnClientEvent
            else
                BlockedEvents["Minigame"] = nil
                RestoreConnections(Remotes.Minigame.OnClientEvent)
            end
        end
    })

    AssistanceGroupBox:AddDivider()

    AssistanceGroupBox:AddToggle('AutoLootEnabled', {
        Text = 'Auto-Loot',
        Default = false,
        Tooltip = 'Automatically loot items when opened.'
    })

    AssistanceGroupBox:AddToggle('TakeValuables', {
        Text = 'Take Valuables',
        Default = true,
        Tooltip = 'Automatically take valuables.'
    })

    AssistanceGroupBox:AddToggle('TakeCash', {
        Text = 'Take Cash',
        Default = true,
        Tooltip = 'Automatically take cash.'
    })
end -- Main tab

do
    local KillAuraGroupBox = Tabs.Combat:AddRightGroupbox('Kill-Aura')
    KillAuraGroupBox:AddToggle('KillAuraEnabled', {
        Text = 'Enabled',
        Default = false,
        Tooltip = 'Toggles the kill-aura.'
    })

    KillAuraGroupBox:AddSlider('KillAuraRange', {
        Text = 'Range',
        Default = 7,
        Min = 1,
        Max = 12,
        Rounding = 1,
        Compact = false
    })

    KillAuraGroupBox:AddDropdown('KillAuraParts', {
        Values = { 'Head', 'Torso' },
        Default = 1,
        Multi = false,
        Text = 'Target part(s)',
        Tooltip = 'Select parts that the killaura will target',
    })

    KillAuraGroupBox:AddToggle('KillAuraNPCs', {
        Text = 'NPCs',
        Default = true,
        Tooltip = 'Targets NPCs'
    })

    KillAuraGroupBox:AddToggle('KillAuraPlayers', {
        Text = 'Players',
        Default = false,
        Tooltip = 'Targets Players'
    })

    local GunModsGroupBox = Tabs.Combat:AddLeftGroupbox('Gun Modifications')

    GunModsGroupBox:AddToggle('InstantBulletTravel', {
        Text = 'Instant Bullet Travel',
        Default = false,
        Tooltip = 'Makes bullets travel instantly.'
    })

    GunModsGroupBox:AddDivider()

    GunModsGroupBox:AddToggle('SilentAimEnabled', {
        Text = 'Silent Aim',
        Default = false,
        Tooltip = 'Toggles the silent-aim.',
        Callback = function(Value)
            Aiming.Enabled = Value
        end
    })
    
    GunModsGroupBox:AddSlider('SilentAimFOV', {
        Text = 'FOV',
        Default = 60,
        Min = 20,
        Max = 180,
        Rounding = 0,
        Compact = false,
        Callback = function(Value)
            Aiming.FOV = Value
        end
    })

    GunModsGroupBox:AddLabel('FOV Color'):AddColorPicker('FOVColor', {
        Default = Color3.new(1, 1, 1),
        Title = 'FOV Color',
        Transparency = nil,
    
        Callback = function(Value)
            Aiming.FOVColor = Value
        end
    })

    GunModsGroupBox:AddLabel('Tracer Color'):AddColorPicker('TracerColor', {
        Default = Color3.new(1, 0, 0),
        Title = 'FOV Color',
        Transparency = nil,
    
        Callback = function(Value)
            Aiming.AimTracerColor = Value
        end
    })

    GunModsGroupBox:AddDropdown('SilentAimParts', {
        Values = { 'Head', 'Torso' },
        Default = 1,
        Multi = false,
        Text = 'Target part',
        Tooltip = 'Select parts that the silent-aim will target',
    })

    GunModsGroupBox:AddToggle('SilentAimNPCs', {
        Text = 'NPCs',
        Default = true,
        Tooltip = 'Targets NPCs',
        Callback = function(Value)
            Aiming.NPCs = Value
        end
    })

    GunModsGroupBox:AddToggle('SilentAimPlayers', {
        Text = 'Players',
        Default = true,
        Tooltip = 'Targets Players',
        Callback = function(Value)
            Aiming.Players = Value
        end
    })

end -- Combat tab

do
    local VisualModificationsGroupBox = Tabs.Visuals:AddLeftGroupbox('Modifications')
    local ESPGroupBox = Tabs.Visuals:AddRightGroupbox('ESP')

    VisualModificationsGroupBox:AddToggle('AlwaysMap', {
        Text = 'Map always enabled',
        Default = false,
        Tooltip = 'Always show the map.',
        Callback = function(Value)
            if Value then
                LocalPlayer.PlayerGui.MainGui.Minimap.NoSignal.Visible = false
                LocalPlayer.PlayerGui.MainGui.Minimap.MapFrame.Visible = true
            else
                if LocalPlayer.PlayerGui.MainGui.Minimap.Edge.ImageColor3 ~= Color3.fromRGB(101, 255, 84) then
                    LocalPlayer.PlayerGui.MainGui.Minimap.NoSignal.Visible = true
                    LocalPlayer.PlayerGui.MainGui.Minimap.MapFrame.Visible = false
                end
            end
        end
    })
end

local function Unload()
    Library:Unload()
    Aiming.Unload()

    VelocityFly:Toggle(false)

    for _, Item in ipairs(Collection) do

        if typeof(Item) == 'RBXScriptConnection' then
            Item:Disconnect()
        end

        if type(Item) == 'thread' then
            coroutine.close(Item)
        end

    end

    for _, Event in next, BlockedEvents do
        RestoreConnections(Event)
    end

    for _, Limb in ipairs(Limbs) do
        LocalPlayer.Character:FindFirstChild(Limb).CanCollide = true
    end

    Unloaded = true
end

if LocalPlayer.Character then
    Functions.CharacterAdded(LocalPlayer.Character)
end

local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)

    if not Unloaded then
        if not checkcaller() then
            local Args = {...}
            local Method = getnamecallmethod()
            
            if Method == "FireServer" then
                if self.Name == "Damage" then
                    if Toggles.NoFall.Value or Toggles.Flight.Value then
                        if Args[1] ~= 1000 then -- Resetting does 1000 damage, so we ignore that
                            return
                        end
                    end
                elseif self.Name == "Ragdoll" then
                    if Toggles.NoRagdoll.Value or Toggles.Flight.Value then
                        return
                    end
                end
            end
        end
    end

    return OldNamecall(self, ...)
end)

local OldFire; OldFire = hookfunction(FastCast.Fire, function( ... )

    if not Unloaded then
        local Args = {...}
        local Caller = getcallingscript()

        if tostring(Caller) == "GunHandler" then

            if Toggles.InstantBulletTravel.Value then
                Args[4] = 90000
            end

            if Toggles.SilentAimEnabled.Value then
                if Aiming.CurrentTarget then
                    -- Set args[3] to direction from args[2] to Aiming.CurrentTarget.Head.Position
                    Args[3] = (Aiming.CurrentTarget[Options.SilentAimParts.Value].Position - Args[2])
                end
            end

            return OldFire(unpack(Args))
        end
    end

    return OldFire(...)
end)

local MenuGroup = Tabs.UISettings:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', Unload)

Collect(RunService.RenderStepped:Connect(function()
    Library:SetWatermark('Current connections: ' .. #Collection)
end))

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightControl', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder('sasware_blackout')
SaveManager:SetFolder('sasware_blackout/main')

SaveManager:BuildConfigSection(Tabs.UISettings)

ThemeManager:ApplyToTab(Tabs.UISettings)