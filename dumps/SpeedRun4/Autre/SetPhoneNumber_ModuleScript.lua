-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:59
-- Luau version 6, Types version 3
-- Time taken: 0.001598 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local isStringPhone_upvr = require(Parent.AuthCommon).Utils.isStringPhone
local Promise_upvr = require(Parent.Promise)
local PostSetPhone_upvr = require(PhoneUpsell.Http.Requests.PostSetPhone)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3, arg4, arg5) -- Line 16
	--[[ Upvalues[4]:
		[1]: isStringPhone_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: PostSetPhone_upvr (readonly)
		[4]: HttpService_upvr (readonly)
	]]
	return function() -- Line 17
		--[[ Upvalues[9]:
			[1]: isStringPhone_upvr (copied, readonly)
			[2]: arg3 (readonly)
			[3]: arg4 (readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: PostSetPhone_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: arg2 (readonly)
			[8]: arg5 (readonly)
			[9]: HttpService_upvr (copied, readonly)
		]]
		if not isStringPhone_upvr(arg3..arg4) then
			return Promise_upvr.reject({
				PhoneRegexFailed = true;
			})
		end
		return PostSetPhone_upvr(arg1, arg2, arg3, arg4, arg5):andThen(function(arg1_2) -- Line 23
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve()
		end, function(arg1_3) -- Line 25
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			local var12 = 0
			if arg1_3.Body then
				var12 = HttpService_upvr:JSONDecode(arg1_3.Body).errors[1].code
			end
			return Promise_upvr.reject({
				ErrorCode = var12;
				PhoneRegexFailed = false;
			})
		end)
	end
end