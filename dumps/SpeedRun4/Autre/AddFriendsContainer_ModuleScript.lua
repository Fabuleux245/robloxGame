-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:16
-- Luau version 6, Types version 3
-- Time taken: 0.018148 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local Analytics = require(FriendsLanding.AddFriends.Analytics)
local AddFriends = FriendsLanding.AddFriends
local SocialCommon = require(Parent.SocialCommon)
local SocialLuaAnalytics = require(Parent.SocialLuaAnalytics)
local Responsive_upvr = require(Parent.Responsive)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local FFlagContactImporterFlowIXPEnabled_upvr = require(Parent.SharedFlags).FFlagContactImporterFlowIXPEnabled
local FFlagMoveCiEncouragedGatingToGuac_upvr = require(Parent.SharedFlags).FFlagMoveCiEncouragedGatingToGuac
local RoactAppExperiment_upvr = require(Parent.RoactAppExperiment)
local AppUserLayers_upvr = require(Parent.ExperimentLayers).AppUserLayers
local useBeginContactImporter_upvr = require(Parent.ContactImporter).useBeginContactImporter
local Analytics_2_upvr = require(Parent.DiscoverabilityModal).Analytics
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getFriendRecommendationsFromState_upvr = require(script.Parent.getFriendRecommendationsFromState)
local getSessionIdByKey_upvr = require(AddFriends.Redux.RoduxAnalytics).Selectors.getSessionIdByKey
local RECOMMENDATION_SESSION_ID_KEY_upvr = require(FriendsLanding.Common.Constants).RECOMMENDATION_SESSION_ID_KEY
local getFriendRequestsFromState_upvr = require(script.Parent.getFriendRequestsFromState)
local AddFriendsSelector_upvr = require(AddFriends.Redux.AddFriendsSelector)
local React_upvr = require(Parent.React)
local contactImporterTooltip_upvr = require(AddFriends.Utils.contactImporterTooltip)
local AppStorageService_upvr = game:GetService("AppStorageService")
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local FriendsNetworking_upvr = require(AddFriends.Networking.FriendsNetworking)
local FFlagEnableNewFriendRequestsBadge_upvr = require(Parent.SharedFlags).FFlagEnableNewFriendRequestsBadge
local Promise_upvr = require(Parent.Promise)
local Dash_upvr = require(Parent.Dash)
local NetworkingGames_upvr = require(AddFriends.Networking.NetworkingGames)
local RecommendationSourceEnum_upvr = SocialCommon.Enums.RecommendationSourceEnum
local ContextualInfoTypes_upvr = SocialCommon.Enums.ContextualInfoTypes
local RoduxFriends_upvr = require(AddFriends.Redux.RoduxFriends)
local RoduxAnalytics_upvr = require(AddFriends.Redux.RoduxAnalytics)
local NetworkingUserSettings_upvr = require(AddFriends.Networking.NetworkingUserSettings)
local AnalyticsSetup_upvr = Analytics.AnalyticsSetup
local EventNames_upvr = Analytics.EventNames
local BreakpointConfig_upvr = Responsive_upvr.BreakpointConfig
local AddFriendsPageLoadAnalytics_upvr = require(FriendsLanding.FriendsLandingAnalytics).AddFriendsPageLoadAnalytics
local ToastRodux_upvr = require(Parent.ToastRodux)
local reportPromiseLoadingTimeWrapper_upvr = SocialLuaAnalytics.Analytics.Timing.reportPromiseLoadingTimeWrapper
local EntityTypes_upvr = SocialLuaAnalytics.Analytics.Enums.EntityTypes
local Namespaces_upvr = Analytics.Namespaces
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
local ShowMoreSectionTypeEnum_upvr = require(FriendsLanding.Enums.ShowMoreSectionTypeEnum)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
local FFlagUserSearchScreenBarAnalytics_upvr = require(Parent.SharedFlags).FFlagUserSearchScreenBarAnalytics
local AddFriendsPage_upvr = require(script.Parent.Parent.AddFriendsPage)
return function(arg1) -- Line 90, Named "AddFriendsContainer"
	--[[ Upvalues[48]:
		[1]: useNavigation_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: FFlagContactImporterFlowIXPEnabled_upvr (readonly)
		[4]: FFlagMoveCiEncouragedGatingToGuac_upvr (readonly)
		[5]: RoactAppExperiment_upvr (readonly)
		[6]: AppUserLayers_upvr (readonly)
		[7]: useBeginContactImporter_upvr (readonly)
		[8]: Analytics_2_upvr (readonly)
		[9]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[10]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[11]: useAppPolicy_upvr (readonly)
		[12]: useLocalization_upvr (readonly)
		[13]: useLocalUserId_upvr (readonly)
		[14]: useSelector_upvr (readonly)
		[15]: getFriendRecommendationsFromState_upvr (readonly)
		[16]: getSessionIdByKey_upvr (readonly)
		[17]: RECOMMENDATION_SESSION_ID_KEY_upvr (readonly)
		[18]: getFriendRequestsFromState_upvr (readonly)
		[19]: AddFriendsSelector_upvr (readonly)
		[20]: React_upvr (readonly)
		[21]: contactImporterTooltip_upvr (readonly)
		[22]: AppStorageService_upvr (readonly)
		[23]: dependencyArray_upvr (readonly)
		[24]: FriendsNetworking_upvr (readonly)
		[25]: FFlagEnableNewFriendRequestsBadge_upvr (readonly)
		[26]: Promise_upvr (readonly)
		[27]: Dash_upvr (readonly)
		[28]: NetworkingGames_upvr (readonly)
		[29]: RecommendationSourceEnum_upvr (readonly)
		[30]: ContextualInfoTypes_upvr (readonly)
		[31]: RoduxFriends_upvr (readonly)
		[32]: RoduxAnalytics_upvr (readonly)
		[33]: NetworkingUserSettings_upvr (readonly)
		[34]: AnalyticsSetup_upvr (readonly)
		[35]: EventNames_upvr (readonly)
		[36]: BreakpointConfig_upvr (readonly)
		[37]: Responsive_upvr (readonly)
		[38]: AddFriendsPageLoadAnalytics_upvr (readonly)
		[39]: ToastRodux_upvr (readonly)
		[40]: reportPromiseLoadingTimeWrapper_upvr (readonly)
		[41]: EntityTypes_upvr (readonly)
		[42]: Namespaces_upvr (readonly)
		[43]: Images_upvr (readonly)
		[44]: ShowMoreSectionTypeEnum_upvr (readonly)
		[45]: AppPage_upvr (readonly)
		[46]: EnumScreens_upvr (readonly)
		[47]: FFlagUserSearchScreenBarAnalytics_upvr (readonly)
		[48]: AddFriendsPage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 95 start (CF ANALYSIS FAILED)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var56
	if FFlagContactImporterFlowIXPEnabled_upvr and not FFlagMoveCiEncouragedGatingToGuac_upvr then
		var56 = RoactAppExperiment_upvr.useUserExperiment({AppUserLayers_upvr.SocialFriendsCarouselAddFriendsEntryLayer}, function(arg1_2) -- Line 100
			--[[ Upvalues[1]:
				[1]: AppUserLayers_upvr (copied, readonly)
			]]
			local var59 = arg1_2[AppUserLayers_upvr.SocialFriendsCarouselAddFriendsEntryLayer]
			if not var59 then
				var59 = {}
			end
			local var60 = var59.ci_flow or "control"
			local var61 = true
			if var60 ~= "on_page_load" then
				if var60 ~= "on_banner_click" then
					var61 = false
				else
					var61 = true
				end
			end
			return var61
		end, false)
	end
	if FFlagContactImporterFlowIXPEnabled_upvr then
		local _, _ = useBeginContactImporter_upvr({
			entryPoint = Analytics_2_upvr.EntryPoints.AddFriends;
		})
	end
	local var65
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var65 = useAppPolicy_upvr
		var65 = var65(function(arg1_3) -- Line 114
			return arg1_3.getRenameFriendsToConnections()
		end)
	else
		var65 = nil
	end
	local tbl_3 = {
		networkErrorText = "Feature.Toast.NetworkingError.SomethingIsWrong";
	}
	if FFlagFriendsRenameSocgraph_upvr and var65 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [62] #55
	end
	tbl_3.friendAddedText = "Feature.AddFriends.Action.FriendAdded"
	tbl_3.requestIgnoredText = "Feature.AddFriends.Action.RequestIgnored"
	tbl_3.allRequestsIgnoredText = "Feature.Profile.Action.AllRequestsIgnored"
	tbl_3.allRequestsIgnoredBackgroundedText = "Feature.AddFriends.Label.DeclineAllBackgrounded"
	if FFlagFriendsRenameSocgraph_upvr and var65 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [81] #70
	end
	tbl_3.requestSentText = "Feature.Friends.Action.FriendRequestSent"
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl_3)
	local var20_result1_upvr = useLocalUserId_upvr()
	local var21_result1_2 = useSelector_upvr(getFriendRecommendationsFromState_upvr)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_4) -- Line 136
		--[[ Upvalues[2]:
			[1]: getSessionIdByKey_upvr (copied, readonly)
			[2]: RECOMMENDATION_SESSION_ID_KEY_upvr (copied, readonly)
		]]
		return getSessionIdByKey_upvr(arg1_4)(RECOMMENDATION_SESSION_ID_KEY_upvr)
	end)
	local var21_result1 = useSelector_upvr(getFriendRequestsFromState_upvr)
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_5) -- Line 141
		--[[ Upvalues[1]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
		]]
		return AddFriendsSelector_upvr(arg1_5, "Friends.requests.nextPageCursor")
	end)
	local function _(arg1_6) -- Line 145
		--[[ Upvalues[1]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
		]]
		local AddFriendsSelector_upvr_result1 = AddFriendsSelector_upvr(arg1_6, "ShowContactImporterParams")
		if not AddFriendsSelector_upvr_result1 then
			AddFriendsSelector_upvr_result1 = {}
		end
		return AddFriendsSelector_upvr_result1
	end
	local any_useCallback_result1_upvr_11 = React_upvr.useCallback(function() -- Line 149
		--[[ Upvalues[2]:
			[1]: contactImporterTooltip_upvr (copied, readonly)
			[2]: AppStorageService_upvr (copied, readonly)
		]]
		contactImporterTooltip_upvr.updateKey(AppStorageService_upvr, true)
	end, dependencyArray_upvr(contactImporterTooltip_upvr))
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function(arg1_11) -- Line 180
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: FriendsNetworking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.GetFriendRequestsCount.API(arg1_11))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	if FFlagEnableNewFriendRequestsBadge_upvr then
		local function _(arg1_12) -- Line 185
			--[[ Upvalues[2]:
				[1]: useDispatch_upvr_result1_upvr (readonly)
				[2]: FriendsNetworking_upvr (copied, readonly)
			]]
			local module_5 = {}
			module_5.currentUserId = arg1_12
			return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.ClearNewFriendRequests.API(module_5))
		end
		-- KONSTANTWARNING: GOTO [179] #160
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_13) -- Line 192
		--[[ Upvalues[5]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Dash_upvr (copied, readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: FriendsNetworking_upvr (copied, readonly)
			[5]: NetworkingGames_upvr (copied, readonly)
		]]
		local function var91_upvr(arg1_14) -- Line 194
			local tbl_2 = {}
			for _, v in pairs(arg1_14) do
				table.insert(tbl_2, v.id)
				local sourceUniverseId = v.friendRequest.sourceUniverseId
				if sourceUniverseId ~= nil and sourceUniverseId ~= 0 then
					table.insert({}, sourceUniverseId)
				end
			end
			local module_4 = {
				userIds = tbl_2;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_4.universeIds = {}
			return module_4
		end
		return Promise_upvr.new(function(arg1_15, arg2) -- Line 210
			--[[ Upvalues[7]:
				[1]: arg1_13 (read and write)
				[2]: Dash_upvr (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr (copied, readonly)
				[4]: FriendsNetworking_upvr (copied, readonly)
				[5]: var91_upvr (readonly)
				[6]: NetworkingGames_upvr (copied, readonly)
				[7]: Promise_upvr (copied, readonly)
			]]
			local var101 = arg1_13
			if not var101 then
				var101 = {}
			end
			arg1_13 = Dash_upvr.join(var101, {
				currentUserId = arg1_13.localUserId;
			})
			useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.GetFriendRequests.API(arg1_13)):andThen(function(arg1_16) -- Line 215
				--[[ Upvalues[7]:
					[1]: var91_upvr (copied, readonly)
					[2]: useDispatch_upvr_result1_upvr (copied, readonly)
					[3]: FriendsNetworking_upvr (copied, readonly)
					[4]: NetworkingGames_upvr (copied, readonly)
					[5]: Promise_upvr (copied, readonly)
					[6]: arg1_15 (readonly)
					[7]: arg2 (readonly)
				]]
				local var91_upvr_result1 = var91_upvr(arg1_16.responseBody.data)
				local tbl_10 = {}
				if next(var91_upvr_result1.userIds) ~= nil then
					table.insert(tbl_10, useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.GetFollowingExists.API({
						targetUserIds = var91_upvr_result1.userIds;
					})))
				end
				if next(var91_upvr_result1.universeIds) ~= nil then
					table.insert(tbl_10, useDispatch_upvr_result1_upvr(NetworkingGames_upvr.GetExperiencesDetails.API(var91_upvr_result1.universeIds)))
				end
				Promise_upvr.all(tbl_10):andThen(function() -- Line 231
					--[[ Upvalues[2]:
						[1]: arg1_15 (copied, readonly)
						[2]: arg1_16 (readonly)
					]]
					arg1_15(arg1_16)
				end):catch(arg2)
			end):catch(arg2)
		end)
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	local any_useCallback_result1_upvr_14 = React_upvr.useCallback(function(arg1_17) -- Line 240
		--[[ Upvalues[9]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: FriendsNetworking_upvr (copied, readonly)
			[3]: RecommendationSourceEnum_upvr (copied, readonly)
			[4]: Dash_upvr (copied, readonly)
			[5]: ContextualInfoTypes_upvr (copied, readonly)
			[6]: RoduxFriends_upvr (copied, readonly)
			[7]: RoduxAnalytics_upvr (copied, readonly)
			[8]: RECOMMENDATION_SESSION_ID_KEY_upvr (copied, readonly)
			[9]: Promise_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.GetFriendRecommendationsFromUserId.API({
			targetUserId = arg1_17.localUserId;
			source = RecommendationSourceEnum_upvr.AddFriendsPage;
		})):andThen(function(arg1_18) -- Line 244
			--[[ Upvalues[8]:
				[1]: Dash_upvr (copied, readonly)
				[2]: ContextualInfoTypes_upvr (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr (copied, readonly)
				[4]: RoduxFriends_upvr (copied, readonly)
				[5]: RecommendationSourceEnum_upvr (copied, readonly)
				[6]: RoduxAnalytics_upvr (copied, readonly)
				[7]: RECOMMENDATION_SESSION_ID_KEY_upvr (copied, readonly)
				[8]: Promise_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(RoduxFriends_upvr.Actions.RecommendationSourceCreated({
				source = RecommendationSourceEnum_upvr.AddFriendsPage;
				recommendationIds = Dash_upvr.map(arg1_18.responseBody.data, function(arg1_19) -- Line 246
					--[[ Upvalues[1]:
						[1]: ContextualInfoTypes_upvr (copied, readonly)
					]]
					if arg1_19.contextType == ContextualInfoTypes_upvr.Contacts then
						return arg1_19.contactId
					end
					return arg1_19.id
				end);
			}))
			useDispatch_upvr_result1_upvr(RoduxAnalytics_upvr.Actions.SessionIdUpdated({
				sessionKey = RECOMMENDATION_SESSION_ID_KEY_upvr;
				sessionId = arg1_18.responseBody.recommendationRequestId;
			}))
			return Promise_upvr.resolve(arg1_18)
		end)
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	local function _() -- Line 265
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: NetworkingUserSettings_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(NetworkingUserSettings_upvr.GetUserSettingsMetadata.API())
	end
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 269
		--[[ Upvalues[3]:
			[1]: AnalyticsSetup_upvr (copied, readonly)
			[2]: var20_result1_upvr (readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
		]]
		return AnalyticsSetup_upvr({
			infoForAllEvents = {
				uid = var20_result1_upvr;
				recommendationSessionId = useSelector_upvr_result1_upvr;
			};
		}).fireAnalyticsEvent
	end, dependencyArray_upvr(var20_result1_upvr, useSelector_upvr_result1_upvr))
	local function _() -- Line 278
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr(EventNames_upvr.CIBtnClick)
	end
	if BreakpointConfig_upvr.getMinWidthFor(Responsive_upvr.Keys.Medium) > useSelector_upvr(function(arg1_20) -- Line 282
		return arg1_20.ScreenSize
	end).X then
		-- KONSTANTWARNING: GOTO [259] #230
	end
	local var123_upvr = true
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function() -- Line 288
		--[[ Upvalues[1]:
			[1]: var123_upvr (readonly)
		]]
		if var123_upvr then
			return 50
		end
		return 25
	end, dependencyArray_upvr(var123_upvr))
	local any_useCallback_result1_upvr_12 = React_upvr.useCallback(function(arg1_22) -- Line 316
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ToastRodux_upvr (copied, readonly)
		]]
		if not arg1_22 then
		else
			useDispatch_upvr_result1_upvr(ToastRodux_upvr.Actions.SetCurrentToastMessage({
				isLocalized = true;
				toastMessage = arg1_22.toastTitle;
				toastIcon = arg1_22.iconImage;
			}))
		end
	end, dependencyArray_upvr(useNavigation_upvr()))
	local any_useCallback_result1 = React_upvr.useCallback(function(arg1_23, arg2) -- Line 329
		--[[ Upvalues[2]:
			[1]: any_useCallback_result1_upvr_12 (readonly)
			[2]: useLocalization_upvr_result1_upvr (readonly)
		]]
		return function(...) -- Line 330
			--[[ Upvalues[4]:
				[1]: arg1_23 (readonly)
				[2]: any_useCallback_result1_upvr_12 (copied, readonly)
				[3]: arg2 (readonly)
				[4]: useLocalization_upvr_result1_upvr (copied, readonly)
			]]
			return arg1_23(...):andThen(function() -- Line 332
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_12 (copied, readonly)
					[2]: arg2 (copied, readonly)
				]]
				any_useCallback_result1_upvr_12(arg2)
			end):catch(function() -- Line 335
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_12 (copied, readonly)
					[2]: useLocalization_upvr_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_12({
					toastTitle = useLocalization_upvr_result1_upvr.networkErrorText;
				})
			end)
		end
	end, dependencyArray_upvr(any_useCallback_result1_upvr_12, useLocalization_upvr_result1_upvr.networkErrorText))
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function() -- Line 341
		--[[ Upvalues[6]:
			[1]: Promise_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_6 (readonly)
			[3]: var20_result1_upvr (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
			[5]: any_useCallback_result1_upvr_7 (readonly)
			[6]: any_useCallback_result1_upvr_14 (readonly)
		]]
		return Promise_upvr.all({any_useCallback_result1_upvr_6(var20_result1_upvr), any_useCallback_result1_upvr({
			isRefresh = true;
			localUserId = var20_result1_upvr;
			limit = any_useCallback_result1_upvr_7();
		}), any_useCallback_result1_upvr_14({
			localUserId = var20_result1_upvr;
		})})
	end, {})
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function(arg1_21, arg2, arg3) -- Line 292
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: AddFriendsPageLoadAnalytics_upvr (copied, readonly)
		]]
		local tbl = {
			status = arg2.status;
		}
		tbl.loadingTime = arg3
		tbl.statValue = arg3
		any_useMemo_result1_upvr(EventNames_upvr.AddFriendsPageLoadingTime, tbl)
		local result = arg2.result
		if result then
			result = arg2.result[2]
		end
		local var129
		local _3 = arg2.result[3]
		local var131
		if _3 then
			var131 = _3.responseBody.data
			if not var131 then
				var131 = {}
			end
			local var132 = var131
			if var132 then
				var132 = #var131
			end
			var129 = var132
		else
			var129 = 0
		end
		any_useMemo_result1_upvr(EventNames_upvr.PageLoad, {
			recommendationCount = var129;
			status = arg2.status;
		})
	end, dependencyArray_upvr(any_useMemo_result1_upvr))
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(any_useCallback_result1(function() -- Line 354
		--[[ Upvalues[4]:
			[1]: reportPromiseLoadingTimeWrapper_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_9 (readonly)
			[3]: any_useCallback_result1_upvr_5 (readonly)
			[4]: Promise_upvr (copied, readonly)
		]]
		return reportPromiseLoadingTimeWrapper_upvr(any_useCallback_result1_upvr_9, function() -- Line 356
			return {
				fetch = "add_friends_page_load";
			}
		end, {
			fireEvent = any_useCallback_result1_upvr_5;
		})():andThen(function(arg1_24) -- Line 361
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve(arg1_24)
		end):catch(function(arg1_25) -- Line 364
		end)
	end), dependencyArray_upvr(any_useCallback_result1_upvr_14, any_useCallback_result1_upvr, any_useCallback_result1_upvr_6, var20_result1_upvr))
	local any_useCallback_result1_upvr_13 = React_upvr.useCallback(function(arg1_7) -- Line 153
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: FriendsNetworking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.AcceptFriendRequestFromUserId.API(arg1_7))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	local any_useCallback_result1_upvr_10 = React_upvr.useCallback(function(arg1_8) -- Line 157
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: FriendsNetworking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.DeclineFriendRequestFromUserId.API(arg1_8))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_9) -- Line 161
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: FriendsNetworking_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.DeclineAllFriendRequests.API(arg1_9))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	local any_useCallback_result1_2_upvr = React_upvr.useCallback(function(arg1_10) -- Line 165
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: FriendsNetworking_upvr (copied, readonly)
		]]
		if arg1_10.isContact then
			return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.RequestFriendshipFromContactId.API({
				currentUserId = arg1_10.currentUserId;
				contactId = arg1_10.targetUserId;
			}))
		end
		return useDispatch_upvr_result1_upvr(FriendsNetworking_upvr.RequestFriendshipFromUserId.API({
			currentUserId = arg1_10.currentUserId;
			targetUserId = arg1_10.targetUserId;
			friendshipOriginSourceType = arg1_10.friendshipOriginSourceType;
		}))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr))
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(any_useCallback_result1(function(arg1_30) -- Line 477
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: any_useCallback_result1_upvr_7 (readonly)
			[3]: var20_result1_upvr (readonly)
		]]
		local module = {
			limit = any_useCallback_result1_upvr_7();
		}
		module.cursor = arg1_30
		module.localUserId = var20_result1_upvr
		return any_useCallback_result1_upvr(module)
	end), dependencyArray_upvr(any_useCallback_result1_upvr_7))
	local any_useCallback_result1_upvr_8 = React_upvr.useCallback(function(arg1_31) -- Line 487
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: Namespaces_upvr (copied, readonly)
		]]
		local tbl_6 = {}
		local var189
		if arg1_31 == Namespaces_upvr.FriendRequests then
			var189 = Namespaces_upvr.FriendRequests
		else
			var189 = Namespaces_upvr.PYMK
		end
		tbl_6.namespace = var189
		any_useMemo_result1_upvr(EventNames_upvr.ShowMoreBtnClick, tbl_6)
	end, dependencyArray_upvr(any_useMemo_result1_upvr))
	local function _() -- Line 533
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr(EventNames_upvr.CIBtnImpression)
	end
	local function _() -- Line 537
		--[[ Upvalues[3]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: FFlagUserSearchScreenBarAnalytics_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr(EventNames_upvr.UserSearchClick)
		if not FFlagUserSearchScreenBarAnalytics_upvr then
			any_useMemo_result1_upvr(EventNames_upvr.OpenUserSearch)
		end
	end
	local function _() -- Line 545
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr(EventNames_upvr.QRCodeBtnImpression)
	end
	local function _() -- Line 549
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		any_useMemo_result1_upvr(EventNames_upvr.QRCodeBtnClick)
	end
	local var202_upvr
	React_upvr.useEffect(function() -- Line 553
		--[[ Upvalues[5]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: FFlagEnableNewFriendRequestsBadge_upvr (copied, readonly)
			[3]: var202_upvr (readonly)
			[4]: var20_result1_upvr (readonly)
			[5]: any_useCallback_result1_upvr_6 (readonly)
		]]
		any_useCallback_result1_upvr_2()
		if FFlagEnableNewFriendRequestsBadge_upvr then
			var202_upvr(var20_result1_upvr)
		end
		return function() -- Line 559
			--[[ Upvalues[4]:
				[1]: any_useCallback_result1_upvr_6 (copied, readonly)
				[2]: var20_result1_upvr (copied, readonly)
				[3]: FFlagEnableNewFriendRequestsBadge_upvr (copied, readonly)
				[4]: var202_upvr (copied, readonly)
			]]
			any_useCallback_result1_upvr_6(var20_result1_upvr)
			if FFlagEnableNewFriendRequestsBadge_upvr then
				var202_upvr(var20_result1_upvr)
			end
		end
	end, {})
	if not var21_result1_2 or not #var21_result1_2 then
	end
	if 0 < 0 then
	else
	end
	local _ = {
		initialRequestsRows = 6;
		requestsPageSize = any_useCallback_result1_upvr_7();
		navigateToLuaAppPages = arg1.navigateToLuaAppPages;
		friendRecommendations = var21_result1_2;
		friendRecommendationsSessionId = useSelector_upvr_result1_upvr;
		friendRequests = var21_result1;
		contactImporterWarningSeen = any_useCallback_result1_upvr_11;
		handleAcceptFriendRequest = React_upvr.useCallback(any_useCallback_result1(function(arg1_26, arg2, arg3) -- Line 370
			--[[ Upvalues[8]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: EntityTypes_upvr (copied, readonly)
				[5]: Namespaces_upvr (copied, readonly)
				[6]: any_useCallback_result1_upvr_13 (readonly)
				[7]: var20_result1_upvr (readonly)
				[8]: any_useCallback_result1_upvr_6 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			any_useCallback_result1_upvr_11()
			local var158 = arg3
			if not var158 then
				var158 = {}
			end
			local tbl_5 = {}
			tbl_5.targetUserId = arg2
			tbl_5.absolutePosition = var158.absolutePosition
			tbl_5.rank = var158.recommendationRank
			tbl_5.contextType = var158.contextualInfoType
			if var158.isContact then
			else
			end
			tbl_5.entityType = nil
			if var158.isRecommendation then
			else
			end
			tbl_5.namespace = Namespaces_upvr.FriendRequests
			any_useMemo_result1_upvr(EventNames_upvr.AcceptFriendshipBtnClick, tbl_5)
			local module_6 = {
				currentUserId = var20_result1_upvr;
			}
			module_6.targetUserId = arg2
			return any_useCallback_result1_upvr_13(module_6):andThen(function() -- Line 386
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_6 (copied, readonly)
					[2]: var20_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_6(var20_result1_upvr)
			end)
		end, {
			toastTitle = useLocalization_upvr_result1_upvr.friendAddedText;
			iconImage = Images_upvr["icons/actions/friends/friendAdd"];
		}), dependencyArray_upvr(any_useCallback_result1_upvr_6, var20_result1_upvr, useLocalization_upvr_result1_upvr.friendAddedText));
		handleDeclineFriendRequest = React_upvr.useCallback(any_useCallback_result1(function(arg1_27, arg2, arg3) -- Line 394
			--[[ Upvalues[8]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: EntityTypes_upvr (copied, readonly)
				[5]: Namespaces_upvr (copied, readonly)
				[6]: any_useCallback_result1_upvr_10 (readonly)
				[7]: var20_result1_upvr (readonly)
				[8]: any_useCallback_result1_upvr_6 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			any_useCallback_result1_upvr_11()
			local var165 = arg3
			if not var165 then
				var165 = {}
			end
			local tbl_9 = {}
			tbl_9.targetUserId = arg2
			tbl_9.absolutePosition = var165.absolutePosition
			tbl_9.contextType = var165.contextualInfoType
			if var165.isContact then
			else
			end
			tbl_9.entityType = nil
			if var165.isRecommendation then
			else
			end
			tbl_9.namespace = Namespaces_upvr.FriendRequests
			any_useMemo_result1_upvr(EventNames_upvr.DeclineFriendshipBtnClick, tbl_9)
			local module_3 = {
				currentUserId = var20_result1_upvr;
			}
			module_3.targetUserId = arg2
			return any_useCallback_result1_upvr_10(module_3):andThen(function() -- Line 409
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_6 (copied, readonly)
					[2]: var20_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_6(var20_result1_upvr)
			end)
		end, {
			toastTitle = useLocalization_upvr_result1_upvr.requestIgnoredText;
			iconImage = Images_upvr["icons/actions/reject"];
		}), dependencyArray_upvr(any_useCallback_result1_upvr_6, var20_result1_upvr, useLocalization_upvr_result1_upvr.requestIgnoredText));
		handleIgnoreAllFriendsRequests = React_upvr.useCallback(function() -- Line 420
			--[[ Upvalues[9]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: any_useCallback_result1_upvr_4 (readonly)
				[5]: var20_result1_upvr (readonly)
				[6]: any_useCallback_result1_upvr_6 (readonly)
				[7]: any_useCallback_result1_upvr_12 (readonly)
				[8]: useLocalization_upvr_result1_upvr (readonly)
				[9]: Images_upvr (copied, readonly)
			]]
			any_useCallback_result1_upvr_11()
			any_useMemo_result1_upvr(EventNames_upvr.IgnoreAllBtnClick)
			return any_useCallback_result1_upvr_4({
				currentUserId = var20_result1_upvr;
			}):andThen(function(arg1_28) -- Line 427
				--[[ Upvalues[5]:
					[1]: any_useCallback_result1_upvr_6 (copied, readonly)
					[2]: var20_result1_upvr (copied, readonly)
					[3]: any_useCallback_result1_upvr_12 (copied, readonly)
					[4]: useLocalization_upvr_result1_upvr (copied, readonly)
					[5]: Images_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_6(var20_result1_upvr)
				local tbl_8 = {}
				local var175
				if arg1_28 and arg1_28.responseBody and arg1_28.responseBody.backgrounded then
					var175 = useLocalization_upvr_result1_upvr.allRequestsIgnoredBackgroundedText
				else
					var175 = useLocalization_upvr_result1_upvr.allRequestsIgnoredText
				end
				tbl_8.toastTitle = var175
				var175 = Images_upvr["icons/actions/reject"]
				tbl_8.iconImage = var175
				any_useCallback_result1_upvr_12(tbl_8)
			end)
		end, dependencyArray_upvr(any_useCallback_result1_upvr_6, var20_result1_upvr, any_useMemo_result1_upvr, useLocalization_upvr_result1_upvr.allRequestsIgnoredText, useLocalization_upvr_result1_upvr.allRequestsIgnoredBackgroundedText));
		handleRequestFriendship = React_upvr.useCallback(any_useCallback_result1(function(arg1_29, arg2, arg3, arg4) -- Line 449
			--[[ Upvalues[8]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: EntityTypes_upvr (copied, readonly)
				[5]: Namespaces_upvr (copied, readonly)
				[6]: any_useCallback_result1_2_upvr (readonly)
				[7]: var20_result1_upvr (readonly)
				[8]: any_useCallback_result1_upvr_6 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			any_useCallback_result1_upvr_11()
			local var178 = arg4
			if not var178 then
				var178 = {}
			end
			local tbl_7 = {}
			tbl_7.targetUserId = arg2
			tbl_7.absolutePosition = var178.absolutePosition
			tbl_7.contextType = var178.contextualInfoType
			tbl_7.rank = var178.recommendationRank
			if var178.isContact then
			else
			end
			tbl_7.entityType = nil
			if var178.isRecommendation then
			else
			end
			tbl_7.namespace = Namespaces_upvr.FriendRequests
			any_useMemo_result1_upvr(EventNames_upvr.RequestFriendshipBtnClick, tbl_7)
			local module_2 = {
				currentUserId = var20_result1_upvr;
			}
			module_2.targetUserId = arg2
			module_2.friendshipOriginSourceType = arg3
			local var181 = arg4
			if var181 then
				var181 = arg4.isContact
			end
			module_2.isContact = var181
			return any_useCallback_result1_2_upvr(module_2):andThen(function() -- Line 466
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr_6 (copied, readonly)
					[2]: var20_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr_6(var20_result1_upvr)
			end)
		end, {
			toastTitle = useLocalization_upvr_result1_upvr.requestSentText;
			iconImage = Images_upvr["icons/actions/friends/friendAdd"];
		}), dependencyArray_upvr(any_useCallback_result1_upvr_6, var20_result1_upvr, any_useMemo_result1_upvr, useLocalization_upvr_result1_upvr.requestSentText));
		handleLoadMoreRequests = React_upvr.useCallback(function(arg1_32) -- Line 493
			--[[ Upvalues[5]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: useSelector_upvr_result1_upvr_2 (readonly)
				[3]: any_useCallback_result1_upvr_3 (readonly)
				[4]: any_useCallback_result1_upvr_8 (readonly)
				[5]: ShowMoreSectionTypeEnum_upvr (copied, readonly)
			]]
			any_useCallback_result1_upvr_11()
			if useSelector_upvr_result1_upvr_2 then
				any_useCallback_result1_upvr_3(useSelector_upvr_result1_upvr_2, arg1_32)
			end
			any_useCallback_result1_upvr_8(ShowMoreSectionTypeEnum_upvr.FriendRequests)
		end, dependencyArray_upvr(var21_result1, any_useCallback_result1_upvr_3, useSelector_upvr_result1_upvr_2));
		refreshPage = any_useCallback_result1_upvr_2;
		handleNavigateDownToViewUserProfile = React_upvr.useCallback(function(arg1_33, arg2) -- Line 503
			--[[ Upvalues[8]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: arg1 (readonly)
				[3]: useSelector_upvr_result1_upvr (readonly)
				[4]: any_useMemo_result1_upvr (readonly)
				[5]: EventNames_upvr (copied, readonly)
				[6]: EntityTypes_upvr (copied, readonly)
				[7]: Namespaces_upvr (copied, readonly)
				[8]: AppPage_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			any_useCallback_result1_upvr_11()
			local var193
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var193 = arg2.profilePeekViewProps
				return var193
			end
			if not arg2 or not INLINED() then
				var193 = {}
			end
			var193.recommendationSessionId = useSelector_upvr_result1_upvr
			local tbl_4 = {}
			tbl_4.targetUserId = arg1_33
			tbl_4.absolutePosition = var193.absolutePosition
			tbl_4.rank = var193.rank
			tbl_4.contextType = var193.contextualInfoType
			if var193.isContact then
			else
			end
			tbl_4.entityType = nil
			tbl_4.friendStatus = var193.friendStatus
			if var193.isRecommendation then
			else
			end
			tbl_4.namespace = Namespaces_upvr.FriendRequests
			any_useMemo_result1_upvr(EventNames_upvr.PlayerTileClick, tbl_4)
			arg1.navigateToLuaAppPages[AppPage_upvr.ProfilePlatform](arg1_33, var193)
		end, dependencyArray_upvr(arg1.navigateToLuaAppPages, useSelector_upvr_result1_upvr));
		handleOpenLearnMoreLink = React_upvr.useCallback(function() -- Line 523
			--[[ Upvalues[3]:
				[1]: any_useCallback_result1_upvr_11 (readonly)
				[2]: arg1 (readonly)
				[3]: EnumScreens_upvr (copied, readonly)
			]]
			any_useCallback_result1_upvr_11()
			local navigateToLuaAppPages = arg1.navigateToLuaAppPages
			if navigateToLuaAppPages then
				navigateToLuaAppPages[EnumScreens_upvr.LearnMore]()
			end
		end, dependencyArray_upvr(arg1.navigateToLuaAppPages));
	}
	if FFlagMoveCiEncouragedGatingToGuac_upvr then
		-- KONSTANTWARNING: GOTO [629] #539
	end
	-- KONSTANTERROR: [0] 1. Error Block 95 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [624] 534. Error Block 80 start (CF ANALYSIS FAILED)
	if FFlagContactImporterFlowIXPEnabled_upvr then
		-- KONSTANTWARNING: GOTO [629] #539
	end
	-- KONSTANTERROR: [624] 534. Error Block 80 end (CF ANALYSIS FAILED)
end