-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:30
-- Luau version 6, Types version 3
-- Time taken: 0.001272 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent.Parent
local Parent_3 = Parent.Parent
local Roact_upvr = require(Parent_3.Roact)
local t = require(Parent_3.t)
local Images_upvr = require(Parent.App.ImageSet.Images)
local ItemTileEnums = require(Parent_2.Enum.ItemTileEnums)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemIcon")
local tbl_upvr = {
	[ItemTileEnums.ItemIconType.AnimationBundle] = Images_upvr["icons/status/item/bundle"];
	[ItemTileEnums.ItemIconType.Bundle] = Images_upvr["icons/status/item/bundle"];
	[ItemTileEnums.ItemIconType.DynamicHead] = Images_upvr["icons/status/dynamicHead_small"];
}
any_extend_result1.validateProps = t.strictInterface({
	itemIconType = t.intersection(ItemTileEnums.ItemIconType.isEnumValue, function(arg1) -- Line 24, Named "isValidItemIconType"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if tbl_upvr[arg1] then
			return true
		end
		return false, "Unknown ItemType "..arg1
	end);
})
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 37
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetComponent_upvr (readonly)
	]]
	local var13_upvr = tbl_upvr[arg1.props.itemIconType]
	local var15_upvr = var13_upvr.ImageRectSize / Images_upvr.ImagesResolutionScale
	return withStyle_upvr(function(arg1_2) -- Line 43
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetComponent_upvr (copied, readonly)
			[3]: var13_upvr (readonly)
			[4]: var15_upvr (readonly)
		]]
		local Theme = arg1_2.Theme
		local Tokens = arg1_2.Tokens
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			AnchorPoint = Vector2.new(1, 1);
			BackgroundTransparency = 1;
			Image = var13_upvr;
			ImageColor3 = Theme.IconEmphasis.Color;
			ImageTransparency = Theme.IconEmphasis.Transparency;
			Position = UDim2.new(1, -Tokens.Global.Size_100, 1, -Tokens.Global.Size_100);
			Size = UDim2.new(0, var15_upvr.X, 0, var15_upvr.Y);
		})
	end)
end
return any_extend_result1