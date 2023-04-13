-- ESP Function
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/ESP_Lib"))() --https://kiriot22.com/releases/ESP.lua
ESP:Toggle(true)

-- Don't worry about it
ESP.Players = false
ESP.Color = Color3.new(1,1,1)
ESP.Traces = false
ESP.Names = false
ESP.Boxes = false
ESP.NPCs = false
ESP.Items = false
ESP.Enemies = false
ESP.Shrines = false

-- UI Library
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-2-Scripts/main/Finity_Lib.lua"))() --https://pastebin.com/raw/nB2byebL
local FinityWindow = Finity.new(DarkMode)
FinityWindow.ChangeToggleKey(KeybindCode or Enum.KeyCode.Period)

-- Category
local ESPCat = FinityWindow:Category("Entity ESP")
local ItemCat = FinityWindow:Category("Item ESP")
local ShrineCat = FinityWindow:Category("Shrine ESP")
local InfusersCat = FinityWindow:Category("Infuser ESP")
local DungeonCat = FinityWindow:Category("Dungeon ESP")
local VoidRiftCat = FinityWindow:Category("VoidRift ESP")

-- Sectors
local ESPSettings = ESPCat:Sector("ESP Settings")
local ESPToggles = ESPCat:Sector("Toggles")
local ESPInfo = ESPCat:Sector("Info")
local ItemESP = ItemCat:Sector("Toggles")
local ItemINFO = ItemCat:Sector("Info")

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

-- Don't mind this ugly shit
while true do
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
