-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:03
-- Luau version 6, Types version 3
-- Time taken: 0.008571 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local tbl_3_upvr = {
	None = "None";
	Success = "Success";
	Fail = "Fail";
	Permission = "Permission";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("CaptureNotification")
any_extend_result1.validateProps = t.strictInterface({
	forceDismissToast = t.optional(t.table);
	permissionEvent = t.optional(t.instanceOf("BindableEvent"));
})
local Images_upvr = UIBlox.App.ImageSet.Images
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.init(arg1) -- Line 39
	--[[ Upvalues[5]:
		[1]: tbl_3_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
	]]
	arg1.state = {
		screenSize = Vector2.new(0, 0);
		dismissedPermission = false;
		notificationType = tbl_3_upvr.None;
		toastContent = nil;
	}
	function arg1.onScreenSizeChanged(arg1_2) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.screenSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				screenSize = arg1_2.AbsoluteSize;
			})
		end
	end
	function arg1.getToastContent(arg1_3) -- Line 55
		--[[ Upvalues[5]:
			[1]: tbl_3_upvr (copied, readonly)
			[2]: Images_upvr (copied, readonly)
			[3]: RobloxTranslator_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Roact_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var16
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var16 = tbl_3_upvr.Fail
			return arg1_3 == var16
		end
		if arg1_3 == var16 or INLINED() then
			if arg1_3 ~= tbl_3_upvr.Success then
				var16 = false
				local var17 = var16
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
				var17 = true
			end
			local module = {}
			if not var17 or not Images_upvr["icons/status/success"] then
			end
			module.iconImage = Images_upvr["icons/status/alert"]
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				tbl.Transparency = 0
				tbl.Color = Color3.fromRGB(247, 75, 82)
				local tbl = {}
				return tbl
			end
			if var17 or not INLINED_2() then
			end
			module.iconColorStyle = nil
			if not var17 or not RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Success.ToastText") then
			end
			module.toastTitle = RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Fail.ToastText")
			function module.onDismissed() -- Line 67
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: tbl_3_upvr (copied, readonly)
					[3]: Roact_upvr (copied, readonly)
				]]
				arg1:setState({
					notificationType = tbl_3_upvr.None;
					toastContent = Roact_upvr.None;
				})
				if arg1.props.forceDismissToast and arg1.props.forceDismissToast.onDismissed then
					arg1.props.forceDismissToast.onDismissed()
				end
			end
			return module
		end
		var17 = Roact_upvr.None
		return var17
	end
	function arg1.dismissPermissionAlert() -- Line 82
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_3_upvr (copied, readonly)
		]]
		arg1:setState({
			dismissedPermission = true;
			notificationType = tbl_3_upvr.Fail;
			toastContent = arg1.getToastContent(tbl_3_upvr.Fail);
		})
	end
	function arg1.screenshotSavedToAlbumCallback(arg1_4, arg2, arg3) -- Line 90
		--[[ Upvalues[2]:
			[1]: tbl_3_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var24
		if arg2 then
			var24 = tbl_3_upvr.Success
		elseif not arg1.state.dismissedPermission and arg3:find("Domain=ALAssetsLibraryErrorDomain") and arg3:find("Data unavailable") then
			var24 = tbl_3_upvr.Permission
		else
			var24 = tbl_3_upvr.Fail
		end
		arg1:setState({
			notificationType = var24;
			toastContent = arg1.getToastContent(var24);
		})
	end
	function arg1.permissionEventCallback() -- Line 115
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_3_upvr (copied, readonly)
		]]
		arg1:setState({
			notificationType = tbl_3_upvr.Permission;
			toastContent = arg1.getToastContent(tbl_3_upvr.Permission);
		})
	end
	function arg1.getPermissionAlertBodyText() -- Line 122
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: RobloxTranslator_upvr (copied, readonly)
		]]
		if UserInputService_upvr:GetPlatform() == Enum.Platform.IOS then
			return RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Permission.AlertTextIOS")
		end
		if UserInputService_upvr:GetPlatform() == Enum.Platform.Android then
			return RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Permission.AlertTextAndroid")
		end
		return RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Permission.AlertText")
	end
end
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.renderWithStyle(arg1, arg2) -- Line 133
	--[[ Upvalues[1]:
		[1]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	return renderWithCoreScriptsStyleProvider_upvr(arg2)
end
local Toast_upvr = UIBlox.App.Dialog.Toast
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local shouldSaveScreenshotToAlbum_upvr = require(RobloxGui.Modules.shouldSaveScreenshotToAlbum)
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 137
	--[[ Upvalues[8]:
		[1]: tbl_3_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Toast_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
		[7]: shouldSaveScreenshotToAlbum_upvr (readonly)
		[8]: ExternalEventConnection_upvr (readonly)
	]]
	local notificationType = arg1.state.notificationType
	local var36 = false
	local var37
	if notificationType == tbl_3_upvr.Success then
		var36 = arg1.state.toastContent
	end
	local var38 = false
	var37 = tbl_3_upvr.Fail
	if notificationType == var37 then
		var37 = arg1.state
		var38 = var37.toastContent
	end
	if notificationType ~= tbl_3_upvr.Permission then
		var37 = false
	else
		var37 = true
	end
	local module_2 = {}
	local tbl_2 = {}
	local tbl_4 = {}
	local var44 = var36
	if var44 then
		var44 = Roact_upvr.createElement
		var44 = var44(Toast_upvr, {
			duration = 3;
			show = not arg1.props.forceDismissToast;
			toastContent = arg1.state.toastContent;
		})
	end
	tbl_4.SuccessToast = var44
	var44 = var38
	local var46 = var44
	if var46 then
		var46 = Roact_upvr.createElement
		var46 = var46(Toast_upvr, {
			duration = 3;
			show = not arg1.props.forceDismissToast;
			toastContent = arg1.state.toastContent;
		})
	end
	tbl_4.FailToast = var46
	var46 = var37
	local var48 = var46
	if var48 then
		var48 = Roact_upvr.createElement
		var48 = var48("Frame", {
			Active = true;
			BackgroundColor3 = Color3.new(0, 0, 0);
			BackgroundTransparency = 0.5;
			Size = UDim2.new(1, 0, 1, 0);
		}, {
			PermissionAlert = Roact_upvr.createElement(InteractiveAlert_upvr, {
				title = RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Permission.AlertTitle");
				bodyText = arg1.getPermissionAlertBodyText();
				buttonStackInfo = {
					buttons = {{
						buttonType = ButtonType_upvr.PrimarySystem;
						props = {
							onActivated = arg1.dismissPermissionAlert;
							text = RobloxTranslator_upvr:FormatByKey("NotificationScript2.Capture.Permission.AlertButtonText");
						};
					}};
				};
				position = UDim2.fromScale(0.5, 0.5);
				screenSize = arg1.state.screenSize;
			});
		})
	end
	tbl_4.PermissionAlertOverlay = var48
	local shouldSaveScreenshotToAlbum_upvr_result1 = shouldSaveScreenshotToAlbum_upvr()
	if shouldSaveScreenshotToAlbum_upvr_result1 then
		shouldSaveScreenshotToAlbum_upvr_result1 = Roact_upvr.createElement
		shouldSaveScreenshotToAlbum_upvr_result1 = shouldSaveScreenshotToAlbum_upvr_result1(ExternalEventConnection_upvr, {
			event = game.ScreenshotSavedToAlbum;
			callback = arg1.screenshotSavedToAlbumCallback;
		})
	end
	tbl_4.ScreenshotSavedToAlbumConnection = shouldSaveScreenshotToAlbum_upvr_result1
	shouldSaveScreenshotToAlbum_upvr_result1 = arg1.props.permissionEvent
	local var58 = shouldSaveScreenshotToAlbum_upvr_result1
	if var58 then
		var58 = Roact_upvr.createElement
		var58 = var58(ExternalEventConnection_upvr, {
			event = arg1.props.permissionEvent.Event;
			callback = arg1.permissionEventCallback;
		})
	end
	tbl_4.PermissionEventConnection = var58
	tbl_2.Content = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		[Roact_upvr.Change.AbsoluteSize] = arg1.onScreenSizeChanged;
	}, tbl_4)
	module_2.RobloxCaptureNotificationGui = Roact_upvr.createElement("ScreenGui", {
		AutoLocalize = false;
		DisplayOrder = 9;
		IgnoreGuiInset = true;
		OnTopOfCoreBlur = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, tbl_2)
	return arg1:renderWithStyle(module_2)
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 207
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local forceDismissToast = arg1.props.forceDismissToast
	local var61
	if var61 ~= forceDismissToast then
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var61 = false
			return arg1.state.notificationType == tbl_3_upvr.Fail
		end
		if arg1.state.notificationType == tbl_3_upvr.Success or INLINED_3() then
			var61 = arg1.state.toastContent
		end
		if not var61 and forceDismissToast and forceDismissToast.onDismissed then
			forceDismissToast.onDismissed()
		end
	end
end
return any_extend_result1