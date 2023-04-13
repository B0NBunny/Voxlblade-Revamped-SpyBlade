-- ESP Function
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/ESP_Lib.lua", true))() --https://kiriot22.com/releases/ESP.lua
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
ESP.Player_Enabled = false
ESP.Enemy_Enabled = false
ESP.NPC_Enabled = false
ESP.BloodHand_Enabled = false
ESP.Shop_Enabled = false
ESP.Crafting_Enabled = false
ESP.Anvil_Enabled = false
ESP.Infuser_Enabled = false
ESP.Transfer_Enabled = false
ESP.Dungeon_Enabled = false
ESP.VoidRift_Enabled = false
ESP.Shrine_Enabled = false

-- Settings Booleans
ESP.Player_Boxes = false
ESP.Player_Names = false
ESP.Player_Distances = false
ESP.Player_Tracers = false
ESP.Player_Healths = false

ESP.Enemy_Boxes = false
ESP.Enemy_Names = false
ESP.Enemy_Distances = false
ESP.Enemy_Tracers = false
ESP.Enemy_Healths = false

ESP.NPC_Boxes = false
ESP.NPC_Names = false
ESP.NPC_Distances = false
ESP.NPC_Tracers = false

ESP.BloodHand_Boxes = false
ESP.BloodHand_Names = false
ESP.BloodHand_Distances = false
ESP.BloodHand_Tracers = false

ESP.Shop_Boxes = false
ESP.Shop_Names = false
ESP.Shop_Distances = false
ESP.Shop_Tracers = false

ESP.Crafting_Boxes = false
ESP.Crafting_Names = false
ESP.Crafting_Distances = false
ESP.Crafting_Tracers = false

ESP.Anvil_Boxes = false
ESP.Anvil_Names = false
ESP.Anvil_Distances = false
ESP.Anvil_Tracers = false

ESP.Infuser_Boxes = false
ESP.Infuser_Names = false
ESP.Infuser_Distances = false
ESP.Infuser_Tracers = false

ESP.Transfer_Boxes = false
ESP.Transfer_Names = false
ESP.Transfer_Distances = false
ESP.Transfer_Tracers = false

ESP.Dungeon_Boxes = false
ESP.Dungeon_Names = false
ESP.Dungeon_Distances = false
ESP.Dungeon_Tracers = false

ESP.VoidRift_Boxes = false
ESP.VoidRift_Names = false
ESP.VoidRift_Distances = false
ESP.VoidRift_Tracers = false

ESP.Shrine_Boxes = false
ESP.Shrine_Names = false
ESP.Shrine_Distances = false
ESP.Shrine_Tracers = false

-- UI Library
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/Finity_Lib.lua", true))() --https://pastebin.com/raw/nB2byebL
local FinityWindow = Finity.new(DarkMode)
FinityWindow.ChangeToggleKey(KeybindCode or Enum.KeyCode.Period)

local CreditsCategory = FinityWindow:Category("Credits");
local CreditsSector = CreditsCategory:Sector("Credits");
CreditsSector:Cheat("Label", "Made by: CatOverEdge")

-- Category
local Categories = {};
Categories.Player = FinityWindow:Category("Player ESP");
Categories.Enemy = FinityWindow:Category("Enemy ESP");
Categories.NPC = FinityWindow:Category("NPC ESP");
Categories.BloodHand = FinityWindow:Category("BloodHand ESP");
Categories.Shop = FinityWindow:Category("Shop ESP");
Categories.Crafting = FinityWindow:Category("Crafting ESP");
Categories.Anvil = FinityWindow:Category("Anvil ESP");
Categories.Infuser = FinityWindow:Category("Infuser ESP");
Categories.Transfer = FinityWindow:Category("Transfer ESP");
Categories.Dungeon = FinityWindow:Category("Dungeon ESP");
Categories.VoidRift = FinityWindow:Category("VoidRift ESP");
Categories.Shrine = FinityWindow:Category("Shrine ESP");

-- Sectors
local Sectors = {};
Sectors.Player = {};
    Sectors.Player.Settings = Categories.Player:Sector("ESP Settings");
    Sectors.Player.Toggles = Categories.Player:Sector("Toggles");
Sectors.Enemy = {};
    Sectors.Enemy.Settings = Categories.Enemy:Sector("ESP Settings");
    Sectors.Enemy.Toggles = Categories.Enemy:Sector("Toggles");
Sectors.NPC = {};
    Sectors.NPC.Settings = Categories.NPC:Sector("ESP Settings");
    Sectors.NPC.Toggles = Categories.NPC:Sector("Toggles");
Sectors.BloodHand = {};
    Sectors.BloodHand.Settings = Categories.BloodHand:Sector("ESP Settings");
    Sectors.BloodHand.Toggles = Categories.BloodHand:Sector("Toggles");
Sectors.Shop = {};
    Sectors.Shop.Settings = Categories.Shop:Sector("ESP Settings");
    Sectors.Shop.Toggles = Categories.Shop:Sector("Toggles");
Sectors.Crafting = {};
    Sectors.Crafting.Settings = Categories.Crafting:Sector("ESP Settings");
    Sectors.Crafting.Toggles = Categories.Crafting:Sector("Toggles");
Sectors.Anvil = {};
    Sectors.Anvil.Settings = Categories.Anvil:Sector("ESP Settings");
    Sectors.Anvil.Toggles = Categories.Anvil:Sector("Toggles");
Sectors.Infuser = {};
    Sectors.Infuser.Settings = Categories.Infuser:Sector("ESP Settings");
    Sectors.Infuser.Toggles = Categories.Infuser:Sector("Toggles");
Sectors.Transfer = {};
    Sectors.Transfer.Settings = Categories.Transfer:Sector("ESP Settings");
    Sectors.Transfer.Toggles = Categories.Transfer:Sector("Toggles");
Sectors.Dungeon = {};
    Sectors.Dungeon.Settings = Categories.Dungeon:Sector("ESP Settings");
    Sectors.Dungeon.Toggles = Categories.Dungeon:Sector("Toggles");
Sectors.VoidRift = {};
    Sectors.VoidRift.Settings = Categories.VoidRift:Sector("ESP Settings");
    Sectors.VoidRift.Toggles = Categories.VoidRift:Sector("Toggles");
Sectors.Shrine = {};
    Sectors.Shrine.Settings = Categories.Shrine:Sector("ESP Settings");
    Sectors.Shrine.Toggles = Categories.Shrine:Sector("Toggles");

-- Player ESP Settings
Sectors.Player.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Player_Boxes = State
end)
Sectors.Player.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Player_Names = State
end)
Sectors.Player.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Player_Distances = State
end)
Sectors.Player.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Player_Tracers = State
end)
Sectors.Player.Settings:Cheat("Checkbox", "Health", function(State)
    ESP.Player_Healths = State
end)
-- Player ESP Toggles
Sectors.Player.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Player_Enabled = State
end)

-- Enemy ESP Settings
Sectors.Enemy.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Enemy_Boxes = State
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Enemy_Names = State
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Enemy_Distances = State
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Enemy_Tracers = State
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Health", function(State)
    ESP.Enemy_Healths = State
end)
-- Enemy ESP Toggles
Sectors.Enemy.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Enemy_Enabled = State
end)
    
-- NPC ESP Settings
Sectors.NPC.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.NPC_Boxes = State
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.NPC_Names = State
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.NPC_Distances = State
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.NPC_Tracers = State
end)
-- NPC ESP Toggles
Sectors.NPC.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.NPC_Enabled = State
end)

-- BloodHand ESP Settings
Sectors.BloodHand.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.BloodHand_Boxes = State
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.BloodHand_Names = State
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.BloodHand_Distances = State
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.BloodHand_Tracers = State
end)
-- BloodHand ESP Toggles
Sectors.BloodHand.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.BloodHand_Enabled = State
end)
    
-- Shop ESP Settings
Sectors.Shop.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Shop_Boxes = State
end)
Sectors.Shop.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Shop_Names = State
end)
Sectors.Shop.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Shop_Distances = State
end)
Sectors.Shop.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Shop_Tracers = State
end)
-- Shop ESP Toggles
Sectors.Shop.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Shop_Enabled = State
end)
    
-- Crafting ESP Settings
Sectors.Crafting.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Crafting_Boxes = State
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Crafting_Names = State
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Crafting_Distances = State
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Crafting_Tracers = State
end)
-- Crafting ESP Toggles
Sectors.Crafting.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Crafting_Enabled = State
end)
    
-- Anvil ESP Settings
Sectors.Anvil.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Anvil_Boxes = State
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Anvil_Names = State
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Anvil_Distances = State
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Anvil_Tracers = State
end)
-- Anvil ESP Toggles
Sectors.Anvil.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Anvil_Enabled = State
end)
    
-- Infuser ESP Settings
Sectors.Infuser.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Infuser_Boxes = State
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Infuser_Names = State
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Infuser_Distances = State
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Infuser_Tracers = State
end)
-- Infuser ESP Toggles
Sectors.Infuser.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Infuser_Enabled = State
end)
    
-- Transfer ESP Settings
Sectors.Transfer.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Transfer_Boxes = State
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Transfer_Names = State
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Transfer_Distances = State
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Transfer_Tracers = State
end)
-- Transfer ESP Toggles
Sectors.Transfer.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Transfer_Enabled = State
end)
    
-- Dungeon ESP Settings
Sectors.Dungeon.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Dungeon_Boxes = State
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Dungeon_Names = State
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Dungeon_Distances = State
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Dungeon_Tracers = State
end)
-- Dungeon ESP Toggles
Sectors.Dungeon.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Dungeon_Enabled = State
end)

-- VoidRift ESP Settings
Sectors.VoidRift.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.VoidRift_Boxes = State
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.VoidRift_Names = State
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.VoidRift_Distances = State
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.VoidRift_Tracers = State
end)
-- VoidRift ESP Toggles
Sectors.VoidRift.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.VoidRift_Enabled = State
end)
    
-- Shrine ESP Settings
Sectors.Shrine.Settings:Cheat("Checkbox", "Boxes", function(State)
    ESP.Shrine_Boxes = State
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Names", function(State)
    ESP.Shrine_Names = State
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Distances", function(State)
    ESP.Shrine_Distances = State
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Tracers", function(State)
    ESP.Shrine_Tracers = State
end)
-- Shrine ESP Toggles
Sectors.Shrine.Toggles:Cheat("Checkbox", "Enabled", function(State)
    ESP.Shrine_Enabled = State
end)

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
                    Name = p.Name;
                    Player = p;
                    PrimaryPart = c;
                    Color = ESP_Coloring.Players;
                    IsEnabled = "Player_Enabled";
                    IsBoxEnabled = "Player_Boxes";
		            IsNameEnabled = "Player_Names";
		            IsDistanceEnabled = "Player_Distances";
		            IsTracerEnabled = "Player_Tracers";
		            IsHealthEnabled = "Player_Healths";            
                })
            end
        end)
    else
        ESP:Add(char, {
            Name = p.Name;
            Player = p;
            PrimaryPart = char.HumanoidRootPart;
            Color = ESP_Coloring.Players;
            IsEnabled = "Player_Enabled";
            IsBoxEnabled = "Player_Boxes";
            IsNameEnabled = "Player_Names";
            IsDistanceEnabled = "Player_Distances";
            IsTracerEnabled = "Player_Tracers";
            IsHealthEnabled = "Player_Healths";            
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
    local infusers_folder = workspace:FindFirstChild("Infusers")
    local others_folder = workspace:FindFirstChild("Others")
    
    if npcs_folder then
        -- Get Enemies
        local npcs_children = npcs_folder:GetChildren()
        for i, v in ipairs(npcs_children) do
            local model = v:FindFirstChildOfClass("Model")
            if model and model:FindFirstChild("HumanoidRootPart") and not model:FindFirstChild("EGG") then
                -- Add ESP
                if ESP.Enemy_Enabled then
                    ESP:Add(model.HumanoidRootPart,{
                        Name = v.Name;
                        PrimaryPart = model.HumanoidRootPart;
                        Color = v:FindFirstChild("Legendary") and v.Legendary.Enabled and ESP_Coloring.Enemies.Legendary or v:FindFirstChild("Magical") and v.Magical.Enabled and ESP_Coloring.Enemies.Magical or v:FindFirstChild("Corrupt") and v.Corrupt.Enabled and ESP_Coloring.Enemies.Corrupt or v:FindFirstChild("Bloody") and v.Bloody.Enabled and ESP_Coloring.Enemies.Bloody or ESP_Coloring.Enemies.Other;
                        IsEnabled = "Enemy_Enabled";
                        IsBoxEnabled = "Enemy_Boxes";
                        IsNameEnabled = "Enemy_Names";
                        IsDistanceEnabled = "Enemy_Distances";
                        IsTracerEnabled = "Enemy_Tracers";
                        IsHealthEnabled = "Enemy_Healths"; 
                    })
                    Instance.new("Part",model).Name = "EGG"
                end
            end
        end
        wait()
    end
    if interactables_folder then
        -- Get Interactables
        local interactables_children = interactables_folder:GetDescendants()
        for i, prompt in ipairs(interactables_children) do
            local model = prompt.Parent
            if model and prompt.Name == (Dialog_PromptName) and not model:FindFirstChild("EGG") then
                -- Add ESP
                if ESP.NPC_Enabled then
                    ESP:Add(v,{
                        Name = v.Name,
                        Color = ESP_Coloring.NPCs,
                        IsEnabled = "NPC_Enabled";
                        IsBoxEnabled = "NPC_Boxes";
                        IsNameEnabled = "NPC_Names";
                        IsDistanceEnabled = "NPC_Distances";
                        IsTracerEnabled = "NPC_Tracers";
                    })
                    Instance.new("Part",model).Name = "EGG"
                end
            elseif model and prompt.Name == () and not model:FindFirstChild("EGG") then
                
            end
        end
    end
    if shrines_folder then
        -- Get Shrines
        --local shrines_children = shrines_folder:GetChildren()
    end
    if infusers_folder then
        -- Get Infusers
        
    end
    if others_folder then
        -- Get Dungeons
        
    end
end
