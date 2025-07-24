-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:14
-- Luau version 6, Types version 3
-- Time taken: 0.000471 seconds

local GAMES_URL_upvr = require(script.Parent.Parent.GAMES_URL)
return function(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: GAMES_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetExperiencesDetails";
	}, function(arg1_2, arg2) -- Line 12
		--[[ Upvalues[1]:
			[1]: GAMES_URL_upvr (copied, readonly)
		]]
		return arg1_2(GAMES_URL_upvr):path("v1"):path("games"):expandedQueryArgsWithIds("universeIds", arg2)
	end)
end