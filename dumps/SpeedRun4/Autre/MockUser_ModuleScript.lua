-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:39
-- Luau version 6, Types version 3
-- Time taken: 0.000922 seconds

local var1_upvw = 0
local function _() -- Line 7
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	var1_upvw += 1
	return tostring(var1_upvw)
end
local module = {}
module.__index = module
local User_upvr = require(script.Parent.User)
function module.new() -- Line 15
	--[[ Upvalues[2]:
		[1]: User_upvr (readonly)
		[2]: var1_upvw (read and write)
	]]
	local any_new_result1 = User_upvr.new()
	var1_upvw += 1
	any_new_result1.id = tostring(var1_upvw)
	any_new_result1.isFetching = false
	any_new_result1.isFriend = false
	any_new_result1.friendRank = 0
	any_new_result1.lastLocation = nil
	any_new_result1.name = "USER NAME"
	any_new_result1.universeId = nil
	any_new_result1.placeId = nil
	any_new_result1.rootPlaceId = nil
	any_new_result1.gameInstanceId = nil
	any_new_result1.presence = User_upvr.PresenceType.OFFLINE
	any_new_result1.membership = nil
	any_new_result1.thumbnails = nil
	any_new_result1.lastOnline = nil
	any_new_result1.displayName = "DN+"..any_new_result1.name
	any_new_result1.externalAppDisplayName = "EXTERNAL APP DISPLAY NAME"
	any_new_result1.hasVerifiedBadge = false
	setmetatable(any_new_result1, {
		__index = User_upvr;
	})
	return any_new_result1
end
function module.mockEndpointResponse() -- Line 44
	return {
		created = "0001-01-01T06:00:00Z";
		displayName = "DN+12345";
		friendFrequentRank = 1;
		friendFrequentScore = 2;
		id = 12345;
		isBanned = false;
		isDeleted = false;
		isOnline = false;
		name = "USER NAME";
		presenceType = 0;
		hasVerifiedBadge = false;
	}
end
return module