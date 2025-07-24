-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:24
-- Luau version 6, Types version 3
-- Time taken: 0.004037 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local PushNotificationsUpsellUtils_upvr = require(script.Parent.Parent.Util.PushNotificationsUpsellUtils)
local AppStorageService_upvr = game:GetService("AppStorageService")
local GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr = require(Parent.SharedFlags).GetFFlagLuaAppPushUpsellDeprecateOldEvents
local sendEventDeferred_upvr = require(Parent.NotificationsCommon).sendEventDeferred
local ModalEventConstants_upvr = require(script.Parent.Parent.Analytics.ModalEventConstants)
local default_upvr_2 = require(Parent.LoggingProtocol).default
local PushUpsellEventName_upvr = require(script.Parent.Parent.Analytics.RobloxTelemetryConfigs.PushUpsellEventName)
local default_upvr = require(Parent.PermissionsProtocol).PermissionsProtocol.default
local useState_upvr = React_upvr.useState
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 27
	--[[ Upvalues[15]:
		[1]: useLocalization_upvr (readonly)
		[2]: useCallback_upvr (readonly)
		[3]: PushNotificationsUpsellUtils_upvr (readonly)
		[4]: AppStorageService_upvr (readonly)
		[5]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (readonly)
		[6]: sendEventDeferred_upvr (readonly)
		[7]: ModalEventConstants_upvr (readonly)
		[8]: default_upvr_2 (readonly)
		[9]: PushUpsellEventName_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: useState_upvr (readonly)
		[12]: React_upvr (readonly)
		[13]: ReactRoblox_upvr (readonly)
		[14]: InteractiveAlert_upvr (readonly)
		[15]: ButtonType_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr(arg1.TranslationKeys)
	local var15_result1, useState_upvr_result2_upvr = useState_upvr(Vector2.new(800, 600))
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		[ReactRoblox_upvr.Change.AbsoluteSize] = useCallback_upvr(function(arg1_4) -- Line 120
			--[[ Upvalues[1]:
				[1]: useState_upvr_result2_upvr (readonly)
			]]
			useState_upvr_result2_upvr(arg1_4.AbsoluteSize)
		end, {useState_upvr_result2_upvr});
	}, {
		ConfirmationPrompt = React_upvr.createElement(InteractiveAlert_upvr, {
			screenSize = var15_result1;
			title = useLocalization_upvr_result1.Heading;
			bodyText = useLocalization_upvr_result1.Body;
			richText = true;
			buttonStackInfo = {
				buttons = {{
					props = {
						onActivated = useCallback_upvr(function() -- Line 29
							--[[ Upvalues[8]:
								[1]: PushNotificationsUpsellUtils_upvr (copied, readonly)
								[2]: AppStorageService_upvr (copied, readonly)
								[3]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (copied, readonly)
								[4]: sendEventDeferred_upvr (copied, readonly)
								[5]: ModalEventConstants_upvr (copied, readonly)
								[6]: default_upvr_2 (copied, readonly)
								[7]: PushUpsellEventName_upvr (copied, readonly)
								[8]: arg1 (readonly)
							]]
							PushNotificationsUpsellUtils_upvr.setPushEduUpsellResponse(AppStorageService_upvr, "Deny")
							PushNotificationsUpsellUtils_upvr.setPushEduUpsellResponseTimestamp(AppStorageService_upvr, os.time())
							if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
								sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextPushEduUpsell, ModalEventConstants_upvr.OptInPushEventName, {
									[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Clicked;
									[ModalEventConstants_upvr.Button] = ModalEventConstants_upvr.Cancel;
								})
							end
							default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
								[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Clicked;
								[ModalEventConstants_upvr.Button] = ModalEventConstants_upvr.Cancel;
							}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
							arg1.CloseModal()
						end, {arg1.CloseModal});
						text = useLocalization_upvr_result1.CancelAction;
					};
					isDefaultChild = true;
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = useCallback_upvr(function() -- Line 47
							--[[ Upvalues[9]:
								[1]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (copied, readonly)
								[2]: sendEventDeferred_upvr (copied, readonly)
								[3]: ModalEventConstants_upvr (copied, readonly)
								[4]: default_upvr_2 (copied, readonly)
								[5]: PushUpsellEventName_upvr (copied, readonly)
								[6]: PushNotificationsUpsellUtils_upvr (copied, readonly)
								[7]: AppStorageService_upvr (copied, readonly)
								[8]: default_upvr (copied, readonly)
								[9]: arg1 (readonly)
							]]
							if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
								sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextPushEduUpsell, ModalEventConstants_upvr.OptInPushEventName, {
									[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Clicked;
									[ModalEventConstants_upvr.Button] = ModalEventConstants_upvr.Confirm;
								})
							end
							default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
								[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Clicked;
								[ModalEventConstants_upvr.Button] = ModalEventConstants_upvr.Confirm;
							}, ModalEventConstants_upvr.ModalContextPushEduUpsell)
							PushNotificationsUpsellUtils_upvr.setPushEduUpsellResponse(AppStorageService_upvr, "Allow")
							PushNotificationsUpsellUtils_upvr.setPushEduUpsellResponseTimestamp(AppStorageService_upvr, os.time())
							default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
								[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
								[ModalEventConstants_upvr.EntryPoint] = "LuaPushUpsellModal";
							}, ModalEventConstants_upvr.ModalContextSysUpsell)
							default_upvr:requestPermissions({default_upvr.Permissions.POST_NOTIFICATIONS}):andThen(function(arg1_2) -- Line 74
								--[[ Upvalues[7]:
									[1]: PushNotificationsUpsellUtils_upvr (copied, readonly)
									[2]: AppStorageService_upvr (copied, readonly)
									[3]: GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr (copied, readonly)
									[4]: sendEventDeferred_upvr (copied, readonly)
									[5]: ModalEventConstants_upvr (copied, readonly)
									[6]: default_upvr_2 (copied, readonly)
									[7]: PushUpsellEventName_upvr (copied, readonly)
								]]
								PushNotificationsUpsellUtils_upvr.setPushSysUpsellPromptTimestamp(AppStorageService_upvr, os.time())
								if not GetFFlagLuaAppPushUpsellDeprecateOldEvents_upvr() then
									sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextSysUpsell, ModalEventConstants_upvr.OptInPushEventName, {
										[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Opened;
									})
									sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContextSysUpsell, ModalEventConstants_upvr.OptInPushEventName, {
										[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.RequestSuccess;
									})
								end
								default_upvr_2:logRobloxTelemetryEvent(PushUpsellEventName_upvr, {}, {
									[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.RequestSuccess;
								}, ModalEventConstants_upvr.ModalContextSysUpsell)
							end, function(arg1_3) -- Line 96
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
							arg1.CloseModal()
						end, {arg1.CloseModal, useLocalization_upvr_result1});
						text = useLocalization_upvr_result1.ConfirmAction;
					};
					isDefaultChild = false;
				}};
			};
		});
	})
end