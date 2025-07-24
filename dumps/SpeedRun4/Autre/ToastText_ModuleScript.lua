-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:36
-- Luau version 6, Types version 3
-- Time taken: 0.000854 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ToastText")
any_extend_result1.validateProps = t.interface({
	colorStyle = require(Parent_2.Core.Style.Validator.validateColorInfo);
	fontStyle = require(Parent_2.Core.Style.Validator.validateFontInfo);
	Size = t.UDim2;
	Text = t.string;
	AnchorPoint = t.optional(t.Vector2);
	fluidSizing = t.optional(t.boolean);
	LayoutOrder = t.optional(t.integer);
	maxSize = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	TextTruncate = t.optional(t.EnumItem);
	TextXAlignment = t.optional(t.EnumItem);
	TextYAlignment = t.optional(t.EnumItem);
})
any_extend_result1.defaultProps = {
	TextXAlignment = Enum.TextXAlignment.Left;
	TextYAlignment = Enum.TextYAlignment.Center;
}
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: GenericTextLabel_upvr (readonly)
	]]
	return Roact_upvr.createElement(GenericTextLabel_upvr, arg1.props)
end
return any_extend_result1