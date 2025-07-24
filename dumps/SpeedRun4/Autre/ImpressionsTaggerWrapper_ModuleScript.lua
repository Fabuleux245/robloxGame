-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:27
-- Luau version 6, Types version 3
-- Time taken: 0.000577 seconds

local React_upvr = require(script:FindFirstAncestor("Impressions").Parent.React)
local useImpressionsTagger_upvr = require(script.Parent.useImpressionsTagger)
return function(arg1) -- Line 14, Named "ImpressionsTagWrapper"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: useImpressionsTagger_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	useImpressionsTagger_upvr(any_useRef_result1, arg1.impressionsTag, arg1.impressionsIndex)
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.impressionsIndex;
		ref = any_useRef_result1;
	}, {
		ComponentWithImpressionsTag = arg1.renderComponent();
	})
end