-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:32
-- Luau version 6, Types version 3
-- Time taken: 0.005474 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local FitFrame = require(CorePackages.Packages.FitFrame)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DisconnectedDialog")
any_extend_result1.validateProps = t.strictInterface({
	visible = t.boolean;
	onConfirm = t.callback;
	screenSize = t.Vector2;
	guiService = t.optional(t.union(t.instanceOf("GuiService"), t.table));
})
any_extend_result1.defaultProps = {
	guiService = game:GetService("GuiService");
}
function any_extend_result1.init(arg1) -- Line 50
	arg1.guiService = arg1.props.guiService
	function arg1.onConfirmBindingAction(arg1_2, arg2, arg3) -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end
		arg1.props.onConfirm()
		return Enum.ContextActionResult.Sink
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local FitFrameVertical_upvr = FitFrame.FitFrameVertical
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_status_alert_upvr = UIBlox.App.ImageSet.Images["icons/status/alert"]
local FitTextLabel_upvr = FitFrame.FitTextLabel
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local InGameMenuConstants_upvr = require(CoreGui_upvr.RobloxGui.Modules.InGameMenuConstants)
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: FitFrameVertical_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: icons_status_alert_upvr (readonly)
		[8]: FitTextLabel_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: CoreGui_upvr (readonly)
		[11]: InGameMenuConstants_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 65
		--[[ Upvalues[11]:
			[1]: RobloxTranslator_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: InteractiveAlert_upvr (copied, readonly)
			[4]: FitFrameVertical_upvr (copied, readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: icons_status_alert_upvr (copied, readonly)
			[7]: FitTextLabel_upvr (copied, readonly)
			[8]: ButtonType_upvr (copied, readonly)
			[9]: arg1 (readonly)
			[10]: CoreGui_upvr (copied, readonly)
			[11]: InGameMenuConstants_upvr (copied, readonly)
		]]
		local Theme_upvr = arg1_3.Theme
		local tbl = {
			title = RobloxTranslator_upvr:FormatByKey("InGame.ConnectionError.Heading.VRDisconnected");
		}
		local Font_upvr = arg1_3.Font
		local any_FormatByKey_result1_upvr = RobloxTranslator_upvr:FormatByKey("InGame.ConnectionError.Message.RestartApp")
		function tbl.middleContent() -- Line 75
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FitFrameVertical_upvr (copied, readonly)
				[3]: ImageSetLabel_upvr (copied, readonly)
				[4]: icons_status_alert_upvr (copied, readonly)
				[5]: FitTextLabel_upvr (copied, readonly)
				[6]: Font_upvr (readonly)
				[7]: any_FormatByKey_result1_upvr (readonly)
				[8]: Theme_upvr (readonly)
			]]
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 24);
			}, {
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					Position = UDim2.new(0, 5, 0, 5);
					Size = UDim2.fromOffset(40, 40);
					Image = icons_status_alert_upvr;
					ImageTransparency = 0;
				});
				BodyText = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					width = FitTextLabel_upvr.Width.FitToText;
					Font = Font_upvr.Body.Font;
					Text = any_FormatByKey_result1_upvr;
					TextSize = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize;
					TextColor3 = Theme_upvr.TextDefault.Color;
				});
			})
		end
		tbl.buttonStackInfo = {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.props.onConfirm;
					text = RobloxTranslator_upvr:FormatByKey("InGame.ConnectionError.Action.Restart");
				};
			}};
		}
		tbl.screenSize = arg1.props.screenSize
		return Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			HeadsetDisconnectedDialog = Roact_upvr.createElement("ScreenGui", {
				DisplayOrder = InGameMenuConstants_upvr.DisplayOrder.HeadsetDisconnectedDialog;
				IgnoreGuiInset = true;
				OnTopOfCoreBlur = true;
				Enabled = arg1.props.visible;
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			}, {
				Overlay = Roact_upvr.createElement("Frame", {
					Active = true;
					BackgroundColor3 = Theme_upvr.Overlay.Color;
					BackgroundTransparency = Theme_upvr.Overlay.Transparency;
					BorderSizePixel = 0;
					Size = UDim2.fromScale(1, 1);
				}, {
					Alert = Roact_upvr.createElement(InteractiveAlert_upvr, tbl);
				});
			});
		})
	end)
end
function any_extend_result1.bindActions(arg1) -- Line 144
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("TopBarGamepadDisableMenuShortcut", function() -- Line 148
	end, false, Enum.KeyCode.ButtonStart, Enum.KeyCode.Escape)
	ContextActionService_upvr:BindCoreAction("TopBarDialogConfirm", arg1.onConfirmBindingAction, false, Enum.KeyCode.Return, Enum.KeyCode.ButtonA)
end
function any_extend_result1.unbindActions(arg1) -- Line 163
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("TopBarGamepadDisableMenuShortcut")
	ContextActionService_upvr:UnbindCoreAction("TopBarDialogConfirm")
end
function any_extend_result1.didMount(arg1) -- Line 168
	if arg1.props.visible then
		arg1:bindActions()
		arg1.guiService:SetMenuIsOpen(true, "HeadsetDisconnectedDialog")
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 175
	if arg1.props.visible ~= arg2.visible then
		if arg1.props.visible then
			arg1:bindActions()
			arg1.guiService:SetMenuIsOpen(true, "HeadsetDisconnectedDialog")
			return
		end
		arg1:unbindActions()
		arg1.guiService:SetMenuIsOpen(false, "HeadsetDisconnectedDialog")
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 187
	arg1:unbindActions()
	arg1.guiService:SetMenuIsOpen(false, "HeadsetDisconnectedDialog")
end
return any_extend_result1