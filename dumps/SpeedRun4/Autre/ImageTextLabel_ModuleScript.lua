-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:27
-- Luau version 6, Types version 3
-- Time taken: 0.005282 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ImageTextLabel")
any_extend_result1.validateProps = t.interface({
	imageProps = t.optional(t.interface({
		Size = t.UDim2;
	}));
	genericTextLabelProps = t.interface({
		Text = t.string;
		fontStyle = t.union(require(Parent.Core.Style.Validator.validateFontInfo), require(Parent.Core.Style.Validator.validateTypographyInfo));
		colorStyle = require(Parent.Core.Style.Validator.validateColorInfo);
		fluidSizing = t.optional(t.boolean);
		AnchorPoint = t.None;
		Position = t.None;
		Size = t.None;
		TextXAlignment = t.None;
		TextYAlignment = t.None;
		TextScaled = t.None;
		maxSize = t.None;
		richText = t.optional(t.boolean);
	});
	frameProps = t.optional(t.interface({
		Size = t.None;
	}));
	maxSize = t.optional(t.Vector2);
	padding = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	maxSize = Vector2.new(10000, 10000);
	frameProps = {};
	padding = 0;
}
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local GetWrappedTextWithIcon_upvr = require(Parent.Core.Text.GetWrappedTextWithIcon)
local GetTextSize_upvr = require(Parent.Core.Text.GetTextSize)
local Cryo_upvr = require(Parent_2.Cryo)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Parent.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 68
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: GetWrappedTextWithIcon_upvr (readonly)
		[3]: GetTextSize_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: ImageSetComponent_upvr (readonly)
		[7]: GenericTextLabel_upvr (readonly)
	]]
	local genericTextLabelProps_upvr = arg1.props.genericTextLabelProps
	local imageProps_upvr = arg1.props.imageProps
	local Text_upvw = arg1.props.genericTextLabelProps.Text
	local padding_upvr = arg1.props.padding
	local maxSize_upvr = arg1.props.maxSize
	local useMaxHeight_upvr = arg1.props.useMaxHeight
	local frameProps_upvr = arg1.props.frameProps
	local richText_upvr = arg1.props.richText
	return withStyle_upvr(function(arg1_2) -- Line 78
		--[[ Upvalues[15]:
			[1]: genericTextLabelProps_upvr (readonly)
			[2]: imageProps_upvr (readonly)
			[3]: Text_upvw (read and write)
			[4]: GetWrappedTextWithIcon_upvr (copied, readonly)
			[5]: padding_upvr (readonly)
			[6]: GetTextSize_upvr (copied, readonly)
			[7]: maxSize_upvr (readonly)
			[8]: useMaxHeight_upvr (readonly)
			[9]: Roact_upvr (copied, readonly)
			[10]: Cryo_upvr (copied, readonly)
			[11]: frameProps_upvr (readonly)
			[12]: ImageSetComponent_upvr (copied, readonly)
			[13]: GenericTextLabel_upvr (copied, readonly)
			[14]: arg1 (readonly)
			[15]: richText_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local fontStyle = genericTextLabelProps_upvr.fontStyle
		local Font = arg1_2.Font
		if fontStyle.RelativeSize then
			Font = Font.BaseSize * fontStyle.RelativeSize
		else
			Font = fontStyle.FontSize
		end
		local Font_2 = fontStyle.Font
		if imageProps_upvr then
			Text_upvw = GetWrappedTextWithIcon_upvr(Text_upvw, Font, Font_2, imageProps_upvr.Size.X.Offset, padding_upvr)
		end
		local var13_result1 = GetTextSize_upvr(Text_upvw, Font, Font_2, Vector2.new(maxSize_upvr.X, maxSize_upvr.Y))
		if not useMaxHeight_upvr or not maxSize_upvr.Y then
		end
		local module = {}
		if imageProps_upvr then
		else
		end
		module.Icon = nil
		local tbl = {
			Text = Text_upvw;
			AnchorPoint = Vector2.new(0, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Size = UDim2.new(1, 0, 1, 0);
		}
		if not genericTextLabelProps_upvr.TextXAlignment then
		end
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		local Top = Enum.TextYAlignment.Top
		tbl.TextYAlignment = Top
		if imageProps_upvr then
			Top = false
		else
			Top = arg1.props.fluidSizing
		end
		tbl.fluidSizing = Top
		tbl.maxSize = maxSize_upvr
		tbl.RichText = richText_upvr
		module.Name = Roact_upvr.createElement(GenericTextLabel_upvr, Cryo_upvr.Dictionary.join(genericTextLabelProps_upvr, tbl))
		return Roact_upvr.createElement("Frame", Cryo_upvr.Dictionary.join(frameProps_upvr, {
			Size = UDim2.new(0, var13_result1.X, 0, var13_result1.Y);
		}), module)
	end)
end
return any_extend_result1