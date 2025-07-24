-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:04
-- Luau version 6, Types version 3
-- Time taken: 0.008417 seconds

local RunService_upvr = game:GetService("RunService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConfirmationDialog")
any_extend_result1.validateProps = t.strictInterface({
	bodyText = t.string;
	cancelText = t.string;
	confirmText = t.string;
	titleText = t.string;
	bindReturnToConfirm = t.boolean;
	onCancel = t.callback;
	onConfirm = t.callback;
	blurBackground = t.boolean;
	visible = t.boolean;
	inputType = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	bodyText = "This is some body text. It will wrap when needed.";
	cancelText = "Cancel";
	confirmText = "Confirm";
	titleText = "Dialog Title";
	blurBackground = false;
}
function any_extend_result1.init(arg1) -- Line 59
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		isRooted = false;
	}
	function arg1.onAncestryChanged(arg1_2) -- Line 64
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2:IsDescendantOf(game) then
			arg1:setState({
				isRooted = true;
			})
		end
	end
	arg1.confirmButtonRef = Roact_upvr.createRef()
	arg1.buttonContainerRef = Roact_upvr.createRef()
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local TextService_upvr = game:GetService("TextService")
local CoreGui_upvr = game:GetService("CoreGui")
local Constants_upvr = require(Parent.Resources.Constants)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(script.Parent.ThemedTextLabel)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.render(arg1) -- Line 75
	--[[ Upvalues[12]:
		[1]: withStyle_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: Assets_upvr (readonly)
		[8]: ThemedTextLabel_upvr (readonly)
		[9]: Button_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: FocusHandler_upvr (readonly)
		[12]: GuiService_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_3) -- Line 78
		--[[ Upvalues[13]:
			[1]: props_upvr (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: CoreGui_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: Assets_upvr (copied, readonly)
			[8]: ThemedTextLabel_upvr (copied, readonly)
			[9]: arg1 (readonly)
			[10]: Button_upvr (copied, readonly)
			[11]: ButtonType_upvr (copied, readonly)
			[12]: FocusHandler_upvr (copied, readonly)
			[13]: GuiService_upvr (copied, readonly)
		]]
		local var50 = arg1_3.Font.Body.RelativeSize * arg1_3.Font.BaseSize
		local var51 = math.max(TextService_upvr:GetTextSize(props_upvr.bodyText, var50, arg1_3.Font.Body.Font, Vector2.new(295, math.huge)).Y, var50 * 2) + 20 + 20
		local module = {}
		local tbl_18 = {
			Overlay = Roact_upvr.createElement("TextButton", {
				AutoButtonColor = false;
				BackgroundColor3 = arg1_3.Theme.Overlay.Color;
				BackgroundTransparency = arg1_3.Theme.Overlay.Transparency;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
				Text = "";
			});
			DialogMainFrame = Roact_upvr.createElement(ImageSetLabel_upvr, {
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Image = Assets_upvr.Images.RoundedRect.Image;
				ImageColor3 = arg1_3.Theme.BackgroundUIDefault.Color;
				ImageTransparency = arg1_3.Theme.BackgroundUIDefault.Transparency;
				Position = UDim2.new(0.5, 0, 0.5, 0);
				ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
				Size = UDim2.new(0, 335, 0, var51 + 49 + 36 + 20);
				SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 20);
					PaddingLeft = UDim.new(0, 20);
					PaddingRight = UDim.new(0, 20);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Title = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					fontKey = "Header1";
					themeKey = "TextEmphasis";
					LayoutOrder = 1;
					Size = UDim2.new(1, 0, 0, 48);
					Text = props_upvr.titleText;
				});
				Divider = Roact_upvr.createElement("Frame", {
					BackgroundColor3 = arg1_3.Theme.Divider.Color;
					BackgroundTransparency = arg1_3.Theme.Divider.Transparency;
					BorderSizePixel = 0;
					LayoutOrder = 3;
					Size = UDim2.new(0.8, 0, 0, 1);
				});
				BodyTextContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 4;
					Size = UDim2.new(1, 0, 0, var51);
				}, {
					BodyText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						Size = UDim2.new(1, 0, 1, 0);
						Text = props_upvr.bodyText;
						TextWrapped = true;
					});
				});
				ButtonContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 5;
					Size = UDim2.new(1, 0, 0, 36);
					[Roact_upvr.Ref] = arg1.buttonContainerRef;
					[Roact_upvr.Event.AncestryChanged] = arg1.onAncestryChanged;
				}, {
					Layout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						Padding = UDim.new(0, 10);
						SortOrder = Enum.SortOrder.LayoutOrder;
						VerticalAlignment = Enum.VerticalAlignment.Center;
					});
					CancelButton = Roact_upvr.createElement(Button_upvr, {
						buttonType = ButtonType_upvr.Secondary;
						layoutOrder = 1;
						size = UDim2.new(0.5, -5, 1, 0);
						text = props_upvr.cancelText;
						onActivated = props_upvr.onCancel;
					});
					ConfirmButton = Roact_upvr.createElement(Button_upvr, {
						buttonType = ButtonType_upvr.PrimarySystem;
						layoutOrder = 2;
						size = UDim2.new(0.5, -5, 1, 0);
						text = props_upvr.confirmText;
						onActivated = props_upvr.onConfirm;
						[Roact_upvr.Ref] = arg1.confirmButtonRef;
					});
				});
			});
		}
		module.InGameMenuConfirmationDialog = Roact_upvr.createElement("ScreenGui", {
			DisplayOrder = Constants_upvr.DisplayOrder.ConfirmationDialog;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = props_upvr.blurBackground;
			Enabled = props_upvr.visible;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, tbl_18)
		local tbl_15 = {}
		tbl_18 = arg1.state.isRooted
		local var72 = tbl_18
		if var72 then
			var72 = arg1.props.visible
			if var72 then
				if arg1.props.inputType ~= Constants_upvr.InputType.Gamepad then
					var72 = false
				else
					var72 = true
				end
			end
		end
		tbl_15.isFocused = var72
		function tbl_15.didFocus() -- Line 198
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			GuiService_upvr:RemoveSelectionGroup("InGameMenuModalButtonsSelectionParent")
			GuiService_upvr:AddSelectionParent("InGameMenuModalButtonsSelectionParent", arg1.buttonContainerRef:getValue())
			GuiService_upvr.SelectedCoreObject = arg1.confirmButtonRef:getValue()
		end
		module.FocusHandler = Roact_upvr.createElement(FocusHandler_upvr, tbl_15)
		return Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, module)
	end)
end
function any_extend_result1.updateBlur(arg1) -- Line 209
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local blurBackground = arg1.props.blurBackground
	if blurBackground then
		blurBackground = arg1.props.visible
	end
	RunService_upvr:SetRobloxGuiFocused(blurBackground)
end
function any_extend_result1.bindActions(arg1) -- Line 215
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg1.props.bindReturnToConfirm then
		ContextActionService_upvr:BindCoreAction("InGameMenuModalConfirm", function(arg1_4, arg2, arg3) -- Line 216, Named "confirmFunc"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2 == Enum.UserInputState.Begin then
				arg1.props.onConfirm()
			end
		end, false, Enum.KeyCode.Return)
	end
	ContextActionService_upvr:BindCoreAction("InGameMenuModalCancel", function(arg1_5, arg2, arg3) -- Line 226, Named "cancelFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.props.onCancel()
		end
	end, false, Enum.KeyCode.Escape)
end
function any_extend_result1.unbindActions(arg1) -- Line 235
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("InGameMenuModalConfirm")
	ContextActionService_upvr:UnbindCoreAction("InGameMenuModalCancel")
end
function any_extend_result1.didMount(arg1) -- Line 240
	arg1:updateBlur()
	if arg1.props.visible then
		arg1:bindActions()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 248
	arg1:updateBlur()
	if arg1.props.visible then
		arg1:bindActions()
	else
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 258
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.props.blurBackground then
		RunService_upvr:SetRobloxGuiFocused(false)
	end
	arg1:unbindActions()
end
return any_extend_result1