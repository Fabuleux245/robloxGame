-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:09
-- Luau version 6, Types version 3
-- Time taken: 0.000744 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("DiscoveryAnalytics").Parent.ArgCheck)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("LuaAppJoinGameFailureInfluxHundredthsPercentage", 0)
return function(arg1, arg2, arg3) -- Line 8
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local var4 = arg3
	if not var4 then
		var4 = {}
	end
	ArgCheck_upvr.isType(arg2, "string", "documentName")
	arg1:reportSeries(arg2, var4, game_DefineFastInt_result1_upvr)
end