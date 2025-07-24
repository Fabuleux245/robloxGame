-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:14
-- Luau version 6, Types version 3
-- Time taken: 0.003036 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Navigation = require(Parent.Navigation)
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local Cryo_upvr = require(Parent.Cryo)
local tbl_upvr = {}
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useEarlyIsFocused_upvr = Navigation.useEarlyIsFocused
local useIsWideMode_upvr = require(Parent.SocialCommon).Hooks.useIsWideMode
local useNavigation_upvr = Navigation.useNavigation
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useState_upvr = React_upvr.useState
local useExternalNavigationByScreen_upvr = require(AppChat.Hooks.useExternalNavigationByScreen)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppNotificationService_upvr = require(Parent.RoactServiceTags).AppNotificationService
local useMemo_upvr = React_upvr.useMemo
local Signal_upvr = require(Parent.AppCommonLib).Signal
local useCallback_upvr = React_upvr.useCallback
local SetTabBarVisibleFromChat_upvr = require(Parent.AppTabBarRodux).Thunks.SetTabBarVisibleFromChat
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local useEffect_upvr = React_upvr.useEffect
local ToggleChatPaused_upvr = require(AppChat.Actions.ToggleChatPaused)
local FullscreenPageWithSafeArea_upvr = require(Parent.AppBlox).FullscreenPageWithSafeArea
local AppChatEntryPoint_upvr = require(AppChat.AppChatEntryPoint)
local Container_upvr = require(AppChat.Components.ExternalNavigationHandler.Container)
local ChatEventReceiver_upvr = require(AppChat.Components.EventReceivers.ChatEventReceiver)
local FFlagSquadAppChatRTNFix_upvr = require(Parent.SharedFlags).FFlagSquadAppChatRTNFix
local SquadAppChatEventReceiver_upvr = require(Parent.SquadsCore).SquadAppChatEventReceiver
function AppChatEntryPointUA(arg1) -- Line 60
	--[[ Upvalues[27]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useEarlyIsFocused_upvr (readonly)
		[6]: useIsWideMode_upvr (readonly)
		[7]: useNavigation_upvr (readonly)
		[8]: useAppPolicy_upvr (readonly)
		[9]: useState_upvr (readonly)
		[10]: useExternalNavigationByScreen_upvr (readonly)
		[11]: useRoactService_upvr (readonly)
		[12]: AppNotificationService_upvr (readonly)
		[13]: useMemo_upvr (readonly)
		[14]: Signal_upvr (readonly)
		[15]: useCallback_upvr (readonly)
		[16]: SetTabBarVisibleFromChat_upvr (readonly)
		[17]: dependencyArray_upvr (readonly)
		[18]: useSelector_upvr (readonly)
		[19]: useEffect_upvr (readonly)
		[20]: ToggleChatPaused_upvr (readonly)
		[21]: React_upvr (readonly)
		[22]: FullscreenPageWithSafeArea_upvr (readonly)
		[23]: AppChatEntryPoint_upvr (readonly)
		[24]: Container_upvr (readonly)
		[25]: ChatEventReceiver_upvr (readonly)
		[26]: FFlagSquadAppChatRTNFix_upvr (readonly)
		[27]: SquadAppChatEventReceiver_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local var9_result1_upvr = useDispatch_upvr()
	local var10_result1_upvr = useEarlyIsFocused_upvr()
	local var13_result1_upvr = useAppPolicy_upvr(function(arg1_2) -- Line 68
		return {
			shouldSystemBarUsuallyBePresent = arg1_2.getShouldSystemBarUsuallyBePresent();
		}
	end)
	local useState_upvr_result1, useState_upvr_result2 = useState_upvr(0)
	local useExternalNavigationByScreen_upvr_result1, var15_result2 = useExternalNavigationByScreen_upvr()
	local useMemo_upvr_result1 = useMemo_upvr(function() -- Line 78
		--[[ Upvalues[1]:
			[1]: Signal_upvr (copied, readonly)
		]]
		return Signal_upvr.new()
	end)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(AppNotificationService_upvr)
	useEffect_upvr(function() -- Line 98
		--[[ Upvalues[3]:
			[1]: var9_result1_upvr (readonly)
			[2]: ToggleChatPaused_upvr (copied, readonly)
			[3]: var10_result1_upvr (readonly)
		]]
		var9_result1_upvr(ToggleChatPaused_upvr(not var10_result1_upvr))
	end, dependencyArray_upvr(var10_result1_upvr, var9_result1_upvr))
	local module = {
		FullscreenPageWithSafeArea = React_upvr.createElement(FullscreenPageWithSafeArea_upvr, {
			BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundDefault.Color;
			BackgroundTransparency = useStyle_upvr_result1.Theme.BackgroundDefault.Transparency;
			includeStatusBar = true;
		}, {
			AppChatEntryPoint = React_upvr.createElement(AppChatEntryPoint_upvr, {
				setActiveConversationId = useState_upvr_result2;
				updateExternalNavigationForScreen = var15_result2;
				navigateToLuaAppPages = useMemo_upvr(function() -- Line 90
					return {}
				end);
				rnBypassActionSignal = useMemo_upvr_result1;
				notificationCount = useSelector_upvr(function(arg1_4) -- Line 94
					return arg1_4.NotificationBadgeCounts.TopBarNotificationIcon
				end);
				setTabBarVisible = useCallback_upvr(function(arg1_3) -- Line 86
					--[[ Upvalues[3]:
						[1]: var9_result1_upvr (readonly)
						[2]: SetTabBarVisibleFromChat_upvr (copied, readonly)
						[3]: var13_result1_upvr (readonly)
					]]
					local var48 = arg1_3
					if not var48 then
						var48 = var13_result1_upvr.shouldSystemBarUsuallyBePresent
					end
					var9_result1_upvr(SetTabBarVisibleFromChat_upvr(var48))
				end, dependencyArray_upvr(var9_result1_upvr, var13_result1_upvr.shouldSystemBarUsuallyBePresent));
				isVisible = var10_result1_upvr;
				wideMode = useIsWideMode_upvr();
				navigation = useNavigation_upvr();
			});
		});
		ExternalNavigationHandler = React_upvr.createElement(Container_upvr, {
			navigationByScreen = useExternalNavigationByScreen_upvr_result1;
		});
	}
	local any_createElement_result1 = React_upvr.createElement(ChatEventReceiver_upvr, {
		robloxEventReceiver = useMemo_upvr(function() -- Line 82
			--[[ Upvalues[2]:
				[1]: any_join_result1_upvr (readonly)
				[2]: useRoactService_upvr_result1_upvr (readonly)
			]]
			return any_join_result1_upvr.RobloxEventReceiver.new(useRoactService_upvr_result1_upvr)
		end);
		rnBypassActionSignal = useMemo_upvr_result1;
		activeConversationId = tostring(useState_upvr_result1);
	})
	module.ChatEventReceiver = any_createElement_result1
	if FFlagSquadAppChatRTNFix_upvr then
		any_createElement_result1 = React_upvr.createElement(SquadAppChatEventReceiver_upvr)
	else
		any_createElement_result1 = nil
	end
	module.SquadAppChatEventReceiver = any_createElement_result1
	return React_upvr.createElement(React_upvr.Fragment, {}, module)
end
return AppChatEntryPointUA