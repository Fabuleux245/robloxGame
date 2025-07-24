-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:20
-- Luau version 6, Types version 3
-- Time taken: 0.000424 seconds

local HttpService_upvr = game:GetService("HttpService")
local Url_upvr = require(script.Parent.Parent.Parent.Network.Url)
return function(arg1, arg2, arg3) -- Line 7
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	local tbl = {}
	tbl.participantuserId = arg2
	return arg1(string.format("%s/start-one-to-one-conversation", Url_upvr.CHAT_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	})
end