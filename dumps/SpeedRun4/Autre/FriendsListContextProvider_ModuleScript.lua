-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:26
-- Luau version 6, Types version 3
-- Time taken: 0.016728 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local FriendsMenuDependencies = require(Parent.FriendsMenuDependencies)
local UserLib = require(Parent_2.UserLib)
local RoactUtils = require(Parent_2.RoactUtils)
local Constants = UserLib.Utils.Constants
local tbl_5_upvr = {
	InviteAvatarThumbnailType = Constants.RbxAvatarThumbnailTypesFromEnum.HeadShot;
	InviteAvatarThumbnailSize = Constants.RbxThumbnailSizes.Size150x150;
	InviteAvatarRbxthumbType = Constants.RbxthumbTypes.AvatarHeadShot;
	ThumbnailRequest = {
		InviteToGame = {UserLib.Utils.ThumbnailRequest.fromData(tbl_5_upvr.InviteAvatarThumbnailType, tbl_5_upvr.InviteAvatarThumbnailSize)};
	};
}
local networkImpl_upvr = FriendsMenuDependencies.networkImpl
local React_upvr = require(Parent_2.React)
local generateDummyFriends_upvr = require(Parent.utils.generateDummyFriends)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local UserProfiles_upvr = require(Parent_2.UserProfiles)
local GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr = require(Parent_2.SharedFlags).GetFFlagEnableFriendsListSearchNormalizationErrorFix
local Players_upvr = game:GetService("Players")
local DEPRECATED_UsersGetFriends_upvr = require(Parent_2.Http).Requests.DEPRECATED_UsersGetFriends
local UserSorts_upvr = require(Parent.Constants).UserSorts
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("InviteListDeprecateNames", false)
local UserModel_upvr = UserLib.Models.UserModel
local UpdateUsers_upvr = UserLib.Thunks.UpdateUsers
local PreloadUsersThumbnail_upvr = UserLib.Thunks.PreloadUsersThumbnail
local ApiFetchUsersPresences_upvr = UserLib.Thunks.ApiFetchUsersPresences
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local sortFriendsByCorrectedPresenceAndRank_upvr = FriendsMenuDependencies.sortFriendsByCorrectedPresenceAndRank
local FriendsListContext_upvr = require(Parent_3.FriendsListContext)
return function(arg1) -- Line 63
	--[[ Upvalues[18]:
		[1]: networkImpl_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: generateDummyFriends_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: UserProfiles_upvr (readonly)
		[6]: GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: DEPRECATED_UsersGetFriends_upvr (readonly)
		[9]: UserSorts_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
		[11]: UserModel_upvr (readonly)
		[12]: UpdateUsers_upvr (readonly)
		[13]: PreloadUsersThumbnail_upvr (readonly)
		[14]: tbl_5_upvr (readonly)
		[15]: ApiFetchUsersPresences_upvr (readonly)
		[16]: useSelector_upvr (readonly)
		[17]: sortFriendsByCorrectedPresenceAndRank_upvr (readonly)
		[18]: FriendsListContext_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var29_upvw
	local var30
	if arg1.networkImplOverride then
		var29_upvw = arg1.networkImplOverride
	else
		var29_upvw = networkImpl_upvr
	end
	local any_useState_result1_4_upvr, any_useState_result2_3_upvr = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState({})
	local any_useState_result1_2_upvr, any_useState_result2 = React_upvr.useState("")
	local any_useState_result1_5, any_useState_result2_2_upvr = React_upvr.useState(generateDummyFriends_upvr(7))
	local any_useUserProfilesFetch_result1_upvw = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = any_useState_result1_3;
		query = UserProfiles_upvr.Queries.userProfilesAllNamesByUserIds;
	})
	local function var43_upvr(arg1_2) -- Line 90
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: any_useUserProfilesFetch_result1_upvw (read and write)
			[4]: UserProfiles_upvr (copied, readonly)
			[5]: GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr (copied, readonly)
		]]
		if not arg1_2 or not arg1_2.isFriend then
			return false
		end
		if arg1.excludedFriendsSet and arg1.excludedFriendsSet[arg1_2.id] then
			return false
		end
		if any_useState_result1_2_upvr == nil or any_useState_result1_2_upvr == "" then
			return true
		end
		local var73 = arg1_2.displayName or ""
		local var74 = arg1_2.name or ""
		local var75 = ""
		local var76 = ""
		local var77 = ""
		if any_useUserProfilesFetch_result1_upvw then
			if any_useUserProfilesFetch_result1_upvw.data then
				local names_3 = UserProfiles_upvr.Selectors.getUserProfileFromId(any_useUserProfilesFetch_result1_upvw.data, arg1_2.id).names
				if names_3 then
					var75 = names_3.alias or ""
					var73 = names_3.displayName or ""
					var74 = names_3.username or ""
					var76 = names_3.contactName or ""
					var77 = names_3.platformName or ""
				end
			end
		end
		local utf8_nfdnormalize_result1_3 = utf8.nfdnormalize(var75)
		local var80_upvw
		if GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr() then
			pcall(function() -- Line 127
				--[[ Upvalues[2]:
					[1]: var80_upvw (read and write)
					[2]: any_useState_result1_2_upvr (copied, readonly)
				]]
				var80_upvw = utf8.nfdnormalize(any_useState_result1_2_upvr)
			end)
		else
			var80_upvw = utf8.nfdnormalize(any_useState_result1_2_upvr)
		end
		if GetFFlagEnableFriendsListSearchNormalizationErrorFix_upvr() then
			if not var80_upvw or string.find(utf8_nfdnormalize_result1_3:lower(), var80_upvw:lower(), 1, true) == nil and string.find(utf8.nfdnormalize(var76):lower(), var80_upvw:lower(), 1, true) == nil and string.find(utf8.nfdnormalize(var77):lower(), var80_upvw:lower(), 1, true) == nil and string.find(utf8.nfdnormalize(var73):lower(), var80_upvw:lower(), 1, true) == nil then
				if string.find(var74:lower(), any_useState_result1_2_upvr:lower(), 1, true) == nil then
				else
				end
			end
			return true
		end
		local var82 = true
		if string.find(utf8_nfdnormalize_result1_3:lower(), var80_upvw:lower(), 1, true) == nil then
			var82 = true
			if string.find(utf8.nfdnormalize(var76):lower(), var80_upvw:lower(), 1, true) == nil then
				var82 = true
				if string.find(utf8.nfdnormalize(var77):lower(), var80_upvw:lower(), 1, true) == nil then
					var82 = true
					if string.find(utf8.nfdnormalize(var73):lower(), var80_upvw:lower(), 1, true) == nil then
						if string.find(var74:lower(), any_useState_result1_2_upvr:lower(), 1, true) == nil then
							var82 = false
						else
							var82 = true
						end
					end
				end
			end
		end
		return var82
	end
	local function _(arg1_3) -- Line 157
		--[[ Upvalues[2]:
			[1]: any_useUserProfilesFetch_result1_upvw (read and write)
			[2]: UserProfiles_upvr (copied, readonly)
		]]
		local var84
		if any_useUserProfilesFetch_result1_upvw and any_useUserProfilesFetch_result1_upvw.data then
			var84 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_upvw.data, arg1_3.id)
		end
		if var84 == nil then
			return arg1_3.displayName
		end
		return var84
	end
	local function _(arg1_4) -- Line 169
		--[[ Upvalues[2]:
			[1]: any_useUserProfilesFetch_result1_upvw (read and write)
			[2]: UserProfiles_upvr (copied, readonly)
		]]
		local var86
		if any_useUserProfilesFetch_result1_upvw and any_useUserProfilesFetch_result1_upvw.data then
			var86 = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1_upvw.data, arg1_4.id)
		end
		if var86 == nil then
			return arg1_4.name
		end
		return var86
	end
	local var15_result1_upvr = useDispatch_upvr()
	React_upvr.useEffect(function() -- Line 181
		--[[ Upvalues[15]:
			[1]: Players_upvr (copied, readonly)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: any_useState_result2_3_upvr (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: DEPRECATED_UsersGetFriends_upvr (copied, readonly)
			[6]: var29_upvw (read and write)
			[7]: UserSorts_upvr (copied, readonly)
			[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[9]: UserModel_upvr (copied, readonly)
			[10]: var15_result1_upvr (readonly)
			[11]: UpdateUsers_upvr (copied, readonly)
			[12]: any_useState_result2_upvr (readonly)
			[13]: PreloadUsersThumbnail_upvr (copied, readonly)
			[14]: tbl_5_upvr (copied, readonly)
			[15]: ApiFetchUsersPresences_upvr (copied, readonly)
		]]
		local var89
		if Players_upvr and Players_upvr.LocalPlayer then
			var89 = tostring(Players_upvr.LocalPlayer.UserId)
		end
		if not any_useState_result1_4_upvr and var89 then
			any_useState_result2_3_upvr(true)
			any_useState_result2_upvr_2(false)
			DEPRECATED_UsersGetFriends_upvr(var29_upvw, var89, UserSorts_upvr.StatusFrequents):andThen(function(arg1_5) -- Line 191
				--[[ Upvalues[5]:
					[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[2]: UserModel_upvr (copied, readonly)
					[3]: var15_result1_upvr (copied, readonly)
					[4]: UpdateUsers_upvr (copied, readonly)
					[5]: any_useState_result2_upvr (copied, readonly)
				]]
				local module_2 = {}
				local tbl_2 = {}
				for i, v in pairs(arg1_5.responseBody.data) do
					v.isFriend = true
					v.friendRank = i
					if game_DefineFastFlag_result1_upvr then
						v.name = ""
						v.displayName = ""
					end
					local any_fromDataTable_result1 = UserModel_upvr.fromDataTable(v)
					table.insert(module_2, tostring(v.id))
					tbl_2[any_fromDataTable_result1.id] = any_fromDataTable_result1
				end
				var15_result1_upvr(UpdateUsers_upvr(tbl_2))
				any_useState_result2_upvr(module_2)
				return module_2
			end, function(arg1_6) -- Line 213
				--[[ Upvalues[2]:
					[1]: any_useState_result2_3_upvr (copied, readonly)
					[2]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				any_useState_result2_3_upvr(false)
				any_useState_result2_upvr_2(true)
				return {}
			end):andThen(function(arg1_7) -- Line 219
				--[[ Upvalues[5]:
					[1]: var15_result1_upvr (copied, readonly)
					[2]: PreloadUsersThumbnail_upvr (copied, readonly)
					[3]: tbl_5_upvr (copied, readonly)
					[4]: ApiFetchUsersPresences_upvr (copied, readonly)
					[5]: var29_upvw (copied, read and write)
				]]
				var15_result1_upvr(PreloadUsersThumbnail_upvr(arg1_7, tbl_5_upvr.ThumbnailRequest.InviteToGame, nil))
				return var15_result1_upvr(ApiFetchUsersPresences_upvr(var29_upvw, arg1_7))
			end):andThen(function(arg1_8) -- Line 227
				--[[ Upvalues[1]:
					[1]: any_useState_result2_3_upvr (copied, readonly)
				]]
				any_useState_result2_3_upvr(false)
			end, function(arg1_9) -- Line 229
				--[[ Upvalues[2]:
					[1]: any_useState_result2_3_upvr (copied, readonly)
					[2]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				any_useState_result2_3_upvr(false)
				any_useState_result2_upvr_2(true)
			end)
		end
	end, {})
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_10) -- Line 236
		return arg1_10.Users
	end)
	local tbl_6 = {}
	var30 = any_useUserProfilesFetch_result1_upvw
	if var30 then
		var30 = any_useUserProfilesFetch_result1_upvw.loading
	end
	tbl_6[1] = useSelector_upvr_result1_upvr
	tbl_6[2] = any_useState_result1_2_upvr
	tbl_6[3] = tostring(any_useState_result1_4_upvr)
	tbl_6[4] = tostring(var30)
	React_upvr.useEffect(function() -- Line 240
		--[[ Upvalues[9]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: any_useState_result2_2_upvr (readonly)
			[3]: generateDummyFriends_upvr (copied, readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: var43_upvr (readonly)
			[6]: any_useUserProfilesFetch_result1_upvw (read and write)
			[7]: UserProfiles_upvr (copied, readonly)
			[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[9]: sortFriendsByCorrectedPresenceAndRank_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if any_useState_result1_4_upvr then
			any_useState_result2_2_upvr(generateDummyFriends_upvr(7))
		else
			local tbl = {}
			for _, v_2 in pairs(useSelector_upvr_result1_upvr) do
				if var43_upvr(v_2) then
					tbl[#tbl + 1] = v_2
					local var131
					if any_useUserProfilesFetch_result1_upvw and any_useUserProfilesFetch_result1_upvw.data then
						var131 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_upvw.data, v_2.id)
					end
					if var131 == nil then
					else
					end
					v_2.displayName = var131
					if game_DefineFastFlag_result1_upvr then
						var131 = nil
						if any_useUserProfilesFetch_result1_upvw and any_useUserProfilesFetch_result1_upvw.data then
							var131 = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1_upvw.data, v_2.id)
						end
						if var131 == nil then
						else
						end
						v_2.name = var131
					end
				end
			end
			table.sort(tbl, sortFriendsByCorrectedPresenceAndRank_upvr)
			any_useState_result2_2_upvr(tbl)
		end
	end, tbl_6)
	local module = {}
	local tbl_3 = {
		friends = any_useState_result1_5;
	}
	if 0 >= #any_useState_result1_3 then
	else
	end
	tbl_3.hasFriends = true
	if not any_useState_result1_4_upvr then
	end
	tbl_3.isFetchingFriends = arg1.isLoadingCustomParams
	tbl_3.isFriendsListFetchFailed = any_useState_result1
	local tbl_7 = {}
	local var136 = any_useUserProfilesFetch_result1_upvw
	if var136 then
		var136 = any_useUserProfilesFetch_result1_upvw.loading
	end
	tbl_7.loading = var136
	tbl_3.friendsNames = tbl_7
	tbl_3.searchFriends = any_useState_result2
	tbl_3.searchFriendsString = any_useState_result1_2_upvr
	module.value = tbl_3
	return React_upvr.createElement(FriendsListContext_upvr.Provider, module, arg1.children)
end