-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:57
-- Luau version 6, Types version 3
-- Time taken: 0.004019 seconds

local CorePackages = game:GetService("CorePackages")
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PromptWithTextField")
any_extend_result1.validateProps = t.strictInterface({
	fieldText = t.string;
	onFieldTextUpdated = t.callback;
	title = t.string;
	bodyText = t.optional(t.string);
	buttonStackInfo = t.table;
	screenSize = t.Vector2;
})
function any_extend_result1.init(arg1) -- Line 50
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	arg1:setState({
		alertPosition = UDim2.fromScale(0.5, 0.5);
	})
	arg1.textBoxRef = Roact_upvr.createRef()
	function arg1.textUpdated(arg1_2) -- Line 57
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onFieldTextUpdated(arg1_2.Text)
	end
	arg1.lastAlertHeight = 100
	function arg1.calculateAlertPosition() -- Line 63
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local udim2 = UDim2.fromScale(0.5, 0.5)
		if UserInputService_upvr.OnScreenKeyboardVisible then
			local var12 = (arg1.props.screenSize.Y - UserInputService_upvr.OnScreenKeyboardSize.Y) / 2
			local var13 = var12 - arg1.lastAlertHeight / 2
			if var13 < 20 then
				var12 += 20 - var13
			end
			udim2 = UDim2.new(0.5, 0, 0, var12)
		end
		if arg1.state.alertPosition ~= udim2 then
			arg1:setState({
				alertPosition = udim2;
			})
		end
	end
	function arg1.alertSizeChanged(arg1_3) -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.lastAlertHeight = arg1_3.AbsoluteSize.Y
		arg1.calculateAlertPosition()
	end
	function arg1.alertMounted() -- Line 92
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getValue_result1 = arg1.textBoxRef:getValue()
		if any_getValue_result1 then
			any_getValue_result1:CaptureFocus()
		end
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local component_assets_circle_17_stroke_1_upvr = UIBlox.App.ImageSet.Images["component_assets/circle_17_stroke_1"]
local Rect_new_result1_upvr = Rect.new(8, 8, 8, 8)
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
function any_extend_result1.renderAlertMiddleContent(arg1) -- Line 100
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: component_assets_circle_17_stroke_1_upvr (readonly)
		[5]: Rect_new_result1_upvr (readonly)
		[6]: RoactGamepad_upvr (readonly)
		[7]: RobloxTranslator_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 101
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetLabel_upvr (copied, readonly)
			[3]: component_assets_circle_17_stroke_1_upvr (copied, readonly)
			[4]: Rect_new_result1_upvr (copied, readonly)
			[5]: RoactGamepad_upvr (copied, readonly)
			[6]: RobloxTranslator_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		local Font = arg1_4.Font
		local Theme = arg1_4.Theme
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 35);
			Position = UDim2.fromScale(0, 1);
			AnchorPoint = Vector2.new(0, 1);
		}, {
			TextboxBorder = Roact_upvr.createElement(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Image = component_assets_circle_17_stroke_1_upvr;
				ImageColor3 = Theme.UIDefault.Color;
				ImageTransparency = Theme.UIDefault.Transparency;
				LayoutOrder = 3;
				ScaleType = Enum.ScaleType.Slice;
				Size = UDim2.new(1, 0, 1, -5);
				Position = UDim2.fromScale(0, 1);
				AnchorPoint = Vector2.new(0, 1);
				SliceCenter = Rect_new_result1_upvr;
			}, {
				Textbox = Roact_upvr.createElement(RoactGamepad_upvr.Focusable.TextBox, {
					BackgroundTransparency = 1;
					ClearTextOnFocus = false;
					Font = Font.Header2.Font;
					TextSize = Font.BaseSize * Font.CaptionBody.RelativeSize;
					PlaceholderColor3 = Theme.TextDefault.Color;
					PlaceholderText = RobloxTranslator_upvr:FormatByKey("CoreScripts.AvatarEditorPrompts.OutfitNamePlaceholder");
					Position = UDim2.new(0, 6, 0, 0);
					Size = UDim2.new(1, -12, 1, 0);
					TextColor3 = Theme.TextEmphasis.Color;
					TextTruncate = Enum.TextTruncate.AtEnd;
					Text = arg1.props.fieldText;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					OverlayNativeInput = true;
					[Roact_upvr.Change.Text] = arg1.textUpdated;
					[Roact_upvr.Ref] = arg1.textBoxRef;
				});
			});
		})
	end)
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
function any_extend_result1.render(arg1) -- Line 149
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: ExternalEventConnection_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		InteractiveAlert = Roact_upvr.createElement(InteractiveAlert_upvr, {
			title = arg1.props.title;
			bodyText = arg1.props.bodyText;
			buttonStackInfo = arg1.props.buttonStackInfo;
			position = arg1.state.alertPosition;
			screenSize = arg1.props.screenSize;
			middleContent = function() -- Line 159, Named "middleContent"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1:renderAlertMiddleContent()
			end;
			isMiddleContentFocusable = true;
			onAbsoluteSizeChanged = arg1.alertSizeChanged;
			onMounted = arg1.alertMounted;
		});
		OnScreenKeyboardVisibleConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible");
			callback = arg1.calculateAlertPosition;
		});
		OnScreenKeyboardSizeConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardSize");
			callback = arg1.calculateAlertPosition;
		});
	})
end
function any_extend_result1.didMount(arg1) -- Line 179
	arg1.calculateAlertPosition()
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 183, Named "mapStateToProps"
	return {
		screenSize = arg1.screenSize;
	}
end, nil)(any_extend_result1)