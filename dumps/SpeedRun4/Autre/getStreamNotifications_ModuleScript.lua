-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:13
-- Luau version 6, Types version 3
-- Time taken: 0.001395 seconds

local Parent = script:FindFirstAncestor("StreamNotifications").Parent
local any_new_result1_upvr = require(Parent.UrlBuilder).UrlBuilder.new({
	base = require(Parent.Http).Url.NOTIFICATION_URL;
	path = "v2/stream-notifications/get-recent";
	query = {
		maxRows = "{maxRows}";
		startIndex = "{startIndex}";
	};
})
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return arg1(any_new_result1_upvr({
		maxRows = arg2 or 10;
		startIndex = arg3 or 0;
	}), "GET"):andThen(function(arg1_2) -- Line 26
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		local var9 = arg1_2.responseBody or nil
		if arg1_2.responseCode == 200 and var9 ~= nil then
			return Promise_upvr.resolve(var9)
		end
		return Promise_upvr.reject()
	end, function(arg1_3) -- Line 33
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(arg1_3)
	end)
end