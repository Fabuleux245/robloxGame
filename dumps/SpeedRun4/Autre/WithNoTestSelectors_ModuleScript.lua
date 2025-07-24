-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:33
-- Luau version 6, Types version 3
-- Time taken: 0.000563 seconds

local invariant_upvr = require(script.Parent.Parent.invariant)
local function shim(...) -- Line 16
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	invariant_upvr(false, "The current renderer does not support test selectors. ".."This error is likely caused by a bug in React. ".."Please file an issue.")
end
return {
	supportsTestSelectors = false;
	findFiberRoot = shim;
	getBoundingRect = shim;
	getTextContent = shim;
	isHiddenSubtree = shim;
	matchAccessibilityRole = shim;
	setFocusIfFocusable = shim;
	setupIntersectionObserver = shim;
}