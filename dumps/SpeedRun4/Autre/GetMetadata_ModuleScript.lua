-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:21
-- Luau version 6, Types version 3
-- Time taken: 0.000521 seconds

local CHAT_PLATFORM_BASE_URL_upvr = require(script:FindFirstAncestor("AppChatNetworking").url.CHAT_PLATFORM_BASE_URL)
return require(script.Parent.RoduxNetworking).GET(script, function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: CHAT_PLATFORM_BASE_URL_upvr (readonly)
	]]
	return arg1(CHAT_PLATFORM_BASE_URL_upvr):path("v1"):path("metadata")
end)