-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:19
-- Luau version 6, Types version 3
-- Time taken: 0.000684 seconds

local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(script.Parent.Parent.Parent.Network.Url)
return function(arg1, arg2, arg3, arg4) -- Line 7
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	local tbl = {}
	tbl.conversationId = arg2
	tbl.message = arg3
	tbl.decorators = arg4
	return arg1(string.format("%s/send-message", Url_upvr.CHAT_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end