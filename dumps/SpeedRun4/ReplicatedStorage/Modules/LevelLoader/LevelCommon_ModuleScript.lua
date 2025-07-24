-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:59
-- Luau version 6, Types version 3
-- Time taken: 0.000812 seconds

local module = {}
local LevelLoader = game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("LevelLoader")
module.LightingType = table.freeze({
	Static = (-math.huge);
	World = 1;
	Level = 2;
	Dimension = 3;
})
module.Levels_ByLevelData = {}
return module