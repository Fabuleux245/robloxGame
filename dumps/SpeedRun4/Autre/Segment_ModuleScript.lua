-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:18
-- Luau version 6, Types version 3
-- Time taken: 0.001713 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useSegmentedControlVariants_upvr = require(script.Parent.useSegmentedControlVariants)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Text_upvr = require(Foundation.Components.Text)
return React_upvr.memo(function(arg1) -- Line 30, Named "Segment"
	--[[ Upvalues[6]:
		[1]: useTokens_upvr (readonly)
		[2]: useSegmentedControlVariants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: withCommonProps_upvr (readonly)
		[6]: Text_upvr (readonly)
	]]
	local var3_result1 = useTokens_upvr()
	local useSegmentedControlVariants_upvr_result1 = useSegmentedControlVariants_upvr(var3_result1, arg1.size)
	local module = {
		tag = useSegmentedControlVariants_upvr_result1.segment.tag;
	}
	local function onActivated() -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onActivated(arg1.id)
	end
	module.onActivated = onActivated
	onActivated = arg1.onStateChanged
	local var11 = onActivated
	module.onStateChanged = var11
	if arg1.isActive then
		var11 = var3_result1.Color.Shift.Shift_400
	else
		var11 = nil
	end
	module.backgroundStyle = var11
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(arg1, module), {
		Text = React_upvr.createElement(Text_upvr, {
			tag = useSegmentedControlVariants_upvr_result1.text.tag;
			Text = arg1.text;
		});
	})
end)