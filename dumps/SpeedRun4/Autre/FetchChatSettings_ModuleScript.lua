-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:07
-- Luau version 6, Types version 3
-- Time taken: 0.000538 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Url_upvr = require(AppChat.Parent.Http).Url
return require(AppChat.Http.RoduxNetworking).GET(script, function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(Url_upvr.CHAT_URL):path("chat-settings")
end)