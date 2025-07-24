-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:09
-- Luau version 6, Types version 3
-- Time taken: 0.000758 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local Url_upvr = require(Parent.Http).Url
local function _() -- Line 10, Named "getChangePasswordUrl"
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return string.format("%sv2/user/passwords/change", Url_upvr.AUTH_URL)
end
local HttpService_upvr = game:GetService("HttpService")
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2) -- Line 22
	--[[ Upvalues[3]:
		[1]: HttpService_upvr (readonly)
		[2]: Url_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local tbl = {
		currentPassword = nil;
	}
	tbl.newPassword = arg2
	return arg1(string.format("%sv2/user/passwords/change", Url_upvr.AUTH_URL), "POST", {
		postBody = HttpService_upvr:JSONEncode(tbl);
	}):andThen(function(arg1_2) -- Line 24
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_2)
	end, function(arg1_3) -- Line 26
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(arg1_3)
	end)
end