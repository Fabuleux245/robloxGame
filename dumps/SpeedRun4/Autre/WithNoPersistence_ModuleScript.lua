-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:32
-- Luau version 6, Types version 3
-- Time taken: 0.000395 seconds

local invariant_upvr = require(script.Parent.Parent.invariant)
local function shim(...) -- Line 16
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	invariant_upvr(false, "The current renderer does not support persistence. ".."This error is likely caused by a bug in React. ".."Please file an issue.")
end
return {
	supportsPersistence = false;
	cloneInstance = shim;
	cloneFundamentalInstance = shim;
	createContainerChildSet = shim;
	appendChildToContainerChildSet = shim;
	finalizeContainerChildren = shim;
	replaceContainerChildren = shim;
	cloneHiddenInstance = shim;
	cloneHiddenTextInstance = shim;
}