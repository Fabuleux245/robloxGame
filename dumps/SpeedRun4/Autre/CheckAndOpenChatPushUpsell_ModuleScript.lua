-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:40
-- Luau version 6, Types version 3
-- Time taken: 0.004942 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local NotificationsUpsell = require(Parent.NotificationsUpsell)
local useNavigationFocus_upvr = require(Parent.Navigation).useNavigationFocus
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useChatIsVisible_upvr = require(AppChat.Hooks.useChatIsVisible)
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local React_upvr = require(Parent.React)
local useUserExperiment_upvr = require(Parent.RoactAppExperiment).useUserExperiment
local AppUserLayers_upvr = require(Parent.ExperimentLayers).AppUserLayers
local GetFStringPushUpsellChatVariantName_upvr = require(Parent.SharedFlags).GetFStringPushUpsellChatVariantName
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local setupPushNotificationsUpsell_upvr = NotificationsUpsell.setupPushNotificationsUpsell
local NotificationsUpsellConstants_upvr = NotificationsUpsell.NotificationsUpsellConstants
local IXPService_upvr = game:GetService("IXPService")
local default_upvr = require(Parent.LoggingProtocol).default
local PushUpsellEventConfig_upvr = NotificationsUpsell.PushUpsellEventConfig
local ModalEventConstants_upvr = NotificationsUpsell.ModalEventConstants
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function() -- Line 27, Named "CheckAndOpenChatPushUpsell"
	--[[ Upvalues[16]:
		[1]: useNavigationFocus_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: useChatIsVisible_upvr (readonly)
		[4]: useIsInExperience_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useUserExperiment_upvr (readonly)
		[7]: AppUserLayers_upvr (readonly)
		[8]: GetFStringPushUpsellChatVariantName_upvr (readonly)
		[9]: RoactNavigation_upvr (readonly)
		[10]: setupPushNotificationsUpsell_upvr (readonly)
		[11]: NotificationsUpsellConstants_upvr (readonly)
		[12]: IXPService_upvr (readonly)
		[13]: default_upvr (readonly)
		[14]: PushUpsellEventConfig_upvr (readonly)
		[15]: ModalEventConstants_upvr (readonly)
		[16]: AppPage_upvr (readonly)
	]]
	local useNavigationFocus_upvr_result1_upvr = useNavigationFocus_upvr()
	local useChatIsVisible_upvr_result1_upvr = useChatIsVisible_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local var5_result1_upvr = useNavigation_upvr()
	React_upvr.useEffect(function() -- Line 45
		--[[ Upvalues[3]:
			[1]: var5_result1_upvr (readonly)
			[2]: RoactNavigation_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		local any_addListener_result1_upvr = var5_result1_upvr.addListener(RoactNavigation_upvr.Events.WillBlur, function(arg1) -- Line 46
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			if arg1.action.routeName == "ChatConversation" then
				any_useState_result2_upvr(true)
			end
		end)
		return function() -- Line 53
			--[[ Upvalues[1]:
				[1]: any_addListener_result1_upvr (readonly)
			]]
			any_addListener_result1_upvr.remove()
		end
	end, {})
	local function _() -- Line 58, Named "showUpsellOnChatLanding"
		--[[ Upvalues[8]:
			[1]: setupPushNotificationsUpsell_upvr (copied, readonly)
			[2]: NotificationsUpsellConstants_upvr (copied, readonly)
			[3]: IXPService_upvr (copied, readonly)
			[4]: AppUserLayers_upvr (copied, readonly)
			[5]: default_upvr (copied, readonly)
			[6]: PushUpsellEventConfig_upvr (copied, readonly)
			[7]: ModalEventConstants_upvr (copied, readonly)
			[8]: AppPage_upvr (copied, readonly)
		]]
		setupPushNotificationsUpsell_upvr.ShouldShowUpsell(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat):andThen(function(arg1) -- Line 59
			--[[ Upvalues[8]:
				[1]: IXPService_upvr (copied, readonly)
				[2]: AppUserLayers_upvr (copied, readonly)
				[3]: default_upvr (copied, readonly)
				[4]: PushUpsellEventConfig_upvr (copied, readonly)
				[5]: ModalEventConstants_upvr (copied, readonly)
				[6]: AppPage_upvr (copied, readonly)
				[7]: setupPushNotificationsUpsell_upvr (copied, readonly)
				[8]: NotificationsUpsellConstants_upvr (copied, readonly)
			]]
			if not arg1 then
			else
				IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.SocialAppChat)
				default_upvr:logRobloxTelemetryEvent(PushUpsellEventConfig_upvr, {}, {
					[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.ShouldRequest;
					[ModalEventConstants_upvr.EntryPoint] = AppPage_upvr.Chat;
				}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
				setupPushNotificationsUpsell_upvr.OpenModal(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat, true, AppPage_upvr.Chat)
			end
		end)
	end
	local function _() -- Line 73, Named "showUpsellWhenReturnFromConversation"
		--[[ Upvalues[9]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: setupPushNotificationsUpsell_upvr (copied, readonly)
			[4]: NotificationsUpsellConstants_upvr (copied, readonly)
			[5]: IXPService_upvr (copied, readonly)
			[6]: AppUserLayers_upvr (copied, readonly)
			[7]: default_upvr (copied, readonly)
			[8]: PushUpsellEventConfig_upvr (copied, readonly)
			[9]: ModalEventConstants_upvr (copied, readonly)
		]]
		if not any_useState_result1_upvr then
		else
			any_useState_result2_upvr(false)
			setupPushNotificationsUpsell_upvr.ShouldShowUpsell(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat):andThen(function(arg1) -- Line 79
				--[[ Upvalues[7]:
					[1]: IXPService_upvr (copied, readonly)
					[2]: AppUserLayers_upvr (copied, readonly)
					[3]: default_upvr (copied, readonly)
					[4]: PushUpsellEventConfig_upvr (copied, readonly)
					[5]: ModalEventConstants_upvr (copied, readonly)
					[6]: setupPushNotificationsUpsell_upvr (copied, readonly)
					[7]: NotificationsUpsellConstants_upvr (copied, readonly)
				]]
				if not arg1 then
				else
					IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.SocialAppChat)
					default_upvr:logRobloxTelemetryEvent(PushUpsellEventConfig_upvr, {}, {
						[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.ShouldRequest;
						[ModalEventConstants_upvr.EntryPoint] = "ChatConversation";
					}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
					setupPushNotificationsUpsell_upvr.OpenModal(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat, true, "ChatConversation")
				end
			end)
		end
	end
	local var7_result1_upvr = useIsInExperience_upvr()
	local useUserExperiment_upvr_result1_upvr = useUserExperiment_upvr({AppUserLayers_upvr.SocialAppChat}, function(arg1) -- Line 36
		--[[ Upvalues[2]:
			[1]: AppUserLayers_upvr (copied, readonly)
			[2]: GetFStringPushUpsellChatVariantName_upvr (copied, readonly)
		]]
		local var26 = arg1[AppUserLayers_upvr.SocialAppChat]
		if not var26 then
			var26 = {}
		end
		return {
			pushUpsellChatVariant = var26[GetFStringPushUpsellChatVariantName_upvr()] or -1;
		}
	end)
	React_upvr.useEffect(function() -- Line 93
		--[[ Upvalues[14]:
			[1]: useChatIsVisible_upvr_result1_upvr (readonly)
			[2]: useNavigationFocus_upvr_result1_upvr (readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: useUserExperiment_upvr_result1_upvr (readonly)
			[5]: setupPushNotificationsUpsell_upvr (copied, readonly)
			[6]: NotificationsUpsellConstants_upvr (copied, readonly)
			[7]: IXPService_upvr (copied, readonly)
			[8]: AppUserLayers_upvr (copied, readonly)
			[9]: default_upvr (copied, readonly)
			[10]: PushUpsellEventConfig_upvr (copied, readonly)
			[11]: ModalEventConstants_upvr (copied, readonly)
			[12]: AppPage_upvr (copied, readonly)
			[13]: any_useState_result1_upvr (readonly)
			[14]: any_useState_result2_upvr (readonly)
		]]
		if not useChatIsVisible_upvr_result1_upvr or not useNavigationFocus_upvr_result1_upvr or var7_result1_upvr or useUserExperiment_upvr_result1_upvr.pushUpsellChatVariant == nil or useUserExperiment_upvr_result1_upvr.pushUpsellChatVariant < 0 then
		else
			if useUserExperiment_upvr_result1_upvr.pushUpsellChatVariant == 1 then
				setupPushNotificationsUpsell_upvr.ShouldShowUpsell(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat):andThen(function(arg1) -- Line 59
					--[[ Upvalues[8]:
						[1]: IXPService_upvr (copied, readonly)
						[2]: AppUserLayers_upvr (copied, readonly)
						[3]: default_upvr (copied, readonly)
						[4]: PushUpsellEventConfig_upvr (copied, readonly)
						[5]: ModalEventConstants_upvr (copied, readonly)
						[6]: AppPage_upvr (copied, readonly)
						[7]: setupPushNotificationsUpsell_upvr (copied, readonly)
						[8]: NotificationsUpsellConstants_upvr (copied, readonly)
					]]
					if not arg1 then
					else
						IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.SocialAppChat)
						default_upvr:logRobloxTelemetryEvent(PushUpsellEventConfig_upvr, {}, {
							[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.ShouldRequest;
							[ModalEventConstants_upvr.EntryPoint] = AppPage_upvr.Chat;
						}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
						setupPushNotificationsUpsell_upvr.OpenModal(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat, true, AppPage_upvr.Chat)
					end
				end)
				return
			end
			if useUserExperiment_upvr_result1_upvr.pushUpsellChatVariant == 2 then
				if not any_useState_result1_upvr then return end
				any_useState_result2_upvr(false)
				setupPushNotificationsUpsell_upvr.ShouldShowUpsell(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat):andThen(function(arg1) -- Line 79
					--[[ Upvalues[7]:
						[1]: IXPService_upvr (copied, readonly)
						[2]: AppUserLayers_upvr (copied, readonly)
						[3]: default_upvr (copied, readonly)
						[4]: PushUpsellEventConfig_upvr (copied, readonly)
						[5]: ModalEventConstants_upvr (copied, readonly)
						[6]: setupPushNotificationsUpsell_upvr (copied, readonly)
						[7]: NotificationsUpsellConstants_upvr (copied, readonly)
					]]
					if not arg1 then
					else
						IXPService_upvr:LogUserLayerExposure(AppUserLayers_upvr.SocialAppChat)
						default_upvr:logRobloxTelemetryEvent(PushUpsellEventConfig_upvr, {}, {
							[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.ShouldRequest;
							[ModalEventConstants_upvr.EntryPoint] = "ChatConversation";
						}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
						setupPushNotificationsUpsell_upvr.OpenModal(NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat, true, "ChatConversation")
					end
				end)
			end
		end
	end, {useChatIsVisible_upvr_result1_upvr, useNavigationFocus_upvr_result1_upvr})
end