-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:27
-- Luau version 6, Types version 3
-- Time taken: 0.010938 seconds

local Parent_2 = script.Parent
local Parent_3 = Parent_2.Parent
local Parent = Parent_3.Parent
local FriendsMenuDependencies = require(Parent_3.FriendsMenuDependencies)
local UserLib = require(Parent.UserLib)
local Constants = UserLib.Utils.Constants
local tbl_10_upvr = {
	InviteAvatarThumbnailType = Constants.RbxAvatarThumbnailTypesFromEnum.HeadShot;
	InviteAvatarThumbnailSize = Constants.RbxThumbnailSizes.Size150x150;
	InviteAvatarRbxthumbType = Constants.RbxthumbTypes.AvatarHeadShot;
	ThumbnailRequest = {
		InviteToGame = {UserLib.Utils.ThumbnailRequest.fromData(tbl_10_upvr.InviteAvatarThumbnailType, tbl_10_upvr.InviteAvatarThumbnailSize)};
	};
}
local SortInvitesByScoreIXP_upvr = require(Parent_3.Experiments.SortInvitesByScoreIXP)
local networkImpl_upvw = FriendsMenuDependencies.networkImpl
local Players_upvr = game:GetService("Players")
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local generateDummyFriends_upvr = require(Parent_3.utils.generateDummyFriends)
local useFriendsListOrderedByPresence_upvr = require(Parent.FriendsCommon).Hooks.useFriendsListOrderedByPresence
local UserProfiles_upvr = require(Parent.UserProfiles)
local PreloadUsersThumbnail_upvr = UserLib.Thunks.PreloadUsersThumbnail
local UserModel_upvr = UserLib.Models.UserModel
local PresenceType_upvr = require(Parent.GraphQLServer).types.PresenceType
local FFlagFilterOutDeletedAccountsGameInvites_upvr = require(Parent_3.Flags.FFlagFilterOutDeletedAccountsGameInvites)
local Constants_upvr = require(Parent_3.Constants)
local sortFriendsByCorrectedPresenceAndRank_upvr = FriendsMenuDependencies.sortFriendsByCorrectedPresenceAndRank
local Cryo_upvr = require(Parent.Cryo)
local GetFriendsSearch_upvr = require(Parent_3.Requests.GetFriendsSearch)
local FriendsListContext_upvr = require(Parent_2.FriendsListContext)
return function(arg1) -- Line 55
	--[[ Upvalues[18]:
		[1]: SortInvitesByScoreIXP_upvr (readonly)
		[2]: networkImpl_upvw (readonly)
		[3]: Players_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: generateDummyFriends_upvr (readonly)
		[7]: useFriendsListOrderedByPresence_upvr (readonly)
		[8]: UserProfiles_upvr (readonly)
		[9]: PreloadUsersThumbnail_upvr (readonly)
		[10]: tbl_10_upvr (readonly)
		[11]: UserModel_upvr (readonly)
		[12]: PresenceType_upvr (readonly)
		[13]: FFlagFilterOutDeletedAccountsGameInvites_upvr (readonly)
		[14]: Constants_upvr (readonly)
		[15]: sortFriendsByCorrectedPresenceAndRank_upvr (readonly)
		[16]: Cryo_upvr (readonly)
		[17]: GetFriendsSearch_upvr (readonly)
		[18]: FriendsListContext_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local var75_upvr
	if SortInvitesByScoreIXP_upvr.FFlagEnableSortInvitesByScoreExperiment then
		local _ = SortInvitesByScoreIXP_upvr.useSortInvitesByScoreExperiment()
	else
	end
	var75_upvr = arg1.networkImplOverride
	if var75_upvr then
		-- KONSTANTWARNING: GOTO [18] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 35 start (CF ANALYSIS FAILED)
	if Players_upvr.LocalPlayer then
		var75_upvr = tostring(Players_upvr.LocalPlayer.UserId)
	else
		var75_upvr = '0'
	end
	local any_useState_result1_upvr, any_useState_result2_6 = React_upvr.useState("")
	local any_useState_result1_2, any_useState_result2_4_upvr = React_upvr.useState(true)
	local tbl_upvw = {}
	local any_useState_result1_3, any_useState_result2_3_upvr = React_upvr.useState(generateDummyFriends_upvr(10))
	local var17_result1_upvr_2 = useFriendsListOrderedByPresence_upvr({
		userId = var75_upvr;
		pageSize = 50;
		shouldListenToPresenceUpdates = false;
	})
	local any_useUserProfilesFetch_result1_upvr_2 = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = {};
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
	})
	local var14_result1_upvr = useDispatch_upvr()
	local var90_upvr
	local function var88_upvr(arg1_11, arg2) -- Line 85
		--[[ Upvalues[17]:
			[1]: var14_result1_upvr (readonly)
			[2]: PreloadUsersThumbnail_upvr (copied, readonly)
			[3]: tbl_10_upvr (copied, readonly)
			[4]: any_useUserProfilesFetch_result1_upvr_2 (readonly)
			[5]: arg1 (readonly)
			[6]: UserModel_upvr (copied, readonly)
			[7]: var17_result1_upvr_2 (readonly)
			[8]: PresenceType_upvr (copied, readonly)
			[9]: FFlagFilterOutDeletedAccountsGameInvites_upvr (copied, readonly)
			[10]: Constants_upvr (copied, readonly)
			[11]: var90_upvr (readonly)
			[12]: SortInvitesByScoreIXP_upvr (copied, readonly)
			[13]: sortFriendsByCorrectedPresenceAndRank_upvr (copied, readonly)
			[14]: any_useState_result2_3_upvr (readonly)
			[15]: any_useState_result2_4_upvr (readonly)
			[16]: tbl_upvw (read and write)
			[17]: Cryo_upvr (copied, readonly)
		]]
		var14_result1_upvr(PreloadUsersThumbnail_upvr(arg1_11, tbl_10_upvr.ThumbnailRequest.InviteToGame, nil))
		local tbl_2 = {}
		local tbl_6 = {}
		tbl_6.userIds = arg1_11
		tbl_2.variables = tbl_6
		any_useUserProfilesFetch_result1_upvr_2:fetchMore(tbl_2):andThen(function(arg1_12) -- Line 93
			--[[ Upvalues[13]:
				[1]: arg1_11 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: UserModel_upvr (copied, readonly)
				[4]: var17_result1_upvr_2 (copied, readonly)
				[5]: PresenceType_upvr (copied, readonly)
				[6]: FFlagFilterOutDeletedAccountsGameInvites_upvr (copied, readonly)
				[7]: Constants_upvr (copied, readonly)
				[8]: var90_upvr (copied, readonly)
				[9]: SortInvitesByScoreIXP_upvr (copied, readonly)
				[10]: arg2 (readonly)
				[11]: sortFriendsByCorrectedPresenceAndRank_upvr (copied, readonly)
				[12]: any_useState_result2_3_upvr (copied, readonly)
				[13]: any_useState_result2_4_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [141] 94. Error Block 33 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [141] 94. Error Block 33 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.7]
			-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
		end):catch(function(arg1_13) -- Line 144
			--[[ Upvalues[1]:
				[1]: any_useState_result2_4_upvr (copied, readonly)
			]]
			print("error", arg1_13)
			any_useState_result2_4_upvr(false)
		end)
		if tbl_upvw then
			return Cryo_upvr.List.join(tbl_upvw, arg1_11)
		end
		return arg1_11
	end
	tbl_upvw = React_upvr.useMemo(function() -- Line 152
		--[[ Upvalues[10]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: GetFriendsSearch_upvr (copied, readonly)
			[3]: networkImpl_upvw (read and write)
			[4]: var75_upvr (readonly)
			[5]: var90_upvr (readonly)
			[6]: SortInvitesByScoreIXP_upvr (copied, readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: var88_upvr (readonly)
			[9]: var17_result1_upvr_2 (readonly)
			[10]: tbl_upvw (read and write)
		]]
		if any_useState_result1_upvr ~= "" then
			GetFriendsSearch_upvr(networkImpl_upvw, var75_upvr, any_useState_result1_upvr, 20):andThen(function(arg1_14) -- Line 154
				--[[ Upvalues[4]:
					[1]: var90_upvr (copied, readonly)
					[2]: SortInvitesByScoreIXP_upvr (copied, readonly)
					[3]: Cryo_upvr (copied, readonly)
					[4]: var88_upvr (copied, readonly)
				]]
				local var101_upvr
				if var90_upvr or SortInvitesByScoreIXP_upvr.FFlagSortInvitesByScoreEnabledForAll then
					var101_upvr = {}
				else
					var101_upvr = nil
				end
				return var88_upvr(Cryo_upvr.List.map(arg1_14.responseBody.PageItems, function(arg1_15, arg2) -- Line 159
					--[[ Upvalues[3]:
						[1]: var90_upvr (copied, readonly)
						[2]: SortInvitesByScoreIXP_upvr (copied, readonly)
						[3]: var101_upvr (readonly)
					]]
					if var90_upvr or SortInvitesByScoreIXP_upvr.FFlagSortInvitesByScoreEnabledForAll then
						var101_upvr[arg1_15.id] = arg2
					end
					return tostring(arg1_15.id)
				end), var101_upvr)
			end):catch(function(arg1_16) -- Line 166
				print("error", arg1_16)
			end)
		elseif var17_result1_upvr_2.onlineFriends then
			local var104 = var17_result1_upvr_2
			if var104.offlineFriends then
				if var90_upvr or SortInvitesByScoreIXP_upvr.FFlagSortInvitesByScoreEnabledForAll then
					var104 = {}
				else
					var104 = nil
				end
				for i, v in Cryo_upvr.List.join(var17_result1_upvr_2.offlineFriends, var17_result1_upvr_2.onlineFriends), nil do
					local var105
					if Cryo_upvr.List.find(tbl_upvw, v.id) == nil then
						var105 = false
					else
						var105 = true
					end
					local function INLINED_3() -- Internal function, doesn't exist in bytecode
						table.insert({}, v.id)
						return var90_upvr
					end
					if not var105 and (INLINED_3() or SortInvitesByScoreIXP_upvr.FFlagSortInvitesByScoreEnabledForAll) then
						var104[v.id] = i
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return var88_upvr({}, var104)
			end
		end
		return {}
	end, {var17_result1_upvr_2.onlineFriends, var17_result1_upvr_2.offlineFriends, any_useState_result1_upvr})
	local module = {}
	local tbl = {
		friends = any_useState_result1_3;
	}
	local var109 = not Cryo_upvr.isEmpty(var17_result1_upvr_2.onlineFriends)
	if not var109 then
		var109 = not Cryo_upvr.isEmpty(var17_result1_upvr_2.offlineFriends)
	end
	tbl.hasFriends = var109
	var109 = any_useUserProfilesFetch_result1_upvr_2.loading
	local var110 = var109
	if not var110 then
		var110 = arg1.isLoadingCustomParams
		if not var110 then
			var110 = any_useState_result1_2
		end
	end
	tbl.isFetchingFriends = var110
	tbl.isFriendsListFetchFailed = false
	local tbl_12 = {}
	local var112 = any_useUserProfilesFetch_result1_upvr_2
	if var112 then
		var112 = any_useUserProfilesFetch_result1_upvr_2.loading
	end
	tbl_12.loading = var112
	tbl.friendsNames = tbl_12
	tbl.fetchMoreFriends = var17_result1_upvr_2.fetchMoreFriends
	tbl.searchFriends = any_useState_result2_6
	tbl.searchFriendsString = any_useState_result1_upvr
	module.value = tbl
	do
		return React_upvr.createElement(FriendsListContext_upvr.Provider, module, arg1.children)
	end
	-- KONSTANTERROR: [17] 14. Error Block 35 end (CF ANALYSIS FAILED)
end