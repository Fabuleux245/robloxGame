-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:02
-- Luau version 6, Types version 3
-- Time taken: 0.002802 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Parent = FriendsLanding.Parent
local UIBlox = dependencies.UIBlox
local FocusNavigationUtils_upvr = require(Parent.FocusNavigationUtils)
local function var6_upvr() -- Line 48
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local FriendsLandingAnalytics_upvr = require(FriendsLanding.FriendsLandingAnalytics)
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local useFocusGuiObject_upvr = dependencies.useFocusGuiObject
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local InputHandlers_upvr = require(Parent.InputHandlers)
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils_upvr.FocusNavigationEventNameEnum
local convertUserPresenceTypeToString_upvr = require(Parent.SocialCommon).Utils.convertUserPresenceTypeToString
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local ButtonClickEvents_upvr = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)
local Constants_upvr = require(FriendsLanding.Common.Constants)
local FriendTile_upvr = require(FriendsLanding.Components.FriendTile)
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local GridMetrics_upvr = UIBlox.App.Grid.GridMetrics
local useAnimatedScrollToSelection_upvr = require(Parent.RobloxAppHooks).useAnimatedScrollToSelection
local Roact_upvr = require(Parent.Roact)
local HorizontalPageMargin_upvr = UIBlox.App.Container.HorizontalPageMargin
local RefreshScrollingFrame_upvr = dependencies.SocialLibraries.Components.RefreshScrollingFrame
local FilterByButton_upvr = require(FriendsLanding.Components.FilterByButton)
local EmptyResultsView_upvr = require(FriendsLanding.Components.EmptyResultsView)
local NoFriendsView_upvr = require(FriendsLanding.Components.NoFriendsView)
local CollectionGrid_upvr = require(Parent.CollectionViews).CollectionGrid
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 74, Named "FriendsLandingPage"
	--[[ Upvalues[33]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FriendsLandingContext_upvr (readonly)
		[4]: FriendsLandingAnalytics_upvr (readonly)
		[5]: useNavigation_upvr (readonly)
		[6]: useDesignTokens_upvr (readonly)
		[7]: useUiModeInfo_upvr (readonly)
		[8]: useFocusGuiObject_upvr (readonly)
		[9]: UiMode_upvr (readonly)
		[10]: FocusNavigationUtils_upvr (readonly)
		[11]: InputHandlers_upvr (readonly)
		[12]: EnumScreens_upvr (readonly)
		[13]: ReactFocusNavigation_upvr (readonly)
		[14]: FocusNavigationEventNameEnum_upvr (readonly)
		[15]: convertUserPresenceTypeToString_upvr (readonly)
		[16]: dependencyArray_upvr (readonly)
		[17]: ButtonClickEvents_upvr (readonly)
		[18]: Constants_upvr (readonly)
		[19]: FriendTile_upvr (readonly)
		[20]: var6_upvr (readonly)
		[21]: filterStates_upvr (readonly)
		[22]: AppPage_upvr (readonly)
		[23]: GridMetrics_upvr (readonly)
		[24]: useAnimatedScrollToSelection_upvr (readonly)
		[25]: Roact_upvr (readonly)
		[26]: HorizontalPageMargin_upvr (readonly)
		[27]: RefreshScrollingFrame_upvr (readonly)
		[28]: FilterByButton_upvr (readonly)
		[29]: EmptyResultsView_upvr (readonly)
		[30]: NoFriendsView_upvr (readonly)
		[31]: CollectionGrid_upvr (readonly)
		[32]: Button_upvr (readonly)
		[33]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 117 start (CF ANALYSIS FAILED)
	local tbl = {
		pageError = "CommonUI.Messages.Response.PageError";
		successText = "Feature.Friends.Action.FriendRemoved";
		errorText = "Feature.Toast.NetworkingError.SomethingIsWrong";
		friends = "CommonUI.Features.Label.Friends";
		showMore = "Feature.Avatar.Action.ShowMore";
	}
	local var39
	if useUiModeInfo_upvr().uiMode ~= UiMode_upvr.TenFoot then
		var39 = false
	else
		var39 = true
	end
	if FocusNavigationUtils_upvr.useLastInputMode() ~= "Cursor" then
		-- KONSTANTWARNING: GOTO [59] #45
	end
	-- KONSTANTERROR: [0] 1. Error Block 117 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [58] 44. Error Block 126 start (CF ANALYSIS FAILED)
	local navigateToLuaAppPages_upvr = React_upvr.useContext(FriendsLandingContext_upvr.Context).navigateToLuaAppPages
	local function _(arg1_2) -- Line 96
		--[[ Upvalues[2]:
			[1]: navigateToLuaAppPages_upvr (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		arg1_2:cancel()
		navigateToLuaAppPages_upvr[EnumScreens_upvr.SearchPage]()
	end
	if var39 then
		-- KONSTANTWARNING: GOTO [84] #63
	end
	-- KONSTANTERROR: [58] 44. Error Block 126 end (CF ANALYSIS FAILED)
end