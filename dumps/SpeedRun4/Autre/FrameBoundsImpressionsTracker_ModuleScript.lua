-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:26
-- Luau version 6, Types version 3
-- Time taken: 0.000783 seconds

local useViewportBounds_upvr = require(script.Parent.useViewportBounds)
local React_upvr = require(script:FindFirstAncestor("Impressions").Parent.React)
local ImpressionsTracker_upvr = require(script.Parent.ImpressionsTracker)
return function(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: useViewportBounds_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImpressionsTracker_upvr (readonly)
	]]
	return React_upvr.createElement(ImpressionsTracker_upvr, {
		pageContext = arg1.pageContext;
		parentRef = arg1.parentRef;
		impressionsTag = arg1.impressionsTag;
		scrollViewPositionChangedSignal = arg1.scrollViewPositionChangedSignal;
		sendImpressions = arg1.sendImpressions;
		dataUpdatedTimestamp = arg1.dataUpdatedTimestamp;
		viewPortBounds = useViewportBounds_upvr(arg1.parentRef);
	})
end