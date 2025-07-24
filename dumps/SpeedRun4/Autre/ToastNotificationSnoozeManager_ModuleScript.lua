-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:44
-- Luau version 6, Types version 3
-- Time taken: 0.003964 seconds

local HttpService_upvr = game:GetService("HttpService")
local Parent = script.Parent
local dependencies = require(Parent.dependencies)
local NotificationSnoozedSignal_upvr = require(Parent.Signals).NotificationSnoozedSignal
local type_upvr = require(Parent.type)
local Cryo_upvr = dependencies.Cryo
local LocalStorageKey_upvr = dependencies.LocalStorage.Enums.LocalStorageKey
local module_upvr_3 = {}
module_upvr_3.__index = module_upvr_3
function module_upvr_3._isExpiredSnooze(arg1) -- Line 28
	if arg1.durationMinutes ~= -1 and arg1.durationMinutes * 60 <= (DateTime.now().UnixTimestampMillis - arg1.snoozedTimestampMs) / 1000 then
		return true
	end
	return false
end
local NotificationModalsManager_upvr = dependencies.NotificationModalsManager
local Images_upvr = dependencies.UIBlox.App.ImageSet.Images
function module_upvr_3._showNotificationsModal(arg1, arg2) -- Line 42
	--[[ Upvalues[2]:
		[1]: NotificationModalsManager_upvr (readonly)
		[2]: Images_upvr (readonly)
	]]
	local tbl = {
		iconImage = Images_upvr["icons/common/notificationOn"];
	}
	tbl.toastTitle = arg2
	NotificationModalsManager_upvr.SetUIBloxToast(tbl)
end
function module_upvr_3._updateAppStorage(arg1) -- Line 59
	--[[ Upvalues[2]:
		[1]: LocalStorageKey_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	arg1._appStorageService:SetItem(LocalStorageKey_upvr.SnoozedNotificationTypesLocalStorageKey, HttpService_upvr:JSONEncode(arg1.snoozedNotificationTypes))
	arg1._appStorageService:Flush()
end
function module_upvr_3.unmuteNotification(arg1, arg2) -- Line 76
	--[[ Upvalues[2]:
		[1]: NotificationSnoozedSignal_upvr (readonly)
		[2]: type_upvr (readonly)
	]]
	if arg1.snoozedNotificationTypes[arg2.notificationType] then
		arg1.snoozedNotificationTypes[arg2.notificationType] = nil
	end
	arg1:_updateAppStorage()
	NotificationSnoozedSignal_upvr:fire({
		actionType = type_upvr.SnoozeActionEnum.Unmute;
		notificationType = arg2.notificationType;
	})
	arg1._eventStream.sendEventDeferred(arg2.context or "", "notificationSnoozedEvent", {
		action_type = type_upvr.SnoozeActionEnum.Unmute;
		notification_type = arg2.notificationType;
	})
	if arg2.modalMessage and arg2.modalMessage ~= "" then
		arg1:_showNotificationsModal(arg2.modalMessage)
	end
end
function module_upvr_3.snoozeNotification(arg1, arg2) -- Line 114
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: type_upvr (readonly)
		[3]: NotificationSnoozedSignal_upvr (readonly)
	]]
	arg1.snoozedNotificationTypes = Cryo_upvr.Dictionary.join(arg1.snoozedNotificationTypes, {
		[arg2.notificationType] = {
			durationMinutes = arg2.durationMinutes;
			snoozedTimestampMs = DateTime.now().UnixTimestampMillis;
		};
	})
	arg1:_updateAppStorage()
	arg1._eventStream.sendEventDeferred(arg2.context or "", "notificationSnoozedEvent", {
		action_type = type_upvr.SnoozeActionEnum.Mute;
		duration_minutes = arg2.durationMinutes;
		notification_type = arg2.notificationType;
	})
	NotificationSnoozedSignal_upvr:fire({
		actionType = type_upvr.SnoozeActionEnum.Mute;
		context = arg2.context;
		durationMinutes = arg2.durationMinutes;
		notificationType = arg2.notificationType;
	})
	if arg2.modalMessage and arg2.modalMessage ~= "" then
		arg1:_showNotificationsModal(arg2.modalMessage)
	end
end
function module_upvr_3.isSnoozedNotificationType(arg1, arg2) -- Line 159
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1.snoozedNotificationTypes[arg2] then
		if arg1._isExpiredSnooze(arg1.snoozedNotificationTypes[arg2]) then
			arg1.snoozedNotificationTypes = Cryo_upvr.Dictionary.omit(arg1.snoozedNotificationTypes, arg2)
			arg1:_updateAppStorage()
			return false
		end
		return true
	end
	return false
end
local analyticsService_upvr = require(Parent.analytics.analyticsService)
function module_upvr_3.new(arg1) -- Line 177
	--[[ Upvalues[4]:
		[1]: analyticsService_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: LocalStorageKey_upvr (readonly)
		[4]: HttpService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_upvr = {}
	module_upvr._appStorageService = arg1
	module_upvr._eventStream = analyticsService_upvr.EventStream
	module_upvr.snoozedNotificationTypes = {}
	setmetatable(module_upvr, module_upvr_3)
	local pcall_result1_4, pcall_result2_4_upvr = pcall(function() -- Line 190
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: LocalStorageKey_upvr (copied, readonly)
		]]
		return module_upvr._appStorageService:GetItem(LocalStorageKey_upvr.SnoozedNotificationTypesLocalStorageKey)
	end)
	local var47
	if pcall_result1_4 and pcall_result2_4_upvr ~= "" then
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 195
			--[[ Upvalues[2]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: pcall_result2_4_upvr (readonly)
			]]
			return HttpService_upvr:JSONDecode(pcall_result2_4_upvr)
		end)
		if pcall_result1_2 then
			var47 = pcall_result2
		end
	end
	for i, v in pairs(var47) do
		if module_upvr._isExpiredSnooze(v) then
		else
			({})[i] = v
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_upvr.snoozedNotificationTypes = {}
	if true then
		module_upvr:_updateAppStorage()
	end
	return module_upvr
end
module_upvr_3.default = module_upvr_3.new(game:GetService("AppStorageService"))
return module_upvr_3