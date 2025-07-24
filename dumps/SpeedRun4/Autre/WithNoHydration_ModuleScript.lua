-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:31
-- Luau version 6, Types version 3
-- Time taken: 0.000897 seconds

local invariant_upvr = require(script.Parent.Parent.invariant)
function shim(...) -- Line 16
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	invariant_upvr(false, "The current renderer does not support hydration. ".."This error is likely caused by a bug in React. ".."Please file an issue.")
end
return {
	supportsHydration = false;
	canHydrateInstance = shim;
	canHydrateTextInstance = shim;
	canHydrateSuspenseInstance = shim;
	isSuspenseInstancePending = shim;
	isSuspenseInstanceFallback = shim;
	registerSuspenseInstanceRetry = shim;
	getNextHydratableSibling = shim;
	getFirstHydratableChild = shim;
	hydrateInstance = shim;
	hydrateTextInstance = shim;
	hydrateSuspenseInstance = shim;
	getNextHydratableInstanceAfterSuspenseInstance = shim;
	commitHydratedContainer = shim;
	commitHydratedSuspenseInstance = shim;
	clearSuspenseBoundary = shim;
	clearSuspenseBoundaryFromContainer = shim;
	didNotMatchHydratedContainerTextInstance = shim;
	didNotMatchHydratedTextInstance = shim;
	didNotHydrateContainerInstance = shim;
	didNotHydrateInstance = shim;
	didNotFindHydratableContainerInstance = shim;
	didNotFindHydratableContainerTextInstance = shim;
	didNotFindHydratableContainerSuspenseInstance = shim;
	didNotFindHydratableInstance = shim;
	didNotFindHydratableTextInstance = shim;
	didNotFindHydratableSuspenseInstance = shim;
}