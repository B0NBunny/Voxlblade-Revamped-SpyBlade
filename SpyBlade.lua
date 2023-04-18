local plrs = game:GetService("Players")
local httpservice = game:GetService("HttpService")
local plr = plrs.LocalPlayer
local getasset = getsynasset or getcustomasset or function(id) return "rbxasset://"..id end
local requestfunc = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or request or function(data)
	if data.Method == "GET" then
		return {
			Body = game:HttpGet(data.Url, true),
			Headers = {},
			StatusCode = 200
		}
	else
		return {
			Body = "Unable to access resource.",
			Headers = {},
			StatusCode = 404
		}
	end

	if data.Method == "POST" then
		return {
			Body = game:HttpPost(data.Url, true),
			Headers = {},
			StatusCode = 200
		}
	else
		return {
			Body = "Unable to post data to resource",
			Headers = {},
			StatusCode = 404
		}
	end
end
if not writefile then
	print("Your executor does not support the writefile() function. We do not support your injector.")
end
if not readfile then
    print("Your executor does not support the readfile() function. We do not support your injector.")
end
if not isfile then
    print("Your executor does not support the isfile() function. We do not support your injector.")
end
if not makefolder then
    print("Your executor does not support the makefolder() function. We do not support your injector.")
end
if not isfolder then
    print("Your executor does not support the isfolder() function. We do not support your injector.")
end

-- ProximityPrompt Names ("Types")
-- DON'T TOUCH
_G.Dialog_PromptName = "Dialog" --Ancestor: workspace.Interactables
_G.BloodHand_PromptName = "BloodHand" --Ancestor: workspace.Interactables
_G.Shop_PromptName = "Shop" --Ancestor: workspace.Interactables
_G.Crafting_PromptName = "Crafting" --Ancestor: workspace.Interactables
_G.Anvil_PromptName = "Anvil" --Ancestor: workspace.Interactables
_G.Infuser_PromptName = "Infuser" --Ancestor: workspace.Infusers
_G.Transfer_PromptName = "Transfer" --Ancestor: workspace.Interactables
_G.Dungeon_PromptName = "Dungeon" --Ancestor: workspace.Others
_G.VoidRift_PromptName = "VoidRift" --Ancestor: workspace.Interactables
_G.Shrine_PromptName = "Shrine" --Ancestor: workspace.Shrines

_G.defaultRangeValue = 250
_G.savedsettings = {
    Player_Enabled = false;
    Enemy_Enabled = false;
    NPC_Enabled = false;
    BloodHand_Enabled = false;
    Crafting_Enabled = false;
    Anvil_Enabled = false;
    Infuser_Enabled = false;
    Transfer_Enabled = false;
    Dungeon_Enabled = false;
    VoidRift_Enabled = false;
    Shrine_Enabled = false;
    
    Player_Boxes = false;
    Player_Names = false;
    Player_Distances = false;
    Player_Tracers = false;
    Player_Healths = false;

    Enemy_Boxes = false;
    Enemy_Names = false;
    Enemy_Distances = false;
    Enemy_Tracers = false;
    Enemy_Healths = false;

    NPC_Boxes = false;
    NPC_Names = false;
    NPC_Distances = false;
    NPC_Tracers = false;

    BloodHand_Boxes = false;
    BloodHand_Names = false;
    BloodHand_Distances = false;
    BloodHand_Tracers = false;

    Shop_Boxes = false;
    Shop_Names = false;
    Shop_Distances = false;
    Shop_Tracers = false;

    Crafting_Boxes = false;
    Crafting_Names = false;
    Crafting_Distances = false;
    Crafting_Tracers = false;

    Anvil_Boxes = false;
    Anvil_Names = false;
    Anvil_Distances = false;
    Anvil_Tracers = false;

    Infuser_Boxes = false;
    Infuser_Names = false;
    Infuser_Distances = false;
    Infuser_Tracers = false;

    Transfer_Boxes = false;
    Transfer_Names = false;
    Transfer_Distances = false;
    Transfer_Tracers = false;

    Dungeon_Boxes = false;
    Dungeon_Names = false;
    Dungeon_Distances = false;
    Dungeon_Tracers = false;

    VoidRift_Boxes = false;
    VoidRift_Names = false;
    VoidRift_Distances = false;
    VoidRift_Tracers = false;

    Shrine_Boxes = false;
    Shrine_Names = false;
    Shrine_Distances = false;
    Shrine_Tracers = false;
    
    Player_Range = defaultRangeValue;
    Enemy_Range = defaultRangeValue;
    NPC_Range = defaultRangeValue;
}
local savesettings = function()
    local contents = httpservice:JSONEncode(_G.savedsettings)
    if contents then
        writefile('SpyBlade/settings.txt', contents)
    end
end
local DFAA = function()
    if not isfolder('SpyBlade') then
	    makefolder('SpyBlade')
    end
    if isfile('SpyBlade/settings.txt') then
        local contents = readfile('SpyBlade/settings.txt')
	if contents then
		local decodedtable = httpservice:JSONDecode(contents)
		_G.savedsettings = decodedtable
	end
    else
        savesettings()
    end
end
DFAA()

-- ESP Function
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-Revamped-SpyBlade/main/ESP_Lib.lua", true))() --https://kiriot22.com/releases/ESP.lua
ESP:Toggle(true)
-- UI Library
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-Revamped-SpyBlade/main/detourious_Finity_Library.lua"))() --https://pastebin.com/raw/nB2byebL
local FinityWindow = Finity.new(DarkMode)
FinityWindow.ChangeToggleKey(KeybindCode or Enum.KeyCode.Period)

local CreditsCategory = FinityWindow:Category("Credits");
local CreditsSector = CreditsCategory:Sector("Credits");
CreditsSector:Cheat("Label", "SpyBlade UI for VoxelBlade Remastered")
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
    Sectors.Shop.Info = Categories.Shop:Sector("Info");
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
    _G.savedsettings.Player_Boxes = State
    savesettings()
end)
Sectors.Player.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Player_Names = State
    savesettings()
end)
Sectors.Player.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Player_Distances = State
    savesettings()
end)
Sectors.Player.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Player_Tracers = State
    savesettings()
end)
Sectors.Player.Settings:Cheat("Checkbox", "Health", function(State)
    _G.savedsettings.Player_Healths = State
    savesettings()
end)
Sectors.Player.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Player_Enabled = State
    savesettings()
end)
Sectors.Player.Settings:Cheat("Slider", "Range", function(NewValue)
    _G.savedsettings.Player_Range = NewValue
    savesettings()
end, {
    default = defaultRangeValue;
    min = 50;
    max = 5000;
    suffix = " studs";
    precise = true;
})

-- Enemy ESP Settings
Sectors.Enemy.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Enemy_Boxes = State
    savesettings()
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Enemy_Names = State
    savesettings()
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Enemy_Distances = State
    savesettings()
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Enemy_Tracers = State
    savesettings()
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Health", function(State)
    _G.savedsettings.Enemy_Healths = State
    savesettings()
end)
Sectors.Enemy.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Enemy_Enabled = State
    savesettings()
end)
Sectors.Enemy.Settings:Cheat("Slider", "Range", function(NewValue)
    _G.savedsettings.Enemy_Range = NewValue
    savesettings()
end, {
    default = defaultRangeValue;
    min = 50;
    max = 5000;
    suffix = " studs";
    precise = true;
})
    
-- NPC ESP Settings
Sectors.NPC.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.NPC_Boxes = State
    savesettings()
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.NPC_Names = State
    savesettings()
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.NPC_Distances = State
    savesettings()
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.NPC_Tracers = State
    savesettings()
end)
Sectors.NPC.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.NPC_Enabled = State
    savesettings()
end)
Sectors.NPC.Settings:Cheat("Slider", "Range", function(NewValue)
    _G.savedsettings.NPC_Range = NewValue
    savesettings()
end, {
    default = defaultRangeValue;
    min = 50;
    max = 5000;
    suffix = " studs";
    precise = true;
})

-- BloodHand ESP Settings
Sectors.BloodHand.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.BloodHand_Boxes = State
    savesettings()
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.BloodHand_Names = State
    savesettings()
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.BloodHand_Distances = State
    savesettings()
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.BloodHand_Tracers = State
    savesettings()
end)
Sectors.BloodHand.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.BloodHand_Enabled = State
    savesettings()
end)
    
-- Shop ESP Settings
Sectors.Shop.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Shop_Boxes = State
    savesettings()
end)
Sectors.Shop.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Shop_Names = State
    savesettings()
end)
Sectors.Shop.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Shop_Distances = State
    savesettings()
end)
Sectors.Shop.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Shop_Tracers = State
    savesettings()
end)
-- Shop Info
Sectors.Shop.Info:Cheat("Label", "Choose which shops you would like to be shown.")
Sectors.Shop.Info:Cheat("Label", "This method of choice helps clean up your")
Sectors.Shop.Info:Cheat("Label", "screen from the cluttering of too many")
Sectors.Shop.Info:Cheat("Label", "overlapping ESP objects.")
Sectors.Shop.Info:Cheat("Label", "The toggled states of shops don't save.")
    
-- Crafting ESP Settings
Sectors.Crafting.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Crafting_Boxes = State
    savesettings()
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Crafting_Names = State
    savesettings()
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Crafting_Distances = State
    savesettings()
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Crafting_Tracers = State
    savesettings()
end)
Sectors.Crafting.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Crafting_Enabled = State
    savesettings()
end)
    
-- Anvil ESP Settings
Sectors.Anvil.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Anvil_Boxes = State
    savesettings()
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Anvil_Names = State
    savesettings()
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Anvil_Distances = State
    savesettings()
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Anvil_Tracers = State
    savesettings()
end)
Sectors.Anvil.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Anvil_Enabled = State
    savesettings()
end)
    
-- Infuser ESP Settings
Sectors.Infuser.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Infuser_Boxes = State
    savesettings()
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Infuser_Names = State
    savesettings()
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Infuser_Distances = State
    savesettings()
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Infuser_Tracers = State
    savesettings()
end)
Sectors.Infuser.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Infuser_Enabled = State
    savesettings()
end)
    
-- Transfer ESP Settings
Sectors.Transfer.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Transfer_Boxes = State
    savesettings()
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Transfer_Names = State
    savesettings()
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Transfer_Distances = State
    savesettings()
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Transfer_Tracers = State
    savesettings()
end)
Sectors.Transfer.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Transfer_Enabled = State
    savesettings()
end)
    
-- Dungeon ESP Settings
Sectors.Dungeon.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Dungeon_Boxes = State
    savesettings()
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Dungeon_Names = State
    savesettings()
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Dungeon_Distances = State
    savesettings()
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Dungeon_Tracers = State
    savesettings()
end)
Sectors.Dungeon.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Dungeon_Enabled = State
    savesettings()
end)

-- VoidRift ESP Settings
Sectors.VoidRift.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.VoidRift_Boxes = State
    savesettings()
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.VoidRift_Names = State
    savesettings()
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.VoidRift_Distances = State
    savesettings()
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.VoidRift_Tracers = State
    savesettings()
end)
Sectors.VoidRift.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.VoidRift_Enabled = State
    savesettings()
end)
    
-- Shrine ESP Settings
Sectors.Shrine.Settings:Cheat("Checkbox", "Boxes", function(State)
    _G.savedsettings.Shrine_Boxes = State
    savesettings()
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Names", function(State)
    _G.savedsettings.Shrine_Names = State
    savesettings()
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Distances", function(State)
    _G.savedsettings.Shrine_Distances = State
    savesettings()
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Tracers", function(State)
    _G.savedsettings.Shrine_Tracers = State
    savesettings()
end)
Sectors.Shrine.Settings:Cheat("Checkbox", "Enabled", function(State)
    _G.savedsettings.Shrine_Enabled = State
    savesettings()
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

proximityprompts = {}
local function PromptAdded(prompt)
    if prompt:IsA("ProximityPrompt") then
        if not table.find(proximityprompts, prompt) then
            table.insert(proximityprompts, prompt)
        end
    end
end
local function PromptRemoving(prompt)
    if prompt:IsA("ProximityPrompt") then
        local k = table.find(proximityprompts, prompt)
        if k then
            table.remove(proximityprompts, k)
        end
    end
end
local Added = workspace.DescendantAdded:Connect(PromptAdded)
local Removed = workspace.DescendantRemoving:Connect(PromptRemoving)
for i, prompt in pairs(workspace:GetDescendants()) do
    if prompt:IsA("ProximityPrompt") then
        if not table.find(proximityprompts, prompt) then
            table.insert(proximityprompts, prompt)
        end
    end
end

task.spawn(function()
    while true do
        local npcs_folder = workspace:FindFirstChild("NPCS")
        local interactables_folder = workspace:FindFirstChild("Interactables")
        local shrines_folder = workspace:FindFirstChild("Shrines")
        local infusers_folder = workspace:FindFirstChild("Infusers")
        local others_folder = workspace:FindFirstChild("Others")
	
        if _G.savedsettings.Enemy_Enabled then
            if npcs_folder then
                -- Get Enemies
                local npcs_children = npcs_folder:GetChildren()
                for i, v in pairs(npcs_children) do
                    local model = v:FindFirstChildOfClass("Model")
                    if model and model:FindFirstChild("HumanoidRootPart") and not model:FindFirstChild("EGG") then
                        -- Add ESP
                        if _G.savedsettings.Enemy_Enabled then
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
        end
        for i, prompt in pairs(proximityprompts) do
            if prompt:IsA("ProximityPrompt") then
                if interactables_folder and prompt:IsDescendantOf(interactables_folder) then
                    -- Get Interactables
                    local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                    if model and prompt.Name == (_G.Dialog_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.NPC_Enabled then
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
                    elseif model and prompt.Name == (_G.BloodHand_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.BloodHand_Enabled then
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
                    elseif model and prompt.Name == (_G.Shop_PromptName) and not model:FindFirstChild("EGG") then
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
                    elseif model and prompt.Name == (_G.Crafting_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.Crafting_Enabled then
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
                    elseif model and prompt.Name == (_G.Anvil_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.Anvil_Enabled then
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
                    elseif model and prompt.Name == (_G.Transfer_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.Transfer_Enabled then
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
                    elseif model and prompt.Name == (_G.VoidRift_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.VoidRift_Enabled then
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
                elseif shrines_folder and prompt:IsDescendantOf(shrines_folder) then
                    -- Get Shrines
                    local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                    if model and prompt.Name == (_G.Shrine_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.Shrine_Enabled then
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
                elseif infusers_folder and prompt:IsDescendantOf(infusers_folder) then
                    -- Get Infusers
                    local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                    if model and prompt.Name == (_G.Infuser_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.Infuser_Enabled then
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
                elseif others_folder and prompt:IsDescendantOf(others_folder) then
                    -- Get Dungeons
                    local model = prompt:FindFirstAncestorOfClass("Model") or prompt:FindFirstAncestorOfClass("MeshPart")
                    if model and prompt.Name == (_G.Dungeon_PromptName) and not model:FindFirstChild("EGG") then
                        if _G.savedsettings.Dungeon_Enabled then
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
            end
        end
        wait()
    end
end)
