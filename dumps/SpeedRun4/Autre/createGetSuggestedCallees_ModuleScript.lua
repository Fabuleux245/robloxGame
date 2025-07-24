-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:24
-- Luau version 6, Types version 3
-- Time taken: 0.000474 seconds

local CALL_URL_upvr = require(script.Parent.Parent.CALL_URL)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: CALL_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetSuggestedCallees";
	}, function(arg1_2) -- Line 8
		--[[ Upvalues[1]:
			[1]: CALL_URL_upvr (copied, readonly)
		]]
		return arg1_2(CALL_URL_upvr):path("call"):path("v1"):path("get-suggested-callees")
	end)
end