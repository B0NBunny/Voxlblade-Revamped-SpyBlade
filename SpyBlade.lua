-- ESP Function
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/ESP_Lib.lua", true))() --https://kiriot22.com/releases/ESP.lua
ESP:Toggle(true)

-- Variables
local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer

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

-- Settings Values
defaultRangeValue = 250
ESP.Player_Range = defaultRangeValue
ESP.Enemy_Range = defaultRangeValue
ESP.NPC_Range = defaultRangeValue

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
Sectors.Enemy = {};
    Sectors.Enemy.Settings = Categories.Enemy:Sector("ESP Settings");
Sectors.NPC = {};
    Sectors.NPC.Settings = Categories.NPC:Sector("ESP Settings");
Sectors.BloodHand = {};
    Sectors.BloodHand.Settings = Categories.BloodHand:Sector("ESP Settings");
Sectors.Shop = {};
    Sectors.Shop.Settings = Categories.Shop:Sector("ESP Settings");
    Sectors.Shop.Shops = Categories.Shop:Sector("Shops");
Sectors.Crafting = {};
    Sectors.Crafting.Settings = Categories.Crafting:Sector("ESP Settings");
Sectors.Anvil = {};
    Sectors.Anvil.Settings = Categories.Anvil:Sector("ESP Settings");
Sectors.Infuser = {};
    Sectors.Infuser.Settings = Categories.Infuser:Sector("ESP Settings");
Sectors.Transfer = {};
    Sectors.Transfer.Settings = Categories.Transfer:Sector("ESP Settings");
Sectors.Dungeon = {};
    Sectors.Dungeon.Settings = Categories.Dungeon:Sector("ESP Settings");
Sectors.VoidRift = {};
    Sectors.VoidRift.Settings = Categories.VoidRift:Sector("ESP Settings");
Sectors.Shrine = {};
    Sectors.Shrine.Settings = Categories.Shrine:Sector("ESP Settings");

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
Sectors.Player.Settings:Cheat("Checkbox", "Enabled", function(State)
    ESP.Player_Enabled = State
end)
Sectors.Player.Settings:Cheat("Slider", "Range", function(NewValue)
    ESP.Player_Range = NewValue
end, {
    default = defaultRangeValue;
    min = 50;
    max = 5000;
    suffix = " studs";
    precise = true;
})

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
Sectors.Enemy.Settings:Cheat("Checkbox", "Enabled", function(State)
    ESP.Enemy_Enabled = State
end)
Sectors.Enemy.Settings:Cheat("Slider", "Range", function(NewValue)
    ESP.Enemy_Range = NewValue
end, {
    default = defaultRangeValue;
    min = 50;
    max = 5000;
    suffix = " studs";
    precise = true;
})
    
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
Sectors.NPC.Settings:Cheat("Checkbox", "Enabled", function(State)
    ESP.NPC_Enabled = State
end)
Sectors.NPC.Settings:Cheat("Slider", "Range", function(NewValue)
    ESP.NPC_Range = NewValue
end, {
    default = defaultRangeValue;
    min = 50;
    max = 5000;
    suffix = " studs";
    precise = true;
})

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
Sectors.BloodHand.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Shop.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Crafting.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Anvil.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Infuser.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Transfer.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Dungeon.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.VoidRift.Settings:Cheat("Checkbox", "Enabled", function(State)
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
Sectors.Shrine.Settings:Cheat("Checkbox", "Enabled", function(State)
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
                    RangeValue = "Player_Range";
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
            RangeValue = "Player_Range";
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

task.spawn(function()
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
                            RangeValue = "Enemy_Range";
                            HealthAttributePart = v;
                            HealthAttributeName = "HP";
                            MaxHealthAttributePart = v;
                            MaxHealthAttributeName = "MAXHP";
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
                local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                if model and prompt.Name == (Dialog_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.NPC_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.NPCs,
                            IsEnabled = "NPC_Enabled";
                            IsBoxEnabled = "NPC_Boxes";
                            IsNameEnabled = "NPC_Names";
                            IsDistanceEnabled = "NPC_Distances";
                            IsTracerEnabled = "NPC_Tracers";
                            RangeValue = "NPC_Range";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                elseif model and prompt.Name == (BloodHand_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.BloodHand_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.BloodHands,
                            IsEnabled = "BloodHand_Enabled";
                            IsBoxEnabled = "BloodHand_Boxes";
                            IsNameEnabled = "BloodHand_Names";
                            IsDistanceEnabled = "BloodHand_Distances";
                            IsTracerEnabled = "BloodHand_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                elseif model and prompt.Name == (Shop_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Shop_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Shops,
                            IsEnabled = model.Name;
                            IsBoxEnabled = "Shop_Boxes";
                            IsNameEnabled = "Shop_Names";
                            IsDistanceEnabled = "Shop_Distances";
                            IsTracerEnabled = "Shop_Tracers";
                        })
                        ESP[model.Name] = false
                        Sectors.Shop.Shops:Cheat("Checkbox", model.Name, function(State)
                            ESP[model.Name] = State
                        end)
                        Instance.new("Part",model).Name = "EGG"
                    end
                elseif model and prompt.Name == (Crafting_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Crafting_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Craftings,
                            IsEnabled = "Crafting_Enabled";
                            IsBoxEnabled = "Crafting_Boxes";
                            IsNameEnabled = "Crafting_Names";
                            IsDistanceEnabled = "Crafting_Distances";
                            IsTracerEnabled = "Crafting_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                elseif model and prompt.Name == (Anvil_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Anvil_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Anvils,
                            IsEnabled = "Anvil_Enabled";
                            IsBoxEnabled = "Anvil_Boxes";
                            IsNameEnabled = "Anvil_Names";
                            IsDistanceEnabled = "Anvil_Distances";
                            IsTracerEnabled = "Anvil_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                elseif model and prompt.Name == (Transfer_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Transfer_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Transfers,
                            IsEnabled = "Transfer_Enabled";
                            IsBoxEnabled = "Transfer_Boxes";
                            IsNameEnabled = "Transfer_Names";
                            IsDistanceEnabled = "Transfer_Distances";
                            IsTracerEnabled = "Transfer_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                elseif model and prompt.Name == (VoidRift_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.VoidRift_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.VoidRifts,
                            IsEnabled = "VoidRift_Enabled";
                            IsBoxEnabled = "VoidRift_Boxes";
                            IsNameEnabled = "VoidRift_Names";
                            IsDistanceEnabled = "VoidRift_Distances";
                            IsTracerEnabled = "VoidRift_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                end
            end
            wait()
        end
        if shrines_folder then
            -- Get Shrines
            local shrines_children = shrines_folder:GetDescendants()
            for i, prompt in ipairs(shrines_children) do
                local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                if model and prompt.Name == (Shrine_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Shrine_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Shrines,
                            IsEnabled = "Shrine_Enabled";
                            IsBoxEnabled = "Shrine_Boxes";
                            IsNameEnabled = "Shrine_Names";
                            IsDistanceEnabled = "Shrine_Distances";
                            IsTracerEnabled = "Shrine_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                end
            end
            wait()
        end
        if infusers_folder then
            -- Get Infusers
            local infusers_children = infusers_folder:GetDescendants()
            for i, prompt in ipairs(infusers_children) do
                local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                if model and prompt.Name == (Infuser_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Infuser_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Infusers,
                            IsEnabled = "Infuser_Enabled";
                            IsBoxEnabled = "Infuser_Boxes";
                            IsNameEnabled = "Infuser_Names";
                            IsDistanceEnabled = "Infuser_Distances";
                            IsTracerEnabled = "Infuser_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                end
            end
            wait()
        end
        if others_folder then
            -- Get Dungeons
            local others_children = others_folder:GetDescendants()
            for i, prompt in ipairs(others_children) do
                local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                if model and prompt.Name == (Dungeon_PromptName) and not model:FindFirstChild("EGG") then
                    -- Add ESP
                    if ESP.Dungeon_Enabled then
                        ESP:Add(model,{
                            Name = model.Name,
                            Color = ESP_Coloring.Dungeons,
                            IsEnabled = "Dungeon_Enabled";
                            IsBoxEnabled = "Dungeon_Boxes";
                            IsNameEnabled = "Dungeon_Names";
                            IsDistanceEnabled = "Dungeon_Distances";
                            IsTracerEnabled = "Dungeon_Tracers";
                        })
                        Instance.new("Part",model).Name = "EGG"
                    end
                end
            end
            wait()
        end
    end
end)
