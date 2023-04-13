-- ESP Function
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/ESP_Lib.lua"))() --https://kiriot22.com/releases/ESP.lua
ESP:Toggle(true)

-- Variables
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer

-- ProximityPrompt Names ("Types")
local Dialog_PromptName = "Dialog" --Ancestor: workspace.NPCs / workspace.Interactables
local BloodHand_PromptName = "BloodHand" --Ancestor: workspace.Interactables
local Shop_PromptName = "Shop" --Ancestor: workspace.Interactables
local Crafting_PromptName = "Crafting" --Ancestor: workspace.Interactables
local Anvil_PromptName = "Anvil" --Ancestor: workspace.Interactables
local Infuser_PromptName = "Infuser" --Ancestor: workspace.Infusers
local Transfer_PromptName = "Transfer" --Ancestor: workspace.Interactables
local Dungeon_PromptName = "Dungeon" --Ancestor: workspace.Others
local VoidRift_PromptName = "VoidRift" --Ancestor: workspace.Interactables
local Shrine_PromptName = "Shrine" --Ancestor: workspace.Shrines

-- Enabled Booleans
ESP.Players_Enabled = false
ESP.Enemies_Enabled = false
ESP.NPCs_Enabled = false
ESP.BloodHands_Enabled = false
ESP.Shops_Enabled = false
ESP.Craftings_Enabled = false
ESP.Anvils_Enabled = false
ESP.Infusers_Enabled = false
ESP.Transfers_Enabled = false
ESP.Dungeons_Enabled = false
ESP.VoidRifts_Enabled = false
ESP.Shrines_Enabled = false

-- Settings Booleans
ESP.Players_Tracers = false
ESP.Players_Names = false
ESP.Players_Boxes = false
ESP.Players_Health = false

ESP.Enemies_Tracers = false
ESP.Enemies_Names = false
ESP.Enemies_Boxes = false
ESP.Enemies_Health = false


ESP.NPCs_Tracers = false
ESP.NPCs_Names = false
ESP.NPCs_Boxes = false


ESP.Items_Tracers = false
ESP.Items_Names = false
ESP.Items_Boxes = false


ESP.Shrines_Tracers = false
ESP.Shrines_Names = false
ESP.Shrines_Boxes = false


ESP.Infusers_Tracers = false
ESP.Infusers_Names = false
ESP.Infusers_Boxes = false


ESP.Dungeons_Tracers = false
ESP.Dungeons_Names = false
ESP.Dungeons_Boxes = false


ESP.VoidRifts_Tracers = false
ESP.VoidRifts_Names = false
ESP.VoidRifts_Boxes = false



-- UI Library
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/Finity_Lib.lua"))() --https://pastebin.com/raw/nB2byebL
local FinityWindow = Finity.new(DarkMode)
FinityWindow.ChangeToggleKey(KeybindCode or Enum.KeyCode.Period)

-- Category
local Categories = {};
Categories.Player = FinityWindow:Category("Player ESP");
Categories.Enemy = FinityWindow:Category("Enemy ESP");
Categories.NPC = FinityWindow:Category("NPC ESP");
Categories.Item = FinityWindow:Category("Item ESP");
Categories.Shrine = FinityWindow:Category("Shrine ESP");
Categories.Infuser = FinityWindow:Category("Infuser ESP");
Categories.Dungeon = FinityWindow:Category("Dungeon ESP");
Categories.VoidRift = FinityWindow:Category("VoidRift ESP");

-- Sectors
local Sectors = {};
Sectors.Player = {};
    Sectors.Player.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Player.Toggles = Categories.Player:Sector("Toggles");
    Sectors.Player.Info = Categories.Player:Sector("Info");
Sectors.Enemy = {};
    Sectors.Enemy.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Enemy.Toggles = Categories.Player:Sector("Toggles");
    Sectors.Enemy.Info = Categories.Player:Sector("Info");
Sectors.NPC = {};
    Sectors.NPC.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.NPC.Toggles = Categories.Player:Sector("Toggles");
    Sectors.NPC.Info = Categories.Player:Sector("Info");
Sectors.Item = {};
    Sectors.Item.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Item.Toggles = Categories.Player:Sector("Toggles");
    Sectors.Item.Info = Categories.Player:Sector("Info");
Sectors.Shrine = {};
    Sectors.Shrine.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Shrine.Toggles = Categories.Player:Sector("Toggles");
    Sectors.Shrine.Info = Categories.Player:Sector("Info");
Sectors.Infuser = {};
    Sectors.Infuser.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Infuser.Toggles = Categories.Player:Sector("Toggles");
    Sectors.Infuser.Info = Categories.Player:Sector("Info");
Sectors.Dungeon = {};
    Sectors.Dungeon.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Dungeon.Toggles = Categories.Player:Sector("Toggles");
    Sectors.Dungeon.Info = Categories.Player:Sector("Info");
Sectors.VoidRift = {};
    Sectors.VoidRift.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.VoidRift.Toggles = Categories.Player:Sector("Toggles");
    Sectors.VoidRift.Info = Categories.Player:Sector("Info");

-- ESP Settings
ESPSettings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Traces = State
end)
ESPSettings:Cheat("Checkbox", "Names", function(State)
    ESP.Names = State
end)
ESPSettings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Boxes = State
end)

-- ESP Toggles
ESPToggles:Cheat("Checkbox", "Players", function(State)
    ESP.Players = State
end)
ESPToggles:Cheat("Checkbox", "Enemies", function(State)
    ESP.Enemies = State
end)
ESPToggles:Cheat("Checkbox", "NPCs", function(State)
    ESP.NPCs = State
end)

-- ESP Info
ESPInfo:Cheat("Label", "Items show up as 'Purple'")
ESPInfo:Cheat("Label", "Players show up as 'White'")
ESPInfo:Cheat("Label", "NPCs show up as 'Lime'")
ESPInfo:Cheat("Label", "")
ESPInfo:Cheat("Label", "Normal Enemies show up as 'Red'")
ESPInfo:Cheat("Label", "Magical Enemies show up as 'Cyan'")
ESPInfo:Cheat("Label", "Legendary Enemies show up as 'Yellow'")
ESPInfo:Cheat("Label", "Corrupt Enemies show up as 'Lavender'")
ESPInfo:Cheat("Label", "Bloody Enemies show up as 'Maroon'")

-- Item ESP Info
ItemINFO:Cheat("Label", "Items out of range don't appear on list")

-- Script
--[[
    GAME INFO
        workspace.Interactables is for nearly everything you can press interact (E) with
        Players (Character models) are found under workspace
        workspace.NPCs is for Enemies only
        workspace.Shrines is for Shrines only
        workspace.Infusers is for Infusers only
]]

--Players
local function CharAdded(char)
    local p = plrs:GetPlayerFromCharacter(char)
    if not char:FindFirstChild("HumanoidRootPart") then
        local ev
        ev = char.ChildAdded:Connect(function(c)
            if c.Name == "HumanoidRootPart" then
                ev:Disconnect()
                ESP:Add(char, {
                    Name = p.Name,
                    Player = p,
                    PrimaryPart = c
                })
            end
        end)
    else
        ESP:Add(char, {
            Name = p.Name,
            Player = p,
            PrimaryPart = char.HumanoidRootPart,
            Color = ESP_Coloring.Players
        })
    end
end
local function PlayerAdded(p)
    p.CharacterAdded:Connect(CharAdded)
    if p.Character then
        coroutine.wrap(CharAdded)(p.Character)
    end
end
plrs.PlayerAdded:Connect(PlayerAdded)
for i,v in pairs(plrs:GetPlayers()) do
    if v ~= plr then
        PlayerAdded(v)
    end
end


while true do
    local npcs_folder = workspace:FindFirstChild("NPCS")
    local interactables_folder = workspace:FindFirstChild("Interactables")
    local shrines_folder = workspace:FindFirstChild("Shrines")
    
    if npcs_folder
    -- Get Enemies
    local npcs_children = workspace.NPCS:GetChildren()
    for i = 1, #npcs_children do
        local v = npcs_children[i]
        local model = v:FindFirstChildOfClass("Model")
        if model and model:FindFirstChild("HumanoidRootPart") and not model:FindFirstChild("EGG") then
            -- Add ESP
            ESP:Add(model.HumanoidRootPart,{
                Name = v.Name,
                Color = BrickColor.new(v:FindFirstChild("Legendary") and v.Legendary.Enabled and "Bright yellow" or v:FindFirstChild("Magical") and v.Magical.Enabled and "Cyan" or v:FindFirstChild("Corrupt") and v.Corrupt.Enabled and "Lavender" or v:FindFirstChild("Bloody") and v.Bloody.Enabled and "Maroon" or "Really red").Color,
                IsEnabled = "Enemies"
            })
            Instance.new("Part",model).Name = "EGG"
        end
    end
    wait()
    -- Get Items
    local interactables_children = workspace.Interactables:GetChildren()
    table.sort(interactables_children, function(a,b)
        return a.Name < b.Name
    end)
    for i = 1, #interactables_children do
        local v = interactables_children[i]
        local model = v:FindFirstChildOfClass("Model")
        if model and v:FindFirstChild("Dialog") and model:FindFirstChild("HumanoidRootPart") and not model:FindFirstChild("EGG") then
            -- Add ESP
            if ESP.NPCs then
                ESP:Add(v,{
                    Name = v.Name,
                    Color = BrickColor.new("Lime green").Color,
                    IsEnabled = "NPCs"
                })
                Instance.new("Part",model).Name = "EGG"
            end
        elseif model and not model:FindFirstChild("EGG") then
            -- Add ESP
            ESP:Add(v, {
                Name = v.Name,
                Color = BrickColor.new("Magenta").Color,
                IsEnabled = v.Name
            })
            ESP[v.Name] = false
            ItemESP:Cheat("Checkbox", v.Name, function(State)
                ESP[v.Name] = State
            end)
            -- Remember
            Instance.new("Part",model).Name = "EGG"
        end
    end
end
