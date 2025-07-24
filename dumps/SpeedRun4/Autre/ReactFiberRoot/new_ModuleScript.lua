-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:12
-- Luau version 6, Types version 3
-- Time taken: 0.001559 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local ReactRootTags = require(script.Parent.ReactRootTags)
local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local enableSuspenseCallback_upvr = ReactFeatureFlags.enableSuspenseCallback
local module_2 = {}
local noTimeout_upvr = ReactFiberHostConfig.noTimeout
local NoLanePriority_upvr = ReactFiberLane.NoLanePriority
local createLaneMap_upvr = ReactFiberLane.createLaneMap
local NoLanes_upvr = ReactFiberLane.NoLanes
local NoTimestamp_upvr = ReactFiberLane.NoTimestamp
local supportsHydration_upvr = ReactFiberHostConfig.supportsHydration
local enableSchedulerTracing_upvr = ReactFeatureFlags.enableSchedulerTracing
local unstable_getThreadID_upvr = require(Parent.Scheduler).tracing.unstable_getThreadID
local Set_upvr = LuauPolyfill.Set
local Map_upvr = LuauPolyfill.Map
local BlockingRoot_upvr = ReactRootTags.BlockingRoot
local ConcurrentRoot_upvr = ReactRootTags.ConcurrentRoot
local LegacyRoot_upvr = ReactRootTags.LegacyRoot
local function FiberRootNode_upvr(arg1, arg2, arg3) -- Line 48, Named "FiberRootNode"
	--[[ Upvalues[14]:
		[1]: noTimeout_upvr (readonly)
		[2]: NoLanePriority_upvr (readonly)
		[3]: createLaneMap_upvr (readonly)
		[4]: NoLanes_upvr (readonly)
		[5]: NoTimestamp_upvr (readonly)
		[6]: supportsHydration_upvr (readonly)
		[7]: enableSchedulerTracing_upvr (readonly)
		[8]: unstable_getThreadID_upvr (readonly)
		[9]: Set_upvr (readonly)
		[10]: Map_upvr (readonly)
		[11]: enableSuspenseCallback_upvr (readonly)
		[12]: BlockingRoot_upvr (readonly)
		[13]: ConcurrentRoot_upvr (readonly)
		[14]: LegacyRoot_upvr (readonly)
	]]
	local module = {}
	module.tag = arg2
	module.containerInfo = arg1
	module.pendingChildren = nil
	module.current = nil
	module.pingCache = nil
	module.finishedWork = nil
	module.timeoutHandle = noTimeout_upvr
	module.context = nil
	module.pendingContext = nil
	module.hydrate = arg3
	module.callbackNode = nil
	module.callbackPriority = NoLanePriority_upvr
	module.eventTimes = createLaneMap_upvr(NoLanes_upvr)
	module.expirationTimes = createLaneMap_upvr(NoTimestamp_upvr)
	module.pendingLanes = NoLanes_upvr
	module.suspendedLanes = NoLanes_upvr
	module.pingedLanes = NoLanes_upvr
	module.expiredLanes = NoLanes_upvr
	module.mutableReadLanes = NoLanes_upvr
	module.finishedLanes = NoLanes_upvr
	module.entangledLanes = NoLanes_upvr
	module.entanglements = createLaneMap_upvr(NoLanes_upvr)
	if supportsHydration_upvr then
		module.mutableSourceEagerHydrationData = nil
	end
	if enableSchedulerTracing_upvr then
		module.interactionThreadID = unstable_getThreadID_upvr()
		module.memoizedInteractions = Set_upvr.new()
		module.pendingInteractionMap = Map_upvr.new()
	end
	if enableSuspenseCallback_upvr then
		module.hydrationCallbacks = nil
	end
	if _G.__DEV__ then
		if arg2 == BlockingRoot_upvr then
			module._debugRootType = "createBlockingRoot()"
			return module
		end
		if arg2 == ConcurrentRoot_upvr then
			module._debugRootType = "createRoot()"
			return module
		end
		if arg2 == LegacyRoot_upvr then
			module._debugRootType = "createLegacyRoot()"
		end
	end
	return module
end
local createHostRootFiber_upvr = require(script.Parent["ReactFiber.new"]).createHostRootFiber
local initializeUpdateQueue_upvr = require(script.Parent["ReactUpdateQueue.new"]).initializeUpdateQueue
function module_2.createFiberRoot(arg1, arg2, arg3, arg4) -- Line 104
	--[[ Upvalues[4]:
		[1]: FiberRootNode_upvr (readonly)
		[2]: enableSuspenseCallback_upvr (readonly)
		[3]: createHostRootFiber_upvr (readonly)
		[4]: initializeUpdateQueue_upvr (readonly)
	]]
	local FiberRootNode_result1 = FiberRootNode_upvr(arg1, arg2, arg3)
	if enableSuspenseCallback_upvr then
		FiberRootNode_result1.hydrationCallbacks = arg4
	end
	local createHostRootFiber_upvr_result1 = createHostRootFiber_upvr(arg2)
	FiberRootNode_result1.current = createHostRootFiber_upvr_result1
	createHostRootFiber_upvr_result1.stateNode = FiberRootNode_result1
	initializeUpdateQueue_upvr(createHostRootFiber_upvr_result1)
	return FiberRootNode_result1
end
return module_2