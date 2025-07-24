-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:33
-- Luau version 6, Types version 3
-- Time taken: 0.001405 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ToastText = require(Parent_3.ToastText)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InformativeToast")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	iconProps = t.optional(require(Parent_3.ToastIcon).validateProps);
	iconChildren = t.optional(t.table);
	layoutOrder = t.optional(t.integer);
	padding = t.optional(t.numberMin(0));
	position = t.optional(t.UDim2);
	size = t.UDim2;
	subtitleTextProps = t.optional(ToastText.validateProps);
	textFrameSize = t.optional(t.UDim2);
	titleTextProps = ToastText.validateProps;
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	layoutOrder = 1;
	position = UDim2.new(0.5, 0, 0.5, 0);
	size = UDim2.new(1, 0, 1, 0);
}
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local ToastFrame_upvr = require(Parent_3.ToastFrame)
function any_extend_result1.render(arg1) -- Line 44
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ToastFrame_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 45
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ToastFrame_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		return Roact_upvr.createElement("Frame", {
			AnchorPoint = arg1.props.anchorPoint;
			BackgroundColor3 = Theme.BackgroundUIContrast.Color;
			BackgroundTransparency = Theme.BackgroundUIContrast.Transparency * arg1_2.Settings.PreferredTransparency;
			BorderSizePixel = 0;
			ClipsDescendants = true;
			LayoutOrder = arg1.props.layoutOrder;
			Position = arg1.props.position;
			Size = arg1.props.size;
		}, {
			ToastFrame = Roact_upvr.createElement(ToastFrame_upvr, {
				iconProps = arg1.props.iconProps;
				iconChildren = arg1.props.iconChildren;
				padding = arg1.props.padding;
				subtitleTextProps = arg1.props.subtitleTextProps;
				textFrameSize = arg1.props.textFrameSize;
				titleTextProps = arg1.props.titleTextProps;
			});
		})
	end)
end
return any_extend_result1