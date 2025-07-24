-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:28
-- Luau version 6, Types version 3
-- Time taken: 0.001177 seconds

local Url_upvr = require(script.Parent.Parent.Parent.Http).Url
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 14
	--[[ Upvalues[2]:
		[1]: Url_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var4
	if type(arg2) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "FollowingsPostFollow request expects userId to be a string")
	if type(arg3) ~= "string" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "FollowingsPostFollow request expects universeId to be a string")
	var4 = "%s/v1/users/%s/universes/%s"
	var4 = arg1
	var4 = var4(string.format(var4, Url_upvr.FOLLOWINGS_URL, arg2, arg3), "POST", {
		postBody = HttpService_upvr:JSONEncode({});
	})
	return var4
end