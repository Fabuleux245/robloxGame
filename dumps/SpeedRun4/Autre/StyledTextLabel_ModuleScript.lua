-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:22
-- Luau version 6, Types version 3
-- Time taken: 0.001416 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("StyledTextLabel")
any_extend_result1.validateProps = t.strictInterface({
	text = t.string;
	fontStyle = t.union(require(Parent_2.Core.Style.Validator.validateFontInfo), require(Parent_2.Core.Style.Validator.validateTypographyInfo));
	colorStyle = t.union(require(Parent_2.Core.Style.Validator.validateColorInfo), require(Parent_2.Core.Style.Validator.validateColorToken));
	textTruncate = t.optional(t.EnumItem);
	textWrapped = t.optional(t.boolean);
	textXAlignment = t.optional(t.EnumItem);
	textYAlignment = t.optional(t.EnumItem);
	size = t.optional(t.UDim2);
	maxSize = t.optional(t.Vector2);
	richText = t.optional(t.boolean);
	layoutOrder = t.optional(t.number);
	fluidSizing = t.optional(t.boolean);
	automaticSize = t.optional(t.EnumItem);
	lineHeight = t.optional(t.number);
	clipsDescendants = t.optional(t.boolean);
	onAbsoluteSizeChange = t.optional(t.callback);
	openTypeFeatures = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	textXAlignment = Enum.TextXAlignment.Left;
	textYAlignment = Enum.TextYAlignment.Center;
	richText = true;
	fluidSizing = true;
	automaticSize = Enum.AutomaticSize.None;
	lineHeight = 1.4;
	clipsDescendants = false;
	openTypeFeatures = nil;
}
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: GenericTextLabel_upvr (readonly)
	]]
	return Roact_upvr.createElement(GenericTextLabel_upvr, {
		maxSize = arg1.props.maxSize;
		fontStyle = arg1.props.fontStyle;
		colorStyle = arg1.props.colorStyle;
		fluidSizing = arg1.props.fluidSizing;
		Size = arg1.props.size;
		Text = arg1.props.text;
		TextXAlignment = arg1.props.textXAlignment;
		TextYAlignment = arg1.props.textYAlignment;
		TextTruncate = arg1.props.textTruncate;
		TextWrapped = arg1.props.textWrapped;
		LayoutOrder = arg1.props.layoutOrder;
		RichText = arg1.props.richText;
		AutomaticSize = arg1.props.automaticSize;
		LineHeight = arg1.props.lineHeight;
		ClipsDescendants = arg1.props.clipsDescendants;
		openTypeFeatures = arg1.props.openTypeFeatures;
		[Roact_upvr.Change.AbsoluteSize] = arg1.props.onAbsoluteSizeChange;
	})
end
return any_extend_result1