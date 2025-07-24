-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:10
-- Luau version 6, Types version 3
-- Time taken: 0.007532 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UIBlox = require(Parent.UIBlox)
local Style = require(Parent.Style)
local SquadsCore = require(Parent.SquadsCore)
local React_upvr = require(Parent.React)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useIsAppChatVisible_upvr = require(AppChat.App.Hooks.useIsAppChatVisible)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugAppChatDisplayOnJoin", false)
local ParentContainerContext_upvr = require(AppChat.Contexts.ParentContainer.ParentContainerContext)
local useParentContainerVisibilitySignal_upvr = require(AppChat.App.Hooks.useParentContainerVisibilitySignal)
local useAppChatUpdateSession_upvr = require(AppChat.Hooks.useAppChatUpdateSession)
local usePreventExperienceControls_upvr = require(AppChat.App.Hooks.usePreventExperienceControls)
local SetAppLoaded_upvr = require(AppChat.Actions.SetAppLoaded)
local getAllFriendsAsync_upvr = require(AppChat.Conversations.Thunks.getAllFriendsAsync)
local GetLocalUser_upvr = require(Parent.UserLib).Thunks.GetLocalUser
local InExperienceAppChatExperimentation_upvr = require(AppChat.App.InExperienceAppChatExperimentation)
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local HideChatToastExperimentation_upvr = require(AppChat.App.HideChatToastExperimentation)
local SquadEventReceiver_upvr = SquadsCore.SquadEventReceiver
local AppChatPersistentEventReceivers_upvr = require(AppChat.Components.EventReceivers.AppChatPersistentEventReceivers)
local AppChatToastManagerInExp_upvr = require(AppChat.App.AppChatToastManagerInExp)
local GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr = require(Parent.SharedFlags).GetFFlagAppChatInExpToastSnoozeMenuDismissFix
local UiModeStyleProvider_upvr = Style.UiModeStyleProvider
local Constants_upvr = UIBlox.App.Style.Constants
local DesignTokenProvider_upvr = Style.DesignTokenProvider
local SquadOverlay_upvr = SquadsCore.SquadOverlay
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppChatInExperienceDisplayOrder", 5)
local LayerCollectorProvider_upvr = UIBlox.Core.Layout.LayerCollector.LayerCollectorProvider
local Responsive_upvr = require(Parent.Responsive)
local RoactAppPolicy_upvr = require(Parent.UniversalAppPolicy).RoactAppPolicy
local AppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).AppFeaturePolicies
local ChatPolicies_upvr = require(Parent.SocialPolicies).ChatPolicies
local getFFlagAppChatMoveApolloProvider_upvr = require(AppChat.Flags.getFFlagAppChatMoveApolloProvider)
local RoactServices_upvr = require(Parent.RoactServices).RoactServices
local AppSessionService_upvr = require(Parent.RoactServiceTags).AppSessionService
local SessionService_upvr = game:GetService("SessionService")
local InExperienceAppChatContainer_upvr = require(AppChat.App.InExperienceAppChatContainer)
local ApolloProvider_upvr = require(Parent.ApolloClient).ApolloProvider
function InExperienceAppChat(arg1) -- Line 69
	--[[ Upvalues[35]:
		[1]: React_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useIsAppChatVisible_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: ParentContainerContext_upvr (readonly)
		[6]: useParentContainerVisibilitySignal_upvr (readonly)
		[7]: useAppChatUpdateSession_upvr (readonly)
		[8]: usePreventExperienceControls_upvr (readonly)
		[9]: SetAppLoaded_upvr (readonly)
		[10]: getAllFriendsAsync_upvr (readonly)
		[11]: GetLocalUser_upvr (readonly)
		[12]: InExperienceAppChatExperimentation_upvr (readonly)
		[13]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[14]: useSelector_upvr (readonly)
		[15]: HideChatToastExperimentation_upvr (readonly)
		[16]: SquadEventReceiver_upvr (readonly)
		[17]: AppChatPersistentEventReceivers_upvr (readonly)
		[18]: AppChatToastManagerInExp_upvr (readonly)
		[19]: GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr (readonly)
		[20]: UiModeStyleProvider_upvr (readonly)
		[21]: Constants_upvr (readonly)
		[22]: DesignTokenProvider_upvr (readonly)
		[23]: SquadOverlay_upvr (readonly)
		[24]: game_DefineFastInt_result1_upvr (readonly)
		[25]: LayerCollectorProvider_upvr (readonly)
		[26]: Responsive_upvr (readonly)
		[27]: RoactAppPolicy_upvr (readonly)
		[28]: AppFeaturePolicies_upvr (readonly)
		[29]: ChatPolicies_upvr (readonly)
		[30]: getFFlagAppChatMoveApolloProvider_upvr (readonly)
		[31]: RoactServices_upvr (readonly)
		[32]: AppSessionService_upvr (readonly)
		[33]: SessionService_upvr (readonly)
		[34]: InExperienceAppChatContainer_upvr (readonly)
		[35]: ApolloProvider_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useRef_result1 = React_upvr.useRef(nil)
	local var7_result1_upvr = useDispatch_upvr()
	local var8_result1_upvr, useIsAppChatVisible_upvr_result2 = useIsAppChatVisible_upvr(game_DefineFastFlag_result1_upvr)
	local updateCurrentSquadId_upvr = React_upvr.useContext(ParentContainerContext_upvr).updateCurrentSquadId
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState("")
	useParentContainerVisibilitySignal_upvr()
	useAppChatUpdateSession_upvr(var8_result1_upvr)
	usePreventExperienceControls_upvr(var8_result1_upvr)
	React_upvr.useEffect(function() -- Line 81
		--[[ Upvalues[4]:
			[1]: var8_result1_upvr (readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: SetAppLoaded_upvr (copied, readonly)
			[4]: getAllFriendsAsync_upvr (copied, readonly)
		]]
		if var8_result1_upvr then
			var7_result1_upvr(SetAppLoaded_upvr(true))
			var7_result1_upvr(getAllFriendsAsync_upvr(true))
		end
	end, {var7_result1_upvr, var8_result1_upvr})
	React_upvr.useEffect(function() -- Line 87
		--[[ Upvalues[2]:
			[1]: var7_result1_upvr (readonly)
			[2]: GetLocalUser_upvr (copied, readonly)
		]]
		var7_result1_upvr(GetLocalUser_upvr())
	end, {var7_result1_upvr})
	local var52
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 96
			local var55
			if var55 then
				var55 = arg1_2.Squad.Squad
				if var55 then
					var55 = arg1_2.Squad.Squad.currentSquad
				end
			end
			if var55 and var55.squadId then
				return var55.squadId
			end
			return ""
		end)
		local tbl_2 = {}
		var52 = updateCurrentSquadId_upvr
		tbl_2[1] = useSelector_upvr_result1_upvr
		tbl_2[2] = var52
		React_upvr.useEffect(function() -- Line 101
			--[[ Upvalues[2]:
				[1]: updateCurrentSquadId_upvr (readonly)
				[2]: useSelector_upvr_result1_upvr (readonly)
			]]
			updateCurrentSquadId_upvr(useSelector_upvr_result1_upvr)
		end, tbl_2)
	end
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		useSelector_upvr_result1_upvr = useSelector_upvr
		useSelector_upvr_result1_upvr = useSelector_upvr_result1_upvr(function(arg1_3) -- Line 107
			return arg1_3.Squad.SquadPrompt.arguments
		end)
		local var60 = useSelector_upvr_result1_upvr
	else
		var60 = nil
	end
	local tbl = {}
	var52 = HideChatToastExperimentation_upvr
	tbl[1] = var52.isEnabled()
	React_upvr.useEffect(function() -- Line 112
		--[[ Upvalues[1]:
			[1]: HideChatToastExperimentation_upvr (copied, readonly)
		]]
		if HideChatToastExperimentation_upvr.isEnabled() then
			HideChatToastExperimentation_upvr.default:initialize()
		end
	end, tbl)
	local module = {}
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		var52 = React_upvr.createElement(SquadEventReceiver_upvr)
	else
		var52 = nil
	end
	module.SquadEventReceiver = var52
	var52 = React_upvr.createElement
	var52 = var52(AppChatPersistentEventReceivers_upvr, {
		isInExperience = true;
	})
	module.AppChatPersistentEventReceivers = var52
	if InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatNotifications then
		var52 = React_upvr.createElement
		local tbl_4 = {}
		if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
		else
		end
		tbl_4.hideAllChatToasts = var8_result1_upvr
		if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
		else
		end
		tbl_4.isAppChatVisible = nil
		local showParentContainer_upvr = React_upvr.useContext(ParentContainerContext_upvr).showParentContainer
		function tbl_4.navigateToChat(arg1_4) -- Line 127
			--[[ Upvalues[2]:
				[1]: showParentContainer_upvr (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			showParentContainer_upvr()
			any_useState_result2_upvr(arg1_4)
		end
		var52 = var52(AppChatToastManagerInExp_upvr, tbl_4)
	else
		var52 = nil
	end
	module.AppChatToastManagerInExp = var52
	var52 = React_upvr.createElement
	local tbl_6 = {}
	local tbl_8 = {}
	local var72
	if GetFFlagLuaAppEnableSquadPage_upvr() and var60 and var60.promptType then
		var72 = React_upvr.createElement(SquadOverlay_upvr)
	else
		var72 = nil
	end
	tbl_8.SquadOverlay = var72
	if var8_result1_upvr then
		var72 = React_upvr.createElement
		local tbl_7 = {}
		local tbl_10 = {}
		local tbl_3 = {}
		local tbl_9 = {}
		local tbl_5 = {AppFeaturePolicies_upvr, ChatPolicies_upvr}
		tbl_9.policy = tbl_5
		if getFFlagAppChatMoveApolloProvider_upvr() then
			tbl_5 = React_upvr.createElement
			tbl_5 = tbl_5(RoactServices_upvr.ServiceProvider, {
				services = {
					[AppSessionService_upvr] = SessionService_upvr;
				};
			}, {
				InExperienceAppChatContainer = React_upvr.createElement(InExperienceAppChatContainer_upvr, {
					hideAppChat = useIsAppChatVisible_upvr_result2;
					initialConversationId = any_useState_result1;
					setInitialConversationId = any_useState_result2_upvr;
				});
			})
		else
			tbl_5 = React_upvr.createElement
			tbl_5 = tbl_5(ApolloProvider_upvr, {
				client = arg1.apolloClient;
			}, {React_upvr.createElement(RoactServices_upvr.ServiceProvider, {
				services = {
					[AppSessionService_upvr] = SessionService_upvr;
				};
			}, {
				InExperienceAppChatContainer = React_upvr.createElement(InExperienceAppChatContainer_upvr, {
					hideAppChat = useIsAppChatVisible_upvr_result2;
					initialConversationId = any_useState_result1;
					setInitialConversationId = any_useState_result2_upvr;
				});
			})})
		end
		tbl_3[1] = React_upvr.createElement(RoactAppPolicy_upvr.Provider, tbl_9, tbl_5)
		tbl_10.containerRef = React_upvr.createElement(Responsive_upvr.ContainerRef.Provider, {
			value = any_useRef_result1;
		}, tbl_3)
		tbl_7.LayerCollectorProvider = React_upvr.createElement(LayerCollectorProvider_upvr, {}, tbl_10)
		var72 = var72("ScreenGui", {
			ResetOnSpawn = false;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets;
			DisplayOrder = game_DefineFastInt_result1_upvr;
			ref = any_useRef_result1;
		}, tbl_7)
	else
	end
	tbl_8.AppChat = nil
	tbl_6[1] = React_upvr.createElement(DesignTokenProvider_upvr, {
		tokenMappers = {};
	}, tbl_8)
	var52 = var52(UiModeStyleProvider_upvr, {
		style = {
			themeName = Constants_upvr.ThemeName.Dark;
			fontName = Constants_upvr.FontName.Gotham;
		};
	}, tbl_6)
	module.AppChatContainer = var52
	return React_upvr.createElement(React_upvr.Fragment, {}, module)
end
return InExperienceAppChat