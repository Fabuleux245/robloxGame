-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:29
-- Luau version 6, Types version 3
-- Time taken: 0.000846 seconds

local FRIENDS_URL_upvr = require(script.Parent.Parent.FRIENDS_URL)
local game_DefineFastString_result1_upvr = game:DefineFastString("SendTCRequestPath", "send-castor-request")
return function(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: FRIENDS_URL_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "SendTCRequest";
	}, function(arg1_2, arg2) -- Line 8
		--[[ Upvalues[2]:
			[1]: FRIENDS_URL_upvr (copied, readonly)
			[2]: game_DefineFastString_result1_upvr (copied, readonly)
		]]
		return arg1_2(FRIENDS_URL_upvr):path("v1"):path("users"):id(arg2):path(game_DefineFastString_result1_upvr):body({})
	end)
end