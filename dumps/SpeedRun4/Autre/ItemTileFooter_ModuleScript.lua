-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:32
-- Luau version 6, Types version 3
-- Time taken: 0.005919 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemTileFooter")
any_extend_result1.validateProps = t.strictInterface({
	priceText = t.optional(t.string);
	isOwned = t.optional(t.boolean);
})
local Images_upvr = require(Parent.App.ImageSet.Images)
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local ShimmerPanel_upvr = require(Parent.App.Loading.ShimmerPanel)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 29
	--[[ Upvalues[5]:
		[1]: Images_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ShimmerPanel_upvr (readonly)
		[5]: ImageSetComponent_upvr (readonly)
	]]
	local isOwned_upvr = arg1.props.isOwned
	local icons_common_robux_small_upvw = Images_upvr["icons/common/robux_small"]
	if isOwned_upvr then
		icons_common_robux_small_upvw = Images_upvr["icons/status/item/owned"]
	end
	local priceText_upvr = arg1.props.priceText
	return withStyle_upvr(function(arg1_2) -- Line 37
		--[[ Upvalues[7]:
			[1]: icons_common_robux_small_upvw (read and write)
			[2]: Images_upvr (copied, readonly)
			[3]: priceText_upvr (readonly)
			[4]: isOwned_upvr (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: ShimmerPanel_upvr (copied, readonly)
			[7]: ImageSetComponent_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_2.Theme
		local var30 = icons_common_robux_small_upvw.ImageRectSize / Images_upvr.ImagesResolutionScale
		local var31
		if var31 then
			var31 = tonumber(priceText_upvr:sub(1, 1))
		end
		local var32 = priceText_upvr
		if var32 then
			var32 = var31
			if not var32 then
				var32 = isOwned_upvr
			end
		end
		if var32 then
		end
		local module = {}
		local var35 = not priceText_upvr
		if var35 then
			var35 = Roact_upvr.createElement
			var35 = var35(ShimmerPanel_upvr, {
				Size = UDim2.new(0.8, 0, 0, arg1_2.Font.BaseSize * arg1_2.Font.SubHeader1.RelativeSize);
			})
		end
		module.Shimmer = var35
		var35 = var32
		local var37 = var35
		if var37 then
			var37 = Roact_upvr.createElement
			var37 = var37(ImageSetComponent_upvr.Label, {
				BackgroundTransparency = 1;
				Image = icons_common_robux_small_upvw;
				ImageColor3 = Theme.IconEmphasis.Color;
				ImageTransparency = Theme.IconEmphasis.Transparency;
				Size = UDim2.new(0, var30.X, 0, var30.Y);
			})
		end
		module.icon = var37
		var37 = priceText_upvr
		local var39 = var37
		if var39 then
			var39 = Roact_upvr.createElement
			local tbl_2 = {
				AnchorPoint = Vector2.new(1, 0);
				BackgroundTransparency = 1;
				Position = UDim2.new(1, 0, 0, 0);
				Size = UDim2.new(1, -(var30.X + 4), 1, 0);
				Font = arg1_2.Font.SubHeader1.Font;
				TextColor3 = Theme.SecondaryContent.Color;
				TextTransparency = Theme.SecondaryContent.Transparency;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_2.TextSize = arg1_2.Font.BaseSize * arg1_2.Font.SubHeader1.RelativeSize
			tbl_2.Text = priceText_upvr
			tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
			tbl_2.TextXAlignment = Enum.TextXAlignment.Left
			tbl_2.TextYAlignment = Enum.TextYAlignment.Top
			var39 = var39("TextLabel", tbl_2)
		end
		module.TextLabel = var39
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, module)
	end)
end
return any_extend_result1