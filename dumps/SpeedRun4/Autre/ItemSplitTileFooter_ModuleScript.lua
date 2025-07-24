-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:30
-- Luau version 6, Types version 3
-- Time taken: 0.001364 seconds

local Parent_3 = script.Parent.Parent.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemSplitTileFooter")
any_extend_result1.validateProps = t.strictInterface({
	priceText = t.optional(t.string);
	isOwned = t.optional(t.boolean);
	layoutOrder = t.optional(t.number);
})
local Images_upvr = require(Parent.App.ImageSet.Images)
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local getIconSizeUDim2_upvr = require(Parent_3.ImageSet.getIconSizeUDim2)
local IconSize_upvr = require(Parent_3.ImageSet.Enum.IconSize)
local ShimmerPanel_upvr = require(Parent.App.Loading.ShimmerPanel)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[7]:
		[1]: Images_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: getIconSizeUDim2_upvr (readonly)
		[4]: IconSize_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ShimmerPanel_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
	]]
	local props_upvr = arg1.props
	local isOwned_upvr = props_upvr.isOwned
	if isOwned_upvr then
		props_upvr = Images_upvr["icons/status/item/owned"]
	else
		props_upvr = Images_upvr["icons/common/robux_small"]
	end
	local priceText_upvr = arg1.props.priceText
	return withStyle_upvr(function(arg1_2) -- Line 37
		--[[ Upvalues[9]:
			[1]: priceText_upvr (readonly)
			[2]: isOwned_upvr (readonly)
			[3]: getIconSizeUDim2_upvr (copied, readonly)
			[4]: IconSize_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ShimmerPanel_upvr (copied, readonly)
			[8]: ImageSetComponent_upvr (copied, readonly)
			[9]: props_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 13. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 13. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 22. Error Block 31 start (CF ANALYSIS FAILED)
		if priceText_upvr ~= "--" then
			-- KONSTANTWARNING: GOTO [37] #26
		end
		-- KONSTANTERROR: [32] 22. Error Block 31 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1