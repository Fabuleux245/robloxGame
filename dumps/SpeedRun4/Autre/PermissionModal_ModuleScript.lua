-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:23
-- Luau version 6, Types version 3
-- Time taken: 0.001978 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local UIBlox = require(Parent_2.UIBlox)
local useScreenSize_upvr = require(Parent_2.RobloxAppHooks).useScreenSize
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local useCallback_upvr = React_upvr.useCallback
local default_upvr = require(Parent_2.PermissionsProtocol).PermissionsProtocol.default
local EventNames_upvr = require(Parent.Analytics.EventNames)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 27
	--[[ Upvalues[10]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useAnalytics_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: EventNames_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: InteractiveAlert_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
	]]
	local var8_result1_upvr = useAnalytics_upvr()
	local var9_result1 = useLocalization_upvr({
		alertBody = "Feature.Captures.Description.AllowPhotoAccessInfo";
		alertTitle = "Feature.Captures.Title.AllowPhotoAccessInfo";
		accessDeniedCTA = "Feature.Captures.Action.AllowPhotoAccessDeclined";
		accessAllowedCTA = "Feature.Captures.Action.AllowPhotoAccessAccepted";
	})
	local Theme = useStyle_upvr().Theme
	return React_upvr.createElement("Frame", {
		Active = true;
		BackgroundColor3 = Theme.Overlay.Color;
		BackgroundTransparency = Theme.Overlay.Transparency;
		Size = UDim2.new(1, 0, 1, 0);
		Visible = arg1.visible;
		ZIndex = arg1.zIndex;
	}, {
		Alert = React_upvr.createElement(InteractiveAlert_upvr, {
			bodyText = var9_result1.alertBody;
			buttonStackInfo = {
				buttons = {{
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = useCallback_upvr(function() -- Line 48
							--[[ Upvalues[3]:
								[1]: var8_result1_upvr (readonly)
								[2]: EventNames_upvr (copied, readonly)
								[3]: arg1 (readonly)
							]]
							var8_result1_upvr.fireEvent(EventNames_upvr.CapturesSavePermissionModalCancelPressed)
							arg1.closeModal()
						end, {arg1.closeModal});
						text = var9_result1.accessDeniedCTA;
					};
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = useCallback_upvr(function() -- Line 42
							--[[ Upvalues[4]:
								[1]: default_upvr (copied, readonly)
								[2]: var8_result1_upvr (readonly)
								[3]: EventNames_upvr (copied, readonly)
								[4]: arg1 (readonly)
							]]
							default_upvr:requestPermissions({default_upvr.Permissions.WRITE_MEDIA_STORAGE})
							var8_result1_upvr.fireEvent(EventNames_upvr.CapturesSavePermissionModalAllowPressed)
							arg1.closeModal()
						end, {arg1.closeModal});
						text = var9_result1.accessAllowedCTA;
					};
				}};
			};
			isMiddleContentFocusable = false;
			position = UDim2.fromScale(0.5, 0.5);
			screenSize = useScreenSize_upvr();
			title = var9_result1.alertTitle;
		});
	})
end