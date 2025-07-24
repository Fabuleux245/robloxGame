-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:35
-- Luau version 6, Types version 3
-- Time taken: 0.012413 seconds

local RunService_upvr = game:GetService("RunService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("InformationalDialog")
any_extend_result1.validateProps = t.strictInterface({
	bodyText = t.string;
	confirmText = t.string;
	titleText = t.string;
	subBodyText = t.optional(t.string);
	iconImage = t.optional(t.union(t.table, t.string));
	iconSize = t.number;
	onContinueFunc = t.optional(t.callback);
	bindReturnToConfirm = t.boolean;
	blurBackground = t.boolean;
	visible = t.boolean;
	inputType = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	subBodyText = nil;
	blurBackground = false;
	iconImage = nil;
	iconSize = 64;
}
function any_extend_result1.init(arg1) -- Line 66
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		isRooted = false;
		show = true;
	}
	function arg1.onAncestryChanged(arg1_2) -- Line 72
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
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local CoreGui_upvr = game:GetService("CoreGui")
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(script.Parent.ThemedTextLabel)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local FocusHandler_upvr = require(script.Parent.Connection.FocusHandler)
local Constants_upvr = require(Parent.Resources.Constants)
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.render(arg1) -- Line 83
	--[[ Upvalues[14]:
		[1]: withStyle_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: CoreGui_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: Assets_upvr (readonly)
		[8]: ThemedTextLabel_upvr (readonly)
		[9]: Button_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: FocusHandler_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: GuiService_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_3) -- Line 86
		--[[ Upvalues[15]:
			[1]: props_upvr (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: CoreGui_upvr (copied, readonly)
			[7]: ImageSetLabel_upvr (copied, readonly)
			[8]: Assets_upvr (copied, readonly)
			[9]: ThemedTextLabel_upvr (copied, readonly)
			[10]: Button_upvr (copied, readonly)
			[11]: ButtonType_upvr (copied, readonly)
			[12]: RunService_upvr (copied, readonly)
			[13]: FocusHandler_upvr (copied, readonly)
			[14]: Constants_upvr (copied, readonly)
			[15]: GuiService_upvr (copied, readonly)
		]]
		local Font = arg1_3.Font.Body.Font
		local var59 = arg1_3.Font.Body.RelativeSize * arg1_3.Font.BaseSize
		local var60 = math.max(TextService_upvr:GetTextSize(props_upvr.bodyText, var59, Font, Vector2.new(295, math.huge)).Y, var59 * 2) + 20
		local var61 = math.max(TextService_upvr:GetTextSize(props_upvr.subBodyText, var59, Font, Vector2.new(295, math.huge)).Y, var59 * 2) + 20
		local var62
		if GetFFlagIGMGamepadSelectionHistory_upvr() then
			var62 = not arg1.props.visible
		end
		local module_3 = {}
		local tbl_5 = {
			DisplayOrder = 8;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = props_upvr.blurBackground;
		}
		local visible = props_upvr.visible
		if visible then
			visible = arg1.state.show
		end
		tbl_5.Enabled = visible
		tbl_5.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		local tbl_7 = {
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
				Size = UDim2.new(0, 335, 0, var60 + 49 + var61 + 36 + 70 + props_upvr.iconSize);
				SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 20);
					PaddingBottom = UDim.new(0, 20);
					PaddingLeft = UDim.new(0, 20);
					PaddingRight = UDim.new(0, 20);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					Position = UDim2.fromScale(0.5, 0.5);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Image = props_upvr.iconImage;
					Size = UDim2.new(0, props_upvr.iconSize, 0, props_upvr.iconSize);
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
				});
				Title = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					fontKey = "Header1";
					themeKey = "TextEmphasis";
					LayoutOrder = 2;
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
				SpaceContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 4;
					Size = UDim2.new(1, 0, 0, 10);
				});
				BodyTextContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 5;
					Size = UDim2.new(1, 0, 0, var60);
				}, {
					BodyText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						Size = UDim2.new(1, 0, 1, 0);
						Text = props_upvr.bodyText;
						TextWrapped = true;
					});
				});
				SubBodyTextContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 6;
					Size = UDim2.new(1, 0, 0, var61);
				}, {
					BodyText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						Size = UDim2.new(1, 0, 1, 0);
						Text = props_upvr.subBodyText;
						TextWrapped = true;
					});
				});
				SpaceContainer2 = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 7;
					Size = UDim2.new(1, 0, 0, 10);
				});
				ButtonContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 8;
					Size = UDim2.new(1, 0, 0, 36);
					[Roact_upvr.Ref] = arg1.buttonContainerRef;
					[Roact_upvr.Event.AncestryChanged] = arg1.onAncestryChanged;
				}, {
					Layout = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						Padding = UDim.new(0, 20);
						SortOrder = Enum.SortOrder.LayoutOrder;
						VerticalAlignment = Enum.VerticalAlignment.Center;
					});
					ConfirmButton = Roact_upvr.createElement(Button_upvr, {
						buttonType = ButtonType_upvr.PrimarySystem;
						layoutOrder = 1;
						size = UDim2.new(1, -5, 1, 0);
						text = props_upvr.confirmText;
						onActivated = function() -- Line 237, Named "onActivated"
							--[[ Upvalues[2]:
								[1]: arg1 (copied, readonly)
								[2]: RunService_upvr (copied, readonly)
							]]
							arg1:setState({
								show = false;
							})
							if arg1.props.onContinueFunc then
								arg1.props.onContinueFunc()
							end
							RunService_upvr:SetRobloxGuiFocused(false)
						end;
						[Roact_upvr.Ref] = arg1.confirmButtonRef;
					});
				});
			});
		}
		module_3.InGameMenuInformationalDialog = Roact_upvr.createElement("ScreenGui", tbl_5, tbl_7)
		local tbl_6 = {}
		tbl_7 = arg1.state.isRooted
		local var90 = tbl_7
		if var90 then
			var90 = arg1.props.visible
			if var90 then
				if arg1.props.inputType ~= Constants_upvr.InputType.Gamepad then
					var90 = false
				else
					var90 = true
				end
			end
		end
		tbl_6.isFocused = var90
		tbl_6.shouldForgetPreviousSelection = var62
		function tbl_6.didFocus() -- Line 256
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			GuiService_upvr:RemoveSelectionGroup("InGameMenuModalButtonsSelectionParent")
			GuiService_upvr:AddSelectionParent("InGameMenuModalButtonsSelectionParent", arg1.buttonContainerRef:getValue())
			GuiService_upvr.SelectedCoreObject = arg1.confirmButtonRef:getValue()
		end
		module_3.FocusHandler = Roact_upvr.createElement(FocusHandler_upvr, tbl_6)
		return Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, module_3)
	end)
end
function any_extend_result1.updateBlur(arg1) -- Line 267
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local blurBackground = arg1.props.blurBackground
	if blurBackground then
		blurBackground = arg1.props.visible
	end
	RunService_upvr:SetRobloxGuiFocused(blurBackground)
end
function any_extend_result1.bindActions(arg1) -- Line 272
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	if arg1.props.bindReturnToConfirm then
		ContextActionService_upvr:BindCoreAction("InGameMenuModalConfirm", function(arg1_4, arg2, arg3) -- Line 273, Named "confirmFunc"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg2 == Enum.UserInputState.Begin then
				arg1.props.onConfirm()
			end
		end, false, Enum.KeyCode.Return)
	end
end
function any_extend_result1.unbindActions(arg1) -- Line 284
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("InGameMenuModalConfirm")
end
function any_extend_result1.didMount(arg1) -- Line 288
	arg1:updateBlur()
	if arg1.props.visible then
		arg1:bindActions()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 296
	arg1:updateBlur()
	if arg1.props.visible then
		arg1:bindActions()
	else
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 306
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1.props.blurBackground then
		RunService_upvr:SetRobloxGuiFocused(false)
	end
	arg1:unbindActions()
end
return any_extend_result1