-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:13
-- Luau version 6, Types version 3
-- Time taken: 0.001275 seconds

local Parent = script:FindFirstAncestor("StreamNotifications").Parent
local Promise_upvr = require(Parent.Promise)
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.NOTIFICATION_URL;
	path = "v2/stream-notifications/action/{notificationId}/{actionPath}";
})
return function(arg1, arg2, arg3) -- Line 13
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	if arg2 == nil or arg2 == "" or arg3 == nil or arg3 == "" then
		return Promise_upvr.reject()
	end
	local module = {}
	module.notificationId = arg2
	module.actionPath = arg3
	return arg1(any_new_result1_upvr(module), "POST", {
		postBody = "{}";
	}):andThen(function(arg1_2) -- Line 23
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if arg1_2.responseCode == 200 then
			return Promise_upvr.resolve()
		end
		return Promise_upvr.reject()
	end, function(arg1_3) -- Line 29
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject()
	end)
end