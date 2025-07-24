-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:29
-- Luau version 6, Types version 3
-- Time taken: 0.027791 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local AddFriends = FriendsLanding.AddFriends
local ReactFocusNavigation = require(Parent.ReactFocusNavigation)
local Responsive_upvr = require(Parent.Responsive)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local var8_upvw
if require(Parent.SharedFlags).GetFFlagEnableAppCommonInputHooks() then
	var8_upvw = require(Parent.FocusNavigationUtils).useLastInputMode
else
	var8_upvw = ReactFocusNavigation.useLastInputMode
end
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useFocusGuiObject_upvr = ReactFocusNavigation.useFocusGuiObject
local useStyle_upvr = UIBlox.Core.Style.useStyle
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local React_upvr = require(Parent.React)
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local FFlagAddFriendsPageUserTileImpressions_upvr = require(Parent.SharedFlags).FFlagAddFriendsPageUserTileImpressions
local useImpressionsTagger_upvr = require(Parent.Impressions).useImpressionsTagger
local RecommendationContextType_upvr = require(AddFriends.Redux.RoduxFriends).Enums.RecommendationContextType
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local AddFriendsSelector_upvr = require(AddFriends.Redux.AddFriendsSelector)
local useFriendRequestHandlers_upvr = require(script.Parent.useFriendRequestHandlers)
local useAddFriendsTileFocusNavigationBindings_upvr = require(script.Parent.useAddFriendsTileFocusNavigationBindings)
local SetCentralOverlay_upvr = require(Parent.CentralOverlay).Actions.SetCentralOverlay
local CentralOverlayType_upvr = require(Parent.RobloxAppEnums).CentralOverlayType
local convertUserPresenceTypeToString_upvr = require(Parent.SocialCommon).Utils.convertUserPresenceTypeToString
local FriendshipOriginSourceType_upvr = require(Parent.FriendsNetworking).Enums.FriendshipOriginSourceType
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local getFooterRelevanceInfo_upvr = require(script.Parent.getFooterRelevanceInfo)
local Dash_upvr = require(Parent.Dash)
local Constants_upvr = require(FriendsLanding.Common.Constants)
local Contexts_upvr = require(Parent.SocialLuaAnalytics).Analytics.Enums.Contexts
local UserProfiles_upvr = require(Parent.UserProfiles)
local getOverlayButtons_upvr = require(script.Parent.getOverlayButtons)
local PlayerTile_upvr = UIBlox.App.Tile.PlayerTile
local GetFFlagLuaAppEnableOpenTypeSupport_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableOpenTypeSupport
local OpenTypeSupport_upvr = UIBlox.Utility.OpenTypeSupport
return function(arg1) -- Line 91, Named "AddFriendsTile"
	--[[ Upvalues[32]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useFocusGuiObject_upvr (readonly)
		[6]: var8_upvw (read and write)
		[7]: useStyle_upvr (readonly)
		[8]: usePreferredInput_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
		[11]: FFlagAddFriendsPageUserTileImpressions_upvr (readonly)
		[12]: useImpressionsTagger_upvr (readonly)
		[13]: RecommendationContextType_upvr (readonly)
		[14]: useSelector_upvr (readonly)
		[15]: AddFriendsSelector_upvr (readonly)
		[16]: useFriendRequestHandlers_upvr (readonly)
		[17]: useAddFriendsTileFocusNavigationBindings_upvr (readonly)
		[18]: SetCentralOverlay_upvr (readonly)
		[19]: CentralOverlayType_upvr (readonly)
		[20]: convertUserPresenceTypeToString_upvr (readonly)
		[21]: FriendshipOriginSourceType_upvr (readonly)
		[22]: useLocalization_upvr (readonly)
		[23]: getFooterRelevanceInfo_upvr (readonly)
		[24]: Responsive_upvr (readonly)
		[25]: Dash_upvr (readonly)
		[26]: Constants_upvr (readonly)
		[27]: Contexts_upvr (readonly)
		[28]: UserProfiles_upvr (readonly)
		[29]: getOverlayButtons_upvr (readonly)
		[30]: PlayerTile_upvr (readonly)
		[31]: GetFFlagLuaAppEnableOpenTypeSupport_upvr (readonly)
		[32]: OpenTypeSupport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var111_upvr
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local var11_result1 = useAppPolicy_upvr(function(arg1_9) -- Line 93
			return arg1_9.getRenameFriendsToConnections()
		end)
	else
	end
	local var12_result1_upvr = useDispatch_upvr()
	local var13_result1_upvr = useFocusGuiObject_upvr()
	local var8_result1_upvr = var8_upvw()
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local var15_result1_upvr_2 = usePreferredInput_upvr()
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 106
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var8_result1_upvr (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: var13_result1_upvr (readonly)
		]]
		if arg1.selected then
			if var8_result1_upvr == "Focus" then
				local current_2 = any_useRef_result1_upvr_2.current
				if current_2 then
					var13_result1_upvr(current_2)
				end
			end
		end
	end, dependencyArray_upvr(arg1.selected, var8_result1_upvr, any_useRef_result1_upvr_2, var13_result1_upvr))
	React_upvr.useEffect(function() -- Line 115
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr()
	end, {})
	if FFlagAddFriendsPageUserTileImpressions_upvr then
		useImpressionsTagger_upvr(any_useRef_result1_upvr_2, arg1.impressionsTag, arg1.position)
	end
	if arg1.user.contextType then
		if arg1.user.contextType ~= RecommendationContextType_upvr.Contacts then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local var21_result1_upvr_2 = useSelector_upvr(function(arg1_10) -- Line 125
		--[[ Upvalues[2]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local AddFriendsSelector_upvr_result1_2 = AddFriendsSelector_upvr(arg1_10, "IsUserFollowing")
		if not AddFriendsSelector_upvr_result1_2 then
			AddFriendsSelector_upvr_result1_2 = {}
		end
		if not AddFriendsSelector_upvr_result1_2[arg1.user.id] or not AddFriendsSelector_upvr_result1_2[arg1.user.id].isFollowing then
		end
		return false
	end)
	local useSelector_upvr_result1_upvr_5 = useSelector_upvr(function(arg1_11) -- Line 130
		--[[ Upvalues[2]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var22_result1 = AddFriendsSelector_upvr(arg1_11, "IsUserFollowing")
		if not var22_result1 then
			var22_result1 = {}
		end
		if not var22_result1[arg1.user.id] or not var22_result1[arg1.user.id].isFollowed then
		end
		return false
	end)
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_12) -- Line 135
		--[[ Upvalues[2]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local AddFriendsSelector_upvr_result1_6 = AddFriendsSelector_upvr(arg1_12, "RequestsFromOriginSourceType")
		if not AddFriendsSelector_upvr_result1_6 then
			AddFriendsSelector_upvr_result1_6 = {}
		end
		return AddFriendsSelector_upvr_result1_6[arg1.user.id]
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_13) -- Line 140
		--[[ Upvalues[2]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return AddFriendsSelector_upvr(arg1_13, "Friends.recommendations.hasIncomingFriendRequest.%s", arg1.user.id) or false
	end)
	local var21_result1_upvr_5 = useSelector_upvr(function(arg1_14) -- Line 144
		--[[ Upvalues[2]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var137
		if not var137 then
			var137 = {}
		end
		local var138 = var137[arg1.user.id]
		if var138 ~= nil and var138 ~= 0 then
			local AddFriendsSelector_upvr_result1_5 = AddFriendsSelector_upvr(arg1_14, "Games.byGameId.%s", tostring(var138))
			if not AddFriendsSelector_upvr_result1_5 then
				AddFriendsSelector_upvr_result1_5 = {}
			end
			return AddFriendsSelector_upvr_result1_5.name
		end
		return nil
	end)
	local useSelector_upvr_result1_upvr_3 = useSelector_upvr(function(arg1_15) -- Line 155
		--[[ Upvalues[2]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return AddFriendsSelector_upvr(arg1_15, "Friends.friendshipStatus.%s", arg1.user.id) or nil
	end)
	local tbl_5 = {}
	var111_upvr = arg1.user.id
	tbl_5.playerId = var111_upvr
	var111_upvr = arg1.position
	tbl_5.position = var111_upvr
	var111_upvr = arg1.isFriendRequest
	tbl_5.isFriendRequest = var111_upvr
	tbl_5.friendStatus = useSelector_upvr_result1_upvr_3
	var111_upvr = arg1.user.rank
	tbl_5.rank = var111_upvr
	var111_upvr = arg1.handleRequestFriendship
	tbl_5.handleRequestFriendship = var111_upvr
	var111_upvr = arg1.handleAcceptFriendRequest
	tbl_5.handleAcceptFriendRequest = var111_upvr
	var111_upvr = arg1.handleDeclineFriendRequest
	tbl_5.handleDeclineFriendRequest = var111_upvr
	tbl_5.hasIncomingFriendRequest = useSelector_upvr_result1_upvr
	if arg1.user.contextType then
		var111_upvr = arg1.user.contextType.rawValue()
	else
		var111_upvr = nil
	end
	tbl_5.contextType = var111_upvr
	var111_upvr = useFriendRequestHandlers_upvr(tbl_5)
	if useSelector_upvr_result1_upvr_3 ~= Enum.FriendStatus.FriendRequestReceived then
	end
	var111_upvr = React_upvr.useCallback
	var111_upvr = var111_upvr(function() -- Line 177
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: useSelector_upvr_result1_upvr_3 (readonly)
			[3]: var12_result1_upvr (readonly)
			[4]: SetCentralOverlay_upvr (copied, readonly)
			[5]: CentralOverlayType_upvr (copied, readonly)
			[6]: convertUserPresenceTypeToString_upvr (copied, readonly)
			[7]: FriendshipOriginSourceType_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var145
		if arg1.isRecommendation then
			var145 = useSelector_upvr_result1_upvr_3
			if not var145 then
				var145 = Enum.FriendStatus.NotFriend
				-- KONSTANTWARNING: GOTO [11] #9
			end
		else
			var145 = Enum.FriendStatus.FriendRequestReceived
		end
		local tbl_15 = {
			subjectUserId = arg1.user.id;
			contactId = arg1.user.entityId;
			contactName = arg1.user.entityDisplayName;
			recommendationContext = arg1.user.contextType;
			mutualFriendsCount = arg1.user.mutualFriendsCount;
			robloxFriendshipStatus = var145;
			subjectPresence = {
				locationString = arg1.user.lastLocation;
				locationPlaceId = arg1.user.placeId;
				locationRootPlaceId = arg1.user.rootPlaceId;
				locationUniverseId = arg1.user.universeId;
				status = convertUserPresenceTypeToString_upvr(arg1.user.userPresenceType);
			};
		}
		if arg1.isRecommendation then
		else
		end
		tbl_15.friendshipOriginSourceType = nil
		var12_result1_upvr(SetCentralOverlay_upvr(CentralOverlayType_upvr.PlayerContextualMenu, tbl_15))
	end, dependencyArray_upvr(arg1.isRecommendation, useSelector_upvr_result1_upvr_3, arg1.user, var12_result1_upvr))
	local tbl_12 = {}
	local var153
	if arg1.user.mutualFriends and #arg1.user.mutualFriends == 1 then
		var153 = "Feature.Friends.Label.SingularMutualFriend"
	else
		var153 = "Feature.Friends.Label.MutualFriends"
	end
	tbl_12.mutualFriendsText = var153
	var153 = {}
	var153[1] = "Feature.Friends.Label.SentFromWithContext"
	var153.gameName = var21_result1_upvr_5 or ""
	tbl_12.sentFromWithContextText = var153
	var153 = "Feature.Friends.Label.YouAreFollowing"
	tbl_12.youAreFollowingText = var153
	var153 = "Feature.Friends.Label.FollowsYou"
	tbl_12.followsYouText = var153
	var153 = "Feature.Friends.Description.FoundFromContactImporter"
	tbl_12.fromContactsText = var153
	if arg1.user.contactName then
		var153 = {}
		var153[1] = "Feature.Friends.Description.FromContactsV2"
		var153.contactName = arg1.user.contactName
		-- KONSTANTWARNING: GOTO [243] #182
	end
	var153 = nil
	tbl_12.contactNameText = var153
	if FFlagFriendsRenameSocgraph_upvr and nil or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var153 = "Feature.Friends.Label.MutualConnection"
		-- KONSTANTWARNING: GOTO [253] #191
	end
	var153 = nil
	tbl_12.singularMutualConnection = var153
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if FFlagFriendsRenameSocgraph_upvr and INLINED_6() or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var153 = {}
		var153[1] = "Feature.Friends.Label.MutualConnections"
		local mutualFriendsCount = arg1.user.mutualFriendsCount
		if not mutualFriendsCount then
			mutualFriendsCount = arg1.user.mutualFriends
			if mutualFriendsCount then
				mutualFriendsCount = #arg1.user.mutualFriends
			end
		end
		var153.numConnections = mutualFriendsCount
		-- KONSTANTWARNING: GOTO [284] #212
	end
	var153 = nil
	tbl_12.mutualConnections = var153
	var153 = "Feature.Profile.Label.QRCodeFriendRequest"
	tbl_12.foundThroughQRCode = var153
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if FFlagFriendsRenameSocgraph_upvr and INLINED_7() or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var153 = "Feature.Friends.Label.ConnectionRequest"
		-- KONSTANTWARNING: GOTO [297] #223
	end
	var153 = nil
	tbl_12.connectionRequests = var153
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if FFlagFriendsRenameSocgraph_upvr and INLINED_8() or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var153 = nil
		-- KONSTANTWARNING: GOTO [307] #232
	end
	var153 = "Feature.Friends.Label.FriendRequest"
	tbl_12.friendRequests = var153
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if FFlagFriendsRenameSocgraph_upvr and INLINED_9() or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var153 = nil
		-- KONSTANTWARNING: GOTO [317] #241
	end
	var153 = "Feature.Friends.Label.MutualFriends"
	tbl_12.mutualFriends = var153
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil
	end
	if FFlagFriendsRenameSocgraph_upvr and INLINED_10() or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var153 = nil
		-- KONSTANTWARNING: GOTO [327] #250
	end
	var153 = "Feature.Friends.Label.SingularMutualFriend"
	tbl_12.singularMutualFriend = var153
	local var151
	var153 = "Feature.Friends.Label.Frequent"
	tbl_12.frequents = var153
	var153 = "Feature.Friends.Description.FromContacts"
	tbl_12.fromContacts = var153
	local var29_result1_upvr_2 = useLocalization_upvr(tbl_12)
	var153 = React_upvr
	local var154_upvr
	function var153() -- Line 258
		--[[ Upvalues[13]:
			[1]: getFooterRelevanceInfo_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: useSelector_upvr_result1_upvr_5 (readonly)
			[4]: var21_result1_upvr_2 (readonly)
			[5]: var21_result1_upvr_5 (readonly)
			[6]: useSelector_upvr_result1_upvr_3 (readonly)
			[7]: useSelector_upvr_result1_upvr_2 (readonly)
			[8]: useSelector_upvr_result1_upvr (readonly)
			[9]: useStyle_upvr_result1_upvr (readonly)
			[10]: var29_result1_upvr_2 (readonly)
			[11]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
			[12]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
			[13]: var154_upvr (readonly)
		]]
		local var156
		if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			var156 = var154_upvr
		else
			var156 = nil
		end
		return getFooterRelevanceInfo_upvr({
			mutualFriends = arg1.user.mutualFriends;
			isUserFollowingMe = useSelector_upvr_result1_upvr_5;
			amIFollowingUser = var21_result1_upvr_2;
			sentFromExperienceName = var21_result1_upvr_5;
			isFriendRequest = arg1.isFriendRequest or false;
			isRecommendation = arg1.isRecommendation;
			friendStatus = useSelector_upvr_result1_upvr_3;
			userPresenceType = arg1.user.userPresenceType;
			lastLocation = arg1.user.lastLocation;
			originSourceType = useSelector_upvr_result1_upvr_2;
			contextType = arg1.user.contextType;
			mutualFriendsCount = arg1.user.mutualFriendsCount;
			hasIncomingFriendRequest = useSelector_upvr_result1_upvr;
		}, useStyle_upvr_result1_upvr, var29_result1_upvr_2, var156)
	end
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var151 = var154_upvr
	else
		var151 = nil
	end
	local any_useMemo_result1_upvr_2, any_useMemo_result2_upvr_2 = var153.useMemo(var153, dependencyArray_upvr(arg1.user, useSelector_upvr_result1_upvr_5, var21_result1_upvr_2, var21_result1_upvr_5, arg1.isFriendRequest, arg1.isRecommendation, useSelector_upvr_result1_upvr_3, useSelector_upvr_result1_upvr_2, useSelector_upvr_result1_upvr, useStyle_upvr_result1_upvr, var29_result1_upvr_2, var151))
	local var160_upvr = true
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 299
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
			[3]: var15_result1_upvr_2 (readonly)
			[4]: Responsive_upvr (copied, readonly)
			[5]: any_useMemo_result2_upvr_2 (readonly)
			[6]: Dash_upvr (copied, readonly)
			[7]: var160_upvr (readonly)
			[8]: useSelector_upvr_result1_upvr_3 (readonly)
			[9]: Constants_upvr (copied, readonly)
			[10]: Contexts_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var161
		if arg1.isRecommendation then
			if any_useMemo_result1_upvr_2 then
				var161 = any_useMemo_result1_upvr_2
				if var161.text then
					local tbl_13 = {}
					var161 = any_useMemo_result1_upvr_2
					tbl_13.text = var161.text
					var161 = any_useMemo_result1_upvr_2
					tbl_13.icon = var161.icon
					-- KONSTANTWARNING: GOTO [23] #18
				end
			end
		end
		var161 = Responsive_upvr.Input.Directional
		if var15_result1_upvr_2 == var161 then
			local tbl_11 = {}
			if any_useMemo_result1_upvr_2 then
				var161 = any_useMemo_result1_upvr_2.text
			else
				var161 = nil
			end
			tbl_11.text = var161
			if any_useMemo_result1_upvr_2 then
				var161 = any_useMemo_result1_upvr_2.icon
			else
				var161 = nil
			end
			tbl_11.icon = var161
		end
		local tbl_9 = {}
		var161 = {}
		local var165 = var161
		var165.contextualInfoDisplay = tbl_11
		var165.contextualInfoType = any_useMemo_result2_upvr_2
		tbl_9.profilePeekViewProps = var165
		var165 = Dash_upvr.join
		local tbl_10 = {
			absolutePosition = arg1.position;
			rank = arg1.user.rank;
			isRecommendation = arg1.isRecommendation;
		}
		local var167 = var160_upvr
		tbl_10.isContact = var167
		if var160_upvr then
			var167 = "FromContacts"
		else
			var167 = nil
		end
		tbl_10.profileType = var167
		if var160_upvr then
			local _ = {
				contactId = arg1.user.entityId;
				contactname = arg1.user.entityDisplayName;
				avatarImageUrl = arg1.user.thumbnailEntities.avatarImageUrl;
			}
			-- KONSTANTWARNING: GOTO [121] #85
		end
		tbl_10.contactProps = nil
		tbl_10.friendStatus = useSelector_upvr_result1_upvr_3
		if arg1.isRecommendation then
		else
		end
		tbl_10.source = Contexts_upvr.AddFriends
		var165 = var165(tbl_9.profilePeekViewProps, tbl_10)
		arg1.handleNavigateDownToViewUserProfile(arg1.user.id, {
			profilePeekViewProps = var165;
		})
	end, dependencyArray_upvr(arg1.user, arg1.position, arg1.isRecommendation, useSelector_upvr_result1_upvr_3, arg1.handleNavigateDownToViewUserProfile, any_useMemo_result1_upvr_2, var15_result1_upvr_2, var160_upvr))
	local any_useUserProfilesFetch_result1 = UserProfiles_upvr.Hooks.useUserProfilesFetch({
		userIds = {arg1.user.id};
		query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
		skip = var160_upvr;
	})
	if var160_upvr then
		-- KONSTANTWARNING: GOTO [515] #392
	end
	local var175
	if any_useUserProfilesFetch_result1 and any_useUserProfilesFetch_result1.data then
		var175 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1.data, arg1.user.id) or ""
	end
	var151 = arg1.user
	var175 = React_upvr.useMemo
	var151 = useSelector_upvr_result1_upvr_3
	var175 = var175(function() -- Line 384
		--[[ Upvalues[7]:
			[1]: var8_result1_upvr (readonly)
			[2]: getOverlayButtons_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: useSelector_upvr_result1_upvr_3 (readonly)
			[5]: useSelector_upvr_result1_upvr (readonly)
			[6]: var160_upvr (readonly)
			[7]: any_useMemo_result2_upvr_2 (readonly)
		]]
		if var8_result1_upvr == "Focus" then
			return nil
		end
		return getOverlayButtons_upvr({
			playerId = arg1.user.id;
			position = arg1.position;
			isFriendRequest = arg1.isFriendRequest or false;
			friendStatus = useSelector_upvr_result1_upvr_3;
			rank = arg1.user.rank;
			handleRequestFriendship = arg1.handleRequestFriendship;
			handleAcceptFriendRequest = arg1.handleAcceptFriendRequest;
			handleDeclineFriendRequest = arg1.handleDeclineFriendRequest;
			hasIncomingFriendRequest = useSelector_upvr_result1_upvr;
			isContact = var160_upvr;
			contextualInfoType = any_useMemo_result2_upvr_2;
		})
	end, dependencyArray_upvr(arg1.user, arg1.position, arg1.isFriendRequest, var151, arg1.handleRequestFriendship, arg1.handleAcceptFriendRequest, arg1.handleDeclineFriendRequest, useSelector_upvr_result1_upvr, var160_upvr, any_useMemo_result2_upvr_2, var8_result1_upvr))
	local module_4 = {}
	var151 = 0.5
	module_4.AnchorPoint = Vector2.new(1, var151)
	var151 = 0.5
	module_4.Position = UDim2.fromScale(1, var151)
	var151 = arg1.size.X
	module_4.Size = UDim2.new(0, var151, 0, arg1.size.Y)
	module_4.BackgroundTransparency = 1
	module_4.ZIndex = 1
	module_4.ref = useAddFriendsTileFocusNavigationBindings_upvr(var111_upvr, false)
	module_4.LayoutOrder = arg1.layoutOrder
	local module_2 = {}
	var151 = React_upvr
	var151 = PlayerTile_upvr
	local tbl_6 = {
		thumbnail = string.format("rbxthumb://type=Avatar&id=%s&w=720&h=720", tostring(var151.id));
		title = var175;
		tileSize = UDim2.new(0, arg1.size.X, 0, arg1.size.Y);
		subtitle = '@'..(arg1.user.externalAppDisplayName or UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1.data, arg1.user.id) or "");
		buttons = var175;
		relevancyInfo = any_useMemo_result1_upvr_2;
		onActivated = React_upvr.useCallback(function() -- Line 350
			--[[ Upvalues[4]:
				[1]: var15_result1_upvr_2 (readonly)
				[2]: Responsive_upvr (copied, readonly)
				[3]: var111_upvr (readonly)
				[4]: any_useCallback_result1_upvr_2 (readonly)
			]]
			if var15_result1_upvr_2 == Responsive_upvr.Input.Directional then
				return var111_upvr()
			end
			return any_useCallback_result1_upvr_2()
		end, dependencyArray_upvr(var15_result1_upvr_2, var111_upvr, any_useCallback_result1_upvr_2));
		forwardedRef = any_useRef_result1_upvr_2;
	}
	local var181 = true
	tbl_6.Selectable = var181
	if GetFFlagLuaAppEnableOpenTypeSupport_upvr() then
		var181 = OpenTypeSupport_upvr:getUserNameStylisticAlternative()
	else
		var181 = nil
	end
	tbl_6.openTypeFeatures = var181
	module_2.PlayerTile = var151.createElement(var151, tbl_6)
	return React_upvr.createElement("Frame", module_4, module_2)
end