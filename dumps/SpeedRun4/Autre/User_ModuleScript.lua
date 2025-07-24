-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:39
-- Luau version 6, Types version 3
-- Time taken: 0.005338 seconds

local Players_upvr = game:GetService("Players")
local module_upvr = {
	PresenceType = {
		OFFLINE = "OFFLINE";
		ONLINE = "ONLINE";
		IN_GAME = "IN_GAME";
		IN_STUDIO = "IN_STUDIO";
	};
	new = function() -- Line 17, Named "new"
		return {}
	end;
}
function module_upvr.fromData(arg1, arg2, arg3, arg4) -- Line 25
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.id = tostring(arg1)
	any_new_result1.isFetching = false
	any_new_result1.isFriend = arg3
	any_new_result1.friendRank = arg4 or 0
	any_new_result1.lastLocation = nil
	any_new_result1.name = arg2
	any_new_result1.displayName = arg2
	any_new_result1.externalAppDisplayName = arg2
	any_new_result1.universeId = nil
	any_new_result1.placeId = nil
	any_new_result1.rootPlaceId = nil
	any_new_result1.gameInstanceId = nil
	local var5
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var5 = module_upvr.PresenceType.ONLINE
		return var5
	end
	if not Players_upvr.LocalPlayer or any_new_result1.id ~= tostring(Players_upvr.LocalPlayer.UserId) or not INLINED() then
		var5 = nil
	end
	any_new_result1.presence = var5
	var5 = nil
	any_new_result1.DEPRECATED_thumbnails = var5
	var5 = nil
	any_new_result1.lastOnline = var5
	return any_new_result1
end
local GetFFlagInviteListRerank_upvr = require(script:FindFirstAncestor("UserLib").Parent.SharedFlags).GetFFlagInviteListRerank
function module_upvr.fromDataTable(arg1) -- Line 51
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: GetFFlagInviteListRerank_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.id = tostring(arg1.id)
	any_new_result1_2.isFriend = arg1.isFriend
	any_new_result1_2.friendRank = arg1.friendRank
	local var8
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var8 = module_upvr.PresenceType.ONLINE
		return var8
	end
	if not Players_upvr.LocalPlayer or any_new_result1_2.id ~= tostring(Players_upvr.LocalPlayer.UserId) or not INLINED_2() then
		var8 = nil
	end
	any_new_result1_2.presence = var8
	var8 = false
	any_new_result1_2.isFetching = var8
	var8 = nil
	any_new_result1_2.lastLocation = var8
	var8 = arg1.name
	any_new_result1_2.name = var8
	var8 = arg1.displayName
	if not var8 then
		var8 = arg1.name
	end
	any_new_result1_2.displayName = var8
	any_new_result1_2.externalAppDisplayName = arg1.externalAppDisplayName
	any_new_result1_2.universeId = nil
	any_new_result1_2.placeId = nil
	any_new_result1_2.rootPlaceId = nil
	any_new_result1_2.gameInstanceId = nil
	any_new_result1_2.DEPRECATED_thumbnails = nil
	any_new_result1_2.lastOnline = nil
	any_new_result1_2.hasVerifiedBadge = arg1.hasVerifiedBadge
	if GetFFlagInviteListRerank_upvr() then
		any_new_result1_2.friendFrequentRank = arg1.friendFrequentRank
	end
	return any_new_result1_2
end
function module_upvr.compare(arg1, arg2) -- Line 80
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25 = false
	if arg1 == nil then
		if arg2 ~= nil then
			var25 = false
		else
			var25 = true
		end
	end
	assert(not var25, "user1 and user2 cannot both be nil")
	if arg1 ~= nil then
		if typeof(arg1) ~= "table" then
		else
		end
	end
	assert(true, "user1 must be a table or nil")
	if arg2 ~= nil then
		if typeof(arg2) ~= "table" then
		else
		end
	end
	assert(true, "user2 must be a table or nil")
	if not arg1 or not arg2 then
		return false
	end
	for i, v in pairs(arg2) do
		if arg1[i] ~= v then
			return false
		end
	end
	for i_2, v_2 in pairs(arg1) do
		if arg2[i_2] ~= v_2 then
			return false
		end
	end
	return true
end
function module_upvr.userPresenceToText(arg1, arg2) -- Line 105
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local presence = arg2.presence
	local lastLocation = arg2.lastLocation
	if not presence then
		return ""
	end
	if presence == module_upvr.PresenceType.OFFLINE then
		return arg1:Format("Common.Presence.Label.Offline")
	end
	if presence == module_upvr.PresenceType.ONLINE then
		return arg1:Format("Common.Presence.Label.Online")
	end
	if presence == module_upvr.PresenceType.IN_GAME or presence == module_upvr.PresenceType.IN_STUDIO then
		if lastLocation ~= nil then
			return lastLocation
		end
		return arg1:Format("Common.Presence.Label.Online")
	end
end
return module_upvr