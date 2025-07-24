-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:30
-- Luau version 6, Types version 3
-- Time taken: 0.006915 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent_3 = Parent_2.Parent
local Core = Parent_3.Core
local Parent = Parent_3.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Core.Text.GenericTextLabel.GenericTextLabel)
local CloseButtonIcon_upvr = require(script.Parent.Enum.CloseButtonIcon)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ModalTitle")
any_extend_result1.validateProps = t.strictInterface({
	title = t.string;
	position = t.optional(t.UDim2);
	anchor = t.optional(t.Vector2);
	closeButtonIcon = t.optional(CloseButtonIcon_upvr.isEnumValue);
	onCloseClicked = t.optional(t.callback);
	titleBackgroundImageProps = t.optional(t.strictInterface({
		image = t.string;
		imageHeight = t.number;
		text = t.optional(t.string);
	}));
	onTitleSizeChanged = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	title = "";
	position = UDim2.new(0.5, 0, 0, 0);
	anchor = Vector2.new(0.5, 0);
	closeButtonIcon = CloseButtonIcon_upvr.Close;
}
function any_extend_result1.GetHeight(arg1) -- Line 53
	return 48
end
local function _(arg1) -- Line 57, Named "getCloseButtonIcon"
	--[[ Upvalues[1]:
		[1]: CloseButtonIcon_upvr (readonly)
	]]
	if arg1 == CloseButtonIcon_upvr.Close then
		return "icons/navigation/close"
	end
	if arg1 == CloseButtonIcon_upvr.Back then
		return "icons/actions/cycleLeft"
	end
	return nil
end
local Cryo_upvr = require(Parent.Cryo)
local function renderBackgroundImage_upvr(arg1, arg2, arg3) -- Line 67, Named "renderBackgroundImage"
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GenericTextLabel_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local text = arg1.text
	local var16 = text
	if var16 then
		if 0 >= #text then
			var16 = false
		else
			var16 = true
		end
	end
	local var17 = text
	if var17 then
		if 0 >= #text then
		else
		end
	end
	if var16 then
		local var18 = math.clamp(arg1.imageHeight, 48, 261) + 8
		arg3 = Cryo_upvr.Dictionary.join(arg3, {
			UICorner = Roact_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 8);
			});
		})
		local var21
	end
	if text and 0 < #text then
		var21 = Cryo_upvr.Dictionary.join(var21, {
			BackgroundText = Roact_upvr.createElement(GenericTextLabel_upvr, {
				Size = UDim2.new(1, 0, 1, -56);
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.new(0.5, 0, 0, 48);
				fontStyle = arg2.Font.Body;
				colorStyle = arg2.Theme.TextEmphasis;
				RichText = true;
				Text = text;
				TextTruncate = Enum.TextTruncate.AtEnd;
				ZIndex = 2;
			});
		})
		local var24
	end
	if true then
		local tbl_5 = {}
		local tbl_2 = {}
		if var16 then
			var24 = -8
		else
			var24 = 0
		end
		tbl_2.Size = UDim2.new(1, 0, 1, var24)
		var24 = 0
		tbl_2.Position = UDim2.new(0, 0, 0, var24)
		tbl_2.BackgroundTransparency = 0
		tbl_2.ZIndex = 1
		local tbl_4 = {}
		local tbl_8 = {}
		var24 = ColorSequence.new(Color3.new(0, 0, 0))
		tbl_8.Color = var24
		var24 = NumberSequence.new
		var24 = var24({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.6, 0.25), NumberSequenceKeypoint.new(1, 1)})
		tbl_8.Transparency = var24
		var24 = 90
		tbl_8.Rotation = var24
		tbl_4.UIGradient = Roact_upvr.createElement("UIGradient", tbl_8)
		tbl_5.BackgroundTextShadow = Roact_upvr.createElement("Frame", tbl_2, tbl_4)
		var21 = Cryo_upvr.Dictionary.join(var21, tbl_5)
	end
	local any_createElement_result1 = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.new(1, 0, 0, var18);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		ScaleType = Enum.ScaleType.Crop;
		BorderSizePixel = 0;
		Image = arg1.image;
		ImageColor3 = Color3.fromRGB(255, 255, 255);
	}, var21)
	if var16 then
		any_createElement_result1 = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.new(1, 0, 0, var18 - 8);
			Position = UDim2.new(0.5, 0, 0.5, 0);
			BackgroundTransparency = 1;
			ClipsDescendants = true;
		}, {
			TitleBackground = any_createElement_result1;
		})
	end
	return any_createElement_result1
end
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local Controllable_upvr = require(Core.Control.Controllable)
local Images_upvr = require(Parent_2.ImageSet.Images)
function any_extend_result1.render(arg1) -- Line 147
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Controllable_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: CloseButtonIcon_upvr (readonly)
		[7]: GenericTextLabel_upvr (readonly)
		[8]: renderBackgroundImage_upvr (readonly)
	]]
	local titleBackgroundImageProps_upvr = arg1.props.titleBackgroundImageProps
	return withStyle_upvr(function(arg1_2) -- Line 150
		--[[ Upvalues[9]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Controllable_upvr (copied, readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: CloseButtonIcon_upvr (copied, readonly)
			[7]: GenericTextLabel_upvr (copied, readonly)
			[8]: titleBackgroundImageProps_upvr (readonly)
			[9]: renderBackgroundImage_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local Font = arg1_2.Font
		local Theme = arg1_2.Theme
		local tbl_6 = {}
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [51] 34. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl_7 = {}
		local tbl = {
			component = ImageSetComponent_upvr.Button;
			props = {
				BackgroundTransparency = 1;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0, 32, 0.5, 0);
				Size = UDim2.new(0, 48, 0, 48);
				[Roact_upvr.Event.Activated] = arg1.props.onCloseClicked;
			};
		}
		local tbl_9 = {}
		local tbl_3 = {
			BackgroundTransparency = 1;
		}
		local var48 = 36
		tbl_3.Size = UDim2.new(0, var48, 0, 36)
		local closeButtonIcon = arg1.props.closeButtonIcon
		if closeButtonIcon == CloseButtonIcon_upvr.Close then
			var48 = "icons/navigation/close"
		elseif closeButtonIcon == CloseButtonIcon_upvr.Back then
			var48 = "icons/actions/cycleLeft"
		else
			var48 = nil
		end
		tbl_3.Image = Images_upvr[var48]
		tbl_3.ImageColor3 = Theme.IconEmphasis.Color
		tbl_3.ImageTransparency = Theme.IconEmphasis.Transparency
		tbl_3.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_3.Position = UDim2.new(0.5, 0, 0.5, 0)
		tbl_9.InputFillImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_3)
		tbl.children = tbl_9
		tbl_7.controlComponent = tbl
		function tbl_7.onStateChanged(...) -- Line 184
		end
		local any_createElement_result1_2 = Roact_upvr.createElement(Controllable_upvr, tbl_7)
		if not any_createElement_result1_2 then
			-- KONSTANTERROR: [189] 130. Error Block 10 start (CF ANALYSIS FAILED)
			any_createElement_result1_2 = nil
			-- KONSTANTERROR: [189] 130. Error Block 10 end (CF ANALYSIS FAILED)
		end
		tbl_6.CloseButton = any_createElement_result1_2
		tbl_6.Title = Roact_upvr.createElement(GenericTextLabel_upvr, {
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.new(0.5, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, -104, 1, 0);
			colorStyle = Theme.TextEmphasis;
			fontStyle = Font.Header1;
			LayoutOrder = 1;
			Text = arg1.props.title;
			TextSize = Font.BaseSize * Font.Header1.RelativeSize;
			TextWrapped = true;
			TextTruncate = Enum.TextTruncate.AtEnd;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 8);
				PaddingBottom = UDim.new(0, 8);
			});
		})
		local var54 = not titleBackgroundImageProps_upvr
		if var54 then
			var54 = Roact_upvr.createElement
			var54 = var54("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 1, 0);
				BorderSizePixel = 0;
				BackgroundColor3 = Theme.Divider.Color;
				BackgroundTransparency = Theme.Divider.Transparency;
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, 1);
			})
		end
		tbl_6.Underline = var54
		local any_createElement_result1_3 = Roact_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 48);
			BackgroundTransparency = 1;
			[Roact_upvr.Change.AbsoluteSize] = arg1.props.onTitleSizeChanged;
		}, tbl_6)
		if titleBackgroundImageProps_upvr then
			return renderBackgroundImage_upvr(titleBackgroundImageProps_upvr, arg1_2, {
				TitleText = any_createElement_result1_3;
			})
		end
		do
			return any_createElement_result1_3
		end
		-- KONSTANTERROR: [51] 34. Error Block 26 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1