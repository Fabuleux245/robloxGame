-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:56
-- Luau version 6, Types version 3
-- Time taken: 0.000924 seconds

local InterventionShared = script:FindFirstAncestor("InterventionShared")
local Parent = InterventionShared.Parent
local useLayerCollector_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local React_upvr = require(Parent.React)
local Constants_upvr = require(InterventionShared.Utils.Constants)
return function(arg1) -- Line 46, Named "useScrollFrameHeightCalculation"
	--[[ Upvalues[3]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1.initialInnerContentHeight or 0)
	local function var8(arg1_2) -- Line 50
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_2.AbsoluteSize.Y)
	end
	var8 = arg1.scrollFrameHeaderFooterHeight
	local var9 = var8
	if not var9 then
		var9 = Constants_upvr.DIALOG_HEADER_HEIGHT
	end
	local minimum = math.min(useLayerCollector_upvr().absoluteSize.Y - Constants_upvr.UNIBAR_HEIGHT - var9, any_useState_result1)
	local ceiled = math.ceil(minimum)
	if ceiled >= any_useState_result1 then
		minimum = false
	else
		minimum = true
	end
	return {
		onInnerContentSizeChanged = React_upvr.useCallback(var8, {});
		scrollFrameContainerHeight = ceiled;
		shouldShowScrollBar = minimum;
	}
end