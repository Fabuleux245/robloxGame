-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:23
-- Luau version 6, Types version 3
-- Time taken: 0.005054 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local HttpRequest = require(Parent.HttpRequest)
local tbl_3 = {}
local HttpRbxApi = HttpRequest.requestFunctions.HttpRbxApi
tbl_3.requestFunction = HttpRbxApi
if require(Parent.SharedFlags).FFlagLuaAppDefaultHttpRetry then
	HttpRbxApi = game:DefineFastInt("NotificationsUpsellModalHttpRetryCount", 4)
else
	HttpRbxApi = nil
end
tbl_3.maxRetryCount = HttpRbxApi
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local sendEventDeferred_upvr = require(Parent.NotificationsCommon).sendEventDeferred
local ModalEventConstants_upvr = require(script.Parent.Parent.Analytics.ModalEventConstants)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("NotificationsUpsellLocalPlayerFromServiceFix", false)
local Players_upvr = game:GetService("Players")
local FollowingsPostFollow_upvr = require(script.Parent.Parent.Requests.FollowingsPostFollow)
local any_config_result1_upvr = HttpRequest.config(tbl_3)
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local Images_upvr = UIBlox.App.ImageSet.Images
local useState_upvr = React_upvr.useState
local useRef_upvr = React_upvr.useRef
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnableConsoleAutoFocusForUEN", false)
local useEffect_upvr = React_upvr.useEffect
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RichTextEscape_upvr = require(script.Parent.Parent.Util.RichTextEscape)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 41
	--[[ Upvalues[21]:
		[1]: useLocalization_upvr (readonly)
		[2]: useCallback_upvr (readonly)
		[3]: sendEventDeferred_upvr (readonly)
		[4]: ModalEventConstants_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: FollowingsPostFollow_upvr (readonly)
		[8]: any_config_result1_upvr (readonly)
		[9]: NotificationModalsManager_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: useState_upvr (readonly)
		[12]: useRef_upvr (readonly)
		[13]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[14]: useEffect_upvr (readonly)
		[15]: UserInputService_upvr (readonly)
		[16]: GuiService_upvr (readonly)
		[17]: React_upvr (readonly)
		[18]: ReactRoblox_upvr (readonly)
		[19]: InteractiveAlert_upvr (readonly)
		[20]: RichTextEscape_upvr (readonly)
		[21]: ButtonType_upvr (readonly)
	]]
	local var8_result1_upvr = useLocalization_upvr({
		Cancel = "CommonUI.Controls.Action.Cancel";
		Yes = "CommonUI.Controls.Action.Yes";
		Heading = "Feature.Notifications.Heading.TurnOnNotifications";
		ReceiveUpdates = "Feature.Notifications.Label.ReceiveActivityUpdates";
		ReceiveUpdatesForExperience = "Feature.Notifications.Label.GetUpdatesFromExperience";
		NotificationsEnabledForExperience = "Feature.Notifications.Response.NotificationsEnabledForExperience";
		NotificationsEnabled = "Feature.Notifications.Response.NotificationsEnabled";
		SomethingWentWrong = "Feature.Call.Error.Description.Generic";
	})
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(Vector2.new(800, 600))
	local var19_result1_upvr = useRef_upvr(nil)
	if game_DefineFastFlag_result1_upvr_2 then
		useEffect_upvr(function() -- Line 121
			--[[ Upvalues[3]:
				[1]: UserInputService_upvr (copied, readonly)
				[2]: var19_result1_upvr (readonly)
				[3]: GuiService_upvr (copied, readonly)
			]]
			if UserInputService_upvr.GamepadEnabled then
				task.delay(0.3, function() -- Line 125
					--[[ Upvalues[2]:
						[1]: var19_result1_upvr (copied, readonly)
						[2]: GuiService_upvr (copied, readonly)
					]]
					local current = var19_result1_upvr.current
					if current then
						current = var19_result1_upvr.current:FindFirstChild("Buttons", true)
					end
					local var53 = current
					if var53 then
						var53 = current:FindFirstChild('2')
					end
					if var53 then
						GuiService_upvr.SelectedCoreObject = var53
					end
				end)
			end
		end, {})
	end
	local module = {}
	local tbl = {
		screenSize = useState_upvr_result1;
	}
	local Heading = var8_result1_upvr.Heading
	tbl.title = Heading
	if arg1.ExperienceName then
		Heading = string.gsub(var8_result1_upvr.ReceiveUpdatesForExperience, "{experienceName}", "\n<b>"..RichTextEscape_upvr(arg1.ExperienceName).."</b>")
	else
		Heading = var8_result1_upvr.ReceiveUpdates
	end
	tbl.bodyText = Heading
	tbl.richText = true
	tbl.buttonStackInfo = {
		buttons = {{
			props = {
				onActivated = useCallback_upvr(function() -- Line 54
					--[[ Upvalues[3]:
						[1]: sendEventDeferred_upvr (copied, readonly)
						[2]: ModalEventConstants_upvr (copied, readonly)
						[3]: arg1 (readonly)
					]]
					sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, {
						[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Clicked;
						[ModalEventConstants_upvr.Button] = ModalEventConstants_upvr.Cancel;
						[ModalEventConstants_upvr.UniverseId] = arg1.ExperienceId;
					})
					arg1.CloseModal()
				end, {arg1.CloseModal, arg1.ExperienceId});
				text = var8_result1_upvr.Cancel;
			};
			isDefaultChild = true;
		}, {
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				onActivated = useCallback_upvr(function() -- Line 63
					--[[ Upvalues[10]:
						[1]: sendEventDeferred_upvr (copied, readonly)
						[2]: ModalEventConstants_upvr (copied, readonly)
						[3]: arg1 (readonly)
						[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
						[5]: Players_upvr (copied, readonly)
						[6]: FollowingsPostFollow_upvr (copied, readonly)
						[7]: any_config_result1_upvr (copied, readonly)
						[8]: NotificationModalsManager_upvr (copied, readonly)
						[9]: Images_upvr (copied, readonly)
						[10]: var8_result1_upvr (readonly)
					]]
					sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, {
						[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.Clicked;
						[ModalEventConstants_upvr.Button] = ModalEventConstants_upvr.Confirm;
						[ModalEventConstants_upvr.UniverseId] = arg1.ExperienceId;
					})
					local var35
					if game_DefineFastFlag_result1_upvr then
						var35 = Players_upvr
						if var35 then
							var35 = Players_upvr.LocalPlayer
							-- KONSTANTWARNING: GOTO [45] #33
						end
					else
						var35 = game.Players.LocalPlayer
					end
					if arg1.ExperienceId ~= '0' and var35 then
						sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, {
							[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.BackendRequested;
							[ModalEventConstants_upvr.UniverseId] = arg1.ExperienceId;
						})
						FollowingsPostFollow_upvr(any_config_result1_upvr, tostring(var35.UserId), tostring(arg1.ExperienceId)):andThen(function() -- Line 78
							--[[ Upvalues[6]:
								[1]: sendEventDeferred_upvr (copied, readonly)
								[2]: ModalEventConstants_upvr (copied, readonly)
								[3]: arg1 (copied, readonly)
								[4]: NotificationModalsManager_upvr (copied, readonly)
								[5]: Images_upvr (copied, readonly)
								[6]: var8_result1_upvr (copied, readonly)
							]]
							sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, {
								[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.BackendSuccess;
								[ModalEventConstants_upvr.UniverseId] = arg1.ExperienceId;
							})
							local tbl_2 = {}
							local icons_common_notificationOn = Images_upvr["icons/common/notificationOn"]
							tbl_2.iconImage = icons_common_notificationOn
							if arg1.ExperienceName then
								icons_common_notificationOn = var8_result1_upvr.NotificationsEnabledForExperience:gsub("{experienceName}", arg1.ExperienceName)
							else
								icons_common_notificationOn = var8_result1_upvr.NotificationsEnabled
							end
							tbl_2.toastTitle = icons_common_notificationOn
							NotificationModalsManager_upvr.SetUIBloxToast(tbl_2)
						end, function() -- Line 93
							--[[ Upvalues[6]:
								[1]: sendEventDeferred_upvr (copied, readonly)
								[2]: ModalEventConstants_upvr (copied, readonly)
								[3]: arg1 (copied, readonly)
								[4]: NotificationModalsManager_upvr (copied, readonly)
								[5]: Images_upvr (copied, readonly)
								[6]: var8_result1_upvr (copied, readonly)
							]]
							sendEventDeferred_upvr(ModalEventConstants_upvr.ModalContext, ModalEventConstants_upvr.OptInEventName, {
								[ModalEventConstants_upvr.ActionType] = ModalEventConstants_upvr.BackendFailed;
								[ModalEventConstants_upvr.UniverseId] = arg1.ExperienceId;
							})
							NotificationModalsManager_upvr.SetUIBloxToast({
								iconImage = Images_upvr["icons/status/alert"];
								toastTitle = var8_result1_upvr.SomethingWentWrong;
							})
						end)
					end
					arg1.CloseModal()
				end, {arg1.CloseModal, arg1.ExperienceId, var8_result1_upvr});
				text = var8_result1_upvr.Yes;
			};
			isDefaultChild = false;
		}};
	}
	module.ConfirmationPrompt = React_upvr.createElement(InteractiveAlert_upvr, tbl)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ref = var19_result1_upvr;
		[ReactRoblox_upvr.Change.AbsoluteSize] = useCallback_upvr(function(arg1_2) -- Line 115
			--[[ Upvalues[1]:
				[1]: useState_upvr_result2_upvr (readonly)
			]]
			useState_upvr_result2_upvr(arg1_2.AbsoluteSize)
		end, {useState_upvr_result2_upvr});
	}, module)
end