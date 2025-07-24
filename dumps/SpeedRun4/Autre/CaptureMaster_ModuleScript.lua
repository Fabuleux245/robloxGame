-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:02
-- Luau version 6, Types version 3
-- Time taken: 0.001754 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local CaptureNotification_upvr = require(RobloxGui.Modules.CaptureNotification)
local shouldSaveScreenshotToAlbum_upvr = require(RobloxGui.Modules.shouldSaveScreenshotToAlbum)
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new() -- Line 21
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: shouldSaveScreenshotToAlbum_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CaptureNotification_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, tbl_upvr)
	module.init = false
	module.captureEvent = Instance.new("BindableEvent")
	module.permissionEvent = Instance.new("BindableEvent")
	if shouldSaveScreenshotToAlbum_upvr() then
		module.captureNotification = Roact_upvr.createElement(CaptureNotification_upvr, {
			permissionEvent = module.permissionEvent;
		})
	end
	return module
end
function tbl_upvr.Start(arg1) -- Line 36
	--[[ Upvalues[3]:
		[1]: shouldSaveScreenshotToAlbum_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
	]]
	if arg1.init then
	else
		arg1.init = true
		if shouldSaveScreenshotToAlbum_upvr() then
			arg1.captureNotificationInstance = Roact_upvr.mount(arg1.captureNotification, CoreGui_upvr, "RobloxCaptureNotificationGui")
		end
	end
end
local any_new_result1_upvr = tbl_upvr.new()
function tbl_upvr.DismissNotification(arg1) -- Line 50
	--[[ Upvalues[4]:
		[1]: any_new_result1_upvr (readonly)
		[2]: shouldSaveScreenshotToAlbum_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CaptureNotification_upvr (readonly)
	]]
	if not arg1.init then
		any_new_result1_upvr:Start()
	elseif shouldSaveScreenshotToAlbum_upvr() then
		Roact_upvr.update(arg1.captureNotificationInstance, Roact_upvr.createElement(CaptureNotification_upvr, {
			permissionEvent = arg1.permissionEvent;
			forceDismissToast = {
				onDismissed = function() -- Line 59, Named "onDismissed"
					--[[ Upvalues[3]:
						[1]: Roact_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: CaptureNotification_upvr (copied, readonly)
					]]
					Roact_upvr.update(arg1.captureNotificationInstance, Roact_upvr.createElement(CaptureNotification_upvr, {
						permissionEvent = arg1.permissionEvent;
						forceDismissToast = nil;
					}))
				end;
			};
		}))
	end
end
function tbl_upvr.ShowPermissionToast(arg1) -- Line 74
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	if not arg1.init then
		any_new_result1_upvr:Start()
	end
	arg1.permissionEvent:Fire()
end
function tbl_upvr.Capture(arg1) -- Line 81
	arg1:DismissNotification()
	arg1.captureEvent:Fire()
end
return any_new_result1_upvr