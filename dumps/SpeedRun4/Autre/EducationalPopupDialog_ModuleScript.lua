-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:18
-- Luau version 6, Types version 3
-- Time taken: 0.004748 seconds

local RunService_upvr = game:GetService("RunService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("EducationalPopupDialog")
any_extend_result1.validateProps = t.strictInterface({
	bodyContents = t.array(t.strictInterface({
		icon = t.optional(t.union(t.string, t.table));
		text = t.string;
		layoutOrder = t.optional(t.integer);
		isSystemMenuIcon = t.optional(t.boolean);
	}));
	cancelText = t.string;
	confirmText = t.string;
	titleText = t.optional(t.string);
	titleBackgroundImageProps = t.strictInterface({
		image = t.string;
		imageHeight = t.number;
		text = t.optional(t.string);
	});
	screenSize = t.Vector2;
	onDismiss = t.callback;
	onCancel = t.callback;
	onConfirm = t.callback;
	blurBackground = t.boolean;
	visible = t.boolean;
})
any_extend_result1.defaultProps = {
	blurBackground = false;
}
local withStyle_upvr = UIBlox.Core.Style.withStyle
local CoreGui_upvr = game:GetService("CoreGui")
local EducationalModal_upvr = UIBlox.App.Dialog.Modal.EducationalModal
function any_extend_result1.render(arg1) -- Line 49
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: CoreGui_upvr (readonly)
		[4]: EducationalModal_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 50
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: CoreGui_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: EducationalModal_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			InGameMenuEducationalPopupDialog = Roact_upvr.createElement("ScreenGui", {
				IgnoreGuiInset = true;
				OnTopOfCoreBlur = arg1.props.blurBackground;
				Enabled = arg1.props.visible;
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			}, {
				Overlay = Roact_upvr.createElement("TextButton", {
					AutoButtonColor = false;
					BackgroundColor3 = arg1_2.Theme.Overlay.Color;
					BackgroundTransparency = arg1_2.Theme.Overlay.Transparency;
					BorderSizePixel = 0;
					Size = UDim2.fromScale(1, 1);
					Text = "";
				});
				Popup = Roact_upvr.createElement(EducationalModal_upvr, {
					bodyContents = arg1.props.bodyContents;
					cancelText = arg1.props.cancelText;
					confirmText = arg1.props.confirmText;
					titleText = arg1.props.titleText;
					titleBackgroundImageProps = arg1.props.titleBackgroundImageProps;
					screenSize = arg1.props.screenSize;
					onDismiss = arg1.props.onDismiss;
					onCancel = arg1.props.onCancel;
					onConfirm = arg1.props.onConfirm;
				});
			});
		})
	end)
end
function any_extend_result1.bindActions(arg1) -- Line 85
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("EducationalPopupConfirm", function(arg1_3, arg2, arg3) -- Line 86, Named "dismissFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.props.onDismiss()
		end
	end, false, Enum.KeyCode.Escape)
end
function any_extend_result1.unbindActions(arg1) -- Line 95
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("EducationalPopupConfirm")
end
local FFlagFixExitDialogBlockVRView_upvr = require(script.Parent.Parent.Flags.FFlagFixExitDialogBlockVRView)
function any_extend_result1.updateBlur(arg1) -- Line 99
	--[[ Upvalues[2]:
		[1]: FFlagFixExitDialogBlockVRView_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local var23
	if var23 then
		var23 = arg1.props.visible
	end
	if FFlagFixExitDialogBlockVRView_upvr then
		local var24 = var23
		if var24 then
			var24 = not game:GetService("VRService").VREnabled
		end
		var23 = var24
	end
	RunService_upvr:SetRobloxGuiFocused(var23)
end
function any_extend_result1.didMount(arg1) -- Line 108
	arg1:updateBlur()
	if arg1.props.visible then
		arg1:bindActions()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 116
	arg1:updateBlur()
	if arg1.props.visible then
		arg1:bindActions()
	else
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 126
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.props.blurBackground then
		RunService_upvr:SetRobloxGuiFocused(false)
	end
	arg1:unbindActions()
end
return any_extend_result1