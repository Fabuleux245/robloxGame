-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:59
-- Luau version 6, Types version 3
-- Time taken: 0.001222 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local PostResendPhoneCode_upvr = require(PhoneUpsell.Http.Requests.PostResendPhoneCode)
local Promise_upvr = require(PhoneUpsell.Parent.Promise)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 14
	--[[ Upvalues[3]:
		[1]: PostResendPhoneCode_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	return function() -- Line 15
		--[[ Upvalues[4]:
			[1]: PostResendPhoneCode_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Promise_upvr (copied, readonly)
			[4]: HttpService_upvr (copied, readonly)
		]]
		return PostResendPhoneCode_upvr(arg1):andThen(function(arg1_2) -- Line 16
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve()
		end, function(arg1_3) -- Line 18
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
			]]
			local var9 = 0
			if arg1_3.Body then
				var9 = HttpService_upvr:JSONDecode(arg1_3.Body).errors[1].code
			end
			return Promise_upvr.reject({
				ErrorCode = var9;
			})
		end)
	end
end