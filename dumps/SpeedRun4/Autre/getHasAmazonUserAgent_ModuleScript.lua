-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:13
-- Luau version 6, Types version 3
-- Time taken: 0.000271 seconds

local HttpService_upvr = game:GetService("HttpService")
return function() -- Line 3
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	return string.find(HttpService_upvr:GetUserAgent(), "AmazonAppStore")
end