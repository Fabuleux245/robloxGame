-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:34
-- Luau version 6, Types version 3
-- Time taken: 0.000483 seconds

local Http_upvr = require(script:FindFirstAncestor("ProfileQRCode").Parent.Http)
local function var1_upvr(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Http_upvr (readonly)
	]]
	return arg1(Http_upvr.Url.FRIEND_URL):path("my"):path("friends"):path("refresh-qr-session"):body({})
end
return (function(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: var1_upvr (readonly)
	]]
	return arg1.POST(script, var1_upvr)
end)(require(script.Parent.configuredRoduxNetworking))