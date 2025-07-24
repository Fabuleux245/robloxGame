-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:58
-- Luau version 6, Types version 3
-- Time taken: 0.001303 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Promise_upvr = require(AuthCommon.Parent.Promise)
local GetUserAppLaunchInfo_upvr = require(AuthCommon.Http.Requests.GetUserAppLaunchInfo)
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local AppStorageService_upvr = game:GetService("AppStorageService")
return function(arg1) -- Line 8
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: GetUserAppLaunchInfo_upvr (readonly)
		[3]: AppStorageUtilities_upvr (readonly)
		[4]: AppStorageService_upvr (readonly)
	]]
	local any_await_result1, any_await_result2 = Promise_upvr.new(function(arg1_2) -- Line 9
		--[[ Upvalues[4]:
			[1]: GetUserAppLaunchInfo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: AppStorageUtilities_upvr (copied, readonly)
			[4]: AppStorageService_upvr (copied, readonly)
		]]
		GetUserAppLaunchInfo_upvr(arg1):andThen(function(arg1_3) -- Line 10
			--[[ Upvalues[3]:
				[1]: AppStorageUtilities_upvr (copied, readonly)
				[2]: AppStorageService_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
			]]
			if arg1_3 and arg1_3.responseBody then
				AppStorageUtilities_upvr.setIncompleteSignupUserId(tostring(arg1_3.responseBody.id))
				AppStorageUtilities_upvr.setIncompleteSignupUsername(arg1_3.responseBody.name)
				AppStorageService_upvr:Flush()
			end
			arg1_2(true)
		end):catch(function(arg1_4) -- Line 19
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			arg1_2(false)
		end)
	end):await()
	return any_await_result2
end