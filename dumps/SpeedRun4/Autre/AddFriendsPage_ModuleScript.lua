-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:23
-- Luau version 6, Types version 3
-- Time taken: 0.004701 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent_2 = FriendsLanding.Parent
local AddFriends = FriendsLanding.AddFriends
local RoactUtils = require(Parent_2.RoactUtils)
local Responsive_upvr = require(Parent_2.Responsive)
local FocusNavigationUtils = require(Parent_2.FocusNavigationUtils)
local UIBlox = require(Parent_2.UIBlox)
local RobloxAppEnums_upvr = require(Parent_2.RobloxAppEnums)
local SocialLuaAnalytics = require(Parent_2.SocialLuaAnalytics)
local Parent = script.Parent.Parent
local useScreenSize_upvr = require(Parent_2.RobloxAppHooks).useScreenSize
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useNavigation_upvr = require(Parent_2.Navigation).useNavigation
local useAppPolicy_upvr = require(Parent_2.UniversalAppPolicy).useAppPolicy
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local AddFriendsSelector_upvr = require(AddFriends.Redux.AddFriendsSelector)
local FFlagFriendsRenameSocgraph_upvr = require(Parent_2.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent_2.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useLastInputMode_upvr = FocusNavigationUtils.useLastInputMode
local React_upvr = require(Parent_2.React)
local AppPage_upvr = RobloxAppEnums_upvr.AppPage
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local InputHandlers_upvr = require(Parent_2.InputHandlers)
local ReactFocusNavigation_upvr = require(Parent_2.ReactFocusNavigation)
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local useDesignTokens_upvr = require(Parent_2.Style).useDesignTokens
local useAnimatedScrollToSelection_upvr = require(Parent_2.RobloxAppHooks).useAnimatedScrollToSelection
local contactImporterTooltip_upvr = require(AddFriends.Utils.contactImporterTooltip)
local AppStorageService_upvr = game:GetService("AppStorageService")
local AddFriendsTile_upvr = require(Parent.AddFriendsTile)
local FFlagAddFriendsPageUserTileImpressions_upvr = require(Parent_2.SharedFlags).FFlagAddFriendsPageUserTileImpressions
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
local FFlagContactImporterFlowIXPEnabled_upvr = require(Parent_2.SharedFlags).FFlagContactImporterFlowIXPEnabled
local FFlagMoveCiEncouragedGatingToGuac_upvr = require(Parent_2.SharedFlags).FFlagMoveCiEncouragedGatingToGuac
local Analytics_upvr = require(Parent_2.DiscoverabilityModal).Analytics
local NetworkingUserSettings_upvr = require(AddFriends.Networking.NetworkingUserSettings)
local Promise_upvr = require(Parent_2.Promise)
local FFlagUserSearchScreenBarAnalytics_upvr = require(Parent_2.SharedFlags).FFlagUserSearchScreenBarAnalytics
local Sources_upvr = SocialLuaAnalytics.Analytics.Enums.Sources
local Contexts_upvr = SocialLuaAnalytics.Analytics.Enums.Contexts
local TextKeys_upvr = require(Parent_2.ContactImporter).TextKeys
local getPageMargin_upvr = UIBlox.App.Container.getPageMargin
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local AddFriendsGenericBanner_upvr = require(Parent.AddFriendsGenericBanner)
local Images_upvr = UIBlox.App.ImageSet.Images
local FFlagAddFriendsTCEducationSetup_upvr = require(Parent_2.SharedFlags).FFlagAddFriendsTCEducationSetup
local AddFriendsSectionHeaderFrame_upvr = require(Parent.AddFriendsSectionHeaderFrame)
local AddFriendsEmptyState_upvr = require(Parent.AddFriendsEmptyState)
local Roact_upvr = require(Parent_2.Roact)
local RefreshScrollingFrame_upvr = require(Parent_2.LuaSocialLibrariesDeps).SocialLibraries.config({}).Components.RefreshScrollingFrame
local VerticalScrollViewWithMargin_upvr = UIBlox.App.Container.VerticalScrollViewWithMargin
local TrustedContactsEducationBanner_upvr = require(Parent.TrustedContactsEducationBanner)
local FriendRequestsSection_upvr = require(script.Parent.FriendRequestsSection)
local FriendRecommendationsSection_upvr = require(script.Parent.FriendRecommendationsSection)
local AddFriendsPageHeader_upvr = require(Parent.AddFriendsPageHeader)
local UserSearchBarButton_upvr = require(Parent_2.SocialCommon).Components.UserSearchBar.UserSearchBarButton
return function(arg1) -- Line 118, Named "AddFriendsPage"
	--[[ Upvalues[51]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useNavigation_upvr (readonly)
		[4]: useAppPolicy_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: AddFriendsSelector_upvr (readonly)
		[7]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[8]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[9]: useSelectionCursor_upvr (readonly)
		[10]: CursorKind_upvr (readonly)
		[11]: usePreferredInput_upvr (readonly)
		[12]: Responsive_upvr (readonly)
		[13]: useLastInputMode_upvr (readonly)
		[14]: React_upvr (readonly)
		[15]: AppPage_upvr (readonly)
		[16]: RobloxAppEnums_upvr (readonly)
		[17]: dependencyArray_upvr (readonly)
		[18]: InputHandlers_upvr (readonly)
		[19]: ReactFocusNavigation_upvr (readonly)
		[20]: FocusNavigationEventNameEnum_upvr (readonly)
		[21]: useDesignTokens_upvr (readonly)
		[22]: useAnimatedScrollToSelection_upvr (readonly)
		[23]: contactImporterTooltip_upvr (readonly)
		[24]: AppStorageService_upvr (readonly)
		[25]: AddFriendsTile_upvr (readonly)
		[26]: FFlagAddFriendsPageUserTileImpressions_upvr (readonly)
		[27]: EnumScreens_upvr (readonly)
		[28]: FFlagContactImporterFlowIXPEnabled_upvr (readonly)
		[29]: FFlagMoveCiEncouragedGatingToGuac_upvr (readonly)
		[30]: Analytics_upvr (readonly)
		[31]: NetworkingUserSettings_upvr (readonly)
		[32]: Promise_upvr (readonly)
		[33]: FFlagUserSearchScreenBarAnalytics_upvr (readonly)
		[34]: Sources_upvr (readonly)
		[35]: Contexts_upvr (readonly)
		[36]: TextKeys_upvr (readonly)
		[37]: getPageMargin_upvr (readonly)
		[38]: useLocalization_upvr (readonly)
		[39]: AddFriendsGenericBanner_upvr (readonly)
		[40]: Images_upvr (readonly)
		[41]: FFlagAddFriendsTCEducationSetup_upvr (readonly)
		[42]: AddFriendsSectionHeaderFrame_upvr (readonly)
		[43]: AddFriendsEmptyState_upvr (readonly)
		[44]: Roact_upvr (readonly)
		[45]: RefreshScrollingFrame_upvr (readonly)
		[46]: VerticalScrollViewWithMargin_upvr (readonly)
		[47]: TrustedContactsEducationBanner_upvr (readonly)
		[48]: FriendRequestsSection_upvr (readonly)
		[49]: FriendRecommendationsSection_upvr (readonly)
		[50]: AddFriendsPageHeader_upvr (readonly)
		[51]: UserSearchBarButton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 197 start (CF ANALYSIS FAILED)
	local function _(arg1_2) -- Line 125
		return arg1_2.getEnableProfileQrCode()
	end
	local function _(arg1_3) -- Line 129
		--[[ Upvalues[1]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
		]]
		local var16_result1 = AddFriendsSelector_upvr(arg1_3, "RequestsFromOriginSourceType")
		if not var16_result1 then
			var16_result1 = {}
		end
		return var16_result1
	end
	local function _(arg1_4) -- Line 133
		--[[ Upvalues[1]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
		]]
		local AddFriendsSelector_upvr_result1 = AddFriendsSelector_upvr(arg1_4, "ShowContactImporterParams")
		if not AddFriendsSelector_upvr_result1 then
			AddFriendsSelector_upvr_result1 = {}
		end
		return AddFriendsSelector_upvr_result1
	end
	local function _(arg1_5) -- Line 137
		--[[ Upvalues[1]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
		]]
		local var16_result1_2 = AddFriendsSelector_upvr(arg1_5, "ContactImporterWarning.contactImporterFriendRequests")
		if not var16_result1_2 then
			var16_result1_2 = {}
		end
		return var16_result1_2
	end
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		local function _(arg1_6) -- Line 142
			return arg1_6.getRenameFriendsToConnections()
		end
	else
	end
	if usePreferredInput_upvr() ~= Responsive_upvr.Input.Directional then
		-- KONSTANTWARNING: GOTO [48] #44
	end
	-- KONSTANTERROR: [0] 1. Error Block 197 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 43. Error Block 217 start (CF ANALYSIS FAILED)
	if useLastInputMode_upvr() ~= "Focus" then
		-- KONSTANTWARNING: GOTO [54] #49
	end
	-- KONSTANTERROR: [47] 43. Error Block 217 end (CF ANALYSIS FAILED)
end