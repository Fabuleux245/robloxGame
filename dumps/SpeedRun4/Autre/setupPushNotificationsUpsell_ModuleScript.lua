-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:29
-- Luau version 6, Types version 3
-- Time taken: 0.008816 seconds

local AppStorageService_upvr = game:GetService("AppStorageService")
local Parent = script.Parent.Parent
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local default_upvr = require(Parent.PermissionsProtocol).PermissionsProtocol.default
local NotificationsUpsellConstants_upvr = require(script.Parent.NotificationsUpsellConstants)
local PushNotificationsUpsellUtils_upvr = require(script.Parent.Util.PushNotificationsUpsellUtils)
local Promise_upvr = require(Parent.Promise)
local FIntPushUpsellChatCooldownPeriod_upvr = require(script.Parent.Flags.FIntPushUpsellChatCooldownPeriod)
local FIntPushUpsellChatMaxPromptCount_upvr = require(script.Parent.Flags.FIntPushUpsellChatMaxPromptCount)
local GetFFlagEnablePushNotificationsUpsellModal_upvr = require(Parent.SharedFlags).GetFFlagEnablePushNotificationsUpsellModal
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("CacheShouldShowPushUpsellHideResponse", false)
local var12_upvw = 0
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ShouldShowPushUpsellHideResponseCacheExpirationTime", 6)
local var14_upvw = false
local FIntPushUpsellMaxPromptCount_upvr = require(script.Parent.Flags.FIntPushUpsellMaxPromptCount)
local FIntPushUpsellCooldownPeriod_upvr = require(script.Parent.Flags.FIntPushUpsellCooldownPeriod)
local function shouldShowUpsellHome_upvr(arg1) -- Line 40, Named "shouldShowUpsellHome"
	--[[ Upvalues[11]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var12_upvw (read and write)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: var14_upvw (read and write)
		[5]: Promise_upvr (readonly)
		[6]: PushNotificationsUpsellUtils_upvr (readonly)
		[7]: AppStorageService_upvr (readonly)
		[8]: NotificationsUpsellConstants_upvr (readonly)
		[9]: FIntPushUpsellMaxPromptCount_upvr (readonly)
		[10]: FIntPushUpsellCooldownPeriod_upvr (readonly)
		[11]: default_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var23
	if game_DefineFastFlag_result1_upvr then
		var23 = os.time() - var12_upvw
		var23 = game_DefineFastInt_result1_upvr
		if var23 / 3600 < var23 then
			var23 = var14_upvw
			if var23 then
				var23 = Promise_upvr.resolve(false)
				return var23
			end
		end
	end
	var23 = PushNotificationsUpsellUtils_upvr
	var23 = AppStorageService_upvr
	local any_getPushUpsellPromptedCount_result1_3 = var23.getPushUpsellPromptedCount(var23, NotificationsUpsellConstants_upvr.LocalStorageKeys.PromptShownCount)
	if arg1 then
		var23 = PushNotificationsUpsellUtils_upvr.getPushEduUpsellResponseTimestamp(AppStorageService_upvr)
	else
		var23 = PushNotificationsUpsellUtils_upvr.getPushSysUpsellPromptTimestamp(AppStorageService_upvr)
	end
	if 0 <= any_getPushUpsellPromptedCount_result1_3 and 0 <= var23 then
		local var25 = false
		if any_getPushUpsellPromptedCount_result1_3 < FIntPushUpsellMaxPromptCount_upvr then
			var25 = true
			if FIntPushUpsellCooldownPeriod_upvr > (os.time() - var23) / 86400 then
				if var23 ~= 0 then
					var25 = false
				else
					var25 = true
				end
			end
		end
	end
	if var25 then
		return default_upvr:shouldShowUpsell({default_upvr.Permissions.POST_NOTIFICATIONS}):andThen(function(arg1_4) -- Line 70
			--[[ Upvalues[5]:
				[1]: default_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[4]: var14_upvw (copied, read and write)
				[5]: var12_upvw (copied, read and write)
			]]
			if arg1_4.upsellStatus then
				if arg1_4.upsellStatus == default_upvr.UpsellStatus.SHOW then
					return Promise_upvr.resolve(true)
				end
			end
			if game_DefineFastFlag_result1_upvr then
				var14_upvw = true
				var12_upvw = os.time()
			end
			return Promise_upvr.resolve(false)
		end, function(arg1_5) -- Line 82
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve(false)
		end)
	end
	return Promise_upvr.resolve(false)
end
local function _() -- Line 95, Named "userHasRespondedToPushUpsellChat"
	--[[ Upvalues[4]:
		[1]: PushNotificationsUpsellUtils_upvr (readonly)
		[2]: AppStorageService_upvr (readonly)
		[3]: NotificationsUpsellConstants_upvr (readonly)
		[4]: FIntPushUpsellChatMaxPromptCount_upvr (readonly)
	]]
	local any_getPushUpsellPromptedCount_result1_4 = PushNotificationsUpsellUtils_upvr.getPushUpsellPromptedCount(AppStorageService_upvr, NotificationsUpsellConstants_upvr.LocalStorageKeys.ChatPromptShownCount)
	local var30 = true
	if any_getPushUpsellPromptedCount_result1_4 >= 0 then
		if FIntPushUpsellChatMaxPromptCount_upvr > any_getPushUpsellPromptedCount_result1_4 then
			var30 = false
		else
			var30 = true
		end
	end
	return var30
end
local function _() -- Line 103, Named "userHasRespondedToUpsellPromptLessThanCooldownPeriod"
	--[[ Upvalues[3]:
		[1]: PushNotificationsUpsellUtils_upvr (readonly)
		[2]: AppStorageService_upvr (readonly)
		[3]: FIntPushUpsellChatCooldownPeriod_upvr (readonly)
	]]
	local any_getPushSysUpsellPromptTimestamp_result1 = PushNotificationsUpsellUtils_upvr.getPushSysUpsellPromptTimestamp(AppStorageService_upvr)
	local var32 = false
	if 0 <= any_getPushSysUpsellPromptTimestamp_result1 then
		if (os.time() - any_getPushSysUpsellPromptTimestamp_result1) / 86400 >= FIntPushUpsellChatCooldownPeriod_upvr then
			var32 = false
		else
			var32 = true
		end
	end
	return var32
end
local function shouldShowRationale_upvr() -- Line 109, Named "shouldShowRationale"
	--[[ Upvalues[2]:
		[1]: default_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	return default_upvr:shouldShowRationale({default_upvr.Permissions.POST_NOTIFICATIONS}):andThen(function(arg1) -- Line 113
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: default_upvr (copied, readonly)
		]]
		local var35 = Promise_upvr
		if arg1.upsellStatus ~= default_upvr.UpsellStatus.SHOW then
			var35 = false
		else
			var35 = true
		end
		return var35.resolve(var35)
	end):catch(function(arg1) -- Line 116
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(false)
	end)
end
local function shouldShowUpsellChat_upvr(arg1) -- Line 121, Named "shouldShowUpsellChat"
	--[[ Upvalues[7]:
		[1]: PushNotificationsUpsellUtils_upvr (readonly)
		[2]: AppStorageService_upvr (readonly)
		[3]: NotificationsUpsellConstants_upvr (readonly)
		[4]: FIntPushUpsellChatMaxPromptCount_upvr (readonly)
		[5]: FIntPushUpsellChatCooldownPeriod_upvr (readonly)
		[6]: Promise_upvr (readonly)
		[7]: shouldShowRationale_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_getPushUpsellPromptedCount_result1_2 = PushNotificationsUpsellUtils_upvr.getPushUpsellPromptedCount(AppStorageService_upvr, NotificationsUpsellConstants_upvr.LocalStorageKeys.ChatPromptShownCount)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 18 start (CF ANALYSIS FAILED)
	if FIntPushUpsellChatMaxPromptCount_upvr > any_getPushUpsellPromptedCount_result1_2 then
	else
	end
	-- KONSTANTERROR: [14] 11. Error Block 18 end (CF ANALYSIS FAILED)
end
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
local GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr = require(Parent.SharedFlags).GetFFlagLuaAppPushUpsellDeprecateOldEvents
local sendEventDeferred_upvr = require(Parent.NotificationsCommon).sendEventDeferred
local ModalEventConstants_upvr = require(script.Parent.Analytics.ModalEventConstants)
local default_upvr_2 = require(Parent.LoggingProtocol).default
local PushUpsellEventName_upvr = require(script.Parent.Analytics.RobloxTelemetryConfigs.PushUpsellEventName)
local PushNotificationsUpsellModal_upvr = require(script.Parent.Components.PushNotificationsUpsellModal)
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
return {
	OpenModal = function(arg1, arg2, arg3) -- Line 152, Named "openModal"
		--[[ Upvalues[14]:
			[1]: GetFFlagEnablePushNotificationsUpsellModal_upvr (readonly)
			[2]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (readonly)
			[3]: sendEventDeferred_upvr (readonly)
			[4]: ModalEventConstants_upvr (readonly)
			[5]: default_upvr_2 (readonly)
			[6]: PushUpsellEventName_upvr (readonly)
			[7]: NotificationModalsManager_upvr (readonly)
			[8]: NotificationsUpsellConstants_upvr (readonly)
			[9]: PushNotificationsUpsellUtils_upvr (readonly)
			[10]: AppStorageService_upvr (readonly)
			[11]: PushNotificationsUpsellModal_upvr (readonly)
			[12]: Localization_upvr (readonly)
			[13]: LocalizationService_upvr (readonly)
			[14]: default_upvr (readonly)
		]]
		if not GetFFlagEnablePushNotificationsUpsellModal_upvr() then
		else
			if arg2 then
				if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
					sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextPushEduUpsell, ModalEventConstants_upvr.OptInPushEventName, {
						[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
					})
				end
				default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
					[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
					[ModalEventConstants_upvr.EntryPoint] = arg3 or "";
				}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
				if arg1 == NotificationsUpsellConstants_upvr.ModalKey.PushUpsellHome then
					PushNotificationsUpsellUtils_upvr.incrementPushUpsellPromptedCount(AppStorageService_upvr, NotificationsUpsellConstants_upvr.LocalStorageKeys.PromptShownCount)
				elseif arg1 == NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat then
					PushNotificationsUpsellUtils_upvr.incrementPushUpsellPromptedCount(AppStorageService_upvr, NotificationsUpsellConstants_upvr.LocalStorageKeys.ChatPromptShownCount)
				end
				NotificationModalsManager_upvr.OpenModal(arg1, PushNotificationsUpsellModal_upvr, {
					CloseCallback = function() -- Line 158
						--[[ Upvalues[5]:
							[1]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (copied, readonly)
							[2]: sendEventDeferred_upvr (copied, readonly)
							[3]: ModalEventConstants_upvr (copied, readonly)
							[4]: default_upvr_2 (copied, readonly)
							[5]: PushUpsellEventName_upvr (copied, readonly)
						]]
						if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
							sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextPushEduUpsell, ModalEventConstants_upvr.OptInPushEventName, {
								[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Closed;
							})
						end
						default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
							[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Closed;
						}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
					end;
					Props = {
						CloseModal = function() -- Line 175
							--[[ Upvalues[2]:
								[1]: NotificationModalsManager_upvr (copied, readonly)
								[2]: arg1 (readonly)
							]]
							NotificationModalsManager_upvr.CloseModal(arg1)
						end;
						TranslationKeys = NotificationsUpsellConstants_upvr.TranslationKeys[arg1];
					};
					DisableBackgroundDismiss = true;
					DisplayOrder = 2;
					Localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
				})
				return
			end
			if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
				sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextSysUpsell, ModalEventConstants_upvr.OptInPushEventName, {
					[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
				})
			end
			default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
				[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
				[ModalEventConstants_upvr.EntryPoint] = arg3 or "";
			}, ModalEventConstants_upvr.ModalContextSysUpsell)
			default_upvr:requestPermissions({default_upvr.Permissions.POST_NOTIFICATIONS}):andThen(function(arg1_6) -- Line 227
				--[[ Upvalues[8]:
					[1]: PushNotificationsUpsellUtils_upvr (copied, readonly)
					[2]: AppStorageService_upvr (copied, readonly)
					[3]: NotificationsUpsellConstants_upvr (copied, readonly)
					[4]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (copied, readonly)
					[5]: sendEventDeferred_upvr (copied, readonly)
					[6]: ModalEventConstants_upvr (copied, readonly)
					[7]: default_upvr_2 (copied, readonly)
					[8]: PushUpsellEventName_upvr (copied, readonly)
				]]
				PushNotificationsUpsellUtils_upvr.setPushSysUpsellPromptTimestamp(AppStorageService_upvr, os.time())
				PushNotificationsUpsellUtils_upvr.incrementPushUpsellPromptedCount(AppStorageService_upvr, NotificationsUpsellConstants_upvr.LocalStorageKeys.PromptShownCount)
				if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
					sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextSysUpsell, ModalEventConstants_upvr.OptInPushEventName, {
						[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.RequestSuccess;
					})
				end
				default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
					[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.RequestSuccess;
				}, ModalEventConstants_upvr.ModalContextSysUpsell)
			end, function(arg1_7) -- Line 244
				--[[ Upvalues[5]:
					[1]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (copied, readonly)
					[2]: sendEventDeferred_upvr (copied, readonly)
					[3]: ModalEventConstants_upvr (copied, readonly)
					[4]: default_upvr_2 (copied, readonly)
					[5]: PushUpsellEventName_upvr (copied, readonly)
				]]
				if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
					sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextSysUpsell, ModalEventConstants_upvr.OptInPushEventName, {
						[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.RequestFailed;
					})
				end
				default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
					[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.RequestFailed;
				}, ModalEventConstants_upvr.ModalContextSysUpsell)
			end)
		end
	end;
	CloseModal = function(arg1) -- Line 260, Named "closeModal"
		--[[ Upvalues[1]:
			[1]: NotificationModalsManager_upvr (readonly)
		]]
		NotificationModalsManager_upvr.CloseModal(arg1)
	end;
	ShouldShowUpsell = function(arg1, arg2) -- Line 135, Named "shouldShowUpsell"
		--[[ Upvalues[6]:
			[1]: GetFFlagEnablePushNotificationsUpsellModal_upvr (readonly)
			[2]: Promise_upvr (readonly)
			[3]: getAppFeaturePolicies_upvr (readonly)
			[4]: NotificationsUpsellConstants_upvr (readonly)
			[5]: shouldShowUpsellHome_upvr (readonly)
			[6]: shouldShowUpsellChat_upvr (readonly)
		]]
		if not GetFFlagEnablePushNotificationsUpsellModal_upvr() then
			return Promise_upvr.resolve(false)
		end
		local getAppFeaturePolicies_upvr_result1 = getAppFeaturePolicies_upvr()
		if not getAppFeaturePolicies_upvr_result1.getNotificationsCanReceivePush() or not getAppFeaturePolicies_upvr_result1.getPushNotificationsUpsell() then
			return Promise_upvr.resolve(false)
		end
		if arg1 == NotificationsUpsellConstants_upvr.ModalKey.PushUpsellHome then
			return shouldShowUpsellHome_upvr(arg2)
		end
		if arg1 == NotificationsUpsellConstants_upvr.ModalKey.PushUpsellChat then
			return shouldShowUpsellChat_upvr(arg2)
		end
	end;
}