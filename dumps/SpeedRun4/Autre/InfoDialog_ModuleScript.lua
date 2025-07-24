-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:34
-- Luau version 6, Types version 3
-- Time taken: 0.004649 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("InfoDialog")
any_extend_result1.validateProps = t.strictInterface({
	bodyText = t.string;
	dismissText = t.string;
	titleText = t.string;
	iconImage = t.union(t.string, t.table);
	onDismiss = t.callback;
	visible = t.boolean;
	buttonRef = t.optional(t.table);
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
local TextService_upvr = game:GetService("TextService")
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Assets_upvr = require(script.Parent.Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(script.Parent.ThemedTextLabel)
local Divider_upvr = require(script.Parent.Divider)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: TextService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
		[7]: Divider_upvr (readonly)
		[8]: Button_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_2) -- Line 44
		--[[ Upvalues[10]:
			[1]: props_upvr (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ThemedTextLabel_upvr (copied, readonly)
			[8]: Divider_upvr (copied, readonly)
			[9]: Button_upvr (copied, readonly)
			[10]: ButtonType_upvr (copied, readonly)
		]]
		local var18 = arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize
		local var19 = math.max(TextService_upvr:GetTextSize(props_upvr.bodyText, var18, arg1_2.Font.Body.Font, Vector2.new(264, math.huge)).Y, var18 * 2) + 48
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			ZIndex = 8;
			Visible = props_upvr.visible;
		}, {
			Overlay = Roact_upvr.createElement("TextButton", {
				AutoButtonColor = false;
				BackgroundColor3 = arg1_2.Theme.Overlay.Color;
				BackgroundTransparency = arg1_2.Theme.Overlay.Transparency;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
				Text = "";
			});
			DialogMainFrame = Roact_upvr.createElement(ImageSetLabel_upvr, {
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Image = Assets_upvr.Images.RoundedRect.Image;
				ImageColor3 = arg1_2.Theme.BackgroundUIDefault.Color;
				ImageTransparency = arg1_2.Theme.BackgroundUIDefault.Transparency;
				Position = UDim2.new(0.5, 0, 0.5, 0);
				ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
				Size = UDim2.new(0, 312, 0, var19 + 49 + 36 + 36 + 24 + 10);
				SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 10);
					PaddingBottom = UDim.new(0, 24);
					PaddingLeft = UDim.new(0, 24);
					PaddingRight = UDim.new(0, 24);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					Size = UDim2.new(0, 36, 0, 36);
					BackgroundTransparency = 1;
					Image = arg1.props.iconImage;
					LayoutOrder = 1;
				});
				Title = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					fontKey = "Header1";
					themeKey = "TextEmphasis";
					LayoutOrder = 2;
					Size = UDim2.new(1, 0, 0, 48);
					Text = props_upvr.titleText;
				});
				Divider = Roact_upvr.createElement(Divider_upvr, {
					LayoutOrder = 3;
				});
				BodyTextContainer = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 4;
					Size = UDim2.new(1, 0, 0, var19);
				}, {
					BodyText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
						Size = UDim2.new(1, 0, 1, 0);
						Text = props_upvr.bodyText;
						TextWrapped = true;
					});
				});
				ConfirmButton = Roact_upvr.createElement(Button_upvr, {
					buttonType = ButtonType_upvr.PrimarySystem;
					layoutOrder = 5;
					size = UDim2.new(1, 0, 0, 36);
					onActivated = props_upvr.onDismiss;
					text = props_upvr.dismissText;
					[Roact_upvr.Ref] = arg1.props.buttonRef;
				});
			});
		})
	end)
end
function any_extend_result1.bindActions(arg1) -- Line 139
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("InGameMenuModalDismiss", function(arg1_3, arg2, arg3) -- Line 140, Named "dismissFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.props.onDismiss()
		end
	end, false, Enum.KeyCode.Escape)
end
function any_extend_result1.unbindActions(arg1) -- Line 149
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("InGameMenuModalDismiss")
end
function any_extend_result1.didMount(arg1) -- Line 153
	if arg1.props.visible then
		arg1:bindActions()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 159
	if arg1.props.visible then
		arg1:bindActions()
	else
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 167
	arg1:unbindActions()
end
return any_extend_result1