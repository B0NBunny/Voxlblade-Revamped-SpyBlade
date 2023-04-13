--Voxlblade Item/Enemy/NPC ESP by Brycki
Keybind = "Period"
KeybindCode = Enum.KeyCode.Period
DarkMode = true

ESP_Coloring = {
  Players = BrickColor.new("White").Color;
  
  Enemies = {
      Legendary = BrickColor.new("Bright yellow").Color;
      Magical = BrickColor.new("Cyan").Color;
      Corrupt = BrickColor.new("Bright purple").Color;
      Bloody = BrickColor.new("Maroon").Color;
      Easter = BrickColor.new("Pastel violet").Color;
      Other = BrickColor.new("Really red").Color;
  };
  
  NPCs = BrickColor.new("Lime green").Color;
  BloodHands = BrickColor.new("Lime green").Color;

  Shops = BrickColor.new("Pastel blue-green").Color;
  Crafting = BrickColor.new("Pastel blue-green").Color;
  Anvils = BrickColor.new("Pastel blue-green").Color;
  Infusers = BrickColor.new("Pastel blue-green").Color;
  
  Dungeons = BrickColor.new("CGA brown").Color;
  VoidRifts = BrickColor.new("CGA brown").Color;
  
  Shrines = BrickColor.new("Medium Royal blue").Color;
}

local ScriptLink = "https://github.com/B0NBunny/Voxlblade-2-Scripts/blob/main/SpyBlade.lua"
loadstring(game:HttpGet(ScriptLink, true))()
