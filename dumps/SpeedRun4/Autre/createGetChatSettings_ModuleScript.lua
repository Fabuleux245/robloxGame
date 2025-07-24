-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:56:29
-- Luau version 6, Types version 3
-- Time taken: 0.000668 seconds

local CHAT_URL_upvr = require(script.Parent.Parent.CHAT_URL)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetChatSettings";
	}, function(arg1_2) -- Line 9
		--[[ Upvalues[1]:
			[1]: CHAT_URL_upvr (copied, readonly)
		]]
		return arg1_2(CHAT_URL_upvr):path("v2"):path("chat-settings")
	end)
end