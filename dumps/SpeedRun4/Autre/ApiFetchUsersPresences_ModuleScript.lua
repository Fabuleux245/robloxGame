-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:44
-- Luau version 6, Types version 3
-- Time taken: 0.001031 seconds

local UserLib = script:FindFirstAncestor("UserLib")
local UsersGetPresence_upvr = require(UserLib.Requests.UsersGetPresence)
local receiveUsersPresence_upvr = require(UserLib.Utils.receiveUsersPresence)
local getFriendsActiveGamesPlaceIdsFromUsersPresence_upvr = require(UserLib.Utils.getFriendsActiveGamesPlaceIdsFromUsersPresence)
local ApiFetchGamesDataByPlaceIds_upvr = require(UserLib.Parent.GameDetailRodux).GamesByPlaceId.ApiFetchGamesDataByPlaceIds
return function(arg1, arg2) -- Line 12
	--[[ Upvalues[4]:
		[1]: UsersGetPresence_upvr (readonly)
		[2]: receiveUsersPresence_upvr (readonly)
		[3]: getFriendsActiveGamesPlaceIdsFromUsersPresence_upvr (readonly)
		[4]: ApiFetchGamesDataByPlaceIds_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[6]:
			[1]: UsersGetPresence_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: receiveUsersPresence_upvr (copied, readonly)
			[5]: getFriendsActiveGamesPlaceIdsFromUsersPresence_upvr (copied, readonly)
			[6]: ApiFetchGamesDataByPlaceIds_upvr (copied, readonly)
		]]
		return UsersGetPresence_upvr(arg1, arg2):andThen(function(arg1_3) -- Line 14
			--[[ Upvalues[5]:
				[1]: receiveUsersPresence_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: getFriendsActiveGamesPlaceIdsFromUsersPresence_upvr (copied, readonly)
				[4]: ApiFetchGamesDataByPlaceIds_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			local userPresences = arg1_3.responseBody.userPresences
			receiveUsersPresence_upvr(userPresences, arg1_2)
			arg1_2:dispatch(ApiFetchGamesDataByPlaceIds_upvr(arg1, getFriendsActiveGamesPlaceIdsFromUsersPresence_upvr(userPresences, arg1_2)))
		end)
	end
end