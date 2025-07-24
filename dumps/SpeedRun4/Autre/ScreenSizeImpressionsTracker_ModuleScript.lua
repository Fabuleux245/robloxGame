-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:31
-- Luau version 6, Types version 3
-- Time taken: 0.001506 seconds

local Parent = script:FindFirstAncestor("Impressions").Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local ImpressionsTracker_upvr = require(script.Parent.ImpressionsTracker)
return function(arg1) -- Line 28
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImpressionsTracker_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 29
		return arg1_2.ScreenSize
	end)
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_3) -- Line 32
		return arg1_3.TopBar.topBarHeight
	end)
	local var3_result1_upvr = useSelector_upvr(function(arg1_4) -- Line 35
		return arg1_4.GlobalGuiInset
	end)
	return React_upvr.createElement(ImpressionsTracker_upvr, {
		pageContext = arg1.pageContext;
		parentRef = arg1.parentRef;
		impressionsTag = arg1.impressionsTag;
		scrollViewPositionChangedSignal = arg1.scrollViewPositionChangedSignal;
		sendImpressions = arg1.sendImpressions;
		dataUpdatedTimestamp = arg1.dataUpdatedTimestamp;
		viewPortBounds = React_upvr.useMemo(function() -- Line 38
			--[[ Upvalues[3]:
				[1]: useSelector_upvr_result1_upvr_2 (readonly)
				[2]: useSelector_upvr_result1_upvr (readonly)
				[3]: var3_result1_upvr (readonly)
			]]
			return {
				min = Vector2.new(0, useSelector_upvr_result1_upvr_2);
				max = Vector2.new(useSelector_upvr_result1_upvr.X, useSelector_upvr_result1_upvr.Y - var3_result1_upvr.bottom);
			}
		end, {useSelector_upvr_result1_upvr_2, useSelector_upvr_result1_upvr, var3_result1_upvr});
	})
end