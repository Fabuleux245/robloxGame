-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:42
-- Luau version 6, Types version 3
-- Time taken: 0.039012 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local PlayerContextualMenu = script:FindFirstAncestor("PlayerContextualMenu")
local Parent = PlayerContextualMenu.Parent
local RoactUtils = require(Parent.RoactUtils)
local DiscoveryAnalytics_upvr = require(Parent.DiscoveryAnalytics)
local Navigation_upvr = require(Parent.Navigation)
local RobloxAppSessionization = require(Parent.RobloxAppSessionization)
local SetGamePlaySession_upvr = RobloxAppSessionization.SetGamePlaySession
local SessionType_upvr = RobloxAppSessionization.SessionType
local UIBlox = require(Parent.UIBlox)
local Analytics = require(PlayerContextualMenu.Analytics)
local EventNames_upvr = Analytics.EventNames
local AnalyticsService_upvr = Analytics.AnalyticsService
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixConnectionRemovedToast", false)
local PlayerContextualMenuContainer
if game:GetEngineFeature("PlatformFriendsService") and game:GetEngineFeature("PlatformFriendsProfile") then
else
end
game:DefineFastFlag("PCMRefactorExperienceCTARendering", false)
local function NO_OPT_CALLBACK_upvr() -- Line 99, Named "NO_OPT_CALLBACK"
end
local HttpService_upvr = game:GetService("HttpService")
local ExperienceService_upvr = require(Parent.ExperienceService).ExperienceService
local function launchGameWithAnalytics_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 101, Named "launchGameWithAnalytics"
	--[[ Upvalues[7]:
		[1]: SetGamePlaySession_upvr (readonly)
		[2]: SessionType_upvr (readonly)
		[3]: EventNames_upvr (readonly)
		[4]: HttpService_upvr (readonly)
		[5]: DiscoveryAnalytics_upvr (readonly)
		[6]: AnalyticsService_upvr (readonly)
		[7]: ExperienceService_upvr (readonly)
	]]
	SetGamePlaySession_upvr(arg5, SessionType_upvr.StructuralIdentifier.GamePlayFromFriendsList, true)
	local tbl_43 = {}
	tbl_43.profileUserId = arg3
	arg1(EventNames_upvr.JoinExperience, tbl_43)
	local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
	local Constants = DiscoveryAnalytics_upvr.Constants
	local tbl_53 = {}
	tbl_53.friendId = arg3
	tbl_53.pageName = arg2
	if arg4 then
		Constants = arg4.locationPlaceId
	else
		Constants = nil
	end
	tbl_53.placeId = Constants
	if arg4 then
		Constants = arg4.locationRootPlaceId
	else
		Constants = nil
	end
	tbl_53.rootPlaceId = Constants
	tbl_53.joinAttemptId = any_GenerateGUID_result1
	DiscoveryAnalytics_upvr.Events.gamePlayIntent(AnalyticsService_upvr.EventStream, Constants.Context.PlayerContextualMenu, tbl_53)
	local tbl_29 = {}
	tbl_29.userId = arg3
	tbl_29.joinAttemptId = any_GenerateGUID_result1
	ExperienceService_upvr:LaunchExperience(tbl_29, "PlayerContextualMenu")
end
local tbl_11_upvr = {
	enableExperienceCTAs = true;
}
PlayerContextualMenuContainer = 0
tbl_11_upvr.width = UDim.new(PlayerContextualMenuContainer, 400)
local tbl_7_upvr = {}
if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = "CommonUI.Features.Label.AcceptConnection"
else
	PlayerContextualMenuContainer = nil
end
tbl_7_upvr.AcceptConnection = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = "CommonUI.Features.Label.AddConnection"
else
	PlayerContextualMenuContainer = nil
end
tbl_7_upvr.AddConnection = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = "Feature.AddFriends.Action.IgnoreConnectionRequest"
else
	PlayerContextualMenuContainer = nil
end
tbl_7_upvr.IgnoreConnectionRequest = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = "CommonUI.Features.Label.RemoveConnection"
else
	PlayerContextualMenuContainer = nil
end
tbl_7_upvr.RemoveConnection = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = nil
	-- KONSTANTWARNING: GOTO [409] #258
end
PlayerContextualMenuContainer = "Feature.Friends.Action.AcceptFriend"
tbl_7_upvr.AcceptFriendRequest = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = nil
	-- KONSTANTWARNING: GOTO [415] #263
end
PlayerContextualMenuContainer = "Feature.PlayerSearchResults.Action.AddFriend"
tbl_7_upvr.AddFriend = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Friends.Action.Block"
tbl_7_upvr.Block = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Friends.Action.Unblock"
tbl_7_upvr.Unblock = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "CommonUI.Features.Label.Chat"
tbl_7_upvr.Chat = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = nil
	-- KONSTANTWARNING: GOTO [430] #274
end
PlayerContextualMenuContainer = "Feature.AddFriends.Action.IgnoreFriendRequest"
tbl_7_upvr.IgnoreFriendRequest = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Chat.Drawer.Join"
tbl_7_upvr.Join = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Friends.Action.PendingRequest"
tbl_7_upvr.PendingRequest = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Catalog.Action.Report"
tbl_7_upvr.Report = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = nil
	-- KONSTANTWARNING: GOTO [445] #285
end
PlayerContextualMenuContainer = "Feature.Friends.Action.Unfriend"
tbl_7_upvr.Unfriend = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Profile.Label.ViewDetails"
tbl_7_upvr.ViewDetails = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Xbox.Old.ViewGamerCardWord"
tbl_7_upvr.ViewGamerCardWord = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Friends.Action.ViewPlatformProfile"
tbl_7_upvr.ViewPlatformProfile = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = "Feature.Friends.Action.ConnectionAdded"
else
	PlayerContextualMenuContainer = nil
end
tbl_7_upvr.ConnectionAdded = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = "Feature.Friends.Action.ConnectionRequestSent"
else
	PlayerContextualMenuContainer = nil
end
tbl_7_upvr.ConnectionRequestSent = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = nil
	-- KONSTANTWARNING: GOTO [474] #308
end
PlayerContextualMenuContainer = "Feature.Friends.Action.FriendAdded"
tbl_7_upvr.FriendRequestAccepted = PlayerContextualMenuContainer
if game_DefineFastFlag_result1_upvr then
	PlayerContextualMenuContainer = "Feature.Friends.Label.ConnectionRemoved"
	-- KONSTANTWARNING: GOTO [480] #313
end
PlayerContextualMenuContainer = nil
tbl_7_upvr.ConnectionRemoved = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.AddFriends.Action.RequestIgnored"
tbl_7_upvr.FriendRequestIgnored = PlayerContextualMenuContainer
if FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	PlayerContextualMenuContainer = nil
else
	PlayerContextualMenuContainer = "Feature.Friends.Action.FriendRequestSent"
end
tbl_7_upvr.FriendRequestSent = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Toast.NetworkingError.SomethingIsWrong"
tbl_7_upvr.SomethingIsWrong = PlayerContextualMenuContainer
PlayerContextualMenuContainer = "Feature.Profile.Action.UserBlocked"
tbl_7_upvr.UserBlocked = PlayerContextualMenuContainer
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local Cryo_upvr = require(Parent.Cryo)
local RoactRodux_upvr = RoactUtils.Hooks.RoactRodux
local RobloxAppHooks_upvr = require(Parent.RobloxAppHooks)
local AppSessionService_upvr = require(Parent.RoactServiceTags).AppSessionService
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ToastRodux_upvr = require(Parent.ToastRodux)
local React_upvr = require(Parent.React)
local setupFireEvent_upvr = Analytics.setupFireEvent
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local useHttpRequest_upvr = require(script.Parent.HttpRequest.useHttpRequest)
local Url_upvr = require(Parent.Http).Url
local getFFlagAppChatPCMFixBlocking_upvr = require(Parent.SharedFlags).getFFlagAppChatPCMFixBlocking
local FFlagUserBlockingApiPlayerContextMenuEnabled_upvr = require(PlayerContextualMenu.Flags.FFlagUserBlockingApiPlayerContextMenuEnabled)
local Blocking_upvr = require(PlayerContextualMenu.Http.Blocking)
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local UserProfiles_upvr = require(Parent.UserProfiles)
local var45_upvr
local RecommendationContextType_upvr = require(Parent.FriendsRodux).config({
	keyPath = "PlayerContextualMenu.Friends";
}).Enums.RecommendationContextType
local getPresenceIcon_upvr = require(script.Parent.getPresenceIcon)
local getPresenceText_upvr = require(script.Parent.getPresenceText)
local useRecommendationContextualInfoDisplay_upvr = require(Parent.SocialCommon).Hooks.useRecommendationContextualInfoDisplay
local getCurrentRouteState_upvr = Navigation_upvr.getCurrentRouteState
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local FFlagUseBlockingModal_upvr = require(Parent.SharedFlags).FFlagUseBlockingModal
local Friends_upvr = require(PlayerContextualMenu.Http.Friends)
local Images_upvr = UIBlox.App.ImageSet.Images
local game_DefineFastString_result1_upvr = game:DefineFastString("PlayerContextualMenuVendorImagePath", "rbxasset://textures/ui/Shell/Icons/PlatformLogo.png")
local Dash_upvr = require(Parent.Dash)
local PlayerContextualMenuComponent_upvr = require(PlayerContextualMenu.Components.PlayerContextualMenuComponent)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FFlagPCMAcceptWidthAsProp", false)
function PlayerContextualMenuContainer(arg1) -- Line 222
	--[[ Upvalues[47]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: tbl_11_upvr (readonly)
		[6]: RoactRodux_upvr (readonly)
		[7]: RobloxAppHooks_upvr (readonly)
		[8]: Navigation_upvr (readonly)
		[9]: AppSessionService_upvr (readonly)
		[10]: useLocalization_upvr (readonly)
		[11]: tbl_7_upvr (readonly)
		[12]: ToastRodux_upvr (readonly)
		[13]: React_upvr (readonly)
		[14]: setupFireEvent_upvr (readonly)
		[15]: AnalyticsService_upvr (readonly)
		[16]: dependencyArray_upvr (readonly)
		[17]: useHttpRequest_upvr (readonly)
		[18]: Url_upvr (readonly)
		[19]: getFFlagAppChatPCMFixBlocking_upvr (readonly)
		[20]: FFlagUserBlockingApiPlayerContextMenuEnabled_upvr (readonly)
		[21]: Blocking_upvr (readonly)
		[22]: any_new_result1_upvr (readonly)
		[23]: useDesignTokens_upvr (readonly)
		[24]: UserProfiles_upvr (readonly)
		[25]: var45_upvr (readonly)
		[26]: RecommendationContextType_upvr (readonly)
		[27]: getPresenceIcon_upvr (readonly)
		[28]: getPresenceText_upvr (readonly)
		[29]: useRecommendationContextualInfoDisplay_upvr (readonly)
		[30]: EventNames_upvr (readonly)
		[31]: SetGamePlaySession_upvr (readonly)
		[32]: SessionType_upvr (readonly)
		[33]: DiscoveryAnalytics_upvr (readonly)
		[34]: getCurrentRouteState_upvr (readonly)
		[35]: AppPage_upvr (readonly)
		[36]: Button_upvr (readonly)
		[37]: ButtonType_upvr (readonly)
		[38]: launchGameWithAnalytics_upvr (readonly)
		[39]: FFlagUseBlockingModal_upvr (readonly)
		[40]: Friends_upvr (readonly)
		[41]: game_DefineFastFlag_result1_upvr (readonly)
		[42]: Images_upvr (readonly)
		[43]: game_DefineFastString_result1_upvr (readonly)
		[44]: NO_OPT_CALLBACK_upvr (readonly)
		[45]: Dash_upvr (readonly)
		[46]: PlayerContextualMenuComponent_upvr (readonly)
		[47]: game_DefineFastFlag_result1_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var203_upvw
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local _ = useAppPolicy_upvr(function(arg1_10) -- Line 224
			return arg1_10.getRenameFriendsToConnections()
		end)
	else
	end
	local any_union_result1_upvr_2 = Cryo_upvr.Dictionary.union(tbl_11_upvr, arg1)
	local any_useDispatch_result1_upvr_2 = RoactRodux_upvr.useDispatch()
	local any_useLocalUserId_result1_upvr_2 = RobloxAppHooks_upvr.useLocalUserId()
	local any_useNavigation_result1_upvr_2 = Navigation_upvr.useNavigation()
	local any_useRoactService_result1_upvr_2 = RobloxAppHooks_upvr.useRoactService(AppSessionService_upvr)
	local var32_result1_upvr = useLocalization_upvr(tbl_7_upvr)
	local tbl_38_upvr = {
		toastMessage = var32_result1_upvr.SomethingIsWrong;
		isLocalized = true;
		toastType = ToastRodux_upvr.Enums.ToastType.NetworkingError;
	}
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 244
		--[[ Upvalues[3]:
			[1]: setupFireEvent_upvr (copied, readonly)
			[2]: AnalyticsService_upvr (copied, readonly)
			[3]: any_useLocalUserId_result1_upvr_2 (readonly)
		]]
		return setupFireEvent_upvr({
			analytics = AnalyticsService_upvr;
			infoForAllEvents = {
				uid = any_useLocalUserId_result1_upvr_2;
			};
		})
	end, dependencyArray_upvr(any_useLocalUserId_result1_upvr_2))
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState({
		status = "NotStarted";
		isPlayable = false;
	})
	local var37_result1_upvr_2 = useHttpRequest_upvr()
	React_upvr.useEffect(function() -- Line 260
		--[[ Upvalues[4]:
			[1]: any_union_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: var37_result1_upvr_2 (readonly)
			[4]: Url_upvr (copied, readonly)
		]]
		if any_union_result1_upvr_2.subjectPresence and any_union_result1_upvr_2.subjectPresence.locationUniverseId then
			any_useState_result2_upvr_2({
				status = "Fetching";
				isPlayable = false;
			})
			var37_result1_upvr_2(Url_upvr.GAME_URL.."v1/games/multiget-playability-status?universeIds="..any_union_result1_upvr_2.subjectPresence.locationUniverseId, "GET"):andThen(function(arg1_11) -- Line 272
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				if arg1_11.responseBody and arg1_11.responseBody[1] then
					any_useState_result2_upvr_2({
						status = "Finished";
						isPlayable = arg1_11.responseBody[1].isPlayable;
					})
				end
			end):catch(function(arg1_12) -- Line 280
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				any_useState_result2_upvr_2({
					status = "Failed";
					isPlayable = false;
				})
			end)
		end
	end, {tostring(any_union_result1_upvr_2.subjectPresence)})
	if getFFlagAppChatPCMFixBlocking_upvr() then
		local any_useSelector_result1_upvw = RoactRodux_upvr.useSelector(function(arg1_13) -- Line 292
			--[[ Upvalues[2]:
				[1]: FFlagUserBlockingApiPlayerContextMenuEnabled_upvr (copied, readonly)
				[2]: any_union_result1_upvr_2 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var229
			if FFlagUserBlockingApiPlayerContextMenuEnabled_upvr then
				var229 = arg1_13.PlayerContextualMenu.UserBlocking.isBlockedByMe
			else
				var229 = arg1_13.PlayerContextualMenu.IsBlockedByMe
			end
			if var229[any_union_result1_upvr_2.subjectUserId] ~= nil then
			else
			end
			return true
		end)
		local tbl_16 = {}
		var203_upvw = any_useDispatch_result1_upvr_2
		tbl_16[1] = any_useSelector_result1_upvw
		tbl_16[2] = var203_upvw
		tbl_16[3] = any_union_result1_upvr_2.subjectUserId
		React_upvr.useEffect(function() -- Line 300
			--[[ Upvalues[5]:
				[1]: any_useSelector_result1_upvw (read and write)
				[2]: any_useDispatch_result1_upvr_2 (readonly)
				[3]: Blocking_upvr (copied, readonly)
				[4]: any_union_result1_upvr_2 (readonly)
				[5]: any_new_result1_upvr (copied, readonly)
			]]
			if any_useSelector_result1_upvw then
				any_useDispatch_result1_upvr_2(Blocking_upvr.IsBlockedById.API({
					userId = any_union_result1_upvr_2.subjectUserId;
				})):andThen(function() -- Line 305
				end):catch(function() -- Line 306
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warning("Failed to check if subject user is blocked")
				end)
			end
		end, tbl_16)
	end
	local useDesignTokens_upvr_result1_upvr_2 = useDesignTokens_upvr(function(arg1_14) -- Line 313
		return {
			iconEmphasis = arg1_14.Semantic.Icon.Emphasis;
			onlinePresence = arg1_14.Semantic.Color.Common.Online;
			joinEventButtonHeight = arg1_14.Global.Size_600;
		}
	end)
	local tbl_52 = {}
	local tbl = {}
	var203_upvw = any_union_result1_upvr_2.subjectUserId
	tbl[1] = var203_upvw
	tbl_52.userIds = tbl
	var203_upvw = UserProfiles_upvr.Queries
	tbl_52.query = var203_upvw.userProfilesDisplayUserPlatformNamesByUserIds
	local any_useUserProfilesFetch_result1_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch(tbl_52)
	var203_upvw = ""
	if any_useUserProfilesFetch_result1_upvr.data then
		local any_getUsernameFromId_result1_upvw_2 = UserProfiles_upvr.Selectors.getUsernameFromId(any_useUserProfilesFetch_result1_upvr.data, any_union_result1_upvr_2.subjectUserId)
		var203_upvw = UserProfiles_upvr.Selectors.getPlatformNameFromId(any_useUserProfilesFetch_result1_upvr.data, any_union_result1_upvr_2.subjectUserId)
		if var45_upvr then
			local any_getPlatformProfileIdFromId_result1_upvw_2 = UserProfiles_upvr.Selectors.getPlatformProfileIdFromId(any_useUserProfilesFetch_result1_upvr.data, any_union_result1_upvr_2.subjectUserId)
		end
	end
	if var203_upvw then
		if var203_upvw == "" then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	else
	end
	if any_union_result1_upvr_2.recommendationContext == RecommendationContextType_upvr.Contacts then
		local var245_upvw = any_union_result1_upvr_2.contactName or ""
	end
	local _, _ = getPresenceIcon_upvr(any_union_result1_upvr_2.subjectPresence, useDesignTokens_upvr_result1_upvr_2)
	if any_union_result1_upvr_2.robloxFriendshipStatus ~= Enum.FriendStatus.Friend then
	end
	if any_union_result1_upvr_2.robloxFriendshipStatus == Enum.FriendStatus.Friend then
	else
	end
	if any_union_result1_upvr_2.recommendationContext then
		local var49_result1_2 = useRecommendationContextualInfoDisplay_upvr({
			contextType = any_union_result1_upvr_2.recommendationContext;
			mutualFriendsCount = any_union_result1_upvr_2.mutualFriendsCount;
		})
		local text_upvw = var49_result1_2.text
	end
	local any_useCallback_result1_upvr_12 = React_upvr.useCallback(function() -- Line 364
		--[[ Upvalues[12]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useDispatch_result1_upvr_2 (readonly)
			[5]: any_useRoactService_result1_upvr_2 (readonly)
			[6]: SetGamePlaySession_upvr (copied, readonly)
			[7]: SessionType_upvr (copied, readonly)
			[8]: DiscoveryAnalytics_upvr (copied, readonly)
			[9]: AnalyticsService_upvr (copied, readonly)
			[10]: getCurrentRouteState_upvr (copied, readonly)
			[11]: any_useNavigation_result1_upvr_2 (readonly)
			[12]: AppPage_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.ViewExperienceDetails, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
		if any_union_result1_upvr_2.subjectPresence and any_union_result1_upvr_2.subjectPresence.locationUniverseId then
			local tostring_result1 = tostring(any_union_result1_upvr_2.subjectPresence.locationUniverseId)
			if any_useRoactService_result1_upvr_2 then
				SetGamePlaySession_upvr(any_useRoactService_result1_upvr_2, SessionType_upvr.StructuralIdentifier.GameDetailSource, false)
			end
			DiscoveryAnalytics_upvr.Events.gameDetailReferral(AnalyticsService_upvr.EventStream, DiscoveryAnalytics_upvr.Constants.Context.PlayerContextualMenu, {
				pg = getCurrentRouteState_upvr(any_useNavigation_result1_upvr_2).routeName;
				universeId = tostring_result1;
				pid = any_union_result1_upvr_2.subjectPresence.locationPlaceId;
				friendId = any_union_result1_upvr_2.subjectUserId;
			})
			any_useNavigation_result1_upvr_2.navigate(AppPage_upvr.ExperienceDetail, {
				detail = tostring_result1;
			})
		end
	end, {any_useMemo_result1_upvr_2, any_union_result1_upvr_2.subjectUserId, any_union_result1_upvr_2.closeCentralOverlayThunk, any_union_result1_upvr_2.subjectPresence, any_useNavigation_result1_upvr_2, any_useRoactService_result1_upvr_2})
	local function var257_upvr() -- Line 402
		--[[ Upvalues[8]:
			[1]: any_union_result1_upvr_2 (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
			[3]: React_upvr (copied, readonly)
			[4]: Button_upvr (copied, readonly)
			[5]: ButtonType_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr_12 (readonly)
			[7]: useDesignTokens_upvr_result1_upvr_2 (readonly)
			[8]: var32_result1_upvr (readonly)
		]]
		if game:GetFastFlag("PCMRefactorExperienceCTARendering") then
			local var259
			if var259 then
				if any_union_result1_upvr_2.subjectPresence then
					if any_union_result1_upvr_2.subjectPresence.status ~= "InGame" then
						var259 = false
					else
						var259 = true
					end
				else
					var259 = false
				end
				if var259 and not any_useState_result1_upvr_2.isPlayable then
					return function() -- Line 413
						--[[ Upvalues[6]:
							[1]: React_upvr (copied, readonly)
							[2]: Button_upvr (copied, readonly)
							[3]: ButtonType_upvr (copied, readonly)
							[4]: any_useCallback_result1_upvr_12 (copied, readonly)
							[5]: useDesignTokens_upvr_result1_upvr_2 (copied, readonly)
							[6]: var32_result1_upvr (copied, readonly)
						]]
						return React_upvr.createElement(Button_upvr, {
							buttonType = ButtonType_upvr.PrimarySystem;
							onActivated = any_useCallback_result1_upvr_12;
							isLoading = false;
							size = UDim2.new(1, 0, 0, useDesignTokens_upvr_result1_upvr_2.joinEventButtonHeight);
							text = var32_result1_upvr.ViewDetails;
							layoutOrder = 100;
						})
					end
				end
				return nil
			end
			return function() -- Line 430
				--[[ Upvalues[1]:
					[1]: React_upvr (copied, readonly)
				]]
				return React_upvr.createElement("Folder")
			end
		end
		if any_union_result1_upvr_2.subjectPresence == nil or any_union_result1_upvr_2.subjectPresence.status ~= "InGame" or any_useState_result1_upvr_2.isPlayable then
			return nil
		end
		return function() -- Line 442
			--[[ Upvalues[6]:
				[1]: React_upvr (copied, readonly)
				[2]: Button_upvr (copied, readonly)
				[3]: ButtonType_upvr (copied, readonly)
				[4]: any_useCallback_result1_upvr_12 (copied, readonly)
				[5]: useDesignTokens_upvr_result1_upvr_2 (copied, readonly)
				[6]: var32_result1_upvr (copied, readonly)
			]]
			return React_upvr.createElement(Button_upvr, {
				buttonType = ButtonType_upvr.PrimarySystem;
				onActivated = any_useCallback_result1_upvr_12;
				isLoading = false;
				size = UDim2.new(1, 0, 0, useDesignTokens_upvr_result1_upvr_2.joinEventButtonHeight);
				text = var32_result1_upvr.ViewDetails;
				layoutOrder = 100;
			})
		end
	end
	local any_useMemo_result1_upvr_4 = React_upvr.useMemo(var257_upvr, {any_useState_result1_upvr_2, tostring(any_union_result1_upvr_2.subjectPresence), any_union_result1_upvr_2.enableExperienceCTAs})
	local var267
	if any_union_result1_upvr_2.robloxFriendshipStatus == Enum.FriendStatus.Friend and any_union_result1_upvr_2.subjectPresence and any_union_result1_upvr_2.subjectPresence.status == "InGame" then
		var257_upvr = var32_result1_upvr.Join
	else
		var257_upvr = nil
	end
	local any_useCallback_result1_upvr_11 = React_upvr.useCallback(function() -- Line 468
		--[[ Upvalues[6]:
			[1]: launchGameWithAnalytics_upvr (copied, readonly)
			[2]: any_useMemo_result1_upvr_2 (readonly)
			[3]: getCurrentRouteState_upvr (copied, readonly)
			[4]: any_useNavigation_result1_upvr_2 (readonly)
			[5]: any_union_result1_upvr_2 (readonly)
			[6]: any_useRoactService_result1_upvr_2 (readonly)
		]]
		launchGameWithAnalytics_upvr(any_useMemo_result1_upvr_2, getCurrentRouteState_upvr(any_useNavigation_result1_upvr_2).routeName, any_union_result1_upvr_2.subjectUserId, any_union_result1_upvr_2.subjectPresence, any_useRoactService_result1_upvr_2)
	end, dependencyArray_upvr(any_useMemo_result1_upvr_2, any_useNavigation_result1_upvr_2, any_union_result1_upvr_2.subjectUserId, any_union_result1_upvr_2.subjectPresence, any_useRoactService_result1_upvr_2))
	if var45_upvr then
		local function _() -- Line 508
			--[[ Upvalues[5]:
				[1]: any_useMemo_result1_upvr_2 (readonly)
				[2]: EventNames_upvr (copied, readonly)
				[3]: any_union_result1_upvr_2 (readonly)
				[4]: var45_upvr (copied, readonly)
				[5]: any_getPlatformProfileIdFromId_result1_upvw_2 (read and write)
			]]
			any_useMemo_result1_upvr_2(EventNames_upvr.ViewPlatformProfile, {
				profileUserId = any_union_result1_upvr_2.subjectUserId;
			})
			var45_upvr:ShowProfile(any_getPlatformProfileIdFromId_result1_upvw_2)
		end
		local _ = {any_getPlatformProfileIdFromId_result1_upvw_2, any_useDispatch_result1_upvr_2, any_useNavigation_result1_upvr_2, any_union_result1_upvr_2.subjectUserId, any_union_result1_upvr_2.closeCentralOverlayThunk}
		-- KONSTANTWARNING: GOTO [406] #302
	end
	local var291_upvr
	local tbl_66 = {}
	var267 = any_union_result1_upvr_2.recommendationContext
	tbl_66[1] = var32_result1_upvr
	tbl_66[2] = any_useLocalUserId_result1_upvr_2
	tbl_66[3] = any_useDispatch_result1_upvr_2
	tbl_66[4] = any_union_result1_upvr_2.closeCentralOverlayThunk
	tbl_66[5] = any_union_result1_upvr_2.subjectUserId
	tbl_66[6] = var267
	tbl_66[7] = any_union_result1_upvr_2.contactId
	tbl_66[8] = any_union_result1_upvr_2.friendshipOriginSourceType
	var267 = any_union_result1_upvr_2.subjectUserId
	var267 = any_union_result1_upvr_2.closeCentralOverlayThunk
	local any_useSelector_result1_upvr_2 = RoactRodux_upvr.useSelector(function(arg1_17) -- Line 674
		--[[ Upvalues[2]:
			[1]: FFlagUserBlockingApiPlayerContextMenuEnabled_upvr (copied, readonly)
			[2]: any_union_result1_upvr_2 (readonly)
		]]
		local var320
		if FFlagUserBlockingApiPlayerContextMenuEnabled_upvr then
			var320 = arg1_17.PlayerContextualMenu.UserBlocking.isBlockedByMe
		else
			var320 = arg1_17.PlayerContextualMenu.IsBlockedByMe
		end
		return var320[any_union_result1_upvr_2.subjectUserId] or false
	end)
	local any_useCallback_result1_upvr_16 = React_upvr.useCallback(function() -- Line 479
		--[[ Upvalues[6]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useDispatch_result1_upvr_2 (readonly)
			[5]: any_useNavigation_result1_upvr_2 (readonly)
			[6]: AppPage_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.ReportPlayer, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		if any_union_result1_upvr_2.onReportActivated then
			any_union_result1_upvr_2.onReportActivated()
		else
			any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
			any_useNavigation_result1_upvr_2.navigate(AppPage_upvr.ReportScreen, {
				reportData = {
					assetId = any_union_result1_upvr_2.subjectUserId;
					reportAbuseVector = "user";
					context = "profile";
					platform = "console";
				};
			})
		end
	end, dependencyArray_upvr(any_useDispatch_result1_upvr_2, any_useNavigation_result1_upvr_2, any_union_result1_upvr_2.subjectUserId, any_union_result1_upvr_2.closeCentralOverlayThunk, any_union_result1_upvr_2.onReportActivated))
	local var324_upvr
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 516
		--[[ Upvalues[12]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: FFlagUseBlockingModal_upvr (copied, readonly)
			[5]: any_useDispatch_result1_upvr_2 (readonly)
			[6]: any_useNavigation_result1_upvr_2 (readonly)
			[7]: AppPage_upvr (copied, readonly)
			[8]: ToastRodux_upvr (copied, readonly)
			[9]: var32_result1_upvr (readonly)
			[10]: Blocking_upvr (copied, readonly)
			[11]: any_useLocalUserId_result1_upvr_2 (readonly)
			[12]: tbl_38_upvr (readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.BlockPlayer, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		if FFlagUseBlockingModal_upvr then
			any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
			any_useNavigation_result1_upvr_2.push(AppPage_upvr.BlockingModal, {
				navProps = {
					userId = any_union_result1_upvr_2.subjectUserId;
					onBlockSuccess = function() -- Line 524, Named "onBlockSuccess"
						--[[ Upvalues[3]:
							[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
							[2]: ToastRodux_upvr (copied, readonly)
							[3]: var32_result1_upvr (copied, readonly)
						]]
						any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage({
							toastMessage = var32_result1_upvr.UserBlocked;
							isLocalized = true;
							toastType = ToastRodux_upvr.Enums.ToastType.SuccessConfirmation;
						}))
					end;
				};
			})
		else
			any_useDispatch_result1_upvr_2(Blocking_upvr.BlockUserById.API({
				userId = any_union_result1_upvr_2.subjectUserId;
				currentUserId = any_useLocalUserId_result1_upvr_2;
			})):andThen(function() -- Line 538
				--[[ Upvalues[4]:
					[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
					[2]: ToastRodux_upvr (copied, readonly)
					[3]: var32_result1_upvr (copied, readonly)
					[4]: any_union_result1_upvr_2 (copied, readonly)
				]]
				any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage({
					toastMessage = var32_result1_upvr.UserBlocked;
					isLocalized = true;
					toastType = ToastRodux_upvr.Enums.ToastType.SuccessConfirmation;
				}))
				any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
			end):catch(function(arg1_15) -- Line 546
				--[[ Upvalues[3]:
					[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
					[2]: ToastRodux_upvr (copied, readonly)
					[3]: tbl_38_upvr (copied, readonly)
				]]
				any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_38_upvr))
			end)
		end
	end, dependencyArray_upvr(var32_result1_upvr, any_useLocalUserId_result1_upvr_2, any_useDispatch_result1_upvr_2, any_union_result1_upvr_2.closeCentralOverlayThunk, any_union_result1_upvr_2.subjectUserId))
	local any_useCallback_result1_upvr_8 = React_upvr.useCallback(function() -- Line 552
		--[[ Upvalues[6]:
			[1]: any_useDispatch_result1_upvr_2 (readonly)
			[2]: Blocking_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useLocalUserId_result1_upvr_2 (readonly)
			[5]: ToastRodux_upvr (copied, readonly)
			[6]: tbl_38_upvr (readonly)
		]]
		any_useDispatch_result1_upvr_2(Blocking_upvr.UnblockUserById.API({
			userId = any_union_result1_upvr_2.subjectUserId;
			currentUserId = any_useLocalUserId_result1_upvr_2;
		})):andThen(function() -- Line 557
			--[[ Upvalues[2]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: any_union_result1_upvr_2 (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
		end):catch(function(arg1_16) -- Line 560
			--[[ Upvalues[3]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: tbl_38_upvr (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_38_upvr))
		end)
	end, dependencyArray_upvr(any_useLocalUserId_result1_upvr_2, any_useDispatch_result1_upvr_2, any_union_result1_upvr_2.closeCentralOverlayThunk, any_union_result1_upvr_2.subjectUserId))
	local any_useCallback_result1_upvr_14 = React_upvr.useCallback(function() -- Line 565
		--[[ Upvalues[13]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useDispatch_result1_upvr_2 (readonly)
			[5]: Friends_upvr (copied, readonly)
			[6]: any_useLocalUserId_result1_upvr_2 (readonly)
			[7]: ToastRodux_upvr (copied, readonly)
			[8]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
			[9]: var291_upvr (readonly)
			[10]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
			[11]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[12]: var32_result1_upvr (readonly)
			[13]: tbl_38_upvr (readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.Unfriend, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		any_useDispatch_result1_upvr_2(Friends_upvr.UnfriendTargetUserId.API({
			targetUserId = any_union_result1_upvr_2.subjectUserId;
			currentUserId = any_useLocalUserId_result1_upvr_2;
		})):andThen(function() -- Line 572
			--[[ Upvalues[8]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
				[4]: var291_upvr (copied, readonly)
				[5]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
				[6]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[7]: var32_result1_upvr (copied, readonly)
				[8]: any_union_result1_upvr_2 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 10. Error Block 16 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 10. Error Block 16 end (CF ANALYSIS FAILED)
		end):catch(function() -- Line 586
			--[[ Upvalues[3]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: tbl_38_upvr (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_38_upvr))
		end)
	end, dependencyArray_upvr(var32_result1_upvr, any_useLocalUserId_result1_upvr_2, any_useDispatch_result1_upvr_2, any_union_result1_upvr_2.subjectUserId, any_union_result1_upvr_2.closeCentralOverlayThunk))
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function() -- Line 592
		--[[ Upvalues[13]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useDispatch_result1_upvr_2 (readonly)
			[5]: RecommendationContextType_upvr (copied, readonly)
			[6]: Friends_upvr (copied, readonly)
			[7]: any_useLocalUserId_result1_upvr_2 (readonly)
			[8]: ToastRodux_upvr (copied, readonly)
			[9]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
			[10]: var291_upvr (readonly)
			[11]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
			[12]: var32_result1_upvr (readonly)
			[13]: tbl_38_upvr (readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.RequestFriendship, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		local var298
		if any_union_result1_upvr_2.recommendationContext == RecommendationContextType_upvr.Contacts and any_union_result1_upvr_2.contactId then
			var298 = Friends_upvr.RequestFriendshipFromContactId.API
			var298 = var298({
				contactId = any_union_result1_upvr_2.contactId;
				currentUserId = any_useLocalUserId_result1_upvr_2;
			})
		else
			var298 = Friends_upvr.RequestFriendshipFromUserId.API
			var298 = var298({
				targetUserId = any_union_result1_upvr_2.subjectUserId;
				currentUserId = any_useLocalUserId_result1_upvr_2;
				friendshipOriginSourceType = any_union_result1_upvr_2.friendshipOriginSourceType;
			})
		end
		any_useDispatch_result1_upvr_2(var298):andThen(function() -- Line 604
			--[[ Upvalues[7]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
				[4]: var291_upvr (copied, readonly)
				[5]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
				[6]: var32_result1_upvr (copied, readonly)
				[7]: any_union_result1_upvr_2 (copied, readonly)
			]]
			local tbl_40 = {}
			local var303
			if FFlagFriendsRenameSocgraph_upvr and var291_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
				var303 = var32_result1_upvr.ConnectionRequestSent
			else
				var303 = var32_result1_upvr.FriendRequestSent
			end
			tbl_40.toastMessage = var303
			var303 = true
			tbl_40.isLocalized = var303
			var303 = ToastRodux_upvr.Enums.ToastType.SuccessConfirmation
			tbl_40.toastType = var303
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_40))
			any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
		end):catch(function() -- Line 615
			--[[ Upvalues[3]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: tbl_38_upvr (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_38_upvr))
		end)
	end, tbl_66)
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function() -- Line 631
		--[[ Upvalues[12]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useDispatch_result1_upvr_2 (readonly)
			[5]: Friends_upvr (copied, readonly)
			[6]: any_useLocalUserId_result1_upvr_2 (readonly)
			[7]: ToastRodux_upvr (copied, readonly)
			[8]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
			[9]: var291_upvr (readonly)
			[10]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
			[11]: var32_result1_upvr (readonly)
			[12]: tbl_38_upvr (readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.AcceptFriendRequest, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		any_useDispatch_result1_upvr_2(Friends_upvr.AcceptFriendRequestFromUserId.API({
			targetUserId = any_union_result1_upvr_2.subjectUserId;
			currentUserId = any_useLocalUserId_result1_upvr_2;
		})):andThen(function() -- Line 638
			--[[ Upvalues[7]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
				[4]: var291_upvr (copied, readonly)
				[5]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
				[6]: var32_result1_upvr (copied, readonly)
				[7]: any_union_result1_upvr_2 (copied, readonly)
			]]
			local tbl_46 = {}
			local var311
			if FFlagFriendsRenameSocgraph_upvr and var291_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
				var311 = var32_result1_upvr.ConnectionAdded
			else
				var311 = var32_result1_upvr.FriendRequestAccepted
			end
			tbl_46.toastMessage = var311
			var311 = true
			tbl_46.isLocalized = var311
			var311 = ToastRodux_upvr.Enums.ToastType.SuccessConfirmation
			tbl_46.toastType = var311
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_46))
			any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
		end):catch(function() -- Line 649
			--[[ Upvalues[3]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: tbl_38_upvr (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_38_upvr))
		end)
	end, dependencyArray_upvr(var32_result1_upvr, any_useLocalUserId_result1_upvr_2, any_useDispatch_result1_upvr_2, any_union_result1_upvr_2.closeCentralOverlayThunk, var267))
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function() -- Line 654
		--[[ Upvalues[9]:
			[1]: any_useMemo_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: any_useDispatch_result1_upvr_2 (readonly)
			[5]: Friends_upvr (copied, readonly)
			[6]: any_useLocalUserId_result1_upvr_2 (readonly)
			[7]: ToastRodux_upvr (copied, readonly)
			[8]: var32_result1_upvr (readonly)
			[9]: tbl_38_upvr (readonly)
		]]
		any_useMemo_result1_upvr_2(EventNames_upvr.IgnoreFriendRequest, {
			profileUserId = any_union_result1_upvr_2.subjectUserId;
		})
		any_useDispatch_result1_upvr_2(Friends_upvr.DeclineFriendRequestFromUserId.API({
			targetUserId = any_union_result1_upvr_2.subjectUserId;
			currentUserId = any_useLocalUserId_result1_upvr_2;
		})):andThen(function() -- Line 661
			--[[ Upvalues[4]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: var32_result1_upvr (copied, readonly)
				[4]: any_union_result1_upvr_2 (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage({
				toastMessage = var32_result1_upvr.FriendRequestIgnored;
				isLocalized = true;
				toastType = ToastRodux_upvr.Enums.ToastType.SuccessConfirmation;
			}))
			any_useDispatch_result1_upvr_2(any_union_result1_upvr_2.closeCentralOverlayThunk())
		end):catch(function() -- Line 669
			--[[ Upvalues[3]:
				[1]: any_useDispatch_result1_upvr_2 (copied, readonly)
				[2]: ToastRodux_upvr (copied, readonly)
				[3]: tbl_38_upvr (copied, readonly)
			]]
			any_useDispatch_result1_upvr_2(ToastRodux_upvr.Actions.SetCurrentToastMessage(tbl_38_upvr))
		end)
	end, dependencyArray_upvr(var32_result1_upvr, any_useLocalUserId_result1_upvr_2, any_useDispatch_result1_upvr_2, var267, any_union_result1_upvr_2.subjectUserId))
	var267 = Cryo_upvr
	var267 = var45_upvr
	if var267 then
		local tbl_30 = {}
		var267 = any_union_result1_upvr_2.robloxFriendshipStatus
		tbl_30[1] = var267
		tbl_30[2] = any_useSelector_result1_upvr_2
		tbl_30[3] = any_getPlatformProfileIdFromId_result1_upvw_2
		tbl_30[4] = any_union_result1_upvr_2.contactId
		tbl_30[5] = any_union_result1_upvr_2.additionalButtons
		-- KONSTANTWARNING: GOTO [627] #486
	end
	local tbl_32 = {}
	var267 = any_union_result1_upvr_2.robloxFriendshipStatus
	tbl_32[1] = var267
	tbl_32[2] = any_useSelector_result1_upvr_2
	tbl_32[3] = any_union_result1_upvr_2.contactId
	tbl_32[4] = any_union_result1_upvr_2.additionalButtons
	if getFFlagAppChatPCMFixBlocking_upvr() then
		var267 = {}
		var267[1] = any_useSelector_result1_upvw
	else
		var267 = {}
	end
	local module_5 = {}
	var267 = React_upvr.useMemo
	local var340_upvr = false
	local icon_upvw = var49_result1_2.icon
	local var342_upvw
	var267 = var267(function() -- Line 829
		--[[ Upvalues[14]:
			[1]: var245_upvw (read and write)
			[2]: any_useUserProfilesFetch_result1_upvr (readonly)
			[3]: any_union_result1_upvr_2 (readonly)
			[4]: RecommendationContextType_upvr (copied, readonly)
			[5]: any_getUsernameFromId_result1_upvw_2 (read and write)
			[6]: var203_upvw (read and write)
			[7]: var340_upvr (readonly)
			[8]: game_DefineFastString_result1_upvr (copied, readonly)
			[9]: text_upvw (read and write)
			[10]: icon_upvw (read and write)
			[11]: var342_upvw (read and write)
			[12]: var257_upvr (readonly)
			[13]: any_useCallback_result1_upvr_11 (readonly)
			[14]: any_useMemo_result1_upvr_4 (readonly)
		]]
		local module_4 = {}
		local tbl_31 = {
			labelText = var245_upvw;
			icon = nil;
			isLoading = any_useUserProfilesFetch_result1_upvr.loading;
		}
		module_4.displayNameItem = tbl_31
		if any_union_result1_upvr_2.recommendationContext == RecommendationContextType_upvr.Contacts then
			tbl_31 = nil
		else
			tbl_31 = {}
			tbl_31.labelText = '@'..any_getUsernameFromId_result1_upvw_2
			tbl_31.icon = nil
			tbl_31.isLoading = any_useUserProfilesFetch_result1_upvr.loading
		end
		module_4.userNameItem = tbl_31
		local var345
		if var345 == "" then
			tbl_31 = nil
		else
			tbl_31 = {}
			var345 = var203_upvw or ""
			tbl_31.labelText = var345
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var345.ImageRectSize = Vector2.zero
				var345.ImageRectOffset = Vector2.zero
				var345.Image = game_DefineFastString_result1_upvr
				var345 = {}
				return var345
			end
			if not var340_upvr or not INLINED_2() then
				var345 = nil
			end
			tbl_31.icon = var345
			var345 = any_useUserProfilesFetch_result1_upvr.loading
			tbl_31.isLoading = var345
		end
		module_4.vendorNameItem = tbl_31
		tbl_31 = text_upvw
		module_4.contextText = tbl_31
		tbl_31 = icon_upvw
		module_4.contextIcon = tbl_31
		if var342_upvw then
			tbl_31 = var342_upvw.Color3
		else
			tbl_31 = nil
		end
		module_4.contextIconColor = tbl_31
		if var342_upvw then
		else
		end
		module_4.contextIconTransparency = nil
		module_4.joinEventText = var257_upvr
		module_4.joinEventOnActivated = any_useCallback_result1_upvr_11
		module_4.renderJoinEventButton = any_useMemo_result1_upvr_4
		return module_4
	end, dependencyArray_upvr(any_useUserProfilesFetch_result1_upvr, var245_upvw, any_getUsernameFromId_result1_upvw_2, var203_upvw, var340_upvr, icon_upvw, text_upvw, var342_upvw, any_useMemo_result1_upvr_4, var257_upvr, any_useCallback_result1_upvr_11, any_union_result1_upvr_2.recommendationContext))
	module_5.headerProps = var267
	module_5.buttonProps = React_upvr.useMemo(function() -- Line 683
		--[[ Upvalues[23]:
			[1]: Images_upvr (copied, readonly)
			[2]: var32_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvr_16 (readonly)
			[4]: game_DefineFastString_result1_upvr (copied, readonly)
			[5]: var324_upvr (readonly)
			[6]: any_useCallback_result1_upvr (readonly)
			[7]: any_useSelector_result1_upvw (read and write)
			[8]: any_useCallback_result1_upvr_8 (readonly)
			[9]: FFlagFriendsRenameSocgraph_upvr (copied, readonly)
			[10]: var291_upvr (readonly)
			[11]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (copied, readonly)
			[12]: any_useCallback_result1_upvr_14 (readonly)
			[13]: any_useCallback_result1_upvr_6 (readonly)
			[14]: NO_OPT_CALLBACK_upvr (copied, readonly)
			[15]: any_useCallback_result1_upvr_9 (readonly)
			[16]: any_useCallback_result1_upvr_7 (readonly)
			[17]: any_useSelector_result1_upvr_2 (readonly)
			[18]: any_union_result1_upvr_2 (readonly)
			[19]: getFFlagAppChatPCMFixBlocking_upvr (copied, readonly)
			[20]: Cryo_upvr (copied, readonly)
			[21]: var45_upvr (copied, readonly)
			[22]: any_getPlatformProfileIdFromId_result1_upvw_2 (read and write)
			[23]: Dash_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
		local _ = {
			icon = Images_upvr["icons/actions/feedback"];
			text = var32_result1_upvr.Report;
			onActivated = any_useCallback_result1_upvr_16;
		}
		local _ = {
			icon = game_DefineFastString_result1_upvr;
			text = var32_result1_upvr.ViewPlatformProfile;
			onActivated = var324_upvr;
		}
		local _ = {
			icon = Images_upvr["icons/actions/block"];
			text = var32_result1_upvr.Block;
			onActivated = any_useCallback_result1_upvr;
			disabled = any_useSelector_result1_upvw;
		}
		local _ = {
			icon = Images_upvr["icons/actions/block"];
			text = var32_result1_upvr.Unblock;
			onActivated = any_useCallback_result1_upvr_8;
		}
		local tbl_33 = {
			icon = Images_upvr["icons/actions/friends/friendRemove"];
		}
		if FFlagFriendsRenameSocgraph_upvr and var291_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			-- KONSTANTWARNING: GOTO [76] #53
		end
		-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [73] 51. Error Block 50 start (CF ANALYSIS FAILED)
		tbl_33.text = var32_result1_upvr.Unfriend
		tbl_33.onActivated = any_useCallback_result1_upvr_14
		;({}).icon = Images_upvr["icons/actions/friends/friendAdd"]
		if FFlagFriendsRenameSocgraph_upvr and var291_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			-- KONSTANTWARNING: GOTO [100] #71
		end
		-- KONSTANTERROR: [73] 51. Error Block 50 end (CF ANALYSIS FAILED)
	end, var267.Dictionary.union(tbl_32, var267))
	if game_DefineFastFlag_result1_upvr_2 then
		var267 = any_union_result1_upvr_2.width
	else
		var267 = UDim.new(0, 400)
	end
	module_5.width = var267
	return React_upvr.createElement(PlayerContextualMenuComponent_upvr, module_5)
end
return PlayerContextualMenuContainer