-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:45
-- Luau version 6, Types version 3
-- Time taken: 0.078543 seconds

local ThirdPartyUserService_upvr = game:GetService("ThirdPartyUserService")
local Parent = script.Parent
local Components = Parent.Components
local utils = Parent.utils
local toastNotificationHelper_upvr = require(utils.toastNotificationHelper)
local Parent_2 = Parent.Parent
local NotificationsCommon = require(Parent_2.NotificationsCommon)
local UIBlox = require(Parent_2.UIBlox)
local SharedFlags = require(Parent_2.SharedFlags)
local GetFFlagFilterNotificationsForPCGDKEnabled_upvr = SharedFlags.GetFFlagFilterNotificationsForPCGDKEnabled
local function _() -- Line 63, Named "GetIsFriendCommunicationRestricted"
	--[[ Upvalues[2]:
		[1]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (readonly)
		[2]: ThirdPartyUserService_upvr (readonly)
	]]
	local var10_result1_2 = GetFFlagFilterNotificationsForPCGDKEnabled_upvr()
	if var10_result1_2 then
		var10_result1_2 = ThirdPartyUserService_upvr
		if var10_result1_2 then
			var10_result1_2 = ThirdPartyUserService_upvr:IsChatRestrictionSupported()
			if var10_result1_2 then
				if ThirdPartyUserService_upvr.FriendCommunicationRestrictionStatus == Enum.ChatRestrictionStatus.NotRestricted then
					var10_result1_2 = false
				else
					var10_result1_2 = true
				end
			end
		end
	end
	return var10_result1_2
end
local tbl_53_upvr = {
	frequency = 4;
	damping = 1;
}
local type_upvr = require(Parent.type)
local GetFFlagToastNotificationsGamepadSupport_upvr = SharedFlags.GetFFlagToastNotificationsGamepadSupport
local GuiService_upvr = game:GetService("GuiService")
local constants_upvr = require(Parent.constants)
local ToastNotificationProtocol_upvr = require(Parent_2.ToastNotificationsProtocol).ToastNotificationProtocol
local React_upvr = require(Parent_2.React)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local getNotificationSize_upvr = toastNotificationHelper_upvr.getNotificationSize
local getDeviceOrientation_upvr = toastNotificationHelper_upvr.getDeviceOrientation
local calculateToastPosition_upvr = toastNotificationHelper_upvr.calculateToastPosition
local isToastToRight_upvr = toastNotificationHelper_upvr.isToastToRight
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Players_upvr = game:GetService("Players")
local Logger_upvr = require(Parent.Logger)
local analyticsService_upvr = require(Parent.analytics.analyticsService)
local toastNotificationSessionizationHelper_upvr = require(utils.toastNotificationSessionizationHelper)
local Cryo_upvr = require(Parent_2.Cryo)
local default_upvr_2 = require(Parent.ToastNotificationSnoozeManager).default
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableNotificationsToastTTLFix", false)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("ClientToastNotificationsEnabled")
local dependencyArray_upvr = require(Parent.dependencies).Hooks.dependencyArray
local JoinExperience_upvr = NotificationsCommon.JoinExperience
local HttpService_upvr = game:GetService("HttpService")
local calculateTimeRemaining_upvr = toastNotificationHelper_upvr.calculateTimeRemaining
local LifecycleEvents_upvr = require(script.Parent.utils.LifecycleEvents)
local GetFStringPCGDKFilteredNotificationTypes_upvr = SharedFlags.GetFStringPCGDKFilteredNotificationTypes
local GetFFlagEnableChatNewMessage_upvr = SharedFlags.GetFFlagEnableChatNewMessage
local marshalNotificationData_upvr = toastNotificationHelper_upvr.marshalNotificationData
local ReactOtter_upvr = require(Parent_2.ReactOtter)
local IsVRAppBuild_upvr = require(Parent_2.AppCommonLib).IsVRAppBuild
local TouchEnabled_upvr = game:GetService("UserInputService").TouchEnabled
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_navigation_close_upvr = UIBlox.App.ImageSet.Images["icons/navigation/close"]
local SpringAnimatedItem_upvr = UIBlox.Utility.SpringAnimatedItem
local SwipeDetectionWrapper_upvr = require(Components.SwipeDetectionWrapper)
local ClientNotificationWrapper_upvr = require(Components.ClientNotificationWrapper)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnableClientToastNotificationsReducedMotion", false)
local NotificationCardProvider_upvr = require(Parent.context.NotificationCardProvider)
local NotificationCard_upvr = require(Components.NotificationCard)
local ToastVRWrapper_upvr = require(Components.ToastVRWrapper)
local ToastNotificationSnoozeMenu_upvr = require(Components.ToastNotificationSnoozeMenu)
local DeeplinkConfirmationModal_upvr = NotificationsCommon.DeeplinkConfirmationModal
return function(arg1) -- Line 88
	--[[ Upvalues[46]:
		[1]: type_upvr (readonly)
		[2]: toastNotificationHelper_upvr (readonly)
		[3]: GetFFlagToastNotificationsGamepadSupport_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: constants_upvr (readonly)
		[6]: ToastNotificationProtocol_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: UserGameSettings_upvr (readonly)
		[9]: getNotificationSize_upvr (readonly)
		[10]: getDeviceOrientation_upvr (readonly)
		[11]: calculateToastPosition_upvr (readonly)
		[12]: isToastToRight_upvr (readonly)
		[13]: useStyle_upvr (readonly)
		[14]: Players_upvr (readonly)
		[15]: Logger_upvr (readonly)
		[16]: analyticsService_upvr (readonly)
		[17]: toastNotificationSessionizationHelper_upvr (readonly)
		[18]: Cryo_upvr (readonly)
		[19]: default_upvr_2 (readonly)
		[20]: game_DefineFastFlag_result1_upvr (readonly)
		[21]: game_GetEngineFeature_result1_upvr (readonly)
		[22]: dependencyArray_upvr (readonly)
		[23]: JoinExperience_upvr (readonly)
		[24]: HttpService_upvr (readonly)
		[25]: calculateTimeRemaining_upvr (readonly)
		[26]: LifecycleEvents_upvr (readonly)
		[27]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (readonly)
		[28]: GetFStringPCGDKFilteredNotificationTypes_upvr (readonly)
		[29]: ThirdPartyUserService_upvr (readonly)
		[30]: GetFFlagEnableChatNewMessage_upvr (readonly)
		[31]: marshalNotificationData_upvr (readonly)
		[32]: tbl_53_upvr (readonly)
		[33]: ReactOtter_upvr (readonly)
		[34]: IsVRAppBuild_upvr (readonly)
		[35]: TouchEnabled_upvr (readonly)
		[36]: ImageSetLabel_upvr (readonly)
		[37]: icons_navigation_close_upvr (readonly)
		[38]: SpringAnimatedItem_upvr (readonly)
		[39]: SwipeDetectionWrapper_upvr (readonly)
		[40]: ClientNotificationWrapper_upvr (readonly)
		[41]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[42]: NotificationCardProvider_upvr (readonly)
		[43]: NotificationCard_upvr (readonly)
		[44]: ToastVRWrapper_upvr (readonly)
		[45]: ToastNotificationSnoozeMenu_upvr (readonly)
		[46]: DeeplinkConfirmationModal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var539_upvr
	if arg1.renderLocation ~= type_upvr.RenderLocationEnum.CoreScript then
		var539_upvr = false
	else
		var539_upvr = true
	end
	if not GetFFlagToastNotificationsGamepadSupport_upvr() then
		if GuiService_upvr:IsTenFootInterface() then
			return nil
		end
	end
	if var539_upvr then
		local _ = constants_upvr.CardTopMargin.Experience
	else
	end
	local default_upvr = ToastNotificationProtocol_upvr.default
	local function _() -- Line 99
		return workspace.CurrentCamera.ViewportSize
	end
	local function _(arg1_44) -- Line 104
		--[[ Upvalues[1]:
			[1]: constants_upvr (copied, readonly)
		]]
		local var544 = arg1_44
		if var544 then
			if workspace.CurrentCamera.ViewportSize.X >= constants_upvr.CompactCardThreashold then
				var544 = false
			else
				var544 = true
			end
		end
		return var544
	end
	local any_useState_result1_41_upvr, any_useState_result2_upvr_8 = React_upvr.useState(UserGameSettings_upvr.ReducedMotion)
	local any_useState_result1_upvr_8, any_useState_result2_upvr_24 = React_upvr.useState(getNotificationSize_upvr(var539_upvr, workspace.CurrentCamera.ViewportSize.X))
	local any_useState_result1_20_upvr, any_useState_result2_upvr_45 = React_upvr.useState(getDeviceOrientation_upvr(workspace.CurrentCamera.ViewportSize))
	local any_useState_result1_33_upvr, any_useState_result2_upvr_43 = React_upvr.useState(false)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_42 = React_upvr.useState(nil)
	local any_useState_result1_upvr_6, any_useState_result2_upvr_19 = React_upvr.useState(nil)
	local any_useState_result1_18_upvr, any_useState_result2_upvr_33 = React_upvr.useState(calculateToastPosition_upvr(false, isToastToRight_upvr(any_useState_result1_20_upvr), constants_upvr.CardTopMargin.App, any_useState_result1_41_upvr))
	local any_useState_result1_7_upvr, any_useState_result2_upvr_27 = React_upvr.useState(nil)
	local any_useState_result1_27_upvr, any_useState_result2_upvr_41 = React_upvr.useState(nil)
	local any_useState_result1_26_upvr, any_useState_result2_upvr_40 = React_upvr.useState(function() -- Line 122
		--[[ Upvalues[2]:
			[1]: var539_upvr (readonly)
			[2]: constants_upvr (copied, readonly)
		]]
		local var564 = var539_upvr
		if var564 then
			if workspace.CurrentCamera.ViewportSize.X >= constants_upvr.CompactCardThreashold then
				var564 = false
			else
				var564 = true
			end
		end
		return var564
	end)
	local any_useState_result1_34_upvr, any_useState_result2_upvr_26 = React_upvr.useState(false)
	local any_useState_result1_42, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_24_upvr, any_useState_result2_upvr_35 = React_upvr.useState(false)
	local any_useState_result1_23_upvr, any_useState_result2_upvr_39 = React_upvr.useState(false)
	local any_useState_result1_8_upvr, any_useState_result2_upvr_29 = React_upvr.useState(false)
	local any_useState_result1_13_upvr, any_useState_result2_upvr_51 = React_upvr.useState(false)
	local any_useState_result1_21_upvr, any_useState_result2_upvr_3 = React_upvr.useState({})
	local any_useState_result1_10_upvr, any_useState_result2_upvr_36 = React_upvr.useState(Instance.new("BindableEvent"))
	local var27_result1_2 = useStyle_upvr()
	local function var584_upvr() -- Line 139
		--[[ Upvalues[7]:
			[1]: getDeviceOrientation_upvr (copied, readonly)
			[2]: getNotificationSize_upvr (copied, readonly)
			[3]: var539_upvr (readonly)
			[4]: any_useState_result2_upvr_24 (readonly)
			[5]: any_useState_result2_upvr_40 (readonly)
			[6]: constants_upvr (copied, readonly)
			[7]: any_useState_result2_upvr_45 (readonly)
		]]
		local ViewportSize_6 = workspace.CurrentCamera.ViewportSize
		any_useState_result2_upvr_24(getNotificationSize_upvr(var539_upvr, ViewportSize_6.X))
		local var586 = var539_upvr
		if var586 then
			if workspace.CurrentCamera.ViewportSize.X >= constants_upvr.CompactCardThreashold then
				var586 = false
			else
				var586 = true
			end
		end
		any_useState_result2_upvr_40(var586)
		any_useState_result2_upvr_45(getDeviceOrientation_upvr(ViewportSize_6))
	end
	local function _(arg1_45) -- Line 148
		--[[ Upvalues[1]:
			[1]: default_upvr (readonly)
		]]
		default_upvr:dismissNotification(arg1_45)
	end
	local var588_upvr = any_useState_result1_23_upvr or any_useState_result1_8_upvr
	if not Players_upvr or not Players_upvr.LocalPlayer or not Players_upvr.LocalPlayer.UserId then
		local var589_upvr
	end
	local function var590_upvr(arg1_46, arg2, arg3) -- Line 155
		--[[ Upvalues[8]:
			[1]: Logger_upvr (copied, readonly)
			[2]: analyticsService_upvr (copied, readonly)
			[3]: toastNotificationSessionizationHelper_upvr (copied, readonly)
			[4]: toastNotificationHelper_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: constants_upvr (copied, readonly)
			[7]: var539_upvr (readonly)
			[8]: default_upvr_2 (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
		if arg3 == nil then
		else
			Logger_upvr:info("NotificationType: {} with event: {}", arg3.notificationType, arg1_46)
			toastNotificationSessionizationHelper_upvr(arg1_46)
			local var591 = 0
			if arg3 then
				if arg3.displayTimestamp then
					var591 = DateTime.now().UnixTimestampMillis - arg3.displayTimestamp
				end
			end
			local tbl_72 = {}
			tbl_72.action_type = arg1_46
			tbl_72.delivery_channel = constants_upvr.DeliveryChannel
			if not arg3 or not arg3.notificationType then
			end
			tbl_72.notification_type = nil
			if not arg3 or not arg3.id then
			end
			tbl_72.notification_id = nil
			tbl_72.recipient_userid = arg2 or nil
			if var539_upvr then
				if game then
					-- KONSTANTWARNING: GOTO [75] #54
				end
			else
			end
			tbl_72.recipient_universe_id = nil
			if var539_upvr then
				-- KONSTANTWARNING: GOTO [90] #64
			end
			-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [85] 61. Error Block 50 start (CF ANALYSIS FAILED)
			tbl_72.client_destination = constants_upvr.Destinations.App
			local var593
			local function INLINED_7() -- Internal function, doesn't exist in bytecode
				var593 = arg3.deliverTimestamp
				return var593
			end
			if not arg3 or not INLINED_7() then
				var593 = nil
			end
			tbl_72.deliver_timestamp = var593
			if arg3 and arg3.notificationType then
				var593 = default_upvr_2:isSnoozedNotificationType(arg3.notificationType)
			else
				var593 = false
			end
			tbl_72.snoozed = var593
			tbl_72.time_to_action_timestamp = var591
			local function INLINED_8() -- Internal function, doesn't exist in bytecode
				var593 = arg3.clientEventsPayload
				return var593
			end
			if not arg3 or not INLINED_8() then
				var593 = {}
			end
			toastNotificationHelper_upvr.fireEvent(analyticsService_upvr.EventStream, Cryo_upvr.Dictionary.join(tbl_72, var593))
			-- KONSTANTERROR: [85] 61. Error Block 50 end (CF ANALYSIS FAILED)
		end
	end
	React_upvr.useEffect(function() -- Line 197
		--[[ Upvalues[2]:
			[1]: UserGameSettings_upvr (copied, readonly)
			[2]: any_useState_result2_upvr_8 (readonly)
		]]
		local any_Connect_result1_upvr_2 = UserGameSettings_upvr.Changed:Connect(function(arg1_47) -- Line 198
			--[[ Upvalues[2]:
				[1]: UserGameSettings_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_8 (copied, readonly)
			]]
			if arg1_47 == "ReducedMotion" then
				local pcall_result1, pcall_result2_4 = pcall(function() -- Line 200
					--[[ Upvalues[2]:
						[1]: UserGameSettings_upvr (copied, readonly)
						[2]: arg1_47 (readonly)
					]]
					return UserGameSettings_upvr[arg1_47]
				end)
				if pcall_result1 then
					any_useState_result2_upvr_8(pcall_result2_4)
				end
			end
		end)
		return function() -- Line 210
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr_2 (readonly)
			]]
			if any_Connect_result1_upvr_2 then
				any_Connect_result1_upvr_2:Disconnect()
			end
		end
	end, {any_useState_result2_upvr_8, UserGameSettings_upvr})
	local function var602(arg1_48) -- Line 217
		--[[ Upvalues[6]:
			[1]: var590_upvr (readonly)
			[2]: type_upvr (copied, readonly)
			[3]: var589_upvr (readonly)
			[4]: any_useState_result1_4_upvr (readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: any_useState_result1_10_upvr (readonly)
		]]
		if not arg1_48 then
			var590_upvr(type_upvr.ToastNotificationActionsEnum.ModalCancel, var589_upvr, any_useState_result1_4_upvr)
			any_useState_result2_upvr(false)
		end
		if any_useState_result1_10_upvr then
			var590_upvr(type_upvr.ToastNotificationActionsEnum.ModalConfirm, var589_upvr, any_useState_result1_4_upvr)
			any_useState_result1_10_upvr:Fire(arg1_48)
		end
	end
	local any_useCallback_result1_upvr_19 = React_upvr.useCallback(function() -- Line 228
		--[[ Upvalues[2]:
			[1]: any_useState_result1_7_upvr (readonly)
			[2]: any_useState_result2_upvr_27 (readonly)
		]]
		if any_useState_result1_7_upvr then
			task.cancel(any_useState_result1_7_upvr)
		end
		any_useState_result2_upvr_27(nil)
	end, {any_useState_result1_7_upvr})
	local function _(arg1_49) -- Line 237
		--[[ Upvalues[3]:
			[1]: default_upvr (readonly)
			[2]: any_useState_result2_upvr_19 (readonly)
			[3]: any_useCallback_result1_upvr_19 (readonly)
		]]
		default_upvr:dismissNotification(arg1_49)
		any_useState_result2_upvr_19(nil)
		any_useCallback_result1_upvr_19()
	end
	local function _(arg1_50) -- Line 243
		--[[ Upvalues[1]:
			[1]: constants_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg1_50.state then
			local timeOnScreenMs_4 = arg1_50.state.timeOnScreenMs
		end
		if timeOnScreenMs_4 then
		end
		local var609 = timeOnScreenMs_4 / 1000
		if not var609 then
			var609 = constants_upvr.DefaultNotificationDisplayTime
		end
		return var609 + 1
	end
	if game_DefineFastFlag_result1_upvr then
		local any_useRef_result1_upvr_2 = React_upvr.useRef(false)
		local function _(arg1_51, arg2, arg3) -- Line 255
			--[[ Upvalues[10]:
				[1]: any_useCallback_result1_upvr_19 (readonly)
				[2]: any_useRef_result1_upvr_2 (readonly)
				[3]: var590_upvr (readonly)
				[4]: type_upvr (copied, readonly)
				[5]: var589_upvr (readonly)
				[6]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[7]: GuiService_upvr (copied, readonly)
				[8]: default_upvr (readonly)
				[9]: any_useState_result2_upvr_19 (readonly)
				[10]: any_useState_result2_upvr_27 (readonly)
			]]
			any_useCallback_result1_upvr_19()
			any_useState_result2_upvr_27(task.delay(arg2, function() -- Line 261
				--[[ Upvalues[11]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useCallback_result1_upvr_19 (copied, readonly)
					[3]: var590_upvr (copied, readonly)
					[4]: type_upvr (copied, readonly)
					[5]: var589_upvr (copied, readonly)
					[6]: arg3 (readonly)
					[7]: game_GetEngineFeature_result1_upvr (copied, readonly)
					[8]: GuiService_upvr (copied, readonly)
					[9]: arg1_51 (readonly)
					[10]: default_upvr (copied, readonly)
					[11]: any_useState_result2_upvr_19 (copied, readonly)
				]]
				if any_useRef_result1_upvr_2.current then
					any_useCallback_result1_upvr_19()
				else
					var590_upvr(type_upvr.ToastNotificationActionsEnum.Ignored, var589_upvr, arg3)
					if game_GetEngineFeature_result1_upvr then
						if arg3 then
							if arg3.luaNotifInfo then
								GuiService_upvr:DismissNotification(arg1_51)
								return
							end
						end
					end
					default_upvr:dismissNotification(arg1_51)
					any_useState_result2_upvr_19(nil)
					any_useCallback_result1_upvr_19()
				end
			end))
		end
		-- KONSTANTWARNING: GOTO [281] #230
	end
	local any_useCallback_result1_upvw_3 = React_upvr.useCallback(function(arg1_52, arg2, arg3) -- Line 281
		--[[ Upvalues[10]:
			[1]: any_useCallback_result1_upvr_19 (readonly)
			[2]: any_useState_result1_24_upvr (readonly)
			[3]: var590_upvr (readonly)
			[4]: type_upvr (copied, readonly)
			[5]: var589_upvr (readonly)
			[6]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[7]: GuiService_upvr (copied, readonly)
			[8]: default_upvr (readonly)
			[9]: any_useState_result2_upvr_19 (readonly)
			[10]: any_useState_result2_upvr_27 (readonly)
		]]
		any_useCallback_result1_upvr_19()
		any_useState_result2_upvr_27(task.delay(arg2, function() -- Line 283
			--[[ Upvalues[11]:
				[1]: any_useState_result1_24_upvr (copied, readonly)
				[2]: var590_upvr (copied, readonly)
				[3]: type_upvr (copied, readonly)
				[4]: var589_upvr (copied, readonly)
				[5]: arg3 (readonly)
				[6]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[7]: GuiService_upvr (copied, readonly)
				[8]: arg1_52 (readonly)
				[9]: default_upvr (copied, readonly)
				[10]: any_useState_result2_upvr_19 (copied, readonly)
				[11]: any_useCallback_result1_upvr_19 (copied, readonly)
			]]
			if not any_useState_result1_24_upvr then
				var590_upvr(type_upvr.ToastNotificationActionsEnum.Ignored, var589_upvr, arg3)
				if game_GetEngineFeature_result1_upvr and arg3 and arg3.luaNotifInfo then
					GuiService_upvr:DismissNotification(arg1_52)
					return
				end
				default_upvr:dismissNotification(arg1_52)
				any_useState_result2_upvr_19(nil)
				any_useCallback_result1_upvr_19()
			end
		end))
	end, {any_useState_result1_24_upvr})
	local any_useCallback_result1_upvr_15 = React_upvr.useCallback(function() -- Line 304
		--[[ Upvalues[7]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: any_useState_result1_upvr_6 (readonly)
			[3]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[4]: GuiService_upvr (copied, readonly)
			[5]: default_upvr (readonly)
			[6]: any_useState_result2_upvr_19 (readonly)
			[7]: any_useCallback_result1_upvr_19 (readonly)
		]]
		if any_useState_result1_4_upvr then
			if any_useState_result1_upvr_6 then
				if any_useState_result1_upvr_6.id == any_useState_result1_4_upvr.id then
					if game_GetEngineFeature_result1_upvr and any_useState_result1_4_upvr.luaNotifInfo then
						GuiService_upvr:DismissNotification(any_useState_result1_4_upvr.id)
						return
					end
					default_upvr:dismissNotification(any_useState_result1_4_upvr.id)
					any_useState_result2_upvr_19(nil)
					any_useCallback_result1_upvr_19()
				end
			end
		end
	end, {any_useState_result1_4_upvr, any_useState_result1_upvr_6})
	local function var620() -- Line 321
		--[[ Upvalues[6]:
			[1]: var590_upvr (readonly)
			[2]: type_upvr (copied, readonly)
			[3]: var589_upvr (readonly)
			[4]: any_useState_result1_4_upvr (readonly)
			[5]: any_useCallback_result1_upvr_15 (readonly)
			[6]: any_useState_result2_upvr_29 (readonly)
		]]
		var590_upvr(type_upvr.ToastNotificationActionsEnum.Dismissed, var589_upvr, any_useState_result1_4_upvr)
		any_useCallback_result1_upvr_15()
		any_useState_result2_upvr_29(false)
	end
	local tbl_50 = {var539_upvr, any_useState_result1_10_upvr}
	local any_useCallback_result1_upvr_17 = React_upvr.useCallback(function() -- Line 328
		--[[ Upvalues[3]:
			[1]: var539_upvr (readonly)
			[2]: any_useState_result1_10_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if var539_upvr then
			if any_useState_result1_10_upvr then
				any_useState_result2_upvr(true)
				return any_useState_result1_10_upvr.Event:Wait()
			end
		end
		return true
	end, tbl_50)
	local function var624_upvr() -- Line 342
		--[[ Upvalues[5]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: any_useState_result1_upvr_6 (readonly)
			[3]: any_useState_result1_7_upvr (readonly)
			[4]: any_useCallback_result1_upvw_3 (read and write)
			[5]: constants_upvr (copied, readonly)
		]]
		if any_useState_result1_4_upvr then
			if any_useState_result1_upvr_6 then
				local var625
				if not any_useState_result1_7_upvr then
					local var626 = any_useState_result1_4_upvr
					var625 = var626.state
					if var625 then
						var625 = var626.state.timeOnScreenMs
					end
					if var625 then
					end
					local var627 = var625 / 1000
					if not var627 then
						var627 = constants_upvr.DefaultNotificationDisplayTime
					end
					any_useCallback_result1_upvw_3(any_useState_result1_4_upvr.id, var627 + 1, any_useState_result1_4_upvr)
				end
			end
		end
	end
	tbl_50 = nil
	local var629_upvw = tbl_50
	if game_DefineFastFlag_result1_upvr then
		function var629_upvw(arg1_53, ...) -- Line 356
			--[[ Upvalues[6]:
				[1]: any_useCallback_result1_upvr_19 (readonly)
				[2]: any_useState_result1_4_upvr (readonly)
				[3]: any_useState_result1_upvr_6 (readonly)
				[4]: any_useState_result1_7_upvr (readonly)
				[5]: any_useCallback_result1_upvw_3 (read and write)
				[6]: constants_upvr (copied, readonly)
			]]
			if arg1_53 then
				any_useCallback_result1_upvr_19()
			elseif any_useState_result1_4_upvr then
				if any_useState_result1_upvr_6 then
					local var630
					if not any_useState_result1_7_upvr then
						local var631 = any_useState_result1_4_upvr
						var630 = var631.state
						if var630 then
							var630 = var631.state.timeOnScreenMs
						end
						if var630 then
						end
						local var632 = var630 / 1000
						if not var632 then
							var632 = constants_upvr.DefaultNotificationDisplayTime
						end
						any_useCallback_result1_upvw_3(any_useState_result1_4_upvr.id, var632 + 1, any_useState_result1_4_upvr)
					end
				end
			end
		end
	else
		var629_upvw = function(arg1_54, arg2, arg3) -- Line 365
			if arg1_54 then
				arg2()
				return
			end
			arg3()
		end
	end
	local any_useCallback_result1_upvr_14 = React_upvr.useCallback(function() -- Line 375
		--[[ Upvalues[1]:
			[1]: any_useState_result1_21_upvr (readonly)
		]]
		for _, v in ipairs(any_useState_result1_21_upvr) do
			task.cancel(v)
		end
	end, dependencyArray_upvr(any_useState_result1_21_upvr))
	React_upvr.useEffect(function() -- Line 381
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr_14 (readonly)
		]]
		return function() -- Line 384
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr_14 (copied, readonly)
			]]
			any_useCallback_result1_upvr_14()
		end
	end, {any_useCallback_result1_upvr_14})
	local any_useCallback_result1_upvr_13 = React_upvr.useCallback(function(arg1_55, arg2) -- Line 390
		--[[ Upvalues[12]:
			[1]: type_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr_15 (readonly)
			[3]: any_useCallback_result1_upvr_17 (readonly)
			[4]: JoinExperience_upvr (copied, readonly)
			[5]: var539_upvr (readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: default_upvr (readonly)
			[8]: var590_upvr (readonly)
			[9]: var589_upvr (readonly)
			[10]: HttpService_upvr (copied, readonly)
			[11]: Logger_upvr (copied, readonly)
			[12]: ToastNotificationProtocol_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 6. Error Block 2 start (CF ANALYSIS FAILED)
		any_useCallback_result1_upvr_15()
		do
			return
		end
		-- KONSTANTERROR: [9] 6. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
	end, dependencyArray_upvr(any_useCallback_result1_upvr_15, any_useCallback_result1_upvr_17))
	local any_useCallback_result1_upvr_12 = React_upvr.useCallback(function(arg1_58) -- Line 479
		--[[ Upvalues[9]:
			[1]: any_useState_result1_34_upvr (readonly)
			[2]: any_useState_result2_upvr_26 (readonly)
			[3]: var590_upvr (readonly)
			[4]: var589_upvr (readonly)
			[5]: any_useState_result1_4_upvr (readonly)
			[6]: LifecycleEvents_upvr (copied, readonly)
			[7]: any_useCallback_result1_upvr_13 (readonly)
			[8]: type_upvr (copied, readonly)
			[9]: any_useCallback_result1_upvr_17 (readonly)
		]]
		if any_useState_result1_34_upvr then
		else
			any_useState_result2_upvr_26(true)
			if arg1_58.eventName then
				var590_upvr(arg1_58.eventName, var589_upvr, any_useState_result1_4_upvr)
			end
			if arg1_58.actionEventParams then
				if any_useState_result1_4_upvr then
					local tbl_28 = {
						notificationData = any_useState_result1_4_upvr;
					}
					tbl_28.visualItem = arg1_58
					tbl_28.userActionType = "click"
					tbl_28.parameters = arg1_58.actionEventParams
					LifecycleEvents_upvr:DispatchEvent(LifecycleEvents_upvr.ToastEvents.UserAction, any_useState_result1_4_upvr.notificationType, tbl_28)
				end
			end
			if arg1_58.actions and 0 < #arg1_58.actions then
				for _, v_6 in ipairs(arg1_58.actions) do
					any_useCallback_result1_upvr_13(v_6, any_useState_result1_4_upvr)
					if v_6.actionType ~= type_upvr.ActionTypeEnum.Deeplink or any_useCallback_result1_upvr_17() then break end
				end
			end
			any_useState_result2_upvr_26(false)
		end
	end, {any_useState_result1_4_upvr, any_useCallback_result1_upvr_15, any_useState_result1_34_upvr, any_useCallback_result1_upvr_17})
	local any_useCallback_result1_upvr_9 = React_upvr.useCallback(function(arg1_56) -- Line 446
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_13 (readonly)
			[2]: any_useCallback_result1_upvr_14 (readonly)
			[3]: calculateTimeRemaining_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
		]]
		local function _(arg1_57) -- Line 447, Named "executeAllActions"
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_13 (copied, readonly)
				[2]: arg1_56 (readonly)
			]]
			for _, v_2 in ipairs(arg1_57) do
				any_useCallback_result1_upvr_13(v_2, arg1_56)
			end
		end
		any_useCallback_result1_upvr_14()
		if arg1_56.timers then
			local tbl_35 = {}
			for _, v_3_upvr in pairs(arg1_56.timers) do
				local var39_result1 = calculateTimeRemaining_upvr(v_3_upvr, arg1_56.notificationReceivedTimestampMs, arg1_56.displayTimestamp)
				if 0 < var39_result1 then
					table.insert(tbl_35, task.delay(var39_result1 / 1000, function() -- Line 463
						--[[ Upvalues[3]:
							[1]: v_3_upvr (readonly)
							[2]: any_useCallback_result1_upvr_13 (copied, readonly)
							[3]: arg1_56 (readonly)
						]]
						for _, v_4 in ipairs(v_3_upvr.actions) do
							any_useCallback_result1_upvr_13(v_4, arg1_56)
						end
					end))
				else
					for _, v_5 in ipairs(v_3_upvr.actions) do
						any_useCallback_result1_upvr_13(v_5, arg1_56)
					end
				end
			end
			if 0 < #tbl_35 then
				any_useState_result2_upvr_3(tbl_35)
			end
		end
	end, dependencyArray_upvr(any_useCallback_result1_upvr_13, any_useCallback_result1_upvr_14, calculateTimeRemaining_upvr))
	local function var679_upvr(arg1_59, arg2) -- Line 521
		--[[ Upvalues[15]:
			[1]: GetFFlagFilterNotificationsForPCGDKEnabled_upvr (copied, readonly)
			[2]: GetFStringPCGDKFilteredNotificationTypes_upvr (copied, readonly)
			[3]: ThirdPartyUserService_upvr (copied, readonly)
			[4]: default_upvr (readonly)
			[5]: type_upvr (copied, readonly)
			[6]: var590_upvr (readonly)
			[7]: var589_upvr (readonly)
			[8]: default_upvr_2 (copied, readonly)
			[9]: any_useState_result2_upvr_42 (readonly)
			[10]: constants_upvr (copied, readonly)
			[11]: any_useCallback_result1_upvw_3 (read and write)
			[12]: any_useCallback_result1_upvr_9 (readonly)
			[13]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[14]: GuiService_upvr (copied, readonly)
			[15]: any_useState_result2_upvr_41 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		arg1_59.displayTimestamp = DateTime.now().UnixTimestampMillis
		local var681
		if var681 then
			var681 = GetFStringPCGDKFilteredNotificationTypes_upvr()
			if var681[arg1_59.notificationType] then
				local var10_result1 = GetFFlagFilterNotificationsForPCGDKEnabled_upvr()
				if var10_result1 then
					var10_result1 = ThirdPartyUserService_upvr
					if var10_result1 then
						var10_result1 = ThirdPartyUserService_upvr:IsChatRestrictionSupported()
						if var10_result1 then
							if ThirdPartyUserService_upvr.FriendCommunicationRestrictionStatus == Enum.ChatRestrictionStatus.NotRestricted then
								var10_result1 = false
							else
								var10_result1 = true
							end
						end
					end
				end
				if var10_result1 then
					default_upvr:dismissNotification(arg1_59.id)
					return
				end
			end
		end
		if arg2 == "update" then
			var681 = type_upvr.ToastNotificationActionsEnum.Update
		else
			var681 = type_upvr.ToastNotificationActionsEnum.Display
		end
		var590_upvr(var681, var589_upvr, arg1_59)
		if default_upvr_2:isSnoozedNotificationType(arg1_59.notificationType) then
			default_upvr:dismissNotification(arg1_59.id)
		else
			any_useState_result2_upvr_42(arg1_59)
			if arg1_59.state then
				local timeOnScreenMs_5 = arg1_59.state.timeOnScreenMs
			end
			if timeOnScreenMs_5 then
			end
			local var684 = timeOnScreenMs_5 / 1000
			if not var684 then
				var684 = constants_upvr.DefaultNotificationDisplayTime
			end
			any_useCallback_result1_upvw_3(arg1_59.id, var684 + 1, arg1_59)
			if arg2 == "display" then
				any_useCallback_result1_upvr_9(arg1_59)
			end
			if game_GetEngineFeature_result1_upvr and arg1_59 then
				if arg1_59.luaNotifInfo then
					GuiService_upvr:OnNotificationDisplayed(arg1_59.id)
				end
			end
			any_useState_result2_upvr_41(nil)
		end
	end
	local function _(arg1_60, arg2) -- Line 564
		--[[ Upvalues[4]:
			[1]: any_useState_result1_27_upvr (readonly)
			[2]: var679_upvr (readonly)
			[3]: LifecycleEvents_upvr (copied, readonly)
			[4]: any_useState_result2_upvr_41 (readonly)
		]]
		if any_useState_result1_27_upvr then
			task.cancel(any_useState_result1_27_upvr)
		end
		any_useState_result2_upvr_41(task.delay(arg2, function() -- Line 568
			--[[ Upvalues[3]:
				[1]: var679_upvr (copied, readonly)
				[2]: arg1_60 (readonly)
				[3]: LifecycleEvents_upvr (copied, readonly)
			]]
			var679_upvr(arg1_60, "display")
			LifecycleEvents_upvr:DispatchEvent(LifecycleEvents_upvr.ToastEvents.Display, arg1_60.notificationType, arg1_60)
		end))
	end
	local any_useCallback_result1_upvr_18 = React_upvr.useCallback(function(arg1_61) -- Line 575
		--[[ Upvalues[8]:
			[1]: GetFFlagToastNotificationsGamepadSupport_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: type_upvr (copied, readonly)
			[4]: GetFFlagEnableChatNewMessage_upvr (copied, readonly)
			[5]: default_upvr (readonly)
			[6]: marshalNotificationData_upvr (copied, readonly)
			[7]: any_useState_result2_upvr_19 (readonly)
			[8]: LifecycleEvents_upvr (copied, readonly)
		]]
		if GetFFlagToastNotificationsGamepadSupport_upvr() then
			if GuiService_upvr:IsTenFootInterface() then
				if arg1_61 then
					if arg1_61.notificationType ~= nil and arg1_61.notificationType ~= type_upvr.NotificationTypeEnum.ClientNotification then return end
				end
			end
		end
		if arg1_61 then
			if arg1_61.notificationType == type_upvr.NotificationTypeEnum.ChatNewMessage and not GetFFlagEnableChatNewMessage_upvr() and arg1_61.content and arg1_61.content.id then
				default_upvr:dismissNotification(arg1_61.content.id)
				return
			end
		end
		if arg1_61 and arg1_61.content and arg1_61.content.id ~= nil then
			local marshalNotificationData_upvr_result1_2 = marshalNotificationData_upvr(arg1_61)
			any_useState_result2_upvr_19(marshalNotificationData_upvr_result1_2)
			LifecycleEvents_upvr:DispatchEvent(LifecycleEvents_upvr.ToastEvents.AttemptDisplay, marshalNotificationData_upvr_result1_2.notificationType, marshalNotificationData_upvr_result1_2)
		else
			any_useState_result2_upvr_19(nil)
		end
	end, {})
	React_upvr.useEffect(function() -- Line 614
		--[[ Upvalues[8]:
			[1]: any_useState_result1_upvr_6 (readonly)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: var679_upvr (readonly)
			[4]: LifecycleEvents_upvr (copied, readonly)
			[5]: constants_upvr (copied, readonly)
			[6]: tbl_53_upvr (copied, readonly)
			[7]: any_useState_result1_27_upvr (readonly)
			[8]: any_useState_result2_upvr_41 (readonly)
		]]
		if any_useState_result1_upvr_6 then
			if any_useState_result1_4_upvr then
				if any_useState_result1_4_upvr.id == any_useState_result1_upvr_6.id then
					var679_upvr(any_useState_result1_upvr_6, "update")
					LifecycleEvents_upvr:DispatchEvent(LifecycleEvents_upvr.ToastEvents.Update, any_useState_result1_upvr_6.notificationType, any_useState_result1_upvr_6)
					return
				end
			end
			local DisplayNotificationDelay_2 = constants_upvr.DisplayNotificationDelay
			if any_useState_result1_upvr_6.luaNotifInfo ~= nil then
				if any_useState_result1_4_upvr then
					DisplayNotificationDelay_2 = 1 / tbl_53_upvr.frequency
				else
					DisplayNotificationDelay_2 = 0
				end
			end
			if any_useState_result1_27_upvr then
				task.cancel(any_useState_result1_27_upvr)
			end
			any_useState_result2_upvr_41(task.delay(DisplayNotificationDelay_2, function() -- Line 568
				--[[ Upvalues[3]:
					[1]: var679_upvr (copied, readonly)
					[2]: any_useState_result1_upvr_6 (readonly)
					[3]: LifecycleEvents_upvr (copied, readonly)
				]]
				var679_upvr(any_useState_result1_upvr_6, "display")
				LifecycleEvents_upvr:DispatchEvent(LifecycleEvents_upvr.ToastEvents.Display, any_useState_result1_upvr_6.notificationType, any_useState_result1_upvr_6)
			end))
		end
	end, {any_useState_result1_upvr_6})
	React_upvr.useEffect(function() -- Line 645
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr_6 (readonly)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: any_useState_result2_upvr_43 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 11. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 11. Error Block 4 end (CF ANALYSIS FAILED)
	end, {any_useState_result1_upvr_6, any_useState_result1_4_upvr})
	React_upvr.useEffect(function() -- Line 658
		--[[ Upvalues[9]:
			[1]: any_useState_result1_33_upvr (readonly)
			[2]: any_useState_result1_34_upvr (readonly)
			[3]: any_useState_result1_23_upvr (readonly)
			[4]: any_useState_result1_8_upvr (readonly)
			[5]: GetFFlagToastNotificationsGamepadSupport_upvr (copied, readonly)
			[6]: any_useState_result1_13_upvr (readonly)
			[7]: any_useState_result2_upvr_35 (readonly)
			[8]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[9]: any_useRef_result1_upvr_2 (readonly)
		]]
		local var697 = any_useState_result1_33_upvr
		if var697 then
			var697 = any_useState_result1_34_upvr
			if not var697 then
				var697 = any_useState_result1_23_upvr
				if not var697 then
					var697 = any_useState_result1_8_upvr
					if not var697 then
						var697 = GetFFlagToastNotificationsGamepadSupport_upvr()
						if var697 then
							var697 = any_useState_result1_13_upvr
						end
					end
				end
			end
		end
		any_useState_result2_upvr_35(var697)
		if game_DefineFastFlag_result1_upvr then
			any_useRef_result1_upvr_2.current = var697
		end
	end, {any_useState_result1_33_upvr, any_useState_result1_34_upvr, any_useState_result1_23_upvr, any_useState_result1_8_upvr, any_useState_result1_13_upvr})
	React_upvr.useEffect(function() -- Line 676
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: var629_upvw (read and write)
			[3]: any_useState_result1_24_upvr (readonly)
			[4]: any_useCallback_result1_upvr_19 (readonly)
			[5]: var624_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			var629_upvw(any_useState_result1_24_upvr)
		else
			var629_upvw(any_useState_result1_24_upvr, any_useCallback_result1_upvr_19, var624_upvr)
		end
	end, {any_useState_result1_24_upvr})
	local any_useAnimatedBinding_result1_upvr, any_useAnimatedBinding_result2_upvr_3 = ReactOtter_upvr.useAnimatedBinding(1, function() -- Line 685
		--[[ Upvalues[3]:
			[1]: any_useState_result1_33_upvr (readonly)
			[2]: any_useState_result2_upvr_42 (readonly)
			[3]: any_useCallback_result1_upvr_14 (readonly)
		]]
		if not any_useState_result1_33_upvr then
			any_useState_result2_upvr_42(nil)
			any_useCallback_result1_upvr_14()
		end
	end)
	React_upvr.useEffect(function() -- Line 692
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr_3 (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: any_useState_result1_33_upvr (readonly)
			[4]: tbl_53_upvr (copied, readonly)
		]]
		local var705 = ReactOtter_upvr
		if any_useState_result1_33_upvr then
			var705 = 0
		else
			var705 = 1
		end
		any_useAnimatedBinding_result2_upvr_3(var705.spring(var705, tbl_53_upvr))
	end, dependencyArray_upvr(any_useState_result1_33_upvr, any_useAnimatedBinding_result2_upvr_3))
	local App_upvr_2 = constants_upvr.CardTopMargin.App
	React_upvr.useEffect(function() -- Line 698
		--[[ Upvalues[7]:
			[1]: calculateToastPosition_upvr (copied, readonly)
			[2]: any_useState_result1_33_upvr (readonly)
			[3]: isToastToRight_upvr (copied, readonly)
			[4]: any_useState_result1_20_upvr (readonly)
			[5]: App_upvr_2 (readonly)
			[6]: any_useState_result1_41_upvr (readonly)
			[7]: any_useState_result2_upvr_33 (readonly)
		]]
		any_useState_result2_upvr_33(calculateToastPosition_upvr(any_useState_result1_33_upvr, isToastToRight_upvr(any_useState_result1_20_upvr), App_upvr_2, any_useState_result1_41_upvr))
	end, {any_useState_result1_20_upvr, any_useState_result1_33_upvr, any_useState_result1_41_upvr})
	React_upvr.useEffect(function() -- Line 711
		--[[ Upvalues[8]:
			[1]: getDeviceOrientation_upvr (copied, readonly)
			[2]: getNotificationSize_upvr (copied, readonly)
			[3]: var539_upvr (readonly)
			[4]: any_useState_result2_upvr_24 (readonly)
			[5]: any_useState_result2_upvr_40 (readonly)
			[6]: constants_upvr (copied, readonly)
			[7]: any_useState_result2_upvr_45 (readonly)
			[8]: var584_upvr (readonly)
		]]
		local ViewportSize_3 = workspace.CurrentCamera.ViewportSize
		any_useState_result2_upvr_24(getNotificationSize_upvr(var539_upvr, ViewportSize_3.X))
		local var711 = var539_upvr
		if var711 then
			if workspace.CurrentCamera.ViewportSize.X >= constants_upvr.CompactCardThreashold then
				var711 = false
			else
				var711 = true
			end
		end
		any_useState_result2_upvr_40(var711)
		any_useState_result2_upvr_45(getDeviceOrientation_upvr(ViewportSize_3))
		local any_Connect_result1_upvr_6 = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(var584_upvr)
		return function() -- Line 717
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr_6 (readonly)
			]]
			if any_Connect_result1_upvr_6 then
				any_Connect_result1_upvr_6:Disconnect()
			end
		end
	end, {})
	React_upvr.useEffect(function() -- Line 725
		--[[ Upvalues[4]:
			[1]: any_useState_result1_27_upvr (readonly)
			[2]: any_useState_result1_7_upvr (readonly)
			[3]: any_useState_result1_10_upvr (readonly)
			[4]: any_useState_result2_upvr_36 (readonly)
		]]
		return function() -- Line 726
			--[[ Upvalues[4]:
				[1]: any_useState_result1_27_upvr (copied, readonly)
				[2]: any_useState_result1_7_upvr (copied, readonly)
				[3]: any_useState_result1_10_upvr (copied, readonly)
				[4]: any_useState_result2_upvr_36 (copied, readonly)
			]]
			if any_useState_result1_27_upvr then
				task.cancel(any_useState_result1_27_upvr)
			end
			if any_useState_result1_7_upvr then
				task.cancel(any_useState_result1_7_upvr)
			end
			if any_useState_result1_10_upvr then
				any_useState_result2_upvr_36(nil)
				any_useState_result1_10_upvr:Fire(false)
				any_useState_result1_10_upvr:Destroy()
			end
		end
	end, {})
	local any_isDesktopDevice_result1_upvr_2 = toastNotificationHelper_upvr.isDesktopDevice()
	React_upvr.useEffect(function() -- Line 742
		--[[ Upvalues[4]:
			[1]: var539_upvr (readonly)
			[2]: type_upvr (copied, readonly)
			[3]: any_isDesktopDevice_result1_upvr_2 (readonly)
			[4]: default_upvr (readonly)
		]]
		task.delay(0, function() -- Line 743
			--[[ Upvalues[4]:
				[1]: var539_upvr (copied, readonly)
				[2]: type_upvr (copied, readonly)
				[3]: any_isDesktopDevice_result1_upvr_2 (copied, readonly)
				[4]: default_upvr (copied, readonly)
			]]
			if var539_upvr then
				local _ = {type_upvr.ChannelListEnum.Experience, type_upvr.ChannelListEnum.Dual}
			else
				local tbl_34 = {type_upvr.ChannelListEnum.App, type_upvr.ChannelListEnum.Dual}
			end
			if any_isDesktopDevice_result1_upvr_2 then
				table.insert(tbl_34, type_upvr.ChannelListEnum.Desktop)
			end
			default_upvr:setupNotifications(tbl_34)
		end)
	end, {})
	local function var721() -- Line 763
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: any_useCallback_result1_upvr_18 (readonly)
		]]
		local any_listenToDisplayNotification_result1_upvr = default_upvr:listenToDisplayNotification(any_useCallback_result1_upvr_18)
		return function() -- Line 765
			--[[ Upvalues[1]:
				[1]: any_listenToDisplayNotification_result1_upvr (readonly)
			]]
			any_listenToDisplayNotification_result1_upvr:Disconnect()
		end
	end
	local tbl_32 = {any_useCallback_result1_upvr_18}
	React_upvr.useEffect(var721, tbl_32)
	local IsVRAppBuild_upvr_result1_upvr = IsVRAppBuild_upvr()
	var721 = any_useState_result1_33_upvr
	local var726_upvr = var721
	if not var726_upvr then
		var726_upvr = not IsVRAppBuild_upvr_result1_upvr
	end
	tbl_32 = var588_upvr
	local var727_upvr = tbl_32
	if var727_upvr then
		var727_upvr = not TouchEnabled_upvr
		if var727_upvr then
			var727_upvr = not IsVRAppBuild_upvr_result1_upvr
			if var727_upvr then
				var727_upvr = any_useState_result1_33_upvr
			end
		end
	end
	local any_createElement_result1_upvr_2 = React_upvr.createElement("TextButton", {
		ZIndex = 2;
		LayoutOrder = 1;
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.new(0, constants_upvr.CardSizeDefault.closeButton, 0, constants_upvr.CardSizeDefault.closeButton);
		Position = UDim2.new(0, -10, 0, -10);
		BackgroundTransparency = var27_result1_2.Theme.BackgroundUIDefault.Transparency;
		BackgroundColor3 = var27_result1_2.Theme.BackgroundUIDefault.Color;
		Text = "";
		[React_upvr.Event.Activated] = var620;
		[React_upvr.Event.MouseEnter] = function() -- Line 788
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_29 (readonly)
			]]
			any_useState_result2_upvr_29(true)
		end;
		[React_upvr.Event.MouseLeave] = function() -- Line 791
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_29 (readonly)
			]]
			any_useState_result2_upvr_29(false)
		end;
	}, {
		Border = React_upvr.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			Color = var27_result1_2.Theme.UIDefault.Color;
		});
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = constants_upvr.DefaultCardCloseButtonCornerRadius;
		});
		CloseButtonIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Position = UDim2.new(0.5, 0, 0.5, 0);
			Size = UDim2.new(0, constants_upvr.CardSizeDefault.closeIcon, 0, constants_upvr.CardSizeDefault.closeIcon);
			Image = icons_navigation_close_upvr;
			ImageColor3 = var27_result1_2.Theme.SystemPrimaryDefault.Color;
		});
	})
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 814
		--[[ Upvalues[30]:
			[1]: React_upvr (copied, readonly)
			[2]: SpringAnimatedItem_upvr (copied, readonly)
			[3]: any_useState_result1_upvr_8 (readonly)
			[4]: var726_upvr (readonly)
			[5]: any_useState_result1_4_upvr (readonly)
			[6]: var590_upvr (readonly)
			[7]: type_upvr (copied, readonly)
			[8]: var589_upvr (readonly)
			[9]: any_useState_result2_upvr_39 (readonly)
			[10]: any_useState_result1_18_upvr (readonly)
			[11]: tbl_53_upvr (copied, readonly)
			[12]: IsVRAppBuild_upvr_result1_upvr (readonly)
			[13]: any_useState_result1_33_upvr (readonly)
			[14]: any_useState_result2_upvr_42 (readonly)
			[15]: any_useCallback_result1_upvr_14 (readonly)
			[16]: SwipeDetectionWrapper_upvr (copied, readonly)
			[17]: any_useCallback_result1_upvr_15 (readonly)
			[18]: any_useState_result2_upvr_29 (readonly)
			[19]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[20]: ClientNotificationWrapper_upvr (copied, readonly)
			[21]: any_useState_result2_upvr_51 (readonly)
			[22]: game_DefineFastFlag_result1_upvr_2 (copied, readonly)
			[23]: any_useAnimatedBinding_result1_upvr (readonly)
			[24]: var727_upvr (readonly)
			[25]: any_createElement_result1_upvr_2 (readonly)
			[26]: NotificationCardProvider_upvr (copied, readonly)
			[27]: any_useState_result1_26_upvr (readonly)
			[28]: any_useCallback_result1_upvr_12 (readonly)
			[29]: NotificationCard_upvr (copied, readonly)
			[30]: var588_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 61 start (CF ANALYSIS FAILED)
		local module_8 = {}
		local tbl_29 = {
			ClipsDescendants = false;
			Size = any_useState_result1_upvr_8;
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Active = true;
		}
		local var739 = var726_upvr
		if var739 then
			if any_useState_result1_4_upvr == nil then
				var739 = false
			else
				var739 = true
			end
		end
		tbl_29.Visible = var739
		var739 = React_upvr.Event.MouseEnter
		tbl_29[var739] = function() -- Line 823
			--[[ Upvalues[5]:
				[1]: var590_upvr (copied, readonly)
				[2]: type_upvr (copied, readonly)
				[3]: var589_upvr (copied, readonly)
				[4]: any_useState_result1_4_upvr (copied, readonly)
				[5]: any_useState_result2_upvr_39 (copied, readonly)
			]]
			var590_upvr(type_upvr.ToastNotificationActionsEnum.Hover, var589_upvr, any_useState_result1_4_upvr)
			any_useState_result2_upvr_39(true)
		end
		var739 = React_upvr.Event.MouseLeave
		tbl_29[var739] = function() -- Line 831
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_39 (copied, readonly)
			]]
			any_useState_result2_upvr_39(false)
		end
		module_8.regularProps = tbl_29
		module_8.animatedValues = any_useState_result1_18_upvr
		module_8.springOptions = tbl_53_upvr
		function module_8.mapValuesToProps(arg1_62) -- Line 837
			--[[ Upvalues[1]:
				[1]: IsVRAppBuild_upvr_result1_upvr (copied, readonly)
			]]
			local module_7 = {}
			local var743
			if IsVRAppBuild_upvr_result1_upvr then
				var743 = UDim2.new(0.5, 0, 0.5, 0)
			else
				var743 = UDim2.new(arg1_62.positionX, arg1_62.positionXOffset, arg1_62.positionY, arg1_62.positionYOffset)
			end
			module_7.Position = var743
			if IsVRAppBuild_upvr_result1_upvr then
				var743 = Vector2.new(0.5, 0.5)
			else
				var743 = Vector2.new(arg1_62.anchorX, arg1_62.anchorY)
			end
			module_7.AnchorPoint = var743
			return module_7
		end
		function module_8.onComplete() -- Line 852
			--[[ Upvalues[3]:
				[1]: any_useState_result1_33_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_42 (copied, readonly)
				[3]: any_useCallback_result1_upvr_14 (copied, readonly)
			]]
			if not any_useState_result1_33_upvr then
				any_useState_result2_upvr_42(nil)
				any_useCallback_result1_upvr_14()
			end
		end
		local module = {}
		var739 = React_upvr.createElement
		local tbl_12 = {}
		local var747
		if game_GetEngineFeature_result1_upvr and any_useState_result1_4_upvr and any_useState_result1_4_upvr.luaNotifInfo then
			if any_useState_result1_4_upvr.id then
				local tbl_27 = {}
				var747 = any_useState_result1_4_upvr.luaNotifInfo
				tbl_27.notificationInfo = var747
				var747 = any_useState_result1_4_upvr.id
				tbl_27.notificationId = var747
				var747 = any_useState_result2_upvr_51
				tbl_27.onPause = var747
				var747 = any_useState_result2_upvr_39
				tbl_27.onHover = var747
				if game_DefineFastFlag_result1_upvr_2 then
					var747 = any_useAnimatedBinding_result1_upvr
				else
					var747 = nil
				end
				tbl_27.transparency = var747
				tbl_27.width = any_useState_result1_upvr_8.X
				if var727_upvr then
				else
				end
				;({}).ToastCloseButton = nil
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: GOTO [247] #185
			end
		end
		local tbl_26 = {}
		if any_useState_result1_4_upvr then
		end
		tbl_26.state = any_useState_result1_4_upvr.state
		tbl_26.isCompact = any_useState_result1_26_upvr
		tbl_26.handleActions = any_useCallback_result1_upvr_12
		if any_useState_result1_4_upvr then
		end
		tbl_26.notificationReceivedTimestampMs = any_useState_result1_4_upvr.notificationReceivedTimestampMs
		if any_useState_result1_4_upvr then
		end
		tbl_26.timers = any_useState_result1_4_upvr.timers
		if any_useState_result1_4_upvr then
		end
		tbl_26.displayTimestampMs = any_useState_result1_4_upvr.displayTimestamp
		if any_useState_result1_4_upvr then
			local _ = {
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = any_useState_result1_upvr_8;
				BackgroundTransparency = 1;
				GroupTransparency = any_useAnimatedBinding_result1_upvr;
				LayoutOrder = 2;
			}
			;({}).NotificationCard = React_upvr.createElement(NotificationCard_upvr, {
				isHover = var588_upvr;
			})
		else
		end
		;({}).NotificationCardCanvasGroup = nil
		if var727_upvr then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ToastCloseButton = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTERROR: [0] 1. Error Block 61 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [247] 185. Error Block 37 start (CF ANALYSIS FAILED)
		tbl_12.NotificationProvider = React_upvr.createElement(NotificationCardProvider_upvr, tbl_26, {})
		var739 = var739(SwipeDetectionWrapper_upvr, {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			swipeEnabled = any_useState_result1_33_upvr;
			swipeCallback = function(arg1_63) -- Line 863, Named "swipeCallback"
				--[[ Upvalues[6]:
					[1]: var590_upvr (copied, readonly)
					[2]: type_upvr (copied, readonly)
					[3]: var589_upvr (copied, readonly)
					[4]: any_useState_result1_4_upvr (copied, readonly)
					[5]: any_useCallback_result1_upvr_15 (copied, readonly)
					[6]: any_useState_result2_upvr_29 (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [4] 3. Error Block 8 start (CF ANALYSIS FAILED)
				if arg1_63 == Enum.SwipeDirection.Right then
					-- KONSTANTERROR: [8] 5. Error Block 6 start (CF ANALYSIS FAILED)
					var590_upvr(type_upvr.ToastNotificationActionsEnum.Dismissed, var589_upvr, any_useState_result1_4_upvr)
					any_useCallback_result1_upvr_15()
					any_useState_result2_upvr_29(false)
					-- KONSTANTERROR: [8] 5. Error Block 6 end (CF ANALYSIS FAILED)
				end
				-- KONSTANTERROR: [4] 3. Error Block 8 end (CF ANALYSIS FAILED)
			end;
		}, tbl_12)
		module.SwipeDetector = var739
		do
			return React_upvr.createElement(SpringAnimatedItem_upvr.AnimatedFrame, module_8, module)
		end
		-- KONSTANTERROR: [247] 185. Error Block 37 end (CF ANALYSIS FAILED)
	end, {constants_upvr, var27_result1_2, any_useState_result1_4_upvr, var726_upvr, any_useState_result1_33_upvr, any_useState_result1_26_upvr, var727_upvr, var588_upvr, any_useState_result1_18_upvr, var620, any_useState_result2_upvr_39, any_useState_result2_upvr_29, any_useCallback_result1_upvr_12})
	if IsVRAppBuild_upvr_result1_upvr then
		return React_upvr.createElement(ToastVRWrapper_upvr, {
			isConfirmModalOpen = any_useState_result1_42;
			isToastOpen = any_useState_result1_33_upvr;
			isCoreScript = var539_upvr;
			ToastComponent = any_useMemo_result1;
			ToastNotificationSnoozeMenu = React_upvr.createElement(ToastNotificationSnoozeMenu_upvr);
			ConfirmationModalComponent = React_upvr.createElement(DeeplinkConfirmationModal_upvr, {
				closeCallback = var602;
				backgroundTransparency = 1;
			});
		})
	end
	local module_6 = {
		Toast = any_useMemo_result1;
		ToastNotificationSnoozeMenu = React_upvr.createElement(ToastNotificationSnoozeMenu_upvr);
	}
	local var759 = any_useState_result1_42
	if var759 then
		var759 = React_upvr.createElement
		var759 = var759(DeeplinkConfirmationModal_upvr, {
			closeCallback = var602;
		})
	end
	module_6.DeeplinkConfirmationModal = var759
	return React_upvr.createElement("ScreenGui", {
		DisplayOrder = arg1.displayOrder;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		IgnoreGuiInset = true;
	}, module_6)
end