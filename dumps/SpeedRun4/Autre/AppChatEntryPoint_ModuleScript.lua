-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:14
-- Luau version 6, Types version 3
-- Time taken: 0.036546 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local AppChat_upvr = script:FindFirstAncestor("AppChat")
local Parent = AppChat_upvr.Parent
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local any_isEnabled_result1_upvr = default_upvr.isEnabled()
if any_isEnabled_result1_upvr then
	any_isEnabled_result1_upvr = not require(AppChat_upvr.Flags.getFFlagAppChatRemoveDynamicRequires)()
end
if not any_isEnabled_result1_upvr then
end
local ChatPlacementContext_upvr = require(AppChat_upvr.Contexts.ChatPlacementContext)
local React_upvr = require(Parent.React)
local tbl_33_upvr = {
	logger = require(Parent.Loggers).Logger;
	navigateToLuaAppPages = nil;
	parameters = nil;
	rnBypassActionSignal = nil;
	setActiveConversationId = nil;
	setBackButtonEnabled = nil;
	setTabBarVisible = function() -- Line 117, Named "setTabBarVisible"
	end;
	setInitialConversationId = function(arg1) -- Line 118, Named "setInitialConversationId"
	end;
	wideMode = false;
	notificationCount = 0;
	navigateToRootStack = nil;
	androidBackButtonSignal = nil;
	initialConversationId = "";
	chatPlacement = ChatPlacementContext_upvr.Enum.Unknown;
}
local Cryo_upvr = require(Parent.Cryo)
local rootNavigator_upvw_2 = require(AppChat_upvr.Navigators.Compact.rootNavigator)
local rootNavigator_upvw = require(AppChat_upvr.Navigators.Wide.rootNavigator)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useCallback_upvr = React_upvr.useCallback
local UnfilteredThreadsEligibilityForAnalytics_upvr = require(AppChat_upvr.Analytics.Enums.UnfilteredThreadsEligibilityForAnalytics)
local getNeedsPhoneVerificationUnfilteredThreads_upvr = require(AppChat_upvr.Utils.getNeedsPhoneVerificationUnfilteredThreads)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useEffect_upvr = React_upvr.useEffect
local getUnfilteredThreadsEligibility_upvr = require(AppChat_upvr.Conversations.Thunks.getUnfilteredThreadsEligibility)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useChatIsVisible_upvr = require(AppChat_upvr.Hooks.useChatIsVisible)
local useState_upvr = React_upvr.useState
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local getRoactChatStackNavigator_upvr = require(AppChat_upvr.getRoactChatStackNavigator)
local useRef_upvr = React_upvr.useRef
local Logger_upvr = require(AppChat_upvr.Logger)
local EnumScreens_upvr = require(script.Parent.EnumScreens)
local createConversation_upvr = require(AppChat_upvr.Conversations.Thunks.createConversation)
local fetchLatestConversationDetails_upvr = require(AppChat_upvr.Conversations.Thunks.fetchLatestConversationDetails)
local GetFFlagLuaAppEnableSquadPage_upvr_2 = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local ArgCheck_upvr = require(Parent.ArgCheck)
local EnteredChatFromEntryPoint_upvr = require(AppChat_upvr.Actions.EnteredChatFromEntryPoint)
local NavigateIntoChat_upvr = require(AppChat_upvr.Actions.NavigateIntoChat)
local useCurrentSquadParentChannelId_upvr = require(Parent.SquadsCore).Hooks.useCurrentSquadParentChannelId
local GetFFlagEnableCrossExpVoice_upvr = require(Parent.SharedFlags).GetFFlagEnableCrossExpVoice
local useIsVoiceConnected_upvr = require(Parent.CrossExperienceVoice).Hooks.useIsVoiceConnected
local useAppPolicy_upvr = require(AppChat_upvr.Hooks.useAppPolicy)
local getFFlagHideNotificationIconForVR_upvr = require(AppChat_upvr.Flags.getFFlagHideNotificationIconForVR)
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local useAppChatHorizontalPadding_upvr = require(AppChat_upvr.Hooks.useAppChatHorizontalPadding)
local FFlagAppChatNavigateLandingWhenDisabled_upvr = require(AppChat_upvr.Flags.FFlagAppChatNavigateLandingWhenDisabled)
local useIsChatEnabled_upvr = require(AppChat_upvr.Hooks.useIsChatEnabled)
local GetFFlagEnableAppChatInExperience_upvr = require(Parent.SharedFlags).GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = require(AppChat_upvr.App.InExperienceAppChatExperimentation)
local HideChatToastExperimentation_upvr = require(AppChat_upvr.App.HideChatToastExperimentation)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local SetTabBarVisible_upvr = require(Parent.AppTabBarRodux).Actions.SetTabBarVisible
local UserInputService_upvr = game:GetService("UserInputService")
local NAV_BAR_WITH_FACEPILE_SIZE_upvr = require(AppChat_upvr.Constants).NAV_BAR_WITH_FACEPILE_SIZE
local LuaAppNavigationContextProvider_upvr = require(AppChat_upvr.LuaAppNavigationContextProvider)
local getFFlagAppChatEnableRepliesUI_upvr = require(AppChat_upvr.Flags.getFFlagAppChatEnableRepliesUI)
local ReplyingToMessageProvider_upvr = require(AppChat_upvr.Components.ChatConversation.MessageInteraction.ReplyingContext.ReplyingToMessageProvider)
local LayerCollectorProvider_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.LayerCollectorProvider
local useRobloxLocale_upvr = require(AppChat_upvr.Hooks.useRobloxLocale)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local AnalyticsProvider_upvr = require(AppChat_upvr.LegacyAnalytics.AnalyticsProvider)
local AppTelemetryLayer_upvr = require(AppChat_upvr.Telemetry.Layers.AppTelemetryLayer)
local TopBarContext_upvr = require(AppChat_upvr.TopBarContext)
local getFFlagFixChatsBottomInsetBackgroundColor_upvr = require(AppChat_upvr.Flags.getFFlagFixChatsBottomInsetBackgroundColor)
local RoactChatAnalyticsProvider_upvr = require(AppChat_upvr.Analytics.RoactChatAnalyticsProvider)
function AppChatEntryPoint(arg1) -- Line 131
	--[[ Upvalues[58]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_33_upvr (readonly)
		[3]: ChatPlacementContext_upvr (readonly)
		[4]: any_isEnabled_result1_upvr (readonly)
		[5]: rootNavigator_upvw_2 (read and write)
		[6]: AppChat_upvr (readonly)
		[7]: rootNavigator_upvw (read and write)
		[8]: useSelector_upvr (readonly)
		[9]: useCallback_upvr (readonly)
		[10]: UnfilteredThreadsEligibilityForAnalytics_upvr (readonly)
		[11]: getNeedsPhoneVerificationUnfilteredThreads_upvr (readonly)
		[12]: useDispatch_upvr (readonly)
		[13]: useEffect_upvr (readonly)
		[14]: getUnfilteredThreadsEligibility_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: useChatIsVisible_upvr (readonly)
		[17]: useState_upvr (readonly)
		[18]: React_upvr (readonly)
		[19]: RoactNavigation_upvr (readonly)
		[20]: getRoactChatStackNavigator_upvr (readonly)
		[21]: useRef_upvr (readonly)
		[22]: Logger_upvr (readonly)
		[23]: EnumScreens_upvr (readonly)
		[24]: createConversation_upvr (readonly)
		[25]: fetchLatestConversationDetails_upvr (readonly)
		[26]: GetFFlagLuaAppEnableSquadPage_upvr_2 (readonly)
		[27]: ArgCheck_upvr (readonly)
		[28]: EnteredChatFromEntryPoint_upvr (readonly)
		[29]: NavigateIntoChat_upvr (readonly)
		[30]: useCurrentSquadParentChannelId_upvr (readonly)
		[31]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[32]: useIsVoiceConnected_upvr (readonly)
		[33]: useAppPolicy_upvr (readonly)
		[34]: getFFlagHideNotificationIconForVR_upvr (readonly)
		[35]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[36]: useAppChatHorizontalPadding_upvr (readonly)
		[37]: FFlagAppChatNavigateLandingWhenDisabled_upvr (readonly)
		[38]: useIsChatEnabled_upvr (readonly)
		[39]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[40]: InExperienceAppChatExperimentation_upvr (readonly)
		[41]: HideChatToastExperimentation_upvr (readonly)
		[42]: useStyle_upvr (readonly)
		[43]: default_upvr (readonly)
		[44]: SetTabBarVisible_upvr (readonly)
		[45]: UserInputService_upvr (readonly)
		[46]: NAV_BAR_WITH_FACEPILE_SIZE_upvr (readonly)
		[47]: LuaAppNavigationContextProvider_upvr (readonly)
		[48]: getFFlagAppChatEnableRepliesUI_upvr (readonly)
		[49]: ReplyingToMessageProvider_upvr (readonly)
		[50]: LayerCollectorProvider_upvr (readonly)
		[51]: useRobloxLocale_upvr (readonly)
		[52]: RbxAnalyticsService_upvr (readonly)
		[53]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[54]: AnalyticsProvider_upvr (readonly)
		[55]: AppTelemetryLayer_upvr (readonly)
		[56]: TopBarContext_upvr (readonly)
		[57]: getFFlagFixChatsBottomInsetBackgroundColor_upvr (readonly)
		[58]: RoactChatAnalyticsProvider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_33_upvr, arg1)
	local any_isPlacementInExperience_result1_upvr_2 = ChatPlacementContext_upvr.isPlacementInExperience(any_join_result1_upvr.chatPlacement)
	local var189
	if any_isEnabled_result1_upvr then
		rootNavigator_upvw_2 = require(AppChat_upvr.Navigators.Compact.rootNavigator)
		rootNavigator_upvw = require(AppChat_upvr.Navigators.Wide.rootNavigator)
	end
	local var11_result1_upvr = useSelector_upvr(useCallback_upvr(function(arg1_27) -- Line 142
		return arg1_27.LocalUserId
	end, {}))
	if not var11_result1_upvr then
		var11_result1_upvr = any_join_result1_upvr.localUserId
	end
	local useSelector_upvr_result1_3 = useSelector_upvr(useCallback_upvr(function(arg1_28) -- Line 145
		return arg1_28.GlobalGuiInset
	end, {}))
	if not useSelector_upvr_result1_3 then
		useSelector_upvr_result1_3 = {}
		useSelector_upvr_result1_3.bottom = 0
	end
	local useSelector_upvr_result1_5 = useSelector_upvr(useCallback_upvr(function(arg1_29) -- Line 148
		return arg1_29.ChatAppReducer.LastEntryPoint
	end, {}))
	local useSelector_upvr_result1_6 = useSelector_upvr(useCallback_upvr(function(arg1_30) -- Line 151
		--[[ Upvalues[2]:
			[1]: UnfilteredThreadsEligibilityForAnalytics_upvr (copied, readonly)
			[2]: getNeedsPhoneVerificationUnfilteredThreads_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 13 start (CF ANALYSIS FAILED)
		local eligibility = arg1_30.ChatAppReducer.UnfilteredThreads.eligibility
		if not eligibility then
			-- KONSTANTERROR: [12] 8. Error Block 3 start (CF ANALYSIS FAILED)
			eligibility = {}
			-- KONSTANTERROR: [12] 8. Error Block 3 end (CF ANALYSIS FAILED)
		end
		if eligibility.isFullyEligible then
			return UnfilteredThreadsEligibilityForAnalytics_upvr.FullyEligible
		end
		if getNeedsPhoneVerificationUnfilteredThreads_upvr(eligibility) then
			return UnfilteredThreadsEligibilityForAnalytics_upvr.NeedsPhoneVerification
		end
		do
			return UnfilteredThreadsEligibilityForAnalytics_upvr.Ineligible
		end
		-- KONSTANTERROR: [5] 4. Error Block 13 end (CF ANALYSIS FAILED)
	end, {}))
	local useDispatch_upvr_result1_upvr_2 = useDispatch_upvr()
	useEffect_upvr(function() -- Line 166
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr_2 (readonly)
			[2]: getUnfilteredThreadsEligibility_upvr (copied, readonly)
			[3]: any_isPlacementInExperience_result1_upvr_2 (readonly)
		]]
		useDispatch_upvr_result1_upvr_2(getUnfilteredThreadsEligibility_upvr(any_isPlacementInExperience_result1_upvr_2))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr_2, var11_result1_upvr, any_isPlacementInExperience_result1_upvr_2))
	local var20_result1_upvr, var20_result2_upvr = useState_upvr({})
	local function _() -- Line 175
		--[[ Upvalues[5]:
			[1]: RoactNavigation_upvr (copied, readonly)
			[2]: getRoactChatStackNavigator_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: rootNavigator_upvw (copied, read and write)
			[5]: rootNavigator_upvw_2 (copied, read and write)
		]]
		local var204
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var204 = rootNavigator_upvw
			return var204
		end
		if not any_join_result1_upvr.wideMode or not INLINED_4() then
			var204 = rootNavigator_upvw_2
		end
		return RoactNavigation_upvr.createAppContainer(getRoactChatStackNavigator_upvr(var204, any_join_result1_upvr.navigateToRootStack, any_join_result1_upvr.androidBackButtonSignal, any_join_result1_upvr.androidBackButtonConnection))
	end
	local var205
	if any_isPlacementInExperience_result1_upvr_2 then
	else
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var205 = rootNavigator_upvw
			return var205
		end
		if not any_join_result1_upvr.wideMode or not INLINED_5() then
			var205 = rootNavigator_upvw_2
		end
	end
	local useRef_upvr_result1_upvr_4 = useRef_upvr(false)
	local useRef_upvr_result1_upvr_3 = useRef_upvr(nil)
	local useRef_upvr_result1_upvr_5 = useRef_upvr(function(...) -- Line 210
	end)
	useEffect_upvr(function() -- Line 212
		--[[ Upvalues[2]:
			[1]: any_join_result1_upvr (readonly)
			[2]: Logger_upvr (copied, readonly)
		]]
		if any_join_result1_upvr.logger then
			Logger_upvr:setParent(any_join_result1_upvr.logger)
		end
	end, dependencyArray_upvr(any_join_result1_upvr.logger))
	local var12_result1_3_upvr = useCallback_upvr(function(arg1_33, arg2) -- Line 236
		--[[ Upvalues[3]:
			[1]: RoactNavigation_upvr (copied, readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: any_join_result1_upvr (readonly)
		]]
		local tbl_17 = {}
		local tbl_5 = {
			routeName = EnumScreens_upvr.ChatConversation;
		}
		local tbl_50 = {}
		tbl_50.conversationId = arg1_33
		tbl_5.params = tbl_50
		local tbl_44 = {
			routeName = EnumScreens_upvr.SquadLobby;
		}
		local tbl_16 = {}
		tbl_16.conversationId = arg1_33
		tbl_16.extraParams = arg2
		tbl_44.params = tbl_16
		tbl_17[1] = RoactNavigation_upvr.Actions.navigate(tbl_5)
		tbl_17[2] = RoactNavigation_upvr.Actions.navigate(tbl_44)
		if any_join_result1_upvr.wideMode then
			local module_7 = {
				routeName = EnumScreens_upvr.ChatLanding;
			}
			local tbl_47 = {}
			tbl_47.conversationId = arg1_33
			module_7.params = tbl_47
			module_7.action = RoactNavigation_upvr.StackActions.reset({
				index = 2;
				actions = tbl_17;
			})
			return RoactNavigation_upvr.Actions.navigate(module_7)
		end
		table.insert(tbl_17, 1, RoactNavigation_upvr.Actions.navigate({
			routeName = EnumScreens_upvr.ChatLanding;
		}))
		local module_6 = {
			routeName = EnumScreens_upvr.ChatLandingStack;
		}
		local tbl_28 = {}
		tbl_28.conversationId = arg1_33
		module_6.params = tbl_28
		module_6.action = RoactNavigation_upvr.StackActions.reset({
			index = 3;
			actions = tbl_17;
		})
		return RoactNavigation_upvr.Actions.navigate(module_6)
	end, {any_join_result1_upvr.wideMode})
	local var12_result1_8_upvr = useCallback_upvr(function(arg1_35) -- Line 289
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr_2 (readonly)
			[2]: fetchLatestConversationDetails_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr_2(fetchLatestConversationDetails_upvr(arg1_35))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr_2))
	local var12_result1_upvr_2 = useCallback_upvr(function(arg1_32) -- Line 228
		--[[ Upvalues[2]:
			[1]: RoactNavigation_upvr (copied, readonly)
			[2]: EnumScreens_upvr (copied, readonly)
		]]
		local module_5 = {
			routeName = EnumScreens_upvr.ChatConversation;
		}
		local tbl_2 = {}
		tbl_2.conversationId = arg1_32
		module_5.params = tbl_2
		return RoactNavigation_upvr.Actions.navigate(module_5)
	end, {})
	local var12_result1_2_upvr = useCallback_upvr(function(arg1_34) -- Line 285
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr_2 (readonly)
			[2]: createConversation_upvr (copied, readonly)
		]]
		local module_8 = {}
		module_8[1] = arg1_34
		return useDispatch_upvr_result1_upvr_2(createConversation_upvr("one_to_one", module_8))
	end, dependencyArray_upvr(useDispatch_upvr_result1_upvr_2))
	local var12_result1_7 = useCallback_upvr(function(arg1_43) -- Line 379
		--[[ Upvalues[2]:
			[1]: ArgCheck_upvr (copied, readonly)
			[2]: var20_result1_upvr (readonly)
		]]
		ArgCheck_upvr.isType(arg1_43, "string", "screen")
		local var253 = var20_result1_upvr[arg1_43]
		if not var253 then
			var253 = {}
		end
		return var253
	end, dependencyArray_upvr(var20_result1_upvr))
	local var12_result1_9 = useCallback_upvr(function(arg1_44, arg2) -- Line 385
		--[[ Upvalues[3]:
			[1]: ArgCheck_upvr (copied, readonly)
			[2]: var20_result2_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		ArgCheck_upvr.isType(arg1_44, "string", "screen")
		ArgCheck_upvr.isType(arg2, "table", "state")
		var20_result2_upvr(function(arg1_45) -- Line 389
			--[[ Upvalues[3]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1_44 (readonly)
				[3]: arg2 (readonly)
			]]
			local var257 = arg1_45[arg1_44]
			if not var257 then
				var257 = {}
			end
			return Cryo_upvr.Dictionary.join(arg1_45, {
				[arg1_44] = Cryo_upvr.Dictionary.join(var257, arg2);
			})
		end)
	end, {})
	local var12_result1_upvr = useCallback_upvr(function(arg1_31) -- Line 218
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr_4 (readonly)
			[2]: useRef_upvr_result1_upvr_5 (readonly)
		]]
		if not useRef_upvr_result1_upvr_4.current then
		elseif useRef_upvr_result1_upvr_5.current then
			useRef_upvr_result1_upvr_5.current(arg1_31)
		end
	end, dependencyArray_upvr(useRef_upvr_result1_upvr_4, useRef_upvr_result1_upvr_5))
	local var12_result1_upvr_4 = useCallback_upvr(function(arg1_46) -- Line 397
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr_3 (readonly)
			[2]: var12_result1_upvr (readonly)
		]]
		if useRef_upvr_result1_upvr_3.current then
			useRef_upvr_result1_upvr_3.current:disconnect()
			useRef_upvr_result1_upvr_3.current = nil
		end
		if arg1_46 then
			useRef_upvr_result1_upvr_3.current = arg1_46:connect(var12_result1_upvr)
		end
	end, dependencyArray_upvr(useRef_upvr_result1_upvr_3))
	useEffect_upvr(function() -- Line 408
		--[[ Upvalues[5]:
			[1]: useRef_upvr_result1_upvr_4 (readonly)
			[2]: var12_result1_upvr_4 (readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: useDispatch_upvr_result1_upvr_2 (readonly)
			[5]: EnteredChatFromEntryPoint_upvr (copied, readonly)
		]]
		useRef_upvr_result1_upvr_4.current = true
		var12_result1_upvr_4(any_join_result1_upvr.rnBypassActionSignal)
		return function() -- Line 412
			--[[ Upvalues[4]:
				[1]: useRef_upvr_result1_upvr_4 (copied, readonly)
				[2]: var12_result1_upvr_4 (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr_2 (copied, readonly)
				[4]: EnteredChatFromEntryPoint_upvr (copied, readonly)
			]]
			useRef_upvr_result1_upvr_4.current = false
			var12_result1_upvr_4(nil)
			useDispatch_upvr_result1_upvr_2(EnteredChatFromEntryPoint_upvr())
		end
	end, {})
	local function var265() -- Line 420
		--[[ Upvalues[6]:
			[1]: any_join_result1_upvr (readonly)
			[2]: any_isPlacementInExperience_result1_upvr_2 (readonly)
			[3]: useDispatch_upvr_result1_upvr_2 (readonly)
			[4]: NavigateIntoChat_upvr (copied, readonly)
			[5]: EnumScreens_upvr (copied, readonly)
			[6]: var11_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.initialConversationId then
			if any_join_result1_upvr.initialConversationId ~= "" and any_isPlacementInExperience_result1_upvr_2 then
				useDispatch_upvr_result1_upvr_2(NavigateIntoChat_upvr({
					screen = EnumScreens_upvr.ChatConversation;
					params = {
						userId = var11_result1_upvr;
						conversationId = any_join_result1_upvr.initialConversationId;
					};
				}))
				any_join_result1_upvr.setInitialConversationId("")
			end
		end
		return function() -- Line 429
		end
	end
	useEffect_upvr(var265, dependencyArray_upvr(useDispatch_upvr_result1_upvr_2, var11_result1_upvr, any_join_result1_upvr.initialConversationId, any_join_result1_upvr.setInitialConversationId))
	local var269_upvw
	var265 = nil
	local var270_upvw = var265
	if GetFFlagLuaAppEnableSquadPage_upvr_2() then
		var269_upvw = useCurrentSquadParentChannelId_upvr()
		if GetFFlagEnableCrossExpVoice_upvr() then
			var270_upvw = useIsVoiceConnected_upvr()
		end
	end
	useEffect_upvr(function() -- Line 441
		--[[ Upvalues[10]:
			[1]: GetFFlagLuaAppEnableSquadPage_upvr_2 (copied, readonly)
			[2]: any_isPlacementInExperience_result1_upvr_2 (readonly)
			[3]: any_join_result1_upvr (readonly)
			[4]: var269_upvw (read and write)
			[5]: GetFFlagEnableCrossExpVoice_upvr (copied, readonly)
			[6]: var270_upvw (read and write)
			[7]: useDispatch_upvr_result1_upvr_2 (readonly)
			[8]: NavigateIntoChat_upvr (copied, readonly)
			[9]: EnumScreens_upvr (copied, readonly)
			[10]: var11_result1_upvr (readonly)
		]]
		if GetFFlagLuaAppEnableSquadPage_upvr_2() then
			if any_isPlacementInExperience_result1_upvr_2 and any_join_result1_upvr.initialConversationId == "" and var269_upvw then
				if GetFFlagEnableCrossExpVoice_upvr() and var270_upvw then
					useDispatch_upvr_result1_upvr_2(NavigateIntoChat_upvr({
						screen = EnumScreens_upvr.SquadLobby;
						params = {
							userId = var11_result1_upvr;
							conversationId = var269_upvw;
						};
					}))
					return
				end
				useDispatch_upvr_result1_upvr_2(NavigateIntoChat_upvr({
					screen = EnumScreens_upvr.ChatConversation;
					params = {
						userId = var11_result1_upvr;
						conversationId = var269_upvw;
					};
				}))
			end
		end
	end, dependencyArray_upvr())
	useEffect_upvr(function() -- Line 462
		--[[ Upvalues[2]:
			[1]: var12_result1_upvr_4 (readonly)
			[2]: any_join_result1_upvr (readonly)
		]]
		var12_result1_upvr_4(any_join_result1_upvr.rnBypassActionSignal)
	end, dependencyArray_upvr(any_join_result1_upvr.rnBypassActionSignal))
	useEffect_upvr(function() -- Line 466
		--[[ Upvalues[3]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: var20_result1_upvr (readonly)
			[3]: var20_result2_upvr (readonly)
		]]
		if not Cryo_upvr.isEmpty(var20_result1_upvr) then
			var20_result2_upvr({})
		end
	end, dependencyArray_upvr(any_join_result1_upvr.wideMode))
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		local _ = useAppChatHorizontalPadding_upvr(any_isPlacementInExperience_result1_upvr_2)
	else
		local tbl_11 = {
			outer = 12;
			inner = 12;
			default = 12;
		}
	end
	var189 = not any_isPlacementInExperience_result1_upvr_2
	var189 = useAppPolicy_upvr(function(arg1_47) -- Line 472
		return arg1_47.getChatHeaderSearch()
	end)
	if var189 then
		var189 = not any_isPlacementInExperience_result1_upvr_2
	end
	if FFlagAppChatNavigateLandingWhenDisabled_upvr then
		local useIsChatEnabled_upvr_result1 = useIsChatEnabled_upvr()
		var189 = var189 and useIsChatEnabled_upvr_result1
	end
	if any_isPlacementInExperience_result1_upvr_2 then
		if GetFFlagEnableAppChatInExperience_upvr() then
			if InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatNotifications then
			end
		end
	end
	if any_isPlacementInExperience_result1_upvr_2 then
		local _ = false
	elseif GetFFlagEnableAppChatInExperience_upvr() then
	end
	local useStyle_upvr_result1_2 = useStyle_upvr()
	local var287
	if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
		local function var288(arg1_50) -- Line 517
			--[[ Upvalues[2]:
				[1]: useDispatch_upvr_result1_upvr_2 (readonly)
				[2]: SetTabBarVisible_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr_2(SetTabBarVisible_upvr(arg1_50))
		end
		var287 = useCallback_upvr(var288, dependencyArray_upvr(useDispatch_upvr_result1_upvr_2))
	end
	var288 = React_upvr
	local var289 = var288
	if any_isPlacementInExperience_result1_upvr_2 then
		var289 = useRef_upvr(RoactNavigation_upvr.createAppContainer(getRoactChatStackNavigator_upvr(var205, any_join_result1_upvr.navigateToRootStack, any_join_result1_upvr.androidBackButtonSignal, any_join_result1_upvr.androidBackButtonConnection)))
	else
		var289 = useRef_upvr(RoactNavigation_upvr.createAppContainer(getRoactChatStackNavigator_upvr(var205, any_join_result1_upvr.navigateToRootStack, any_join_result1_upvr.androidBackButtonSignal, any_join_result1_upvr.androidBackButtonConnection))).current
	end
	local tbl = {
		externalDispatchConnector = useCallback_upvr(function(arg1_36) -- Line 293
			--[[ Upvalues[11]:
				[1]: useRef_upvr_result1_upvr_5 (readonly)
				[2]: any_join_result1_upvr (readonly)
				[3]: GetFFlagLuaAppEnableSquadPage_upvr_2 (copied, readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: var12_result1_3_upvr (readonly)
				[6]: EnumScreens_upvr (copied, readonly)
				[7]: var12_result1_8_upvr (readonly)
				[8]: Logger_upvr (copied, readonly)
				[9]: var12_result1_upvr_2 (readonly)
				[10]: var12_result1_2_upvr (readonly)
				[11]: RoactNavigation_upvr (copied, readonly)
			]]
			useRef_upvr_result1_upvr_5.current = arg1_36
			if not any_join_result1_upvr.updateExternalNavigationForScreen then
				return function() -- Line 296
					--[[ Upvalues[1]:
						[1]: useRef_upvr_result1_upvr_5 (copied, readonly)
					]]
					useRef_upvr_result1_upvr_5.current = nil
				end
			end
			local updateExternalNavigationForScreen_upvr_2 = any_join_result1_upvr.updateExternalNavigationForScreen
			if GetFFlagLuaAppEnableSquadPage_upvr_2() then
				updateExternalNavigationForScreen_upvr_2(function(arg1_37) -- Line 303
					--[[ Upvalues[3]:
						[1]: Cryo_upvr (copied, readonly)
						[2]: arg1_36 (readonly)
						[3]: var12_result1_3_upvr (copied, readonly)
					]]
					arg1_36(var12_result1_3_upvr(arg1_37.conversationId, Cryo_upvr.Dictionary.omit(arg1_37, "conversationId")))
				end, EnumScreens_upvr.SquadLobby)
			end
			updateExternalNavigationForScreen_upvr_2(function(arg1_38) -- Line 310
				--[[ Upvalues[5]:
					[1]: var12_result1_8_upvr (copied, readonly)
					[2]: Logger_upvr (copied, readonly)
					[3]: arg1_36 (readonly)
					[4]: var12_result1_upvr_2 (copied, readonly)
					[5]: var12_result1_2_upvr (copied, readonly)
				]]
				local var241_upvr = arg1_38
				if var241_upvr then
					var241_upvr = arg1_38.conversationId
				end
				if var241_upvr then
					var12_result1_8_upvr(var241_upvr):andThen(function() -- Line 315
						--[[ Upvalues[4]:
							[1]: Logger_upvr (copied, readonly)
							[2]: var241_upvr (readonly)
							[3]: arg1_36 (copied, readonly)
							[4]: var12_result1_upvr_2 (copied, readonly)
						]]
						Logger_upvr:info("Successfully fetched conversation details for conversationId {} for external navigation", var241_upvr)
						arg1_36(var12_result1_upvr_2(var241_upvr))
					end):catch(function(arg1_39) -- Line 322
						--[[ Upvalues[1]:
							[1]: Logger_upvr (copied, readonly)
						]]
						Logger_upvr:warning("Error in fetchLatestConversationDetails request before navigate to conversation. error: {}", tostring(arg1_39))
					end)
				else
					local var244_upvr = arg1_38
					if var244_upvr then
						var244_upvr = arg1_38.userId
					end
					if not var244_upvr then return end
					spawn(function() -- Line 337
						--[[ Upvalues[5]:
							[1]: var12_result1_2_upvr (copied, readonly)
							[2]: var244_upvr (readonly)
							[3]: Logger_upvr (copied, readonly)
							[4]: arg1_36 (copied, readonly)
							[5]: var12_result1_upvr_2 (copied, readonly)
						]]
						var12_result1_2_upvr(var244_upvr):andThen(function(arg1_40) -- Line 339
							--[[ Upvalues[4]:
								[1]: Logger_upvr (copied, readonly)
								[2]: var244_upvr (copied, readonly)
								[3]: arg1_36 (copied, readonly)
								[4]: var12_result1_upvr_2 (copied, readonly)
							]]
							Logger_upvr:info("Successfully fetched conversation details for userId {} for external navigation", var244_upvr)
							arg1_36(var12_result1_upvr_2(arg1_40.id))
						end):catch(function(arg1_41) -- Line 346
							--[[ Upvalues[1]:
								[1]: Logger_upvr (copied, readonly)
							]]
							Logger_upvr:warning("Error in CreateConversation request before navigate to conversation. error: {}", tostring(arg1_41))
						end)
					end)
				end
			end, EnumScreens_upvr.ChatConversation)
			updateExternalNavigationForScreen_upvr_2(function(arg1_42) -- Line 356
				--[[ Upvalues[4]:
					[1]: arg1_36 (readonly)
					[2]: RoactNavigation_upvr (copied, readonly)
					[3]: EnumScreens_upvr (copied, readonly)
					[4]: any_join_result1_upvr (copied, readonly)
				]]
				local tbl_13 = {
					routeName = EnumScreens_upvr.ChatLanding;
				}
				tbl_13.params = arg1_42
				arg1_36(RoactNavigation_upvr.Actions.navigate(tbl_13))
				if any_join_result1_upvr.wideMode then
					arg1_36(RoactNavigation_upvr.Actions.navigate({
						routeName = EnumScreens_upvr.EmptyConversation;
					}))
				end
			end, EnumScreens_upvr.ChatLanding)
			return function() -- Line 368
				--[[ Upvalues[4]:
					[1]: updateExternalNavigationForScreen_upvr_2 (readonly)
					[2]: EnumScreens_upvr (copied, readonly)
					[3]: GetFFlagLuaAppEnableSquadPage_upvr_2 (copied, readonly)
					[4]: useRef_upvr_result1_upvr_5 (copied, readonly)
				]]
				updateExternalNavigationForScreen_upvr_2(nil, EnumScreens_upvr.ChatLanding)
				updateExternalNavigationForScreen_upvr_2(nil, EnumScreens_upvr.ChatConversation)
				if GetFFlagLuaAppEnableSquadPage_upvr_2() then
					updateExternalNavigationForScreen_upvr_2(nil, EnumScreens_upvr.SquadLobby)
				end
				useRef_upvr_result1_upvr_5.current = nil
			end
		end, dependencyArray_upvr(useRef_upvr_result1_upvr_5));
		parameters = any_join_result1_upvr.parameters;
		setActiveConversationId = any_join_result1_upvr.setActiveConversationId;
		setBackButtonEnabled = any_join_result1_upvr.setBackButtonEnabled;
	}
	if default_upvr.isEnabled() then
		-- KONSTANTWARNING: GOTO [443] #380
	end
	tbl.setTabBarVisible = any_join_result1_upvr.setTabBarVisible
	tbl.chatIsVisible = useChatIsVisible_upvr()
	local tbl_38 = {
		navigateToLuaAppPages = any_join_result1_upvr.navigateToLuaAppPages;
		topBarHeight = math.max(UserInputService_upvr.NavBarSize.Y, NAV_BAR_WITH_FACEPILE_SIZE_upvr);
		wideMode = any_join_result1_upvr.wideMode;
		isInExperience = any_isPlacementInExperience_result1_upvr_2;
		isVisible = any_join_result1_upvr.isVisible;
		getScreenTopBar = var12_result1_7;
		setScreenTopBar = var12_result1_9;
		notificationCount = any_join_result1_upvr.notificationCount;
		appChatOuterPadding = tbl_11.outer;
		appChatInnerPadding = tbl_11.inner;
		appChatDefaultPadding = tbl_11.default;
		topBarShowSearch = var189;
		topBarShowCreateChatGroup = useAppPolicy_upvr(function(arg1_48) -- Line 475
			return arg1_48.getChatHeaderCreateChatGroup()
		end) and useIsChatEnabled_upvr_result1;
		topBarShowNotifications = var189 and useAppPolicy_upvr(function(arg1_49) -- Line 478
			--[[ Upvalues[1]:
				[1]: getFFlagHideNotificationIconForVR_upvr (copied, readonly)
			]]
			local any_getChatHeaderNotifications_result1_2 = arg1_49.getChatHeaderNotifications()
			if any_getChatHeaderNotifications_result1_2 then
				any_getChatHeaderNotifications_result1_2 = not getFFlagHideNotificationIconForVR_upvr()
				if not any_getChatHeaderNotifications_result1_2 then
					any_getChatHeaderNotifications_result1_2 = arg1_49.getWebViewSupport()
				end
			end
			return any_getChatHeaderNotifications_result1_2
		end);
		topBarShowSnoozeNotifications = not HideChatToastExperimentation_upvr.default:getShouldHideChatBellIcon();
		topBarUseConnectHeader = InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatNewTitleInUniversalApp;
		showSearchRow = any_isPlacementInExperience_result1_upvr_2;
		navigateToRootStack = any_join_result1_upvr.navigateToRootStack;
	}
	if default_upvr.isEnabled() then
	else
	end
	tbl_38.navigateToAddFriends = nil
	tbl.screenProps = tbl_38
	if getFFlagAppChatEnableRepliesUI_upvr() then
		local var298
	end
	if not any_isPlacementInExperience_result1_upvr_2 then
	end
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		local function _(arg1_51) -- Line 582
			local var301
			if var301 then
				var301 = arg1_51.Squad.Squad
				if var301 then
					var301 = arg1_51.Squad.Squad.currentSquad
				end
			end
			if var301 and var301.squadId then
				return var301.squadId
			end
			return nil
		end
	else
	end
	local tbl_24 = {}
	local tbl_22 = {}
	local tbl_26 = {
		navigation = React_upvr.createElement(LayerCollectorProvider_upvr, {}, {
			navigation = React_upvr.createElement(ReplyingToMessageProvider_upvr, {}, {
				navigation = React_upvr.createElement(ChatPlacementContext_upvr.Provider, {
					value = {
						chatPlacement = any_join_result1_upvr.chatPlacement;
					};
				}, {
					navigation = React_upvr.createElement(LuaAppNavigationContextProvider_upvr, {
						navigateToLuaAppPages = any_join_result1_upvr.navigateToLuaAppPages;
						dispatch = useDispatch_upvr_result1_upvr_2;
					}, {
						navigation = var289.createElement(var289, tbl);
					});
				});
			});
		});
	}
	if 0 < useSelector_upvr_result1_3.bottom then
		local tbl_36 = {}
		if getFFlagFixChatsBottomInsetBackgroundColor_upvr() then
			var298 = useStyle_upvr_result1_2.Theme.BackgroundDefault.Color
		else
			var298 = useStyle_upvr_result1_2.Theme.NavigationBar.Color
		end
		tbl_36.BackgroundColor3 = var298
		if getFFlagFixChatsBottomInsetBackgroundColor_upvr() then
			var298 = useStyle_upvr_result1_2.Theme.BackgroundDefault.Transparency
		else
			var298 = useStyle_upvr_result1_2.Theme.NavigationBar.Transparency
		end
		tbl_36.BackgroundTransparency = var298
		var298 = 0
		tbl_36.BorderSizePixel = var298
		var298 = UDim2.new(0, 0, 1, 0)
		tbl_36.Position = var298
		var298 = UDim2.new(1, 0, 0, useSelector_upvr_result1_3.bottom)
		tbl_36.Size = var298
		var298 = 3
		tbl_36.ZIndex = var298
	else
	end
	tbl_26.BottomInsetBackground = nil
	tbl_22[1] = React_upvr.createElement(TopBarContext_upvr.Provider, {
		value = Cryo_upvr.Dictionary.join(var20_result1_upvr, {
			getScreenTopBar = var12_result1_7;
			setScreenTopBar = var12_result1_9;
		});
	}, tbl_26)
	tbl_24.telemetry = React_upvr.createElement(AppTelemetryLayer_upvr.Provider, {
		value = {
			context = "platformChat";
			locale = useRobloxLocale_upvr();
			entryPoint = useSelector_upvr_result1_5 or "unknown";
			userId = var11_result1_upvr;
			unfilteredThreadsEligibility = useSelector_upvr_result1_6;
			playSessionId = RbxAnalyticsService_upvr:GetPlaySessionId();
			currentSquadId = nil;
		};
	}, tbl_22)
	return React_upvr.createElement(RoactChatAnalyticsProvider_upvr, {
		entryPoint = useSelector_upvr_result1_5;
		unfilteredThreadsEligibility = useSelector_upvr_result1_6;
	}, {React_upvr.createElement(AnalyticsProvider_upvr, {
		localUserId = var11_result1_upvr;
		entryPoint = useSelector_upvr_result1_5;
	}, tbl_24)})
end
return React_upvr.memo(AppChatEntryPoint)