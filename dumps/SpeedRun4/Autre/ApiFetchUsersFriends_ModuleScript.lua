-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:44
-- Luau version 6, Types version 3
-- Time taken: 0.001516 seconds

local CorePackages = game:GetService("CorePackages")
local FetchUserFriendsStarted_upvr = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsStarted
local DEPRECATED_UsersGetFriends_upvr = require(CorePackages.Workspace.Packages.Http).Requests.DEPRECATED_UsersGetFriends
local GetFFlagInviteListRerank_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInviteListRerank
local UserModel_upvr = require(CorePackages.Workspace.Packages.UserLib).Models.UserModel
local UpdateUsers_upvr = require(CorePackages.Workspace.Packages.UserLib).Thunks.UpdateUsers
local ApiFetchUsersPresences_upvr = require(CorePackages.Workspace.Packages.UserLib).Thunks.ApiFetchUsersPresences
local FetchUserFriendsCompleted_upvr = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsCompleted
local Promise_upvr = require(CorePackages.Packages.Promise)
local FetchUserFriendsFailed_upvr = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Actions.FetchUserFriendsFailed
return function(arg1, arg2, arg3, arg4) -- Line 16
	--[[ Upvalues[9]:
		[1]: FetchUserFriendsStarted_upvr (readonly)
		[2]: DEPRECATED_UsersGetFriends_upvr (readonly)
		[3]: GetFFlagInviteListRerank_upvr (readonly)
		[4]: UserModel_upvr (readonly)
		[5]: UpdateUsers_upvr (readonly)
		[6]: ApiFetchUsersPresences_upvr (readonly)
		[7]: FetchUserFriendsCompleted_upvr (readonly)
		[8]: Promise_upvr (readonly)
		[9]: FetchUserFriendsFailed_upvr (readonly)
	]]
	return function(arg1_2) -- Line 17
		--[[ Upvalues[12]:
			[1]: FetchUserFriendsStarted_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: DEPRECATED_UsersGetFriends_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg4 (readonly)
			[6]: GetFFlagInviteListRerank_upvr (copied, readonly)
			[7]: UserModel_upvr (copied, readonly)
			[8]: UpdateUsers_upvr (copied, readonly)
			[9]: ApiFetchUsersPresences_upvr (copied, readonly)
			[10]: FetchUserFriendsCompleted_upvr (copied, readonly)
			[11]: Promise_upvr (copied, readonly)
			[12]: FetchUserFriendsFailed_upvr (copied, readonly)
		]]
		arg1_2:dispatch(FetchUserFriendsStarted_upvr(arg2))
		return DEPRECATED_UsersGetFriends_upvr(arg1, arg2, arg4):andThen(function(arg1_3) -- Line 21
			--[[ Upvalues[4]:
				[1]: GetFFlagInviteListRerank_upvr (copied, readonly)
				[2]: UserModel_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: UpdateUsers_upvr (copied, readonly)
			]]
			local module = {}
			local tbl = {}
			for i, v in pairs(arg1_3.responseBody.data) do
				v.isFriend = true
				if GetFFlagInviteListRerank_upvr() then
					v.friendRank = i
				end
				local any_fromDataTable_result1 = UserModel_upvr.fromDataTable(v)
				table.insert(module, tostring(v.id))
				tbl[any_fromDataTable_result1.id] = any_fromDataTable_result1
			end
			arg1_2:dispatch(UpdateUsers_upvr(tbl))
			return module
		end):andThen(function(arg1_4) -- Line 43
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: ApiFetchUsersPresences_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			return arg1_2:dispatch(ApiFetchUsersPresences_upvr(arg1, arg1_4))
		end):andThen(function(arg1_5) -- Line 46
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: FetchUserFriendsCompleted_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(FetchUserFriendsCompleted_upvr(arg2))
			return Promise_upvr.resolve(arg1_5)
		end, function(arg1_6) -- Line 50
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: FetchUserFriendsFailed_upvr (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(FetchUserFriendsFailed_upvr(arg2, arg1_6))
			return Promise_upvr.reject(arg1_6)
		end)
	end
end