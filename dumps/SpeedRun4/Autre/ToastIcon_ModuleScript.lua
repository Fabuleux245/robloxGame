-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:36
-- Luau version 6, Types version 3
-- Time taken: 0.001092 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ToastIcon")
any_extend_result1.validateProps = t.interface({
	Image = t.union(t.table, t.string, t.callback);
	Size = t.UDim2;
	AnchorPoint = t.optional(t.Vector2);
	colorStyle = t.optional(require(Parent_2.Core.Style.Validator.validateColorInfo));
	LayoutOrder = t.optional(t.integer);
	Position = t.optional(t.UDim2);
})
any_extend_result1.defaultProps = {
	BackgroundTransparency = 1;
}
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local Cryo_upvr = require(Parent.Cryo)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 35
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
		]]
		local colorStyle = arg1.props.colorStyle
		if colorStyle == nil then
			colorStyle = arg1_2.Theme.IconEmphasis
		end
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, Cryo_upvr.Dictionary.join(arg1.props, {
			colorStyle = Cryo_upvr.None;
			ImageColor3 = colorStyle.Color;
			ImageTransparency = colorStyle.Transparency;
		}))
	end)
end
return any_extend_result1