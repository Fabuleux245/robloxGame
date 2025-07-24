-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:47
-- Luau version 6, Types version 3
-- Time taken: 0.001336 seconds

local module_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3 = require(Modules:WaitForChild("HighlightGroupManager"))
local Folder = Instance.new("Folder")
Folder.Name = "HighlightFolder"
Folder.Parent = workspace
module_2.Groups = {
	CharacterHover = module_3.HighlightGroupCreate({
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
		FillColor = module.CharacterHoverColor;
		FillTransparency = 0.8;
		OutlineColor = module.CharacterHoverColor;
		OutlineTransparency = 0;
	}, 2000, Folder);
	CharacterHoverGrab = module_3.HighlightGroupCreate({
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
		FillColor = module.CharacterHoverGrabColor;
		FillTransparency = 0.8;
		OutlineColor = module.CharacterHoverGrabColor;
		OutlineTransparency = 0;
	}, 3000, Folder);
	CharacterProximity = module_3.HighlightGroupCreate({
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
		FillTransparency = 1;
		OutlineColor = module.CharacterProximityColor;
		OutlineTransparency = 0;
	}, 1000, Folder);
	Egg = module_3.HighlightGroupCreate({
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
		FillColor = module.White;
		FillTransparency = 1;
		OutlineColor = module.White;
		OutlineTransparency = 0;
	}, 0, Folder);
	PairedCharacter = module_3.HighlightGroupCreate({
		DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
		FillTransparency = 1;
		OutlineColor = module.CharacterProximityColor;
		OutlineTransparency = 0.5;
	}, 1100, Folder);
}
return require(Modules:WaitForChild("Utility")).TableMerge(module_3, module_2)