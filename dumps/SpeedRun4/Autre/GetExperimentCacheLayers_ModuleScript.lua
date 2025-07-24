-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:35
-- Luau version 6, Types version 3
-- Time taken: 0.000325 seconds

local Parent = script:FindFirstAncestor("ExperimentCacheManager").Parent
local getAllAppUserLayers_upvr = require(Parent.ExperimentLayers).getAllAppUserLayers
local Dash_upvr = require(Parent.Dash)
return function() -- Line 5
	--[[ Upvalues[2]:
		[1]: getAllAppUserLayers_upvr (readonly)
		[2]: Dash_upvr (readonly)
	]]
	return Dash_upvr.values(getAllAppUserLayers_upvr())
end