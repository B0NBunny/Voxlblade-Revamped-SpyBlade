-- Voxlblade2 ESP by CatOverEdge
UIKeybind = "Period"
DarkMode = true


ESP_Coloring = {
  Players = BrickColor.new("White").Color;

  Enemies = {
    Legendary = BrickColor.new("Bright yellow").Color;
    Magical = BrickColor.new("Cyan").Color;
    Corrupt = BrickColor.new("Bright purple").Color;
    Bloody = BrickColor.new("Maroon").Color;
    Other = BrickColor.new("Really red").Color
  };

  NPCs = BrickColor.new("Lime green").Color;
  BloodHands = BrickColor.new("Lime green").Color;

  Shops = BrickColor.new("Pastel blue-green").Color;
  Craftings = BrickColor.new("Pastel blue-green").Color;
  Anvils = BrickColor.new("Pastel blue-green").Color;
  Infusers = BrickColor.new("Pastel blue-green").Color;
  Transfers = BrickColor.new("Pastel blue-green").Color;

  Dungeons = BrickColor.new("CGA brown").Color;
  VoidRifts = BrickColor.new("CGA brown").Color;

  Shrines = BrickColor.new("Medium Royal blue").Color;
}

-- ProximityPrompt Names ("Types")
-- DON'T TOUCH
Dialog_PromptName = "Dialog" --Ancestor: workspace.Interactables
BloodHand_PromptName = "BloodHand" --Ancestor: workspace.Interactables
Shop_PromptName = "Shop" --Ancestor: workspace.Interactables
Crafting_PromptName = "Crafting" --Ancestor: workspace.Interactables
Anvil_PromptName = "Anvil" --Ancestor: workspace.Interactables
Infuser_PromptName = "Infuser" --Ancestor: workspace.Infusers
Transfer_PromptName = "Transfer" --Ancestor: workspace.Interactables
Dungeon_PromptName = "Dungeon" --Ancestor: workspace.Others
VoidRift_PromptName = "VoidRift" --Ancestor: workspace.Interactables
Shrine_PromptName = "Shrine" --Ancestor: workspace.Shrines

loadstring(game:HttpGet("https://raw.githubusercontent.com/B0NBunny/Voxlblade-Revamped-SpyBlade/main/SpyBlade.lua", true))()
