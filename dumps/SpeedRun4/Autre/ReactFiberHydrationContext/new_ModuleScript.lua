-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:08
-- Luau version 6, Types version 3
-- Time taken: 0.009722 seconds

local Parent = script.Parent.Parent
local function _(arg1) -- Line 17, Named "unimplemented"
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..arg1)
	error("FIXME (roblox): "..arg1.." is unimplemented", 2)
end
local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local HostComponent_upvr = ReactWorkTags.HostComponent
local HostRoot_upvr = ReactWorkTags.HostRoot
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local invariant_upvr = require(Parent.Shared).invariant
local supportsHydration_upvr = ReactFiberHostConfig.supportsHydration
local getNextHydratableSibling_upvr = ReactFiberHostConfig.getNextHydratableSibling
local getFirstHydratableChild_upvr = ReactFiberHostConfig.getFirstHydratableChild
local var12_upvw
local var13_upvw
local var14_upvw = false
local console_upvr = require(Parent.Shared).console
function warnIfHydrating() -- Line 91
	--[[ Upvalues[2]:
		[1]: var14_upvw (read and write)
		[2]: console_upvr (readonly)
	]]
	if _G.__DEV__ and var14_upvw then
		console_upvr.error("We should not be hydrating here. This is a bug in React. Please file a bug.")
	end
end
function enterHydrationState(arg1) -- Line 101
	--[[ Upvalues[5]:
		[1]: supportsHydration_upvr (readonly)
		[2]: var13_upvw (read and write)
		[3]: getFirstHydratableChild_upvr (readonly)
		[4]: var12_upvw (read and write)
		[5]: var14_upvw (read and write)
	]]
	if not supportsHydration_upvr then
		return false
	end
	var13_upvw = getFirstHydratableChild_upvr(arg1.stateNode.containerInfo)
	var12_upvw = arg1
	var14_upvw = true
	return true
end
function reenterHydrationStateFromDehydratedSuspenseInstance(arg1, arg2) -- Line 113
	--[[ Upvalues[4]:
		[1]: supportsHydration_upvr (readonly)
		[2]: var13_upvw (read and write)
		[3]: getNextHydratableSibling_upvr (readonly)
		[4]: var14_upvw (read and write)
	]]
	if not supportsHydration_upvr then
		return false
	end
	var13_upvw = getNextHydratableSibling_upvr(arg2)
	popToNextHostParent(arg1)
	var14_upvw = true
	return true
end
function deleteHydratableInstance(arg1, arg2) -- Line 127
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: ".."deleteHydratableInstance")
	error("FIXME (roblox): ".."deleteHydratableInstance".." is unimplemented", 2)
end
local Hydrating_upvr = ReactFiberFlags.Hydrating
local Placement_upvr = ReactFiberFlags.Placement
function insertNonHydratedInstance(arg1, arg2) -- Line 162
	--[[ Upvalues[2]:
		[1]: Hydrating_upvr (readonly)
		[2]: Placement_upvr (readonly)
	]]
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: ".."insertNonHydratedInstance")
	error("FIXME (roblox): ".."insertNonHydratedInstance".." is unimplemented", 2)
	arg2.flags = bit32.bor(bit32.band(arg2.flags, bit32.bnot(Hydrating_upvr)), Placement_upvr)
	if not _G.__DEV__ then
	end
end
local canHydrateInstance_upvr = ReactFiberHostConfig.canHydrateInstance
local HostText_upvr = ReactWorkTags.HostText
local canHydrateTextInstance_upvr = ReactFiberHostConfig.canHydrateTextInstance
local enableSuspenseServerRenderer_upvr = require(Parent.Shared).ReactFeatureFlags.enableSuspenseServerRenderer
local canHydrateSuspenseInstance_upvr = ReactFiberHostConfig.canHydrateSuspenseInstance
local OffscreenLane_upvr = require(script.Parent.ReactFiberLane).OffscreenLane
local createFiberFromDehydratedFragment_upvr = require(script.Parent["ReactFiber.new"]).createFiberFromDehydratedFragment
function tryHydrate(arg1, arg2) -- Line 226
	--[[ Upvalues[9]:
		[1]: HostComponent_upvr (readonly)
		[2]: canHydrateInstance_upvr (readonly)
		[3]: HostText_upvr (readonly)
		[4]: canHydrateTextInstance_upvr (readonly)
		[5]: SuspenseComponent_upvr (readonly)
		[6]: enableSuspenseServerRenderer_upvr (readonly)
		[7]: canHydrateSuspenseInstance_upvr (readonly)
		[8]: OffscreenLane_upvr (readonly)
		[9]: createFiberFromDehydratedFragment_upvr (readonly)
	]]
	if arg1.tag == HostComponent_upvr then
		local canHydrateInstance_upvr_result1_2 = canHydrateInstance_upvr(arg2, arg1.type, arg1.pendingProps)
		if canHydrateInstance_upvr_result1_2 ~= nil then
			arg1.stateNode = canHydrateInstance_upvr_result1_2
			return true
		end
		return false
	end
	if arg1.tag == HostText_upvr then
		local var20_result1 = canHydrateTextInstance_upvr(arg2, arg1.pendingProps)
		if var20_result1 ~= nil then
			arg1.stateNode = var20_result1
			return true
		end
		return false
	end
	if arg1.tag == SuspenseComponent_upvr then
		if enableSuspenseServerRenderer_upvr then
			local canHydrateSuspenseInstance_upvr_result1_2 = canHydrateSuspenseInstance_upvr(arg2)
			if canHydrateSuspenseInstance_upvr_result1_2 ~= nil then
				arg1.memoizedState = {
					dehydrated = canHydrateSuspenseInstance_upvr_result1_2;
					retryLane = OffscreenLane_upvr;
				}
				local var24_result1 = createFiberFromDehydratedFragment_upvr(canHydrateSuspenseInstance_upvr_result1_2)
				var24_result1.return_ = arg1
				arg1.child = var24_result1
				return true
			end
		end
		return false
	end
	return false
end
function tryToClaimNextHydratableInstance(arg1) -- Line 271
	--[[ Upvalues[5]:
		[1]: var14_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: getNextHydratableSibling_upvr (readonly)
		[5]: getFirstHydratableChild_upvr (readonly)
	]]
	if not var14_upvw then
	else
		local var35 = var13_upvw
		if not var35 then
			insertNonHydratedInstance(var12_upvw, arg1)
			var14_upvw = false
			var12_upvw = arg1
			return
		end
		local var36 = var35
		if not tryHydrate(arg1, var35) then
			local getNextHydratableSibling_upvr_result1 = getNextHydratableSibling_upvr(var36)
			if not getNextHydratableSibling_upvr_result1 or not tryHydrate(arg1, getNextHydratableSibling_upvr_result1) then
				insertNonHydratedInstance(var12_upvw, arg1)
				var14_upvw = false
				var12_upvw = arg1
				return
			end
			deleteHydratableInstance(var12_upvw, var36)
		end
		var12_upvw = arg1
		var13_upvw = getFirstHydratableChild_upvr(getNextHydratableSibling_upvr_result1)
	end
end
local hydrateInstance_upvr = ReactFiberHostConfig.hydrateInstance
function prepareToHydrateHostInstance(arg1, arg2, arg3) -- Line 307
	--[[ Upvalues[3]:
		[1]: supportsHydration_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: hydrateInstance_upvr (readonly)
	]]
	if not supportsHydration_upvr then
		invariant_upvr(false, "Expected prepareToHydrateHostInstance() to never be called. ".."This error is likely caused by a bug in React. Please file an issue.")
	end
	local hydrateInstance_upvr_result1 = hydrateInstance_upvr(arg1.stateNode, arg1.type, arg1.memoizedProps, arg2, arg3, arg1)
	arg1.updateQueue = hydrateInstance_upvr_result1
	if hydrateInstance_upvr_result1 ~= nil then
		return true
	end
	return false
end
local hydrateTextInstance_upvr = ReactFiberHostConfig.hydrateTextInstance
local didNotMatchHydratedContainerTextInstance_upvr = ReactFiberHostConfig.didNotMatchHydratedContainerTextInstance
local didNotMatchHydratedTextInstance_upvr = ReactFiberHostConfig.didNotMatchHydratedTextInstance
function prepareToHydrateHostTextInstance(arg1) -- Line 339
	--[[ Upvalues[8]:
		[1]: supportsHydration_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: hydrateTextInstance_upvr (readonly)
		[4]: var12_upvw (read and write)
		[5]: HostRoot_upvr (readonly)
		[6]: didNotMatchHydratedContainerTextInstance_upvr (readonly)
		[7]: HostComponent_upvr (readonly)
		[8]: didNotMatchHydratedTextInstance_upvr (readonly)
	]]
	if not supportsHydration_upvr then
		invariant_upvr(false, "Expected prepareToHydrateHostTextInstance() to never be called. ".."This error is likely caused by a bug in React. Please file an issue.")
	end
	local stateNode = arg1.stateNode
	local memoizedProps = arg1.memoizedProps
	local var40_result1 = hydrateTextInstance_upvr(stateNode, memoizedProps, arg1)
	if _G.__DEV__ and var40_result1 then
		local var50 = var12_upvw
		if var50 ~= nil then
			if var50.tag == HostRoot_upvr then
				didNotMatchHydratedContainerTextInstance_upvr(var50.stateNode.containerInfo, stateNode, memoizedProps)
				return var40_result1
			end
			if var50.tag == HostComponent_upvr then
				didNotMatchHydratedTextInstance_upvr(var50.type, var50.memoizedProps, var50.stateNode, stateNode, memoizedProps)
			end
		end
	end
	return var40_result1
end
local hydrateSuspenseInstance_upvr = ReactFiberHostConfig.hydrateSuspenseInstance
function prepareToHydrateHostSuspenseInstance(arg1) -- Line 382
	--[[ Upvalues[3]:
		[1]: supportsHydration_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: hydrateSuspenseInstance_upvr (readonly)
	]]
	if not supportsHydration_upvr then
		invariant_upvr(false, "Expected prepareToHydrateHostSuspenseInstance() to never be called. ".."This error is likely caused by a bug in React. Please file an issue.")
	end
	local memoizedState_2 = arg1.memoizedState
	local var53
	if memoizedState_2 ~= nil then
		var53 = memoizedState_2.dehydrated
	else
		var53 = nil
	end
	invariant_upvr(var53, "Expected to have a hydrated suspense instance. ".."This error is likely caused by a bug in React. Please file an issue.")
	hydrateSuspenseInstance_upvr(var53, arg1)
end
local getNextHydratableInstanceAfterSuspenseInstance_upvr = ReactFiberHostConfig.getNextHydratableInstanceAfterSuspenseInstance
function skipPastDehydratedSuspenseInstance(arg1) -- Line 407
	--[[ Upvalues[3]:
		[1]: supportsHydration_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: getNextHydratableInstanceAfterSuspenseInstance_upvr (readonly)
	]]
	if not supportsHydration_upvr then
		invariant_upvr(false, "Expected skipPastDehydratedSuspenseInstance() to never be called. ".."This error is likely caused by a bug in React. Please file an issue.")
	end
	local memoizedState = arg1.memoizedState
	local var56
	if memoizedState ~= nil then
		var56 = memoizedState.dehydrated
	else
		var56 = nil
	end
	invariant_upvr(var56, "Expected to have a hydrated suspense instance. ".."This error is likely caused by a bug in React. Please file an issue.")
	return getNextHydratableInstanceAfterSuspenseInstance_upvr(var56)
end
function popToNextHostParent(arg1) -- Line 430
	--[[ Upvalues[4]:
		[1]: HostComponent_upvr (readonly)
		[2]: HostRoot_upvr (readonly)
		[3]: SuspenseComponent_upvr (readonly)
		[4]: var12_upvw (read and write)
	]]
	local var57
	while var57 ~= nil and var57.tag ~= HostComponent_upvr and var57.tag ~= HostRoot_upvr and var57.tag ~= SuspenseComponent_upvr do
		var57 = var57.return_
	end
	var12_upvw = var57
end
local shouldSetTextContent_upvr = ReactFiberHostConfig.shouldSetTextContent
function popHydrationState(arg1) -- Line 443
	--[[ Upvalues[8]:
		[1]: supportsHydration_upvr (readonly)
		[2]: var12_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: HostComponent_upvr (readonly)
		[5]: shouldSetTextContent_upvr (readonly)
		[6]: var13_upvw (read and write)
		[7]: getNextHydratableSibling_upvr (readonly)
		[8]: SuspenseComponent_upvr (readonly)
	]]
	if not supportsHydration_upvr then
		return false
	end
	if arg1 ~= var12_upvw then
		return false
	end
	if not var14_upvw then
		popToNextHostParent(arg1)
		var14_upvw = true
		return false
	end
	local type = arg1.type
	if arg1.tag ~= HostComponent_upvr or type ~= "head" and type ~= "body" and not shouldSetTextContent_upvr(type, arg1.memoizedProps) then
		local var60 = var13_upvw
		while var60 do
			deleteHydratableInstance(arg1, var60)
		end
	end
	popToNextHostParent(arg1)
	if arg1.tag == SuspenseComponent_upvr then
		var13_upvw = skipPastDehydratedSuspenseInstance(arg1)
	elseif var12_upvw then
		var13_upvw = getNextHydratableSibling_upvr(arg1.stateNode)
	else
		var13_upvw = nil
	end
	return true
end
function resetHydrationState() -- Line 496
	--[[ Upvalues[4]:
		[1]: supportsHydration_upvr (readonly)
		[2]: var12_upvw (read and write)
		[3]: var13_upvw (read and write)
		[4]: var14_upvw (read and write)
	]]
	if not supportsHydration_upvr then
	else
		var12_upvw = nil
		var13_upvw = nil
		var14_upvw = false
	end
end
function getIsHydrating() -- Line 506
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	return var14_upvw
end
return {
	warnIfHydrating = warnIfHydrating;
	enterHydrationState = enterHydrationState;
	getIsHydrating = getIsHydrating;
	reenterHydrationStateFromDehydratedSuspenseInstance = reenterHydrationStateFromDehydratedSuspenseInstance;
	resetHydrationState = resetHydrationState;
	tryToClaimNextHydratableInstance = tryToClaimNextHydratableInstance;
	prepareToHydrateHostInstance = prepareToHydrateHostInstance;
	prepareToHydrateHostTextInstance = prepareToHydrateHostTextInstance;
	prepareToHydrateHostSuspenseInstance = prepareToHydrateHostSuspenseInstance;
	popHydrationState = popHydrationState;
}