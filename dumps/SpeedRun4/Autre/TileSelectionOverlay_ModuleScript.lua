-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:24
-- Luau version 6, Types version 3
-- Time taken: 0.001543 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TileSelectionOverlay")
any_extend_result1.validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer);
	cornerRadius = t.optional(t.UDim);
})
any_extend_result1.defaultProps = {
	cornerRadius = UDim.new(0, 0);
}
local Images_upvr = require(Parent_2.App.ImageSet.Images)
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 26
	--[[ Upvalues[4]:
		[1]: Images_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
	]]
	local icons_actions_selectOn_upvr = Images_upvr["icons/actions/selectOn"]
	local ZIndex_upvr = arg1.props.ZIndex
	local var14_upvr = icons_actions_selectOn_upvr.ImageRectSize / Images_upvr.ImagesResolutionScale
	local cornerRadius_upvr = arg1.props.cornerRadius
	return withStyle_upvr(function(arg1_2) -- Line 33
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ZIndex_upvr (readonly)
			[3]: ImageSetComponent_upvr (copied, readonly)
			[4]: icons_actions_selectOn_upvr (readonly)
			[5]: var14_upvr (readonly)
			[6]: cornerRadius_upvr (readonly)
		]]
		local Theme = arg1_2.Theme
		local Tokens = arg1_2.Tokens
		local module = {
			SelectionImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				Image = icons_actions_selectOn_upvr;
				Position = UDim2.new(1, -Tokens.Global.Size_25, 0, Tokens.Global.Size_25);
				Size = UDim2.new(0, var14_upvr.X, 0, var14_upvr.Y);
			});
		}
		local var21
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = var21("UICorner", tbl)
			tbl.CornerRadius = cornerRadius_upvr
			local tbl = {}
			var21 = Roact_upvr.createElement
			return var21
		end
		if cornerRadius_upvr == UDim.new(0, 0) or not INLINED() then
			var21 = nil
		end
		module.UICorner = var21
		return Roact_upvr.createElement("Frame", {
			BackgroundColor3 = Theme.Overlay.Color;
			BackgroundTransparency = Theme.Overlay.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = ZIndex_upvr;
		}, module)
	end)
end
return any_extend_result1