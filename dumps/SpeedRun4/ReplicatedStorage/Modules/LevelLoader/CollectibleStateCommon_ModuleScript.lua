-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:10
-- Luau version 6, Types version 3
-- Time taken: 0.000660 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2 = require(ReplicatedStorage:WaitForChild("Settings"))
module.CollectibleRadius_ByCollectibleType = table.freeze({
	[module_3.CollectibleType.Event] = module_2.CollectibleRadius_Event;
	[module_3.CollectibleType.Star] = module_2.CollectibleRadius_Star;
	[module_3.CollectibleType.Unique] = module_2.CollectibleRadius_Event;
})
return module