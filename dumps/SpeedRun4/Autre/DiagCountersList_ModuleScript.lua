-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:00
-- Luau version 6, Types version 3
-- Time taken: 0.001054 seconds

local EventNames_upvr = require(script.Parent.EventNames)
local DiagEventTypes = require(script:FindFirstAncestor("UserProfiles").Parent.SocialLuaAnalytics).Analytics.Enums.DiagEventTypes
local module = {
	[EventNames_upvr.UserProfilesRequestBegin] = {
		name = game:DefineFastString("UserProfilesRequestBegin", "UserProfilesRequestBegin");
	};
	[EventNames_upvr.UserProfilesRequestSuccess] = {
		name = game:DefineFastString("UserProfilesRequestSuccess", "UserProfilesRequestSuccess");
	};
	[EventNames_upvr.UserProfilesRequestFail] = {
		name = game:DefineFastString("UserProfilesRequestFail", "UserProfilesRequestFail");
	};
	[EventNames_upvr.UserProfilesRequestFailAfterRetry] = {
		name = game:DefineFastString("UserProfilesRequestFailAfterRetry", "UserProfilesRequestFailAfterRetry");
	};
	[EventNames_upvr.UserProfilesRequestSuccessAfterRetry] = {
		name = game:DefineFastString("UserProfilesRequestSuccessAfterRetry", "UserProfilesRequestSuccessAfterRetry");
	};
}
local tbl = {
	type = DiagEventTypes.Counter;
}
local ErrorCodesForLogging_upvr = require(script.Parent.ErrorCodesForLogging)
function tbl.name(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: EventNames_upvr (readonly)
		[2]: ErrorCodesForLogging_upvr (readonly)
	]]
	local tostring_result1 = tostring(arg1.status)
	local UserProfilesErrorCode = EventNames_upvr.UserProfilesErrorCode
	if ErrorCodesForLogging_upvr[tostring_result1] then
		UserProfilesErrorCode = UserProfilesErrorCode..tostring_result1
		return UserProfilesErrorCode
	end
	return UserProfilesErrorCode.."Other"
end
module[EventNames_upvr.UserProfilesErrorCode] = tbl
module[EventNames_upvr.UserProfilesUnmountEarly] = {
	type = DiagEventTypes.Counter;
	name = game:DefineFastString("UserProfilesUnmountEarly", "UserProfilesUnmountEarly");
}
return module