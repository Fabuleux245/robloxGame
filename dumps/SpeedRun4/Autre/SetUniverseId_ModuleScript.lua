-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:11
-- Luau version 6, Types version 3
-- Time taken: 0.000426 seconds

local Parent = script:FindFirstAncestor("ExperienceLoadingScript").Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
return require(Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg1, "table", "SetUniverseId action expects gameIds to be a table")
	return {
		universeId = arg1.universeId;
		placeId = arg1.placeId;
	}
end)