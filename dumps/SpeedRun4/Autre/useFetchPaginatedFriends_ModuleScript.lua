-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:18
-- Luau version 6, Types version 3
-- Time taken: 0.002259 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useFriendsListOrderedByPresence_upvr = require(Parent.FriendsCommon).Hooks.useFriendsListOrderedByPresence
local convertPresenceTypeToUserPresence_upvr = require(script.Parent.Utils.convertPresenceTypeToUserPresence)
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
function useFetchPaginatedFriends() -- Line 14
	--[[ Upvalues[5]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: useFriendsListOrderedByPresence_upvr (readonly)
		[4]: convertPresenceTypeToUserPresence_upvr (readonly)
		[5]: UserModel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useLocalization_upvr_result1 = useLocalization_upvr({
		offlinePresenceText = "Common.Presence.Label.Offline";
		onlinePresenceText = "Common.Presence.Label.Online";
	})
	local tbl = {
		userId = useLocalUserId_upvr();
		pageSize = 50;
	}
	local var4_result1 = useFriendsListOrderedByPresence_upvr(tbl)
	tbl = {}
	local var27 = tbl
	if var4_result1.onlineFriends and var4_result1.offlineFriends then
		for _, v in var4_result1.onlineFriends do
			local id = v.id
			local var29
			if v.presence then
				var29 = v.presence.userPresenceType
			else
				var29 = nil
			end
			local convertPresenceTypeToUserPresence_upvr_result1 = convertPresenceTypeToUserPresence_upvr(var29)
			if convertPresenceTypeToUserPresence_upvr_result1 == UserModel_upvr.PresenceType.ONLINE then
			elseif convertPresenceTypeToUserPresence_upvr_result1 == UserModel_upvr.PresenceType.IN_GAME then
				if v.presence then
				else
				end
			elseif convertPresenceTypeToUserPresence_upvr_result1 == UserModel_upvr.PresenceType.IN_STUDIO then
			end
			table.insert(var27, {
				id = id;
				presence = convertPresenceTypeToUserPresence_upvr_result1;
				presenceText = "Studio";
				thumbnail = `rbxthumb://type=AvatarHeadShot&id={id}&w=150&h=150`;
			})
		end
		for _, v_2 in var4_result1.offlineFriends do
			var29 = UserModel_upvr.PresenceType
			var29 = useLocalization_upvr_result1.offlinePresenceText
			local id_2 = v_2.id
			table.insert(var27, {
				id = id_2;
				presence = var29.OFFLINE;
				presenceText = var29;
				thumbnail = `rbxthumb://type=AvatarHeadShot&id={id_2}&w=150&h=150`;
			})
		end
	end
	return var27, var4_result1.fetchMoreFriends, var4_result1.isEndOfList
end
return useFetchPaginatedFriends