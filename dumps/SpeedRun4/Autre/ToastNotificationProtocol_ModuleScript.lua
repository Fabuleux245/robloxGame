-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:41
-- Luau version 6, Types version 3
-- Time taken: 0.002482 seconds

local MessageBusService_upvr = game:GetService("MessageBusService")
local Parent = script.Parent
local ToastNotificationProtocolConstants_upvr = require(Parent.ToastNotificationProtocolConstants)
local module_upvr = {}
module_upvr.__index = module_upvr
game:DefineFastFlag("LuaAppInitializeToastNotificationEventParams2", false)
function module_upvr.new() -- Line 18
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({}, module_upvr)
end
local getPlatformTarget_upvr = require(Parent.Parent.Analytics).getPlatformTarget
local Players_upvr = game:GetService("Players")
function module_upvr.setupNotifications(arg1, arg2) -- Line 23
	--[[ Upvalues[4]:
		[1]: getPlatformTarget_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: MessageBusService_upvr (readonly)
		[4]: ToastNotificationProtocolConstants_upvr (readonly)
	]]
	if 0 < #arg2 then
		local var7
		local var8
		if game:GetFastFlag("LuaAppInitializeToastNotificationEventParams2") then
			var8 = getPlatformTarget_upvr()
			if Players_upvr.LocalPlayer then
				var7 = tostring(Players_upvr.LocalPlayer.UserId)
			else
				var7 = ""
			end
		end
		local tbl = {}
		tbl.channels = arg2
		tbl.userId = var7
		tbl.platform = var8
		MessageBusService_upvr:Publish(ToastNotificationProtocolConstants_upvr.MESSAGE_INIT_TOAST_NOTIF, tbl)
	end
end
function module_upvr.updateNotification(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[2]:
		[1]: MessageBusService_upvr (readonly)
		[2]: ToastNotificationProtocolConstants_upvr (readonly)
	]]
	if arg2 and arg3 then
		local tbl_3 = {}
		tbl_3.notificationId = arg2
		tbl_3.stateName = arg3
		MessageBusService_upvr:Publish(ToastNotificationProtocolConstants_upvr.MESSAGE_UPDATE_TOAST_NOTIF, tbl_3)
	end
end
function module_upvr.voltronBroadcast(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[1]:
		[1]: MessageBusService_upvr (readonly)
	]]
	if arg2 then
		MessageBusService_upvr:Publish(arg2, arg3)
	end
end
function module_upvr.dismissNotification(arg1, arg2) -- Line 54
	--[[ Upvalues[2]:
		[1]: MessageBusService_upvr (readonly)
		[2]: ToastNotificationProtocolConstants_upvr (readonly)
	]]
	if arg2 then
		local tbl_2 = {}
		tbl_2.notificationId = arg2
		MessageBusService_upvr:Publish(ToastNotificationProtocolConstants_upvr.MESSAGE_DISMISS_TOAST_NOTIF, tbl_2)
	end
end
function module_upvr.listenToDisplayNotification(arg1, arg2) -- Line 62
	--[[ Upvalues[2]:
		[1]: MessageBusService_upvr (readonly)
		[2]: ToastNotificationProtocolConstants_upvr (readonly)
	]]
	return MessageBusService_upvr:Subscribe(ToastNotificationProtocolConstants_upvr.MESSAGE_DISPLAY_TOAST_NOTIF, arg2, false, true)
end
function module_upvr.listenToDismissNotification(arg1, arg2) -- Line 66
	--[[ Upvalues[2]:
		[1]: MessageBusService_upvr (readonly)
		[2]: ToastNotificationProtocolConstants_upvr (readonly)
	]]
	return MessageBusService_upvr:Subscribe(ToastNotificationProtocolConstants_upvr.MESSAGE_DISMISS_TOAST_NOTIF, arg2, false, true)
end
module_upvr.default = module_upvr.new()
return module_upvr