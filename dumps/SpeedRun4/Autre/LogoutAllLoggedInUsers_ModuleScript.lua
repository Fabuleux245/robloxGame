-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:21:05
-- Luau version 6, Types version 3
-- Time taken: 0.000871 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local FFlagEnableLuaAccountSwitch_upvr = require(Parent.SharedFlags).FFlagEnableLuaAccountSwitch
local Promise_upvr = require(Parent.Promise)
local AppStorageUtilities_upvr = require(AuthCommon.Utils.AppStorageUtilities)
local LogoutAllLoggedInUsersRequest_upvr = require(AuthCommon.Http.Requests.LogoutAllLoggedInUsersRequest)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[4]:
		[1]: FFlagEnableLuaAccountSwitch_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: AppStorageUtilities_upvr (readonly)
		[4]: LogoutAllLoggedInUsersRequest_upvr (readonly)
	]]
	if not FFlagEnableLuaAccountSwitch_upvr then
		return Promise_upvr.resolve()
	end
	AppStorageUtilities_upvr.setAccountBlob("")
	AppStorageUtilities_upvr.flush()
	return LogoutAllLoggedInUsersRequest_upvr(arg1, AppStorageUtilities_upvr.getAccountBlob()):andThen(function(arg1_2) -- Line 17
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(arg1_2.responseBody)
	end):catch(function(arg1_3) -- Line 19
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		if arg1_3.data then
			return Promise_upvr.reject(arg1_3.data.errorCode)
		end
		if not arg1_3.StatusCode then
			return Promise_upvr.reject()
		end
		return Promise_upvr.reject({arg1_3.StatusCode})
	end)
end