-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:14
-- Luau version 6, Types version 3
-- Time taken: 0.001317 seconds

local Parent = script:FindFirstAncestor("StreamNotifications").Parent
local Promise_upvr = require(Parent.Promise)
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.APIS_URL;
	path = "notifications/v1/report-notification";
})
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2) -- Line 14
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	if arg2 == nil or arg2 == "" then
		return Promise_upvr.reject()
	end
	local tbl = {}
	tbl.notificationId = arg2
	return arg1(any_new_result1_upvr(), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	}):andThen(function(arg1_2) -- Line 28
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if arg1_2.responseCode == 200 then
			return Promise_upvr.resolve()
		end
		return Promise_upvr.reject()
	end, function(arg1_3) -- Line 34
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject()
	end)
end