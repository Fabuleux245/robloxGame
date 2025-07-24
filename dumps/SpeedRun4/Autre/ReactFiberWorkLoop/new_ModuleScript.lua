-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:18
-- Luau version 6, Types version 3
-- Time taken: 0.068691 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local __DEV___upvr = _G.__DEV__
local __YOLO___upvr = _G.__YOLO__
local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local Set_upvr = require(Parent.LuauPolyfill).Set
local module_2_upvr = {}
local ReactFiberLane_upvr = require(script.Parent.ReactFiberLane)
local Scheduler_upvr = require(Parent.Scheduler)
local new = require(script.Parent["ReactFiberStack.new"])
local ReactFeatureFlags_upvr = require(Parent.Shared).ReactFeatureFlags
local enableDebugTracing_upvr = ReactFeatureFlags_upvr.enableDebugTracing
local enableSchedulingProfiler_upvr = ReactFeatureFlags_upvr.enableSchedulingProfiler
local enableDoubleInvokingEffects_upvr = ReactFeatureFlags_upvr.enableDoubleInvokingEffects
local Shared = require(Parent.Shared)
local describeError_upvr = require(Parent.Shared).describeError
local ReactSharedInternals = Shared.ReactSharedInternals
local invariant_upvr = Shared.invariant
local new_3 = require(script.Parent["SchedulerWithReactIntegration.new"])
local scheduleCallback_upvr = new_3.scheduleCallback
local getCurrentPriorityLevel_upvr = new_3.getCurrentPriorityLevel
local runWithPriority_upvr = new_3.runWithPriority
local now_upvr = new_3.now
local NoPriority_upvr = new_3.NoPriority
local ImmediatePriority_upvr = new_3.ImmediatePriority
local UserBlockingPriority_upvr = new_3.UserBlockingPriority
local NormalPriority_upvr = new_3.NormalPriority
local flushSyncCallbackQueue_upvr = new_3.flushSyncCallbackQueue
local DebugTracing_upvr = require(script.Parent.DebugTracing)
local SchedulingProfiler_upvr = require(script.Parent.SchedulingProfiler)
local tracing = require(Parent.Scheduler).tracing
local __interactionsRef_upvr = tracing.__interactionsRef
local __subscriberRef_upvr = tracing.__subscriberRef
local ReactFiberHostConfig_upvr = require(script.Parent.ReactFiberHostConfig)
local new_4_upvr = require(script.Parent["ReactFiber.new"])
local ReactTypeOfMode_upvr = require(script.Parent.ReactTypeOfMode)
local ReactWorkTags_upvr = require(script.Parent.ReactWorkTags)
local ReactFiberFlags_upvr = require(script.Parent.ReactFiberFlags)
local SyncLane_upvr = ReactFiberLane_upvr.SyncLane
local SyncBatchedLane_upvr = ReactFiberLane_upvr.SyncBatchedLane
local NoTimestamp_upvr = ReactFiberLane_upvr.NoTimestamp
local includesSomeLane_upvr = ReactFiberLane_upvr.includesSomeLane
local isSubsetOfLanes_upvr = ReactFiberLane_upvr.isSubsetOfLanes
local mergeLanes_upvr = ReactFiberLane_upvr.mergeLanes
local includesOnlyRetries_upvr = ReactFiberLane_upvr.includesOnlyRetries
local getNextLanes_upvr = ReactFiberLane_upvr.getNextLanes
local setCurrentUpdateLanePriority_upvr = ReactFiberLane_upvr.setCurrentUpdateLanePriority
local getCurrentUpdateLanePriority_upvr = ReactFiberLane_upvr.getCurrentUpdateLanePriority
local getLanesToRetrySynchronouslyOnError_upvr = ReactFiberLane_upvr.getLanesToRetrySynchronouslyOnError
local markRootUpdated_upvr = ReactFiberLane_upvr.markRootUpdated
local markRootPinged_upvr = ReactFiberLane_upvr.markRootPinged
local schedulerPriorityToLanePriority_upvr = ReactFiberLane_upvr.schedulerPriorityToLanePriority
local new_5 = require(script.Parent["ReactFiberUnwindWork.new"])
local unwindInterruptedWork_upvr = new_5.unwindInterruptedWork
local new_2 = require(script.Parent["ReactFiberThrow.new"])
local new_6_upvr = require(script.Parent["ReactFiberCommitWork.new"])
local commitDeletion_upvr = new_6_upvr.commitDeletion
local enqueueUpdate_upvr = require(script.Parent["ReactUpdateQueue.new"]).enqueueUpdate
local resetContextDependencies_upvr = require(script.Parent["ReactFiberNewContext.new"]).resetContextDependencies
local RobloxReactProfiling_upvr = require(script.Parent.RobloxReactProfiling)
local tbl_2_upvr = {
	resetHooksAfterThrowRef = nil;
	ContextOnlyDispatcherRef = nil;
	getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = nil;
	originalBeginWorkRef = nil;
	completeWorkRef = nil;
}
local function var61_upvr(arg1, arg2, arg3) -- Line 242
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if not tbl_2_upvr.originalBeginWorkRef then
		tbl_2_upvr.originalBeginWorkRef = require(script.Parent["ReactFiberBeginWork.new"]).beginWork
	end
	return tbl_2_upvr.originalBeginWorkRef(arg1, arg2, arg3)
end
local function _(arg1, arg2, arg3) -- Line 254
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if not tbl_2_upvr.completeWorkRef then
		tbl_2_upvr.completeWorkRef = require(script.Parent["ReactFiberCompleteWork.new"]).completeWork
	end
	return tbl_2_upvr.completeWorkRef(arg1, arg2, arg3)
end
local var63_upvw
local function _() -- Line 268, Named "initReactFiberHooks"
	--[[ Upvalues[2]:
		[1]: var63_upvw (read and write)
		[2]: tbl_2_upvr (readonly)
	]]
	var63_upvw = require(script.Parent["ReactFiberHooks.new"])
	tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
	tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
	tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
end
local function _() -- Line 277
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: var63_upvw (read and write)
	]]
	if not tbl_2_upvr.resetHooksAfterThrowRef then
		var63_upvw = require(script.Parent["ReactFiberHooks.new"])
		tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
		tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
		tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
	end
	return tbl_2_upvr.resetHooksAfterThrowRef()
end
local function _() -- Line 285
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: var63_upvw (read and write)
	]]
	if not tbl_2_upvr.ContextOnlyDispatcherRef then
		var63_upvw = require(script.Parent["ReactFiberHooks.new"])
		tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
		tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
		tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
	end
	return tbl_2_upvr.ContextOnlyDispatcherRef
end
local function _() -- Line 293
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: var63_upvw (read and write)
	]]
	if not tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef then
		var63_upvw = require(script.Parent["ReactFiberHooks.new"])
		tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
		tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
		tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
	end
	return tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef()
end
local createCapturedValue_upvr = require(script.Parent.ReactCapturedValue).createCapturedValue
local new_7_upvr = require(script.Parent["ReactProfilerTimer.new"])
local getComponentName_upvr = require(Parent.Shared).getComponentName
local new_upvr = require(script.Parent["ReactStrictModeWarnings.new"])
local ReactCurrentFiber_upvr = require(script.Parent.ReactCurrentFiber)
local resetCurrentFiber_upvr = ReactCurrentFiber_upvr.resetCurrentFiber
local setCurrentFiber_upvr = ReactCurrentFiber_upvr.setCurrentFiber
local ReactErrorUtils = require(Parent.Shared).ReactErrorUtils
local invokeGuardedCallback_upvr = ReactErrorUtils.invokeGuardedCallback
local hasCaughtError_upvr = ReactErrorUtils.hasCaughtError
local clearCaughtError_upvr = ReactErrorUtils.clearCaughtError
local doesFiberContain_upvr = require(script.Parent.ReactFiberTreeReflection).doesFiberContain
local ReactCurrentDispatcher_upvr = ReactSharedInternals.ReactCurrentDispatcher
local ReactCurrentOwner_upvr = ReactSharedInternals.ReactCurrentOwner
local IsSomeRendererActing_upvr = ReactSharedInternals.IsSomeRendererActing
local tbl_upvr = {}
module_2_upvr.NoContext = 0
module_2_upvr.RetryAfterError = 64
local module_upvr = {
	Incomplete = 0;
	FatalErrored = 1;
	Errored = 2;
	Suspended = 3;
	SuspendedWithDelay = 4;
	Completed = 5;
}
local var84_upvw = 0
local var85_upvw
local var86_upvw
local NoLanes_upvw_4 = ReactFiberLane_upvr.NoLanes
module_2_upvr.subtreeRenderLanes = ReactFiberLane_upvr.NoLanes
local any_createCursor_result1_upvr = new.createCursor(ReactFiberLane_upvr.NoLanes)
local Incomplete_upvw = module_upvr.Incomplete
local var90_upvw
local NoLanes_upvw_5 = ReactFiberLane_upvr.NoLanes
local ReactFiberWorkInProgress_upvr = require(script.Parent.ReactFiberWorkInProgress)
local workInProgressRootSkippedLanes_upvr = ReactFiberWorkInProgress_upvr.workInProgressRootSkippedLanes
local NoLanes_upvw_7 = ReactFiberLane_upvr.NoLanes
local NoLanes_upvw_2 = ReactFiberLane_upvr.NoLanes
local var96_upvw
local var97_upvw = 0
local var98_upvw = math.huge
local function _() -- Line 429, Named "resetRenderTimer"
	--[[ Upvalues[2]:
		[1]: var98_upvw (read and write)
		[2]: now_upvr (readonly)
	]]
	var98_upvw = now_upvr() + 500
end
function module_2_upvr.getRenderTargetTime() -- Line 433
	--[[ Upvalues[1]:
		[1]: var98_upvw (read and write)
	]]
	return var98_upvw
end
local var100_upvw = false
local var101_upvw
local var102_upvw
local var103_upvw = false
local var104_upvw
local var105_upvw = NoPriority_upvr
local NoLanes_upvw_6 = ReactFiberLane_upvr.NoLanes
local var107_upvw
local var108_upvw = 0
local var109_upvw
local var110_upvw = 0
local var111_upvw
local var112_upvw = NoTimestamp_upvr
local NoLanes_upvw_3 = ReactFiberLane_upvr.NoLanes
local NoLanes_upvw = ReactFiberLane_upvr.NoLanes
local var115_upvw
local var116_upvw = false
function module_2_upvr.getWorkInProgressRoot() -- Line 473
	--[[ Upvalues[1]:
		[1]: var85_upvw (read and write)
	]]
	return var85_upvw
end
function module_2_upvr.requestEventTime() -- Line 477
	--[[ Upvalues[4]:
		[1]: var84_upvw (read and write)
		[2]: now_upvr (readonly)
		[3]: var112_upvw (read and write)
		[4]: NoTimestamp_upvr (readonly)
	]]
	if bit32.band(var84_upvw, 48) ~= 0 then
		return now_upvr()
	end
	if var112_upvw ~= NoTimestamp_upvr then
		return var112_upvw
	end
	var112_upvw = now_upvr()
	return var112_upvw
end
local pickArbitraryLane_upvr = ReactFiberLane_upvr.pickArbitraryLane
local ReactFiberTransition_upvr = require(script.Parent.ReactFiberTransition)
local findTransitionLane_upvr = ReactFiberLane_upvr.findTransitionLane
local findUpdateLane_upvr = ReactFiberLane_upvr.findUpdateLane
function module_2_upvr.requestUpdateLane(arg1) -- Line 499
	--[[ Upvalues[22]:
		[1]: ReactTypeOfMode_upvr (readonly)
		[2]: SyncLane_upvr (readonly)
		[3]: getCurrentPriorityLevel_upvr (readonly)
		[4]: ImmediatePriority_upvr (readonly)
		[5]: SyncBatchedLane_upvr (readonly)
		[6]: ReactFeatureFlags_upvr (readonly)
		[7]: var84_upvw (read and write)
		[8]: NoLanes_upvw_4 (read and write)
		[9]: ReactFiberLane_upvr (readonly)
		[10]: pickArbitraryLane_upvr (readonly)
		[11]: NoLanes_upvw_3 (read and write)
		[12]: NoLanes_upvw_5 (read and write)
		[13]: ReactFiberTransition_upvr (readonly)
		[14]: NoLanes_upvw (read and write)
		[15]: var96_upvw (read and write)
		[16]: findTransitionLane_upvr (readonly)
		[17]: UserBlockingPriority_upvr (readonly)
		[18]: findUpdateLane_upvr (readonly)
		[19]: schedulerPriorityToLanePriority_upvr (readonly)
		[20]: getCurrentUpdateLanePriority_upvr (readonly)
		[21]: __DEV___upvr (readonly)
		[22]: console_upvr (readonly)
	]]
	local var129
	if var129 == ReactTypeOfMode_upvr.NoMode then
		var129 = SyncLane_upvr
		return var129
	end
	var129 = bit32.band(arg1.mode, ReactTypeOfMode_upvr.ConcurrentMode)
	if var129 == ReactTypeOfMode_upvr.NoMode then
		if getCurrentPriorityLevel_upvr() == ImmediatePriority_upvr then
			var129 = SyncLane_upvr
			return var129
		end
		var129 = SyncBatchedLane_upvr
		return var129
	end
	var129 = ReactFeatureFlags_upvr.deferRenderPhaseUpdateToNextBatch
	if not var129 then
		var129 = bit32.band(var84_upvw, 16)
		if var129 ~= 0 then
			var129 = NoLanes_upvw_4
			if var129 ~= ReactFiberLane_upvr.NoLanes then
				var129 = pickArbitraryLane_upvr(NoLanes_upvw_4)
				return var129
			end
		end
	end
	var129 = NoLanes_upvw_3
	if var129 == ReactFiberLane_upvr.NoLanes then
		var129 = NoLanes_upvw_5
		NoLanes_upvw_3 = var129
	end
	if ReactFiberTransition_upvr.requestCurrentTransition() == ReactFiberTransition_upvr.NoTransition then
		var129 = false
	else
		var129 = true
	end
	if var129 then
		if NoLanes_upvw ~= ReactFiberLane_upvr.NoLanes then
			if var96_upvw ~= nil then
				NoLanes_upvw = var96_upvw.pendingLanes
			else
				NoLanes_upvw = ReactFiberLane_upvr.NoLanes
			end
		end
		return findTransitionLane_upvr(NoLanes_upvw_3, NoLanes_upvw)
	end
	if bit32.band(var84_upvw, 4) ~= 0 and getCurrentPriorityLevel_upvr() == UserBlockingPriority_upvr then
		return findUpdateLane_upvr(ReactFiberLane_upvr.InputDiscreteLanePriority, NoLanes_upvw_3)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var51_result1 = schedulerPriorityToLanePriority_upvr(getCurrentPriorityLevel_upvr())
	if ReactFeatureFlags_upvr.decoupleUpdatePriorityFromScheduler then
		local var47_result1_2 = getCurrentUpdateLanePriority_upvr()
		if var51_result1 ~= var47_result1_2 and var47_result1_2 ~= ReactFiberLane_upvr.NoLanePriority and __DEV___upvr then
			console_upvr.error("Expected current scheduler lane priority %s to match current update lane priority %s", tostring(var51_result1), tostring(var47_result1_2))
		end
	end
	return findUpdateLane_upvr(var51_result1, NoLanes_upvw_3)
end
local findRetryLane_upvr = ReactFiberLane_upvr.findRetryLane
function requestRetryLane(arg1) -- Line 603
	--[[ Upvalues[9]:
		[1]: ReactTypeOfMode_upvr (readonly)
		[2]: SyncLane_upvr (readonly)
		[3]: getCurrentPriorityLevel_upvr (readonly)
		[4]: ImmediatePriority_upvr (readonly)
		[5]: SyncBatchedLane_upvr (readonly)
		[6]: NoLanes_upvw_3 (read and write)
		[7]: ReactFiberLane_upvr (readonly)
		[8]: NoLanes_upvw_5 (read and write)
		[9]: findRetryLane_upvr (readonly)
	]]
	local mode_2 = arg1.mode
	if bit32.band(mode_2, ReactTypeOfMode_upvr.BlockingMode) == ReactTypeOfMode_upvr.NoMode then
		return SyncLane_upvr
	end
	if bit32.band(mode_2, ReactTypeOfMode_upvr.ConcurrentMode) == ReactTypeOfMode_upvr.NoMode then
		if getCurrentPriorityLevel_upvr() == ImmediatePriority_upvr then
			return SyncLane_upvr
		end
		return SyncBatchedLane_upvr
	end
	if NoLanes_upvw_3 == ReactFiberLane_upvr.NoLanes then
		NoLanes_upvw_3 = NoLanes_upvw_5
	end
	return findRetryLane_upvr(NoLanes_upvw_3)
end
local var148_upvw
function module_2_upvr.scheduleUpdateOnFiber(arg1, arg2, arg3) -- Line 625
	--[[ Upvalues[21]:
		[1]: tbl_upvr (readonly)
		[2]: markRootUpdated_upvr (readonly)
		[3]: var85_upvw (read and write)
		[4]: ReactFeatureFlags_upvr (readonly)
		[5]: var84_upvw (read and write)
		[6]: NoLanes_upvw_7 (read and write)
		[7]: mergeLanes_upvr (readonly)
		[8]: Incomplete_upvw (read and write)
		[9]: module_upvr (readonly)
		[10]: NoLanes_upvw_4 (read and write)
		[11]: getCurrentPriorityLevel_upvr (readonly)
		[12]: SyncLane_upvr (readonly)
		[13]: var148_upvw (read and write)
		[14]: var98_upvw (read and write)
		[15]: now_upvr (readonly)
		[16]: flushSyncCallbackQueue_upvr (readonly)
		[17]: UserBlockingPriority_upvr (readonly)
		[18]: ImmediatePriority_upvr (readonly)
		[19]: var107_upvw (read and write)
		[20]: Set_upvr (readonly)
		[21]: var96_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	tbl_upvr.checkForNestedUpdates()
	local any_markUpdateLaneFromFiberToRoot_result1 = tbl_upvr.markUpdateLaneFromFiberToRoot(arg1, arg2)
	if any_markUpdateLaneFromFiberToRoot_result1 == nil then
		return nil
	end
	markRootUpdated_upvr(any_markUpdateLaneFromFiberToRoot_result1, arg2, arg3)
	if any_markUpdateLaneFromFiberToRoot_result1 == var85_upvw then
		tbl_upvr.warnAboutRenderPhaseUpdatesInDEV(arg1)
		if ReactFeatureFlags_upvr.deferRenderPhaseUpdateToNextBatch or bit32.band(var84_upvw, 16) == 0 then
			NoLanes_upvw_7 = mergeLanes_upvr(NoLanes_upvw_7, arg2)
		end
		if Incomplete_upvw == module_upvr.SuspendedWithDelay then
			tbl_upvr.markRootSuspended(any_markUpdateLaneFromFiberToRoot_result1, NoLanes_upvw_4)
		end
	end
	local var20_result1 = getCurrentPriorityLevel_upvr()
	if arg2 == SyncLane_upvr then
		if bit32.band(var84_upvw, 8) ~= 0 and bit32.band(var84_upvw, 48) == 0 then
			tbl_upvr.schedulePendingInteractions(any_markUpdateLaneFromFiberToRoot_result1, arg2)
			tbl_upvr.performSyncWorkOnRoot(any_markUpdateLaneFromFiberToRoot_result1)
		else
			var148_upvw(any_markUpdateLaneFromFiberToRoot_result1, arg3)
			tbl_upvr.schedulePendingInteractions(any_markUpdateLaneFromFiberToRoot_result1, arg2)
			if var84_upvw == 0 then
				var98_upvw = now_upvr() + 500
				flushSyncCallbackQueue_upvr()
				-- KONSTANTWARNING: GOTO [156] #123
			end
		end
	else
		if bit32.band(var84_upvw, 4) ~= 0 and (var20_result1 == UserBlockingPriority_upvr or var20_result1 == ImmediatePriority_upvr) then
			if var107_upvw == nil then
				var107_upvw = Set_upvr.new({any_markUpdateLaneFromFiberToRoot_result1})
			else
				var107_upvw:add(any_markUpdateLaneFromFiberToRoot_result1)
			end
		end
		var148_upvw(any_markUpdateLaneFromFiberToRoot_result1, arg3)
		tbl_upvr.schedulePendingInteractions(any_markUpdateLaneFromFiberToRoot_result1, arg2)
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [156] 123. Error Block 27 start (CF ANALYSIS FAILED)
	var96_upvw = any_markUpdateLaneFromFiberToRoot_result1
	do
		return any_markUpdateLaneFromFiberToRoot_result1
	end
	-- KONSTANTERROR: [156] 123. Error Block 27 end (CF ANALYSIS FAILED)
end
function tbl_upvr.markUpdateLaneFromFiberToRoot(arg1, arg2) -- Line 735
	--[[ Upvalues[5]:
		[1]: mergeLanes_upvr (readonly)
		[2]: __DEV___upvr (readonly)
		[3]: ReactFiberFlags_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: ReactWorkTags_upvr (readonly)
	]]
	arg1.lanes = mergeLanes_upvr(arg1.lanes, arg2)
	local alternate_6 = arg1.alternate
	if alternate_6 ~= nil then
		alternate_6.lanes = mergeLanes_upvr(alternate_6.lanes, arg2)
	end
	local var145
	if var145 and alternate_6 == nil then
		var145 = bit32.band(arg1.flags, bit32.bor(ReactFiberFlags_upvr.Placement, ReactFiberFlags_upvr.Hydrating))
		if var145 ~= ReactFiberFlags_upvr.NoFlags then
			var145 = tbl_upvr.warnAboutUpdateOnNotYetMountedFiberInDEV
			var145(arg1)
		end
	end
	var145 = arg1
	local return__3 = arg1.return_
	while return__3 ~= nil do
		return__3.childLanes = mergeLanes_upvr(return__3.childLanes, arg2)
		local alternate_2 = return__3.alternate
		if alternate_2 ~= nil then
			alternate_2.childLanes = mergeLanes_upvr(alternate_2.childLanes, arg2)
		elseif __DEV___upvr and bit32.band(return__3.flags, bit32.bor(ReactFiberFlags_upvr.Placement, ReactFiberFlags_upvr.Hydrating)) ~= ReactFiberFlags_upvr.NoFlags then
			tbl_upvr.warnAboutUpdateOnNotYetMountedFiberInDEV(arg1)
		end
		var145 = return__3
	end
	if var145.tag == ReactWorkTags_upvr.HostRoot then
		return var145.stateNode
	end
	return nil
end
function var148_upvw(arg1, arg2) -- Line 790
	--[[ Upvalues[13]:
		[1]: markStarvedLanesAsExpired_upvr (readonly)
		[2]: var85_upvw (read and write)
		[3]: NoLanes_upvw_4 (read and write)
		[4]: ReactFiberLane_upvr (readonly)
		[5]: getNextLanes_upvr (readonly)
		[6]: returnNextLanesPriority_upvr (readonly)
		[7]: cancelCallback_upvr (readonly)
		[8]: scheduleSyncCallback_upvr (readonly)
		[9]: RobloxReactProfiling_upvr (readonly)
		[10]: tbl_upvr (readonly)
		[11]: scheduleCallback_upvr (readonly)
		[12]: ImmediatePriority_upvr (readonly)
		[13]: lanePriorityToSchedulerPriority_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local callbackNode = arg1.callbackNode
	markStarvedLanesAsExpired_upvr(arg1, arg2)
	local var156
	local var157
	if arg1 == var85_upvw then
		var156 = NoLanes_upvw_4
	else
		var156 = ReactFiberLane_upvr.NoLanes
	end
	var157 = var156
	local returnNextLanesPriority_upvr_result1 = returnNextLanesPriority_upvr()
	var157 = ReactFiberLane_upvr.NoLanes
	if getNextLanes_upvr(arg1, var157) == var157 then
		if callbackNode ~= nil then
			var157 = cancelCallback_upvr
			var157(callbackNode)
			var157 = nil
			arg1.callbackNode = var157
			var157 = ReactFiberLane_upvr.NoLanePriority
			arg1.callbackPriority = var157
		end
	else
		if callbackNode ~= nil then
			var157 = arg1.callbackPriority
			if var157 == returnNextLanesPriority_upvr_result1 then return end
			cancelCallback_upvr(callbackNode)
		end
		var157 = nil
		if returnNextLanesPriority_upvr_result1 == ReactFiberLane_upvr.SyncLanePriority then
			var157 = scheduleSyncCallback_upvr(function() -- Line 835
				--[[ Upvalues[3]:
					[1]: RobloxReactProfiling_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				RobloxReactProfiling_upvr.profileRootAfterYielding(RobloxReactProfiling_upvr.profileRootBeforeUnitOfWork(arg1))
				return tbl_upvr.performSyncWorkOnRoot(arg1)
			end)
			-- KONSTANTWARNING: GOTO [89] #74
		end
		if returnNextLanesPriority_upvr_result1 == ReactFiberLane_upvr.SyncBatchedLanePriority then
			var157 = scheduleCallback_upvr(ImmediatePriority_upvr, function() -- Line 843
				--[[ Upvalues[3]:
					[1]: RobloxReactProfiling_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				RobloxReactProfiling_upvr.profileRootAfterYielding(RobloxReactProfiling_upvr.profileRootBeforeUnitOfWork(arg1))
				return tbl_upvr.performSyncWorkOnRoot(arg1)
			end)
		else
			var157 = scheduleCallback_upvr(lanePriorityToSchedulerPriority_upvr(returnNextLanesPriority_upvr_result1), function() -- Line 853
				--[[ Upvalues[3]:
					[1]: RobloxReactProfiling_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: tbl_upvr (copied, readonly)
				]]
				RobloxReactProfiling_upvr.profileRootAfterYielding(RobloxReactProfiling_upvr.profileRootBeforeUnitOfWork(arg1))
				return tbl_upvr.performConcurrentWorkOnRoot(arg1)
			end)
		end
		-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [89] 74. Error Block 20 start (CF ANALYSIS FAILED)
		arg1.callbackPriority = returnNextLanesPriority_upvr_result1
		arg1.callbackNode = var157
		-- KONSTANTERROR: [89] 74. Error Block 20 end (CF ANALYSIS FAILED)
	end
end
local markStarvedLanesAsExpired_upvr = ReactFiberLane_upvr.markStarvedLanesAsExpired
local returnNextLanesPriority_upvr = ReactFiberLane_upvr.returnNextLanesPriority
local cancelCallback_upvr = new_3.cancelCallback
local scheduleSyncCallback_upvr = new_3.scheduleSyncCallback
local lanePriorityToSchedulerPriority_upvr = ReactFiberLane_upvr.lanePriorityToSchedulerPriority
local var149_upvw = var148_upvw
function tbl_upvr.performConcurrentWorkOnRoot(arg1) -- Line 869
	--[[ Upvalues[22]:
		[1]: var112_upvw (read and write)
		[2]: NoTimestamp_upvr (readonly)
		[3]: NoLanes_upvw_3 (read and write)
		[4]: ReactFiberLane_upvr (readonly)
		[5]: NoLanes_upvw (read and write)
		[6]: invariant_upvr (readonly)
		[7]: var84_upvw (read and write)
		[8]: module_2_upvr (readonly)
		[9]: getNextLanes_upvr (readonly)
		[10]: var85_upvw (read and write)
		[11]: NoLanes_upvw_4 (read and write)
		[12]: tbl_upvr (readonly)
		[13]: includesSomeLane_upvr (readonly)
		[14]: NoLanes_upvw_5 (read and write)
		[15]: NoLanes_upvw_7 (read and write)
		[16]: module_upvr (readonly)
		[17]: ReactFiberHostConfig_upvr (readonly)
		[18]: getLanesToRetrySynchronouslyOnError_upvr (readonly)
		[19]: var90_upvw (read and write)
		[20]: var149_upvw (read and write)
		[21]: now_upvr (readonly)
		[22]: RobloxReactProfiling_upvr (readonly)
	]]
	var112_upvw = NoTimestamp_upvr
	NoLanes_upvw_3 = ReactFiberLane_upvr.NoLanes
	NoLanes_upvw = ReactFiberLane_upvr.NoLanes
	local var163
	if bit32.band(var84_upvw, 48) ~= 0 then
		var163 = false
	else
		var163 = true
	end
	local var168
	invariant_upvr(var163, "Should not already be working.")
	var163 = module_2_upvr.flushPassiveEffects()
	if var163 and arg1.callbackNode ~= arg1.callbackNode then
		return nil
	end
	if arg1 == var85_upvw then
		var168 = NoLanes_upvw_4
	else
		var168 = ReactFiberLane_upvr.NoLanes
	end
	local getNextLanes_upvr_result1 = getNextLanes_upvr(arg1, var168)
	var168 = ReactFiberLane_upvr
	if getNextLanes_upvr_result1 == var168.NoLanes then
		return nil
	end
	var168 = tbl_upvr
	var168 = arg1
	local any_renderRootConcurrent_result1 = var168.renderRootConcurrent(var168, getNextLanes_upvr_result1)
	var168 = includesSomeLane_upvr(NoLanes_upvw_5, NoLanes_upvw_7)
	if var168 then
		var168 = tbl_upvr.prepareFreshStack
		var168(arg1, ReactFiberLane_upvr.NoLanes)
	else
		local var167
		var168 = module_upvr.Incomplete
		if any_renderRootConcurrent_result1 ~= var168 then
			var168 = module_upvr.Errored
			if any_renderRootConcurrent_result1 == var168 then
				var168 = bit32.bor(var84_upvw, 64)
				var84_upvw = var168
				var168 = arg1.hydrate
				if var168 then
					var168 = false
					arg1.hydrate = var168
					var168 = ReactFiberHostConfig_upvr.clearContainer
					var168(arg1.containerInfo)
				end
				var168 = getLanesToRetrySynchronouslyOnError_upvr(arg1)
				var167 = var168
				var168 = ReactFiberLane_upvr.NoLanes
				if var167 ~= var168 then
					var168 = tbl_upvr.renderRootSync(arg1, var167)
					any_renderRootConcurrent_result1 = var168
				end
			end
			var168 = module_upvr.FatalErrored
			if any_renderRootConcurrent_result1 == var168 then
				var168 = var90_upvw
				tbl_upvr.prepareFreshStack(arg1, ReactFiberLane_upvr.NoLanes)
				tbl_upvr.markRootSuspended(arg1, var167)
				var149_upvw(arg1, now_upvr())
				error(var168)
			end
			var168 = arg1.current.alternate
			arg1.finishedWork = var168
			arg1.finishedLanes = var167
			tbl_upvr.finishConcurrentRender(arg1, any_renderRootConcurrent_result1, var167)
		end
	end
	var168 = var149_upvw
	var168(arg1, now_upvr())
	var168 = arg1.callbackNode
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var168 == arg1.callbackNode then
		function var168() -- Line 964
			--[[ Upvalues[3]:
				[1]: RobloxReactProfiling_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			RobloxReactProfiling_upvr.profileRootAfterYielding(RobloxReactProfiling_upvr.profileRootBeforeUnitOfWork(arg1))
			return tbl_upvr.performConcurrentWorkOnRoot(arg1)
		end
		return var168
	end
	var168 = nil
	return var168
end
local var169_upvw = 0
function shouldForceFlushFallbacksInDEV() -- Line 981
	--[[ Upvalues[2]:
		[1]: __DEV___upvr (readonly)
		[2]: var169_upvw (read and write)
	]]
	local var170 = __DEV___upvr
	if var170 then
		if 0 >= var169_upvw then
			var170 = false
		else
			var170 = true
		end
	end
	return var170
end
local includesOnlyTransitions_upvr = ReactFiberLane_upvr.includesOnlyTransitions
local getMostRecentEventTime_upvr = ReactFiberLane_upvr.getMostRecentEventTime
function tbl_upvr.finishConcurrentRender(arg1, arg2, arg3) -- Line 986
	--[[ Upvalues[14]:
		[1]: module_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: includesOnlyRetries_upvr (readonly)
		[5]: var97_upvw (read and write)
		[6]: now_upvr (readonly)
		[7]: getNextLanes_upvr (readonly)
		[8]: ReactFiberLane_upvr (readonly)
		[9]: isSubsetOfLanes_upvr (readonly)
		[10]: module_2_upvr (readonly)
		[11]: markRootPinged_upvr (readonly)
		[12]: ReactFiberHostConfig_upvr (readonly)
		[13]: includesOnlyTransitions_upvr (readonly)
		[14]: getMostRecentEventTime_upvr (readonly)
	]]
	if arg2 == module_upvr.Incomplete or arg2 == module_upvr.FatalErrored then
		invariant_upvr(false, "Root did not complete. This is a bug in React.")
	else
		if arg2 == module_upvr.Errored then
			tbl_upvr.commitRoot(arg1)
			return
		end
		if arg2 == module_upvr.Suspended then
			tbl_upvr.markRootSuspended(arg1, arg3)
			if includesOnlyRetries_upvr(arg3) then
				if not shouldForceFlushFallbacksInDEV() then
					local var180 = var97_upvw + 500 - now_upvr()
					if 10 < var180 then
						if getNextLanes_upvr(arg1, ReactFiberLane_upvr.NoLanes) ~= ReactFiberLane_upvr.NoLanes then
						else
							local suspendedLanes_2 = arg1.suspendedLanes
							if not isSubsetOfLanes_upvr(suspendedLanes_2, arg3) then
								markRootPinged_upvr(arg1, suspendedLanes_2, module_2_upvr.requestEventTime())
								return
							end
							arg1.timeoutHandle = ReactFiberHostConfig_upvr.scheduleTimeout(function() -- Line 1035
								--[[ Upvalues[2]:
									[1]: tbl_upvr (copied, readonly)
									[2]: arg1 (readonly)
								]]
								return tbl_upvr.commitRoot(arg1)
							end, var180)
						end
					end
				end
			end
			tbl_upvr.commitRoot(arg1)
			return
		end
		if arg2 == module_upvr.SuspendedWithDelay then
			tbl_upvr.markRootSuspended(arg1, arg3)
			if includesOnlyTransitions_upvr(arg3) then
			else
				if not shouldForceFlushFallbacksInDEV() then
					local var183 = now_upvr() - getMostRecentEventTime_upvr(arg1, arg3)
					local var184 = jnd(var183) - var183
					if 10 < var184 then
						arg1.timeoutHandle = ReactFiberHostConfig_upvr.scheduleTimeout(function() -- Line 1070
							--[[ Upvalues[2]:
								[1]: tbl_upvr (copied, readonly)
								[2]: arg1 (readonly)
							]]
							return tbl_upvr.commitRoot(arg1)
						end, var184)
						return
					end
				end
				tbl_upvr.commitRoot(arg1)
			end
		end
		if arg2 == module_upvr.Completed then
			tbl_upvr.commitRoot(arg1)
			return
		end
		invariant_upvr(false, "Unknown root exit status.")
	end
end
local removeLanes_upvr = ReactFiberLane_upvr.removeLanes
local markRootSuspended_2_upvr = ReactFiberLane_upvr.markRootSuspended
function tbl_upvr.markRootSuspended(arg1, arg2) -- Line 1086
	--[[ Upvalues[4]:
		[1]: removeLanes_upvr (readonly)
		[2]: NoLanes_upvw_2 (read and write)
		[3]: NoLanes_upvw_7 (read and write)
		[4]: markRootSuspended_2_upvr (readonly)
	]]
	markRootSuspended_2_upvr(arg1, removeLanes_upvr(removeLanes_upvr(arg2, NoLanes_upvw_2), NoLanes_upvw_7))
end
local LegacyRoot_upvr = require(script.Parent.ReactRootTags).LegacyRoot
function tbl_upvr.performSyncWorkOnRoot(arg1) -- Line 1098
	--[[ Upvalues[18]:
		[1]: invariant_upvr (readonly)
		[2]: var84_upvw (read and write)
		[3]: module_2_upvr (readonly)
		[4]: var85_upvw (read and write)
		[5]: includesSomeLane_upvr (readonly)
		[6]: NoLanes_upvw_4 (read and write)
		[7]: tbl_upvr (readonly)
		[8]: NoLanes_upvw_5 (read and write)
		[9]: NoLanes_upvw_7 (read and write)
		[10]: getNextLanes_upvr (readonly)
		[11]: ReactFiberLane_upvr (readonly)
		[12]: LegacyRoot_upvr (readonly)
		[13]: module_upvr (readonly)
		[14]: ReactFiberHostConfig_upvr (readonly)
		[15]: getLanesToRetrySynchronouslyOnError_upvr (readonly)
		[16]: var90_upvw (read and write)
		[17]: var149_upvw (read and write)
		[18]: now_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var191
	if bit32.band(var84_upvw, 48) ~= 0 then
		var191 = false
	else
		var191 = true
	end
	invariant_upvr(var191, "Should not already be working.")
	var191 = module_2_upvr
	var191.flushPassiveEffects()
	var191 = nil
	if arg1 == var85_upvw and includesSomeLane_upvr(arg1.expiredLanes, NoLanes_upvw_4) then
		local var192 = NoLanes_upvw_4
		var191 = tbl_upvr.renderRootSync(arg1, var192)
		if includesSomeLane_upvr(NoLanes_upvw_5, NoLanes_upvw_7) then
			var191 = tbl_upvr.renderRootSync(arg1, getNextLanes_upvr(arg1, var192))
			-- KONSTANTWARNING: GOTO [69] #60
		end
	else
		var191 = tbl_upvr.renderRootSync(arg1, getNextLanes_upvr(arg1, ReactFiberLane_upvr.NoLanes))
	end
	if arg1.tag ~= LegacyRoot_upvr and var191 == module_upvr.Errored then
		var84_upvw = bit32.bor(var84_upvw, 64)
		if arg1.hydrate then
			arg1.hydrate = false
			ReactFiberHostConfig_upvr.clearContainer(arg1.containerInfo)
		end
		local getLanesToRetrySynchronouslyOnError_upvr_result1 = getLanesToRetrySynchronouslyOnError_upvr(arg1)
		if getLanesToRetrySynchronouslyOnError_upvr_result1 ~= ReactFiberLane_upvr.NoLanes then
			var191 = tbl_upvr.renderRootSync(arg1, getLanesToRetrySynchronouslyOnError_upvr_result1)
		end
	end
	if var191 == module_upvr.FatalErrored then
		tbl_upvr.prepareFreshStack(arg1, ReactFiberLane_upvr.NoLanes)
		tbl_upvr.markRootSuspended(arg1, getLanesToRetrySynchronouslyOnError_upvr_result1)
		var149_upvw(arg1, now_upvr())
		error(var90_upvw)
	end
	arg1.finishedWork = arg1.current.alternate
	arg1.finishedLanes = getLanesToRetrySynchronouslyOnError_upvr_result1
	tbl_upvr.commitRoot(arg1)
	var149_upvw(arg1, now_upvr())
	return nil
end
local markRootExpired_upvr = ReactFiberLane_upvr.markRootExpired
function module_2_upvr.flushRoot(arg1, arg2) -- Line 1180
	--[[ Upvalues[6]:
		[1]: markRootExpired_upvr (readonly)
		[2]: var149_upvw (read and write)
		[3]: now_upvr (readonly)
		[4]: var84_upvw (read and write)
		[5]: var98_upvw (read and write)
		[6]: flushSyncCallbackQueue_upvr (readonly)
	]]
	markRootExpired_upvr(arg1, arg2)
	var149_upvw(arg1, now_upvr())
	if bit32.band(var84_upvw, 48) == 0 then
		var98_upvw = now_upvr() + 500
		flushSyncCallbackQueue_upvr()
	end
end
function module_2_upvr.getExecutionContext() -- Line 1192
	--[[ Upvalues[1]:
		[1]: var84_upvw (read and write)
	]]
	return var84_upvw
end
function module_2_upvr.flushDiscreteUpdates() -- Line 1196
	--[[ Upvalues[5]:
		[1]: var84_upvw (read and write)
		[2]: __DEV___upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_2_upvr (readonly)
	]]
	if bit32.band(var84_upvw, 49) ~= 0 then
		if __DEV___upvr and bit32.band(var84_upvw, 16) ~= 0 then
			console_upvr.error("unstable_flushDiscreteUpdates: Cannot flush updates when React is ".."already rendering.")
		end
	else
		tbl_upvr.flushPendingDiscreteUpdates()
		module_2_upvr.flushPassiveEffects()
	end
end
function module_2_upvr.deferredUpdates(arg1) -- Line 1226
	--[[ Upvalues[8]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: getCurrentUpdateLanePriority_upvr (readonly)
		[3]: __YOLO___upvr (readonly)
		[4]: setCurrentUpdateLanePriority_upvr (readonly)
		[5]: ReactFiberLane_upvr (readonly)
		[6]: runWithPriority_upvr (readonly)
		[7]: describeError_upvr (readonly)
		[8]: NormalPriority_upvr (readonly)
	]]
	local var199
	if ReactFeatureFlags_upvr.decoupleUpdatePriorityFromScheduler then
		local var200
		var199 = nil
		if not __YOLO___upvr then
			setCurrentUpdateLanePriority_upvr(ReactFiberLane_upvr.DefaultLanePriority)
			local xpcall_result1_18, xpcall_result2_3 = xpcall(runWithPriority_upvr, describeError_upvr, NormalPriority_upvr, arg1)
			var200 = xpcall_result1_18
			var199 = xpcall_result2_3
		else
			var200 = true
			setCurrentUpdateLanePriority_upvr(ReactFiberLane_upvr.DefaultLanePriority)
			var199 = runWithPriority_upvr(NormalPriority_upvr, arg1)
		end
		setCurrentUpdateLanePriority_upvr(getCurrentUpdateLanePriority_upvr())
		if var200 then
			return var199
		end
		error(var199)
	else
		return runWithPriority_upvr(NormalPriority_upvr, arg1)
	end
end
local markDiscreteUpdatesExpired_upvr = ReactFiberLane_upvr.markDiscreteUpdatesExpired
function tbl_upvr.flushPendingDiscreteUpdates() -- Line 1255
	--[[ Upvalues[5]:
		[1]: var107_upvw (read and write)
		[2]: markDiscreteUpdatesExpired_upvr (readonly)
		[3]: var149_upvw (read and write)
		[4]: now_upvr (readonly)
		[5]: flushSyncCallbackQueue_upvr (readonly)
	]]
	if var107_upvw ~= nil then
		var107_upvw = nil
		var107_upvw:forEach(function(arg1) -- Line 1261
			--[[ Upvalues[3]:
				[1]: markDiscreteUpdatesExpired_upvr (copied, readonly)
				[2]: var149_upvw (copied, read and write)
				[3]: now_upvr (copied, readonly)
			]]
			markDiscreteUpdatesExpired_upvr(arg1)
			var149_upvw(arg1, now_upvr())
		end)
	end
	flushSyncCallbackQueue_upvr()
end
function module_2_upvr.batchedUpdates(arg1, arg2) -- Line 1270
	--[[ Upvalues[6]:
		[1]: var84_upvw (read and write)
		[2]: __YOLO___upvr (readonly)
		[3]: describeError_upvr (readonly)
		[4]: var98_upvw (read and write)
		[5]: now_upvr (readonly)
		[6]: flushSyncCallbackQueue_upvr (readonly)
	]]
	var84_upvw = bit32.bor(var84_upvw, 1)
	local var207
	local var208
	if not __YOLO___upvr then
		local xpcall_result1_14, xpcall_result2_8 = xpcall(arg1, describeError_upvr, arg2)
		var207 = xpcall_result1_14
		var208 = xpcall_result2_8
	else
		var207 = true
		var208 = arg1(arg2)
	end
	var84_upvw = var84_upvw
	if var84_upvw == 0 then
		var98_upvw = now_upvr() + 500
		flushSyncCallbackQueue_upvr()
	end
	if var207 then
		return var208
	end
	error(var208)
end
function module_2_upvr.batchedEventUpdates(arg1, arg2) -- Line 1298
	--[[ Upvalues[6]:
		[1]: var84_upvw (read and write)
		[2]: __YOLO___upvr (readonly)
		[3]: describeError_upvr (readonly)
		[4]: var98_upvw (read and write)
		[5]: now_upvr (readonly)
		[6]: flushSyncCallbackQueue_upvr (readonly)
	]]
	var84_upvw = bit32.bor(var84_upvw, 2)
	local var212
	local var213
	if not __YOLO___upvr then
		local xpcall_result1_10, xpcall_result2_5 = xpcall(arg1, describeError_upvr, arg2)
		var212 = xpcall_result1_10
		var213 = xpcall_result2_5
	else
		var212 = true
		var213 = arg1(arg2)
	end
	var84_upvw = var84_upvw
	if var84_upvw == 0 then
		var98_upvw = now_upvr() + 500
		flushSyncCallbackQueue_upvr()
	end
	if var212 then
		return var213
	end
	error(var213)
end
function module_2_upvr.discreteUpdates(arg1, arg2, arg3, arg4, arg5) -- Line 1326
	--[[ Upvalues[11]:
		[1]: var84_upvw (read and write)
		[2]: ReactFeatureFlags_upvr (readonly)
		[3]: getCurrentUpdateLanePriority_upvr (readonly)
		[4]: setCurrentUpdateLanePriority_upvr (readonly)
		[5]: ReactFiberLane_upvr (readonly)
		[6]: runWithPriority_upvr (readonly)
		[7]: describeError_upvr (readonly)
		[8]: UserBlockingPriority_upvr (readonly)
		[9]: var98_upvw (read and write)
		[10]: now_upvr (readonly)
		[11]: flushSyncCallbackQueue_upvr (readonly)
	]]
	local var217 = var84_upvw
	var84_upvw = bit32.bor(var84_upvw, 4)
	if ReactFeatureFlags_upvr.decoupleUpdatePriorityFromScheduler then
		setCurrentUpdateLanePriority_upvr(ReactFiberLane_upvr.InputDiscreteLanePriority)
		local xpcall_result1_21, xpcall_result2_22 = xpcall(runWithPriority_upvr, describeError_upvr, UserBlockingPriority_upvr, function() -- Line 1338
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
				[5]: arg5 (readonly)
			]]
			return arg1(arg2, arg3, arg4, arg5)
		end)
		setCurrentUpdateLanePriority_upvr(getCurrentUpdateLanePriority_upvr())
		var84_upvw = var217
		if var84_upvw == 0 then
			var98_upvw = now_upvr() + 500
			flushSyncCallbackQueue_upvr()
		end
		if xpcall_result1_21 then
			return xpcall_result2_22
		end
		error(xpcall_result2_22)
	else
		local xpcall_result1_8, xpcall_result2_21 = xpcall(runWithPriority_upvr, describeError_upvr, UserBlockingPriority_upvr, function() -- Line 1362
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
				[5]: arg5 (readonly)
			]]
			return arg1(arg2, arg3, arg4, arg5)
		end)
		var84_upvw = var217
		if var84_upvw == 0 then
			var98_upvw = now_upvr() + 500
			flushSyncCallbackQueue_upvr()
		end
		if xpcall_result1_8 then
			return xpcall_result2_21
		end
		error(xpcall_result2_21)
	end
end
function module_2_upvr.unbatchedUpdates(arg1, arg2) -- Line 1383
	--[[ Upvalues[6]:
		[1]: var84_upvw (read and write)
		[2]: __YOLO___upvr (readonly)
		[3]: describeError_upvr (readonly)
		[4]: var98_upvw (read and write)
		[5]: now_upvr (readonly)
		[6]: flushSyncCallbackQueue_upvr (readonly)
	]]
	var84_upvw = bit32.band(var84_upvw, 4294967294)
	var84_upvw = bit32.bor(var84_upvw, 8)
	local var225
	local var226
	if not __YOLO___upvr then
		local xpcall_result1_7, xpcall_result2_6 = xpcall(arg1, describeError_upvr, arg2)
		var225 = xpcall_result1_7
		var226 = xpcall_result2_6
	else
		var225 = true
		var226 = arg1(arg2)
	end
	var84_upvw = var84_upvw
	if var84_upvw == 0 then
		var98_upvw = now_upvr() + 500
		flushSyncCallbackQueue_upvr()
	end
	if var225 then
		return var226
	end
	error(var226)
end
function module_2_upvr.flushSync(arg1, arg2) -- Line 1411
	--[[ Upvalues[12]:
		[1]: var84_upvw (read and write)
		[2]: __DEV___upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: ReactFeatureFlags_upvr (readonly)
		[5]: getCurrentUpdateLanePriority_upvr (readonly)
		[6]: setCurrentUpdateLanePriority_upvr (readonly)
		[7]: ReactFiberLane_upvr (readonly)
		[8]: __YOLO___upvr (readonly)
		[9]: runWithPriority_upvr (readonly)
		[10]: describeError_upvr (readonly)
		[11]: ImmediatePriority_upvr (readonly)
		[12]: flushSyncCallbackQueue_upvr (readonly)
	]]
	local var230 = var84_upvw
	if bit32.band(var230, 48) ~= 0 then
		if __DEV___upvr then
			console_upvr.error("flushSync was called from inside a lifecycle method. React cannot ".."flush when React is already rendering. Consider moving this call to ".."a scheduler task or micro task.")
		end
		return arg1(arg2)
	end
	var84_upvw = bit32.bor(var84_upvw, 1)
	if ReactFeatureFlags_upvr.decoupleUpdatePriorityFromScheduler then
		setCurrentUpdateLanePriority_upvr(ReactFiberLane_upvr.SyncLanePriority)
		local var231
		local var232
		if not __YOLO___upvr then
			if arg1 then
				local xpcall_result1_16, xpcall_result2_12 = xpcall(runWithPriority_upvr, describeError_upvr, ImmediatePriority_upvr, function() -- Line 1441
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: arg2 (readonly)
					]]
					return arg1(arg2)
				end)
				var231 = xpcall_result1_16
				var232 = xpcall_result2_12
			else
				var231 = true
				var232 = nil
			end
		else
			var231 = true
			setCurrentUpdateLanePriority_upvr(ReactFiberLane_upvr.SyncLanePriority)
			if arg1 then
				var232 = runWithPriority_upvr(ImmediatePriority_upvr, function() -- Line 1454
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: arg2 (readonly)
					]]
					return arg1(arg2)
				end)
			else
				var232 = nil
			end
		end
		setCurrentUpdateLanePriority_upvr(getCurrentUpdateLanePriority_upvr())
		var84_upvw = var230
		flushSyncCallbackQueue_upvr()
		if not var231 then
			error(var232)
		end
		return var232
	end
	local var237
	var231 = nil
	local var238 = var231
	if not __YOLO___upvr then
		if arg1 then
			local xpcall_result1_9, xpcall_result2 = xpcall(runWithPriority_upvr, describeError_upvr, ImmediatePriority_upvr, function() -- Line 1484
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: arg2 (readonly)
				]]
				return arg1(arg2)
			end)
			var237 = xpcall_result1_9
			var238 = xpcall_result2
		else
			var237 = true
			var238 = nil
		end
	else
		var237 = true
		if arg1 then
			var238 = runWithPriority_upvr(ImmediatePriority_upvr, function() -- Line 1496
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: arg2 (readonly)
				]]
				return arg1(arg2)
			end)
		else
			var238 = nil
		end
	end
	var84_upvw = var230
	flushSyncCallbackQueue_upvr()
	if not var237 then
		error(var238)
	end
	return var238
end
function module_2_upvr.flushControlled(arg1) -- Line 1517
	--[[ Upvalues[11]:
		[1]: var84_upvw (read and write)
		[2]: ReactFeatureFlags_upvr (readonly)
		[3]: getCurrentUpdateLanePriority_upvr (readonly)
		[4]: setCurrentUpdateLanePriority_upvr (readonly)
		[5]: ReactFiberLane_upvr (readonly)
		[6]: runWithPriority_upvr (readonly)
		[7]: describeError_upvr (readonly)
		[8]: ImmediatePriority_upvr (readonly)
		[9]: var98_upvw (read and write)
		[10]: now_upvr (readonly)
		[11]: flushSyncCallbackQueue_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local const_number = 1
	var84_upvw = bit32.bor(var84_upvw, const_number)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 36. Error Block 5 start (CF ANALYSIS FAILED)
	error(const_number)
	do
		return
	end
	-- KONSTANTERROR: [41] 36. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 40. Error Block 13 start (CF ANALYSIS FAILED)
	local xpcall_result1_2, xpcall_result2_20 = xpcall(runWithPriority_upvr, describeError_upvr, ImmediatePriority_upvr, arg1)
	var84_upvw = var84_upvw
	if var84_upvw == 0 then
		var98_upvw = now_upvr() + 500
		flushSyncCallbackQueue_upvr()
	end
	if not xpcall_result1_2 then
		error(xpcall_result2_20)
	end
	-- KONSTANTERROR: [46] 40. Error Block 13 end (CF ANALYSIS FAILED)
end
local push_upvr = new.push
function module_2_upvr.pushRenderLanes(arg1, arg2) -- Line 1557
	--[[ Upvalues[5]:
		[1]: push_upvr (readonly)
		[2]: any_createCursor_result1_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: mergeLanes_upvr (readonly)
		[5]: NoLanes_upvw_5 (read and write)
	]]
	push_upvr(any_createCursor_result1_upvr, module_2_upvr.subtreeRenderLanes, arg1)
	module_2_upvr.subtreeRenderLanes = mergeLanes_upvr(module_2_upvr.subtreeRenderLanes, arg2)
	NoLanes_upvw_5 = mergeLanes_upvr(NoLanes_upvw_5, arg2)
end
local pop_upvr = new.pop
function module_2_upvr.popRenderLanes(arg1) -- Line 1563
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: any_createCursor_result1_upvr (readonly)
		[3]: pop_upvr (readonly)
	]]
	module_2_upvr.subtreeRenderLanes = any_createCursor_result1_upvr.current
	pop_upvr(any_createCursor_result1_upvr, arg1)
end
function tbl_upvr.prepareFreshStack(arg1, arg2) -- Line 1568
	--[[ Upvalues[19]:
		[1]: ReactFiberLane_upvr (readonly)
		[2]: ReactFiberHostConfig_upvr (readonly)
		[3]: var86_upvw (read and write)
		[4]: unwindInterruptedWork_upvr (readonly)
		[5]: var85_upvw (read and write)
		[6]: new_4_upvr (readonly)
		[7]: NoLanes_upvw_4 (read and write)
		[8]: module_2_upvr (readonly)
		[9]: NoLanes_upvw_5 (read and write)
		[10]: Incomplete_upvw (read and write)
		[11]: module_upvr (readonly)
		[12]: var90_upvw (read and write)
		[13]: workInProgressRootSkippedLanes_upvr (readonly)
		[14]: NoLanes_upvw_7 (read and write)
		[15]: NoLanes_upvw_2 (read and write)
		[16]: ReactFeatureFlags_upvr (readonly)
		[17]: var111_upvw (read and write)
		[18]: __DEV___upvr (readonly)
		[19]: new_upvr (readonly)
	]]
	arg1.finishedWork = nil
	arg1.finishedLanes = ReactFiberLane_upvr.NoLanes
	local timeoutHandle = arg1.timeoutHandle
	if timeoutHandle ~= ReactFiberHostConfig_upvr.noTimeout then
		arg1.timeoutHandle = ReactFiberHostConfig_upvr.noTimeout
		ReactFiberHostConfig_upvr.cancelTimeout(timeoutHandle)
	end
	if var86_upvw ~= nil then
		local return__2 = var86_upvw.return_
		while return__2 ~= nil do
			unwindInterruptedWork_upvr(return__2)
		end
	end
	var85_upvw = arg1
	var86_upvw = new_4_upvr.createWorkInProgress(arg1.current, nil)
	NoLanes_upvw_4 = arg2
	module_2_upvr.subtreeRenderLanes = arg2
	NoLanes_upvw_5 = arg2
	Incomplete_upvw = module_upvr.Incomplete
	var90_upvw = nil
	workInProgressRootSkippedLanes_upvr(ReactFiberLane_upvr.NoLanes)
	NoLanes_upvw_7 = ReactFiberLane_upvr.NoLanes
	NoLanes_upvw_2 = ReactFiberLane_upvr.NoLanes
	if ReactFeatureFlags_upvr.enableSchedulerTracing then
		var111_upvw = nil
	end
	if __DEV___upvr then
		new_upvr.discardPendingWarnings()
	end
end
local throwException_upvr = new_2.throwException
function tbl_upvr.handleError(arg1, arg2) -- Line 1608
	--[[ Upvalues[16]:
		[1]: var86_upvw (read and write)
		[2]: resetContextDependencies_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: var63_upvw (read and write)
		[5]: resetCurrentFiber_upvr (readonly)
		[6]: ReactCurrentOwner_upvr (readonly)
		[7]: Incomplete_upvw (read and write)
		[8]: module_upvr (readonly)
		[9]: var90_upvw (read and write)
		[10]: ReactFeatureFlags_upvr (readonly)
		[11]: ReactTypeOfMode_upvr (readonly)
		[12]: new_7_upvr (readonly)
		[13]: throwException_upvr (readonly)
		[14]: NoLanes_upvw_4 (read and write)
		[15]: module_2_upvr (readonly)
		[16]: tbl_upvr (readonly)
	]]
	while true do
		local var256_upvw = var86_upvw
		local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 1612
			--[[ Upvalues[19]:
				[1]: resetContextDependencies_upvr (copied, readonly)
				[2]: tbl_2_upvr (copied, readonly)
				[3]: var63_upvw (copied, read and write)
				[4]: resetCurrentFiber_upvr (copied, readonly)
				[5]: ReactCurrentOwner_upvr (copied, readonly)
				[6]: var256_upvw (read and write)
				[7]: Incomplete_upvw (copied, read and write)
				[8]: module_upvr (copied, readonly)
				[9]: var90_upvw (copied, read and write)
				[10]: arg2 (read and write)
				[11]: var86_upvw (copied, read and write)
				[12]: ReactFeatureFlags_upvr (copied, readonly)
				[13]: ReactTypeOfMode_upvr (copied, readonly)
				[14]: new_7_upvr (copied, readonly)
				[15]: throwException_upvr (copied, readonly)
				[16]: arg1 (readonly)
				[17]: NoLanes_upvw_4 (copied, read and write)
				[18]: module_2_upvr (copied, readonly)
				[19]: tbl_upvr (copied, readonly)
			]]
			resetContextDependencies_upvr()
			if not tbl_2_upvr.resetHooksAfterThrowRef then
				var63_upvw = require(script.Parent["ReactFiberHooks.new"])
				tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
				tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
				tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
			end
			resetCurrentFiber_upvr()
			ReactCurrentOwner_upvr.current = nil
			if var256_upvw == nil or var256_upvw.return_ == nil then
				Incomplete_upvw = module_upvr.FatalErrored
				var90_upvw = arg2
				var86_upvw = nil
			else
				if ReactFeatureFlags_upvr.enableProfilerTimer and bit32.band(var256_upvw.mode, ReactTypeOfMode_upvr.ProfileMode) ~= 0 then
					new_7_upvr.stopProfilerTimerIfRunningAndRecordDelta(var256_upvw, true)
				end
				throwException_upvr(arg1, var256_upvw.return_, var256_upvw, arg2, NoLanes_upvw_4, module_2_upvr.onUncaughtError, module_2_upvr.renderDidError)
				tbl_upvr.completeUnitOfWork(var256_upvw)
			end
		end)
		if not pcall_result1_3 then
			arg2 = pcall_result2_4
			if var86_upvw == var256_upvw and var256_upvw ~= nil then
				var256_upvw = var256_upvw.return_
				var86_upvw = var256_upvw
			else
				var256_upvw = var86_upvw
			end
		else
			return
		end
	end
end
function tbl_upvr.pushDispatcher() -- Line 1687
	--[[ Upvalues[3]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: var63_upvw (read and write)
	]]
	local current = ReactCurrentDispatcher_upvr.current
	if not tbl_2_upvr.ContextOnlyDispatcherRef then
		var63_upvw = require(script.Parent["ReactFiberHooks.new"])
		tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
		tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
		tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
	end
	ReactCurrentDispatcher_upvr.current = tbl_2_upvr.ContextOnlyDispatcherRef
	if current == nil then
		if not tbl_2_upvr.ContextOnlyDispatcherRef then
			var63_upvw = require(script.Parent["ReactFiberHooks.new"])
			tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
			tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
			tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
		end
		return tbl_2_upvr.ContextOnlyDispatcherRef
	end
	return current
end
function tbl_upvr.popDispatcher(arg1) -- Line 1704
	--[[ Upvalues[1]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
	]]
	ReactCurrentDispatcher_upvr.current = arg1
end
function tbl_upvr.pushInteractions(arg1) -- Line 1708
	--[[ Upvalues[2]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: __interactionsRef_upvr (readonly)
	]]
	if ReactFeatureFlags_upvr.enableSchedulerTracing then
		__interactionsRef_upvr.current = arg1.memoizedInteractions
		return __interactionsRef_upvr.current
	end
	return nil
end
function tbl_upvr.popInteractions(arg1) -- Line 1717
	--[[ Upvalues[2]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: __interactionsRef_upvr (readonly)
	]]
	if ReactFeatureFlags_upvr.enableSchedulerTracing then
		__interactionsRef_upvr.current = arg1
	end
end
function module_2_upvr.markCommitTimeOfFallback() -- Line 1723
	--[[ Upvalues[2]:
		[1]: var97_upvw (read and write)
		[2]: now_upvr (readonly)
	]]
	var97_upvw = now_upvr()
end
function module_2_upvr.markSkippedUpdateLanes(arg1) -- Line 1727
	--[[ Upvalues[1]:
		[1]: ReactFiberWorkInProgress_upvr (readonly)
	]]
	ReactFiberWorkInProgress_upvr.markSkippedUpdateLanes(arg1)
end
function module_2_upvr.renderDidSuspend() -- Line 1731
	--[[ Upvalues[2]:
		[1]: Incomplete_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if Incomplete_upvw == module_upvr.Incomplete then
		Incomplete_upvw = module_upvr.Suspended
	end
end
local includesNonIdleWork_upvr = ReactFiberLane_upvr.includesNonIdleWork
function module_2_upvr.renderDidSuspendDelayIfPossible() -- Line 1737
	--[[ Upvalues[8]:
		[1]: Incomplete_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: var85_upvw (read and write)
		[4]: includesNonIdleWork_upvr (readonly)
		[5]: workInProgressRootSkippedLanes_upvr (readonly)
		[6]: NoLanes_upvw_7 (read and write)
		[7]: tbl_upvr (readonly)
		[8]: NoLanes_upvw_4 (read and write)
	]]
	if Incomplete_upvw == module_upvr.Incomplete or Incomplete_upvw == module_upvr.Suspended then
		Incomplete_upvw = module_upvr.SuspendedWithDelay
	end
	if var85_upvw ~= nil and (includesNonIdleWork_upvr(workInProgressRootSkippedLanes_upvr()) or includesNonIdleWork_upvr(NoLanes_upvw_7)) then
		tbl_upvr.markRootSuspended(var85_upvw, NoLanes_upvw_4)
	end
end
function module_2_upvr.renderDidError() -- Line 1765
	--[[ Upvalues[2]:
		[1]: Incomplete_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if Incomplete_upvw ~= module_upvr.Completed then
		Incomplete_upvw = module_upvr.Errored
	end
end
function module_2_upvr.renderHasNotSuspendedYet() -- Line 1773
	--[[ Upvalues[2]:
		[1]: Incomplete_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	local var272
	if Incomplete_upvw ~= module_upvr.Incomplete then
		var272 = false
	else
		var272 = true
	end
	return var272
end
function tbl_upvr.renderRootSync(arg1, arg2) -- Line 1779
	--[[ Upvalues[17]:
		[1]: var84_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: var85_upvw (read and write)
		[4]: NoLanes_upvw_4 (read and write)
		[5]: __DEV___upvr (readonly)
		[6]: enableDebugTracing_upvr (readonly)
		[7]: DebugTracing_upvr (readonly)
		[8]: enableSchedulingProfiler_upvr (readonly)
		[9]: SchedulingProfiler_upvr (readonly)
		[10]: __YOLO___upvr (readonly)
		[11]: describeError_upvr (readonly)
		[12]: resetContextDependencies_upvr (readonly)
		[13]: ReactFeatureFlags_upvr (readonly)
		[14]: var86_upvw (read and write)
		[15]: invariant_upvr (readonly)
		[16]: ReactFiberLane_upvr (readonly)
		[17]: Incomplete_upvw (read and write)
	]]
	-- KONSTANTERROR: [79] 66. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 66. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [79.4]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [79.4293066824]
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		return nil ~= arg2
	end
	if nil ~= arg1 or INLINED_2() then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [79.5]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [79.7]
	if not nil then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not nil then
		-- KONSTANTWARNING: GOTO [52] #43
	end
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [81] 68. Error Block 35 start (CF ANALYSIS FAILED)
	resetContextDependencies_upvr()
	if ReactFeatureFlags_upvr.enableSchedulerTracing then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_upvr.popInteractions(nil)
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [92.2]
	var84_upvw = nil
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [96.3]
	tbl_upvr.popDispatcher(nil)
	if var86_upvw ~= nil then
		invariant_upvr(false, "Cannot commit an incomplete root. This error is likely caused by a ".."bug in React. Please file an issue.")
	end
	if __DEV___upvr and enableDebugTracing_upvr then
		DebugTracing_upvr.logRenderStopped()
	end
	if enableSchedulingProfiler_upvr then
		SchedulingProfiler_upvr.markRenderStopped()
	end
	var85_upvw = nil
	NoLanes_upvw_4 = ReactFiberLane_upvr.NoLanes
	do
		return Incomplete_upvw
	end
	-- KONSTANTERROR: [81] 68. Error Block 35 end (CF ANALYSIS FAILED)
end
function tbl_upvr.workLoopSync() -- Line 1855
	--[[ Upvalues[2]:
		[1]: var86_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	while var86_upvw ~= nil do
		tbl_upvr.performUnitOfWork(var86_upvw)
	end
end
function tbl_upvr.renderRootConcurrent(arg1, arg2) -- Line 1862
	--[[ Upvalues[19]:
		[1]: var84_upvw (read and write)
		[2]: tbl_upvr (readonly)
		[3]: var85_upvw (read and write)
		[4]: NoLanes_upvw_4 (read and write)
		[5]: var98_upvw (read and write)
		[6]: now_upvr (readonly)
		[7]: __DEV___upvr (readonly)
		[8]: enableDebugTracing_upvr (readonly)
		[9]: DebugTracing_upvr (readonly)
		[10]: enableSchedulingProfiler_upvr (readonly)
		[11]: SchedulingProfiler_upvr (readonly)
		[12]: __YOLO___upvr (readonly)
		[13]: describeError_upvr (readonly)
		[14]: resetContextDependencies_upvr (readonly)
		[15]: ReactFeatureFlags_upvr (readonly)
		[16]: var86_upvw (read and write)
		[17]: module_upvr (readonly)
		[18]: ReactFiberLane_upvr (readonly)
		[19]: Incomplete_upvw (read and write)
	]]
	var84_upvw = bit32.bor(var84_upvw, 16)
	if var85_upvw ~= arg1 or NoLanes_upvw_4 ~= arg2 then
		var98_upvw = now_upvr() + 500
		tbl_upvr.prepareFreshStack(arg1, arg2)
		tbl_upvr.startWorkOnPendingInteractions(arg1, arg2)
	end
	if __DEV___upvr then
		if enableDebugTracing_upvr then
			DebugTracing_upvr.logRenderStarted(arg2)
		end
	end
	if enableSchedulingProfiler_upvr then
		SchedulingProfiler_upvr.markRenderStarted(arg2)
	end
	while true do
		local var276
		local var277
		if not __YOLO___upvr then
			local xpcall_result1_23, xpcall_result2_13 = xpcall(tbl_upvr.workLoopConcurrent, describeError_upvr)
			var276 = xpcall_result1_23
			var277 = xpcall_result2_13
			if var276 then
				var277 = "break"
				-- KONSTANTWARNING: GOTO [78] #66
			end
		else
			var276 = true
			var277 = "break"
			tbl_upvr.workLoopConcurrent()
		end
		if var277 == "break" then break end
		if not var276 then
			tbl_upvr.handleError(arg1, var277)
		end
	end
	resetContextDependencies_upvr()
	if ReactFeatureFlags_upvr.enableSchedulerTracing then
		tbl_upvr.popInteractions(tbl_upvr.pushInteractions(arg1))
	end
	tbl_upvr.popDispatcher(tbl_upvr.pushDispatcher())
	var84_upvw = var84_upvw
	if __DEV___upvr and enableDebugTracing_upvr then
		DebugTracing_upvr.logRenderStopped()
	end
	if var86_upvw ~= nil then
		if enableSchedulingProfiler_upvr then
			SchedulingProfiler_upvr.markRenderYielded()
		end
		return module_upvr.Incomplete
	end
	if enableSchedulingProfiler_upvr then
		SchedulingProfiler_upvr.markRenderStopped()
	end
	var85_upvw = nil
	NoLanes_upvw_4 = ReactFiberLane_upvr.NoLanes
	return Incomplete_upvw
end
local shouldYield_upvr = new_3.shouldYield
function tbl_upvr.workLoopConcurrent() -- Line 1946
	--[[ Upvalues[3]:
		[1]: var86_upvw (read and write)
		[2]: shouldYield_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	while var86_upvw ~= nil and not shouldYield_upvr() do
		tbl_upvr.performUnitOfWork(var86_upvw)
	end
end
function tbl_upvr.performUnitOfWork(arg1) -- Line 1953
	--[[ Upvalues[10]:
		[1]: RobloxReactProfiling_upvr (readonly)
		[2]: setCurrentFiber_upvr (readonly)
		[3]: ReactFeatureFlags_upvr (readonly)
		[4]: ReactTypeOfMode_upvr (readonly)
		[5]: new_7_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: module_2_upvr (readonly)
		[8]: resetCurrentFiber_upvr (readonly)
		[9]: var86_upvw (read and write)
		[10]: ReactCurrentOwner_upvr (readonly)
	]]
	setCurrentFiber_upvr(arg1)
	local var283
	if ReactFeatureFlags_upvr.enableProfilerTimer and bit32.band(arg1.mode, ReactTypeOfMode_upvr.ProfileMode) ~= ReactTypeOfMode_upvr.NoMode then
		new_7_upvr.startProfilerTimer(arg1)
		var283 = tbl_upvr.beginWork(arg1.alternate, arg1, module_2_upvr.subtreeRenderLanes)
		new_7_upvr.stopProfilerTimerIfRunningAndRecordDelta(arg1, true)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var283 = tbl_upvr.beginWork(arg1.alternate, arg1, module_2_upvr.subtreeRenderLanes)
	end
	resetCurrentFiber_upvr()
	arg1.memoizedProps = arg1.pendingProps
	if var283 == nil then
		tbl_upvr.completeUnitOfWork(arg1)
	else
		var86_upvw = var283
	end
	ReactCurrentOwner_upvr.current = nil
	RobloxReactProfiling_upvr.profileUnitOfWorkAfter(RobloxReactProfiling_upvr.profileUnitOfWorkBefore(arg1))
end
local unwindWork_upvr = new_5.unwindWork
function tbl_upvr.completeUnitOfWork(arg1) -- Line 1991
	--[[ Upvalues[12]:
		[1]: ReactFiberFlags_upvr (readonly)
		[2]: setCurrentFiber_upvr (readonly)
		[3]: ReactFeatureFlags_upvr (readonly)
		[4]: ReactTypeOfMode_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: new_7_upvr (readonly)
		[8]: resetCurrentFiber_upvr (readonly)
		[9]: var86_upvw (read and write)
		[10]: unwindWork_upvr (readonly)
		[11]: Incomplete_upvw (read and write)
		[12]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [207] 142. Error Block 52 start (CF ANALYSIS FAILED)
	local sibling = arg1.sibling
	if sibling ~= nil then
		var86_upvw = sibling
		return
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [213.3]
	local var287
	var86_upvw = var287
	if var287 == nil then
		-- KONSTANTWARNING: GOTO [218] #150
	end
	-- KONSTANTERROR: [207] 142. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [217.656123]
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
function tbl_upvr.commitRoot(arg1) -- Line 2099
	--[[ Upvalues[5]:
		[1]: getCurrentPriorityLevel_upvr (readonly)
		[2]: runWithPriority_upvr (readonly)
		[3]: ImmediatePriority_upvr (readonly)
		[4]: RobloxReactProfiling_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local var20_result1_upvr = getCurrentPriorityLevel_upvr()
	runWithPriority_upvr(ImmediatePriority_upvr, function() -- Line 2101
		--[[ Upvalues[4]:
			[1]: RobloxReactProfiling_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var20_result1_upvr (readonly)
		]]
		RobloxReactProfiling_upvr.profileCommitBefore()
		RobloxReactProfiling_upvr.profileCommitAfter()
		return tbl_upvr.commitRootImpl(arg1, var20_result1_upvr)
	end)
	return nil
end
local markRootFinished_upvr = ReactFiberLane_upvr.markRootFinished
local hasDiscreteLanes_upvr = ReactFiberLane_upvr.hasDiscreteLanes
local recursivelyCommitLayoutEffects_upvr = new_6_upvr.recursivelyCommitLayoutEffects
local var370_upvw
local requestPaint_upvr = new_3.requestPaint
local onCommitRoot_upvr = require(script.Parent["ReactFiberDevToolsHook.new"]).onCommitRoot
local onCommitRoot_upvr_2 = require(script.Parent.ReactTestSelectors).onCommitRoot
function tbl_upvr.commitRootImpl(arg1, arg2) -- Line 2112
	--[[ Upvalues[55]:
		[1]: module_2_upvr (readonly)
		[2]: var104_upvw (read and write)
		[3]: invariant_upvr (readonly)
		[4]: var84_upvw (read and write)
		[5]: __DEV___upvr (readonly)
		[6]: enableDebugTracing_upvr (readonly)
		[7]: DebugTracing_upvr (readonly)
		[8]: enableSchedulingProfiler_upvr (readonly)
		[9]: SchedulingProfiler_upvr (readonly)
		[10]: ReactFiberLane_upvr (readonly)
		[11]: mergeLanes_upvr (readonly)
		[12]: markRootFinished_upvr (readonly)
		[13]: var107_upvw (read and write)
		[14]: hasDiscreteLanes_upvr (readonly)
		[15]: var85_upvw (read and write)
		[16]: var86_upvw (read and write)
		[17]: NoLanes_upvw_4 (read and write)
		[18]: ReactFiberFlags_upvr (readonly)
		[19]: ReactFeatureFlags_upvr (readonly)
		[20]: getCurrentUpdateLanePriority_upvr (readonly)
		[21]: setCurrentUpdateLanePriority_upvr (readonly)
		[22]: tbl_upvr (readonly)
		[23]: ReactCurrentOwner_upvr (readonly)
		[24]: var115_upvw (read and write)
		[25]: ReactFiberHostConfig_upvr (readonly)
		[26]: var116_upvw (read and write)
		[27]: new_7_upvr (readonly)
		[28]: setCurrentFiber_upvr (readonly)
		[29]: invokeGuardedCallback_upvr (readonly)
		[30]: recursivelyCommitLayoutEffects_upvr (readonly)
		[31]: hasCaughtError_upvr (readonly)
		[32]: clearCaughtError_upvr (readonly)
		[33]: var370_upvw (read and write)
		[34]: resetCurrentFiber_upvr (readonly)
		[35]: __YOLO___upvr (readonly)
		[36]: describeError_upvr (readonly)
		[37]: var103_upvw (read and write)
		[38]: scheduleCallback_upvr (readonly)
		[39]: NormalPriority_upvr (readonly)
		[40]: requestPaint_upvr (readonly)
		[41]: NoLanes_upvw_6 (read and write)
		[42]: var105_upvw (read and write)
		[43]: var111_upvw (read and write)
		[44]: var102_upvw (read and write)
		[45]: enableDoubleInvokingEffects_upvr (readonly)
		[46]: SyncLane_upvr (readonly)
		[47]: var109_upvw (read and write)
		[48]: var108_upvw (read and write)
		[49]: onCommitRoot_upvr (readonly)
		[50]: onCommitRoot_upvr_2 (readonly)
		[51]: var149_upvw (read and write)
		[52]: now_upvr (readonly)
		[53]: var100_upvw (read and write)
		[54]: var101_upvw (read and write)
		[55]: flushSyncCallbackQueue_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 206 start (CF ANALYSIS FAILED)
	repeat
		module_2_upvr.flushPassiveEffects()
	until var104_upvw == nil
	flushRenderPhaseStrictModeWarningsInDEV()
	if bit32.band(var84_upvw, 48) ~= 0 then
		-- KONSTANTWARNING: GOTO [23] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 206 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 185 start (CF ANALYSIS FAILED)
	invariant_upvr(true, "Should not already be working.")
	local finishedWork = arg1.finishedWork
	local finishedLanes_2 = arg1.finishedLanes
	if __DEV___upvr and enableDebugTracing_upvr then
		DebugTracing_upvr.logCommitStarted(finishedLanes_2)
	end
	if enableSchedulingProfiler_upvr then
		SchedulingProfiler_upvr.markCommitStarted(finishedLanes_2)
	end
	if finishedWork == nil then
		if __DEV___upvr and enableDebugTracing_upvr then
			DebugTracing_upvr.logCommitStopped()
		end
		if enableSchedulingProfiler_upvr then
			SchedulingProfiler_upvr.markCommitStopped(arg1)
		end
		return nil
	end
	arg1.finishedWork = nil
	local var305 = ReactFiberLane_upvr
	arg1.finishedLanes = var305.NoLanes
	if finishedWork == arg1.current then
		var305 = false
	else
		var305 = true
	end
	invariant_upvr(var305, "Cannot commit the same tree as before. This error is likely caused by ".."a bug in React. Please file an issue.")
	arg1.callbackNode = nil
	local mergeLanes_upvr_result1 = mergeLanes_upvr(finishedWork.lanes, finishedWork.childLanes)
	markRootFinished_upvr(arg1, mergeLanes_upvr_result1)
	if var107_upvw ~= nil then
		if not hasDiscreteLanes_upvr(mergeLanes_upvr_result1) then
			if var107_upvw:has(arg1) then
				var107_upvw:delete(arg1)
			end
		end
	end
	if arg1 == var85_upvw then
		var85_upvw = nil
		var86_upvw = nil
		NoLanes_upvw_4 = ReactFiberLane_upvr.NoLanes
	end
	if bit32.band(finishedWork.subtreeFlags, bit32.bor(ReactFiberFlags_upvr.BeforeMutationMask, ReactFiberFlags_upvr.MutationMask, ReactFiberFlags_upvr.LayoutMask, ReactFiberFlags_upvr.PassiveMask)) == ReactFiberFlags_upvr.NoFlags then
		-- KONSTANTWARNING: GOTO [156] #121
	end
	-- KONSTANTERROR: [22] 17. Error Block 185 end (CF ANALYSIS FAILED)
end
function tbl_upvr.commitBeforeMutationEffects(arg1) -- Line 2499
	--[[ Upvalues[11]:
		[1]: tbl_upvr (readonly)
		[2]: ReactFiberFlags_upvr (readonly)
		[3]: __DEV___upvr (readonly)
		[4]: setCurrentFiber_upvr (readonly)
		[5]: invokeGuardedCallback_upvr (readonly)
		[6]: hasCaughtError_upvr (readonly)
		[7]: clearCaughtError_upvr (readonly)
		[8]: module_2_upvr (readonly)
		[9]: resetCurrentFiber_upvr (readonly)
		[10]: __YOLO___upvr (readonly)
		[11]: describeError_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 75. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 75. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
local commitBeforeMutationLifeCycles_upvr = new_6_upvr.commitBeforeMutationLifeCycles
function tbl_upvr.commitBeforeMutationEffectsImpl(arg1) -- Line 2542
	--[[ Upvalues[14]:
		[1]: var116_upvw (read and write)
		[2]: var115_upvw (read and write)
		[3]: ReactWorkTags_upvr (readonly)
		[4]: new_6_upvr (readonly)
		[5]: doesFiberContain_upvr (readonly)
		[6]: ReactFiberHostConfig_upvr (readonly)
		[7]: ReactFiberFlags_upvr (readonly)
		[8]: setCurrentFiber_upvr (readonly)
		[9]: commitBeforeMutationLifeCycles_upvr (readonly)
		[10]: resetCurrentFiber_upvr (readonly)
		[11]: var103_upvw (read and write)
		[12]: scheduleCallback_upvr (readonly)
		[13]: NormalPriority_upvr (readonly)
		[14]: module_2_upvr (readonly)
	]]
	local flags_3 = arg1.flags
	if not var116_upvw and var115_upvw ~= nil and arg1.tag == ReactWorkTags_upvr.SuspenseComponent and new_6_upvr.isSuspenseBoundaryBeingHidden(arg1.alternate, arg1) and doesFiberContain_upvr(arg1, var115_upvw) then
		var116_upvw = true
		ReactFiberHostConfig_upvr.beforeActiveInstanceBlur()
	end
	if bit32.band(flags_3, ReactFiberFlags_upvr.Snapshot) ~= ReactFiberFlags_upvr.NoFlags then
		setCurrentFiber_upvr(arg1)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		commitBeforeMutationLifeCycles_upvr(arg1.alternate, arg1)
		resetCurrentFiber_upvr()
	end
	if bit32.band(flags_3, ReactFiberFlags_upvr.Passive) ~= ReactFiberFlags_upvr.NoFlags and not var103_upvw then
		var103_upvw = true
		scheduleCallback_upvr(NormalPriority_upvr, function() -- Line 2570
			--[[ Upvalues[1]:
				[1]: module_2_upvr (copied, readonly)
			]]
			module_2_upvr.flushPassiveEffects()
			return nil
		end)
	end
end
function tbl_upvr.commitBeforeMutationEffectsDeletions(arg1) -- Line 2578
	--[[ Upvalues[4]:
		[1]: doesFiberContain_upvr (readonly)
		[2]: var115_upvw (read and write)
		[3]: var116_upvw (read and write)
		[4]: ReactFiberHostConfig_upvr (readonly)
	]]
	for i = 1, #arg1 do
		if doesFiberContain_upvr(arg1[i], var115_upvw) then
			var116_upvw = true
			ReactFiberHostConfig_upvr.beforeActiveInstanceBlur()
		end
	end
end
function tbl_upvr.commitMutationEffects(arg1, arg2, arg3) -- Line 2593
	--[[ Upvalues[12]:
		[1]: commitDeletion_upvr (readonly)
		[2]: describeError_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: ReactFiberFlags_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: __DEV___upvr (readonly)
		[7]: setCurrentFiber_upvr (readonly)
		[8]: invokeGuardedCallback_upvr (readonly)
		[9]: hasCaughtError_upvr (readonly)
		[10]: clearCaughtError_upvr (readonly)
		[11]: resetCurrentFiber_upvr (readonly)
		[12]: __YOLO___upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 99. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 99. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
local commitDetachRef_upvr = new_6_upvr.commitDetachRef
local commitPlacement_upvr = new_6_upvr.commitPlacement
local commitWork_upvr = new_6_upvr.commitWork
function tbl_upvr.commitMutationEffectsImpl(arg1, arg2, arg3) -- Line 2666
	--[[ Upvalues[4]:
		[1]: ReactFiberFlags_upvr (readonly)
		[2]: commitDetachRef_upvr (readonly)
		[3]: commitPlacement_upvr (readonly)
		[4]: commitWork_upvr (readonly)
	]]
	local flags = arg1.flags
	if bit32.band(flags, ReactFiberFlags_upvr.Ref) ~= 0 then
		local alternate_3 = arg1.alternate
		if alternate_3 ~= nil then
			commitDetachRef_upvr(alternate_3)
		end
	end
	local masked = bit32.band(flags, bit32.bor(ReactFiberFlags_upvr.Placement, ReactFiberFlags_upvr.Update, ReactFiberFlags_upvr.Hydrating))
	if masked == ReactFiberFlags_upvr.Placement then
		commitPlacement_upvr(arg1)
		arg1.flags = bit32.band(arg1.flags, bit32.bnot(ReactFiberFlags_upvr.Placement))
	else
		if masked == ReactFiberFlags_upvr.PlacementAndUpdate then
			commitPlacement_upvr(arg1)
			arg1.flags = bit32.band(arg1.flags, bit32.bnot(ReactFiberFlags_upvr.Placement))
			commitWork_upvr(arg1.alternate, arg1)
			return
		end
		if masked == ReactFiberFlags_upvr.Update then
			commitWork_upvr(arg1.alternate, arg1)
		end
	end
end
function tbl_upvr.commitMutationEffectsDeletions(arg1, arg2, arg3, arg4) -- Line 2735
	--[[ Upvalues[3]:
		[1]: commitDeletion_upvr (readonly)
		[2]: describeError_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	for _, v in arg1 do
		local xpcall_result1_24, xpcall_result2_7 = xpcall(commitDeletion_upvr, describeError_upvr, arg3, v, arg2, arg4)
		if not xpcall_result1_24 then
			module_2_upvr.captureCommitPhaseError(v, arg2, xpcall_result2_7)
		end
	end
end
function module_2_upvr.schedulePassiveEffectCallback() -- Line 2758
	--[[ Upvalues[4]:
		[1]: var103_upvw (read and write)
		[2]: scheduleCallback_upvr (readonly)
		[3]: NormalPriority_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	if not var103_upvw then
		var103_upvw = true
		scheduleCallback_upvr(NormalPriority_upvr, function() -- Line 2761
			--[[ Upvalues[1]:
				[1]: module_2_upvr (copied, readonly)
			]]
			module_2_upvr.flushPassiveEffects()
			return nil
		end)
	end
end
local var362_upvw
function module_2_upvr.flushPassiveEffects() -- Line 2770
	--[[ Upvalues[11]:
		[1]: var105_upvw (read and write)
		[2]: NoPriority_upvr (readonly)
		[3]: NormalPriority_upvr (readonly)
		[4]: ReactFeatureFlags_upvr (readonly)
		[5]: getCurrentUpdateLanePriority_upvr (readonly)
		[6]: setCurrentUpdateLanePriority_upvr (readonly)
		[7]: schedulerPriorityToLanePriority_upvr (readonly)
		[8]: __YOLO___upvr (readonly)
		[9]: runWithPriority_upvr (readonly)
		[10]: describeError_upvr (readonly)
		[11]: var362_upvw (read and write)
	]]
	local var334 = var105_upvw
	if var334 ~= NoPriority_upvr then
		local var335
		if NormalPriority_upvr < var105_upvw then
			var334 = NormalPriority_upvr
		else
			var334 = var105_upvw
		end
		var105_upvw = NoPriority_upvr
		if ReactFeatureFlags_upvr.decoupleUpdatePriorityFromScheduler then
			var335 = schedulerPriorityToLanePriority_upvr(var334)
			setCurrentUpdateLanePriority_upvr(var335)
			local var336
			var335 = nil
			if not __YOLO___upvr then
				local xpcall_result1, xpcall_result2_15 = xpcall(runWithPriority_upvr, describeError_upvr, var334, var362_upvw)
				var336 = xpcall_result1
				var335 = xpcall_result2_15
			else
				var336 = true
				setCurrentUpdateLanePriority_upvr(schedulerPriorityToLanePriority_upvr(var334))
				var335 = runWithPriority_upvr(var334, var362_upvw)
			end
			setCurrentUpdateLanePriority_upvr(getCurrentUpdateLanePriority_upvr())
			if not var336 then
				error(var335)
			end
			return var335
		end
		return runWithPriority_upvr(var334, var362_upvw)
	end
	return false
end
local var340_upvw
local commitPassiveMount_upvr = new_6_upvr.commitPassiveMount
local function var339_upvw(arg1, arg2) -- Line 2814
	--[[ Upvalues[15]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: ReactWorkTags_upvr (readonly)
		[3]: var340_upvw (read and write)
		[4]: ReactFiberFlags_upvr (readonly)
		[5]: var339_upvw (read and write)
		[6]: __DEV___upvr (readonly)
		[7]: setCurrentFiber_upvr (readonly)
		[8]: invokeGuardedCallback_upvr (readonly)
		[9]: commitPassiveMount_upvr (readonly)
		[10]: hasCaughtError_upvr (readonly)
		[11]: clearCaughtError_upvr (readonly)
		[12]: module_2_upvr (readonly)
		[13]: resetCurrentFiber_upvr (readonly)
		[14]: __YOLO___upvr (readonly)
		[15]: describeError_upvr (readonly)
	]]
	local var342 = arg2
	while var342 ~= nil do
		local var343
		if ReactFeatureFlags_upvr.enableProfilerTimer and ReactFeatureFlags_upvr.enableProfilerCommitHooks and var342.tag == ReactWorkTags_upvr.Profiler then
			var343 = var340_upvw
			var340_upvw = var342
		end
		if var342.child ~= nil and bit32.band(var342.subtreeFlags, ReactFiberFlags_upvr.PassiveMask) ~= ReactFiberFlags_upvr.NoFlags then
			var339_upvw(arg1, var342.child)
		end
		if bit32.band(var342.flags, ReactFiberFlags_upvr.Passive) ~= ReactFiberFlags_upvr.NoFlags then
			local var344
			if __DEV___upvr then
				var344 = var342
				setCurrentFiber_upvr(var344)
				var344 = nil
				invokeGuardedCallback_upvr(var344, commitPassiveMount_upvr, nil, arg1, var342)
				if hasCaughtError_upvr() then
					var344 = module_2_upvr.captureCommitPhaseError
					var344(var342, var342.return_, clearCaughtError_upvr())
				end
				resetCurrentFiber_upvr()
			else
				local var345
				var344 = nil
				if not __YOLO___upvr then
					local xpcall_result1_12, xpcall_result2_24 = xpcall(commitPassiveMount_upvr, describeError_upvr, arg1, var342)
					var345 = xpcall_result1_12
					var344 = xpcall_result2_24
				else
					var345 = true
					commitPassiveMount_upvr(arg1, var342)
				end
				if not var345 then
					module_2_upvr.captureCommitPhaseError(var342, var342.return_, var344)
				end
			end
		end
		if ReactFeatureFlags_upvr.enableProfilerTimer and ReactFeatureFlags_upvr.enableProfilerCommitHooks and var342.tag == ReactWorkTags_upvr.Profiler then
			if var343 ~= nil then
				local stateNode_2 = var343.stateNode
				stateNode_2.passiveEffectDuration += var342.stateNode.passiveEffectDuration
			end
			var340_upvw = var343
		end
	end
end
local commitPassiveUnmount_upvr = new_6_upvr.commitPassiveUnmount
local function flushPassiveUnmountEffects_upvr(arg1) -- Line 2883, Named "flushPassiveUnmountEffects"
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: ReactFiberFlags_upvr (readonly)
		[3]: flushPassiveUnmountEffects_upvr (readonly)
		[4]: setCurrentFiber_upvr (readonly)
		[5]: commitPassiveUnmount_upvr (readonly)
		[6]: resetCurrentFiber_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var354 = arg1
	while var354 ~= nil do
		local deletions = var354.deletions
		if deletions ~= nil then
			for i_3 = 1, #deletions do
				local var356 = deletions[i_3]
				tbl_upvr.flushPassiveUnmountEffectsInsideOfDeletedTree(var356, var354)
				tbl_upvr.detachFiberAfterEffects(var356)
				local _
			end
		end
		local child = var354.child
		if child ~= nil and bit32.band(var354.subtreeFlags, ReactFiberFlags_upvr.PassiveMask) ~= ReactFiberFlags_upvr.NoFlags then
			flushPassiveUnmountEffects_upvr(child)
		end
		if bit32.band(var354.flags, ReactFiberFlags_upvr.Passive) ~= ReactFiberFlags_upvr.NoFlags then
			setCurrentFiber_upvr(var354)
			commitPassiveUnmount_upvr(var354)
			resetCurrentFiber_upvr()
		end
		var354 = var354.sibling
	end
end
local commitPassiveUnmountInsideDeletedTree_upvr = new_6_upvr.commitPassiveUnmountInsideDeletedTree
function tbl_upvr.flushPassiveUnmountEffectsInsideOfDeletedTree(arg1, arg2) -- Line 2922
	--[[ Upvalues[5]:
		[1]: ReactFiberFlags_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: setCurrentFiber_upvr (readonly)
		[4]: commitPassiveUnmountInsideDeletedTree_upvr (readonly)
		[5]: resetCurrentFiber_upvr (readonly)
	]]
	if bit32.band(arg1.subtreeFlags, ReactFiberFlags_upvr.PassiveStatic) ~= ReactFiberFlags_upvr.NoFlags then
		local child_2 = arg1.child
		while child_2 ~= nil do
			tbl_upvr.flushPassiveUnmountEffectsInsideOfDeletedTree(child_2, arg2)
		end
	end
	if bit32.band(arg1.flags, ReactFiberFlags_upvr.PassiveStatic) ~= ReactFiberFlags_upvr.NoFlags then
		setCurrentFiber_upvr(arg1)
		commitPassiveUnmountInsideDeletedTree_upvr(arg1, arg2)
		resetCurrentFiber_upvr()
	end
end
function var362_upvw() -- Line 2957
	--[[ Upvalues[17]:
		[1]: var104_upvw (read and write)
		[2]: NoLanes_upvw_6 (read and write)
		[3]: ReactFiberLane_upvr (readonly)
		[4]: invariant_upvr (readonly)
		[5]: var84_upvw (read and write)
		[6]: __DEV___upvr (readonly)
		[7]: enableDebugTracing_upvr (readonly)
		[8]: DebugTracing_upvr (readonly)
		[9]: enableSchedulingProfiler_upvr (readonly)
		[10]: SchedulingProfiler_upvr (readonly)
		[11]: tbl_upvr (readonly)
		[12]: flushPassiveUnmountEffects_upvr (readonly)
		[13]: var339_upvw (read and write)
		[14]: enableDoubleInvokingEffects_upvr (readonly)
		[15]: ReactFeatureFlags_upvr (readonly)
		[16]: flushSyncCallbackQueue_upvr (readonly)
		[17]: var110_upvw (read and write)
	]]
	local var363
	if var104_upvw == nil then
		return false
	end
	local var364 = var104_upvw
	local var365 = NoLanes_upvw_6
	var104_upvw = nil
	var363 = ReactFiberLane_upvr
	NoLanes_upvw_6 = var363.NoLanes
	if bit32.band(var84_upvw, 48) ~= 0 then
		var363 = false
	else
		var363 = true
	end
	invariant_upvr(var363, "Cannot flush passive effects while already rendering.")
	if __DEV___upvr and enableDebugTracing_upvr then
		var363 = DebugTracing_upvr
		var363 = var365
		var363.logPassiveEffectsStarted(var363)
	end
	if enableSchedulingProfiler_upvr then
		var363 = SchedulingProfiler_upvr
		var363 = var365
		var363.markPassiveEffectsStarted(var363)
	end
	var363 = bit32.bor(var84_upvw, 32)
	var84_upvw = var363
	var363 = tbl_upvr.pushInteractions(var364)
	flushPassiveUnmountEffects_upvr(var364.current)
	var339_upvw(var364, var364.current)
	if __DEV___upvr and enableDebugTracing_upvr then
		DebugTracing_upvr.logPassiveEffectsStopped()
	end
	if enableSchedulingProfiler_upvr then
		SchedulingProfiler_upvr.markPassiveEffectsStopped(var364)
	end
	if __DEV___upvr and enableDoubleInvokingEffects_upvr then
		commitDoubleInvokeEffectsInDEV(var364.current, true)
	end
	if ReactFeatureFlags_upvr.enableSchedulerTracing then
		tbl_upvr.popInteractions(var363)
		tbl_upvr.finishPendingInteractions(var364, var365)
	end
	var84_upvw = var84_upvw
	flushSyncCallbackQueue_upvr()
	if var104_upvw == nil then
		var110_upvw = 0
	else
		var110_upvw += 1
	end
	return true
end
function module_2_upvr.isAlreadyFailedLegacyErrorBoundary(arg1) -- Line 3031
	--[[ Upvalues[1]:
		[1]: var102_upvw (read and write)
	]]
	local var367 = false
	if var102_upvw ~= nil then
		var367 = var102_upvw:has(arg1)
	end
	return var367
end
function module_2_upvr.markLegacyErrorBoundaryAsFailed(arg1) -- Line 3036
	--[[ Upvalues[2]:
		[1]: var102_upvw (read and write)
		[2]: Set_upvr (readonly)
	]]
	if var102_upvw == nil then
		local tbl_3 = {}
		tbl_3[1] = arg1
		var102_upvw = Set_upvr.new(tbl_3)
	else
		var102_upvw:add(arg1)
	end
end
function module_2_upvr.onUncaughtError(arg1) -- Line 3045, Named "prepareToThrowUncaughtError"
	--[[ Upvalues[2]:
		[1]: var100_upvw (read and write)
		[2]: var101_upvw (read and write)
	]]
	if not var100_upvw then
		var100_upvw = true
		var101_upvw = arg1
	end
end
local createRootErrorUpdate_upvr = new_2.createRootErrorUpdate
function var370_upvw(arg1, arg2, arg3) -- Line 3053
	--[[ Upvalues[8]:
		[1]: createCapturedValue_upvr (readonly)
		[2]: createRootErrorUpdate_upvr (readonly)
		[3]: SyncLane_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: enqueueUpdate_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: markRootUpdated_upvr (readonly)
		[8]: var149_upvw (read and write)
	]]
	enqueueUpdate_upvr(arg1, createRootErrorUpdate_upvr(arg1, createCapturedValue_upvr(arg3, arg2), SyncLane_upvr, module_2_upvr.onUncaughtError))
	local any_requestEventTime_result1_2 = module_2_upvr.requestEventTime()
	local any_markUpdateLaneFromFiberToRoot_result1_2 = tbl_upvr.markUpdateLaneFromFiberToRoot(arg1, SyncLane_upvr)
	if any_markUpdateLaneFromFiberToRoot_result1_2 ~= nil then
		markRootUpdated_upvr(any_markUpdateLaneFromFiberToRoot_result1_2, SyncLane_upvr, any_requestEventTime_result1_2)
		var149_upvw(any_markUpdateLaneFromFiberToRoot_result1_2, any_requestEventTime_result1_2)
		tbl_upvr.schedulePendingInteractions(any_markUpdateLaneFromFiberToRoot_result1_2, SyncLane_upvr)
	end
end
local skipUnmountedBoundaries_upvr = ReactFeatureFlags_upvr.skipUnmountedBoundaries
local createClassErrorUpdate_upvr = new_2.createClassErrorUpdate
function module_2_upvr.captureCommitPhaseError(arg1, arg2, arg3) -- Line 3073
	--[[ Upvalues[11]:
		[1]: ReactWorkTags_upvr (readonly)
		[2]: var370_upvw (read and write)
		[3]: skipUnmountedBoundaries_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: createCapturedValue_upvr (readonly)
		[6]: createClassErrorUpdate_upvr (readonly)
		[7]: SyncLane_upvr (readonly)
		[8]: enqueueUpdate_upvr (readonly)
		[9]: tbl_upvr (readonly)
		[10]: markRootUpdated_upvr (readonly)
		[11]: var149_upvw (read and write)
	]]
	if arg1.tag == ReactWorkTags_upvr.HostRoot then
		var370_upvw(arg1, arg1, arg3)
		return
	end
	if skipUnmountedBoundaries_upvr then
	else
	end
end
function module_2_upvr.pingSuspendedRoot(arg1, arg2, arg3) -- Line 3125
	--[[ Upvalues[15]:
		[1]: module_2_upvr (readonly)
		[2]: markRootPinged_upvr (readonly)
		[3]: var85_upvw (read and write)
		[4]: isSubsetOfLanes_upvr (readonly)
		[5]: NoLanes_upvw_4 (read and write)
		[6]: Incomplete_upvw (read and write)
		[7]: module_upvr (readonly)
		[8]: includesOnlyRetries_upvr (readonly)
		[9]: now_upvr (readonly)
		[10]: var97_upvw (read and write)
		[11]: tbl_upvr (readonly)
		[12]: ReactFiberLane_upvr (readonly)
		[13]: NoLanes_upvw_2 (read and write)
		[14]: mergeLanes_upvr (readonly)
		[15]: var149_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pingCache = arg1.pingCache
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
	pingCache[arg2] = nil
	-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
	markRootPinged_upvr(arg1, arg3, module_2_upvr.requestEventTime())
	-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
end
function retryTimedOutBoundary(arg1, arg2) -- Line 3173
	--[[ Upvalues[5]:
		[1]: ReactFiberLane_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: markRootUpdated_upvr (readonly)
		[5]: var149_upvw (read and write)
	]]
	local var379
	if var379 == ReactFiberLane_upvr.NoLane then
		var379 = requestRetryLane(arg1)
	end
	local any_requestEventTime_result1 = module_2_upvr.requestEventTime()
	local any_markUpdateLaneFromFiberToRoot_result1_3 = tbl_upvr.markUpdateLaneFromFiberToRoot(arg1, var379)
	if any_markUpdateLaneFromFiberToRoot_result1_3 ~= nil then
		markRootUpdated_upvr(any_markUpdateLaneFromFiberToRoot_result1_3, var379, any_requestEventTime_result1)
		var149_upvw(any_markUpdateLaneFromFiberToRoot_result1_3, any_requestEventTime_result1)
		tbl_upvr.schedulePendingInteractions(any_markUpdateLaneFromFiberToRoot_result1_3, var379)
	end
end
function module_2_upvr.resolveRetryWakeable(arg1, arg2) -- Line 3200
	--[[ Upvalues[1]:
		[1]: ReactFiberLane_upvr (readonly)
	]]
	local stateNode = arg1.stateNode
	if stateNode ~= nil then
		stateNode:delete(arg2)
	end
	retryTimedOutBoundary(arg1, ReactFiberLane_upvr.NoLane)
end
function jnd(arg1) -- Line 3244
	if arg1 < 120 then
		return 120
	end
	if arg1 < 480 then
		return 480
	end
	if arg1 < 1080 then
		return 1080
	end
	if arg1 < 1920 then
		return 1920
	end
	if arg1 < 3000 then
		return 3000
	end
	if arg1 < 4320 then
		return 4320
	end
	return math.ceil(arg1 / 1960) * 1960
end
function tbl_upvr.checkForNestedUpdates() -- Line 3262
	--[[ Upvalues[6]:
		[1]: var108_upvw (read and write)
		[2]: var109_upvw (read and write)
		[3]: invariant_upvr (readonly)
		[4]: __DEV___upvr (readonly)
		[5]: var110_upvw (read and write)
		[6]: console_upvr (readonly)
	]]
	if 50 < var108_upvw then
		var108_upvw = 0
		var109_upvw = nil
		invariant_upvr(false, "Maximum update depth exceeded. This can happen when a component ".."repeatedly calls setState inside componentWillUpdate or ".."componentDidUpdate. React limits the number of nested updates to ".."prevent infinite loops.")
	end
	if __DEV___upvr and 50 < var110_upvw then
		var110_upvw = 0
		console_upvr.error("Maximum update depth exceeded. This can happen when a component ".."calls setState inside useEffect, but useEffect either doesn't ".."have a dependency array, or one of the dependencies changes on ".."every render.")
	end
end
function flushRenderPhaseStrictModeWarningsInDEV() -- Line 3288
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: new_upvr (readonly)
		[3]: ReactFeatureFlags_upvr (readonly)
	]]
	if __DEV___upvr then
		new_upvr.flushLegacyContextWarning()
		if ReactFeatureFlags_upvr.warnAboutDeprecatedLifecycles then
			new_upvr.flushPendingUnsafeLifecycleWarnings()
		end
	end
end
local invokeLayoutEffectUnmountInDEV_upvr = new_6_upvr.invokeLayoutEffectUnmountInDEV
local invokePassiveEffectUnmountInDEV_upvr = new_6_upvr.invokePassiveEffectUnmountInDEV
local invokeLayoutEffectMountInDEV_upvr = new_6_upvr.invokeLayoutEffectMountInDEV
local invokePassiveEffectMountInDEV_upvr = new_6_upvr.invokePassiveEffectMountInDEV
function commitDoubleInvokeEffectsInDEV(arg1, arg2) -- Line 3298
	--[[ Upvalues[9]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: setCurrentFiber_upvr (readonly)
		[4]: ReactFiberFlags_upvr (readonly)
		[5]: invokeLayoutEffectUnmountInDEV_upvr (readonly)
		[6]: invokePassiveEffectUnmountInDEV_upvr (readonly)
		[7]: invokeLayoutEffectMountInDEV_upvr (readonly)
		[8]: invokePassiveEffectMountInDEV_upvr (readonly)
		[9]: resetCurrentFiber_upvr (readonly)
	]]
	if __DEV___upvr then
		if enableDoubleInvokingEffects_upvr then
			setCurrentFiber_upvr(arg1)
			invokeEffectsInDev(arg1, ReactFiberFlags_upvr.MountLayoutDev, invokeLayoutEffectUnmountInDEV_upvr)
			if arg2 then
				invokeEffectsInDev(arg1, ReactFiberFlags_upvr.MountPassiveDev, invokePassiveEffectUnmountInDEV_upvr)
			end
			invokeEffectsInDev(arg1, ReactFiberFlags_upvr.MountLayoutDev, invokeLayoutEffectMountInDEV_upvr)
			if arg2 then
				invokeEffectsInDev(arg1, ReactFiberFlags_upvr.MountPassiveDev, invokePassiveEffectMountInDEV_upvr)
			end
			resetCurrentFiber_upvr()
		end
	end
end
function invokeEffectsInDev(arg1, arg2, arg3) -- Line 3330
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: ReactFiberFlags_upvr (readonly)
	]]
	if __DEV___upvr then
		if enableDoubleInvokingEffects_upvr then
			local var389 = arg1
			while var389 ~= nil do
				if var389.child ~= nil then
					if bit32.band(var389.subtreeFlags, arg2) ~= ReactFiberFlags_upvr.NoFlags then
						invokeEffectsInDev(var389.child, arg2, arg3)
					end
				end
				if bit32.band(var389.flags, arg2) ~= ReactFiberFlags_upvr.NoFlags then
					arg3(var389)
				end
			end
		end
	end
end
local var391_upvw
function tbl_upvr.warnAboutUpdateOnNotYetMountedFiberInDEV(arg1) -- Line 3356
	--[[ Upvalues[10]:
		[1]: __DEV___upvr (readonly)
		[2]: var84_upvw (read and write)
		[3]: ReactTypeOfMode_upvr (readonly)
		[4]: ReactWorkTags_upvr (readonly)
		[5]: getComponentName_upvr (readonly)
		[6]: var391_upvw (read and write)
		[7]: ReactCurrentFiber_upvr (readonly)
		[8]: setCurrentFiber_upvr (readonly)
		[9]: console_upvr (readonly)
		[10]: resetCurrentFiber_upvr (readonly)
	]]
	if __DEV___upvr then
		if bit32.band(var84_upvw, 16) ~= 0 then return end
		if bit32.band(arg1.mode, bit32.bor(ReactTypeOfMode_upvr.BlockingMode, ReactTypeOfMode_upvr.ConcurrentMode)) == 0 then return end
		local tag = arg1.tag
		if tag ~= ReactWorkTags_upvr.IndeterminateComponent and tag ~= ReactWorkTags_upvr.HostRoot and tag ~= ReactWorkTags_upvr.ClassComponent then
			if tag ~= ReactWorkTags_upvr.FunctionComponent and tag ~= ReactWorkTags_upvr.ForwardRef then
				if tag ~= ReactWorkTags_upvr.MemoComponent and tag ~= ReactWorkTags_upvr.SimpleMemoComponent and tag ~= ReactWorkTags_upvr.Block then return end
			end
		end
		local var393 = getComponentName_upvr(arg1.type) or "ReactComponent"
		if var391_upvw ~= nil then
			if var391_upvw[var393] then return end
			var391_upvw[var393] = true
		else
			var391_upvw = {
				[var393] = true;
			}
		end
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 3401
			--[[ Upvalues[3]:
				[1]: setCurrentFiber_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: console_upvr (copied, readonly)
			]]
			setCurrentFiber_upvr(arg1)
			console_upvr.error("Can't perform a React state update on a component that hasn't mounted yet. ".."This indicates that you have a side-effect in your render function that ".."asynchronously later calls tries to update the component. Move this work to ".."useEffect instead.")
		end)
		if ReactCurrentFiber_upvr.current then
			setCurrentFiber_upvr(arg1)
		else
			resetCurrentFiber_upvr()
		end
		if not pcall_result1_2 then
			error(pcall_result2_2)
		end
	end
end
local var398_upvw
if __DEV___upvr and ReactFeatureFlags_upvr.replayFailedUnitOfWorkWithInvokeGuardedCallback then
	function tbl_upvr.beginWork(arg1, arg2, arg3) -- Line 3427
		--[[ Upvalues[13]:
			[1]: new_4_upvr (readonly)
			[2]: var61_upvr (readonly)
			[3]: describeError_upvr (readonly)
			[4]: resetContextDependencies_upvr (readonly)
			[5]: tbl_2_upvr (readonly)
			[6]: var63_upvw (read and write)
			[7]: unwindInterruptedWork_upvr (readonly)
			[8]: ReactFeatureFlags_upvr (readonly)
			[9]: ReactTypeOfMode_upvr (readonly)
			[10]: new_7_upvr (readonly)
			[11]: invokeGuardedCallback_upvr (readonly)
			[12]: hasCaughtError_upvr (readonly)
			[13]: clearCaughtError_upvr (readonly)
		]]
		local xpcall_result1_22, xpcall_result2_9 = xpcall(var61_upvr, describeError_upvr, arg1, arg2, arg3)
		if not xpcall_result1_22 then
			if xpcall_result2_9 ~= nil and typeof(xpcall_result2_9) == "table" and typeof(xpcall_result2_9.andThen) == "function" then
				error(xpcall_result2_9)
			end
			resetContextDependencies_upvr()
			if not tbl_2_upvr.resetHooksAfterThrowRef then
				var63_upvw = require(script.Parent["ReactFiberHooks.new"])
				tbl_2_upvr.resetHooksAfterThrowRef = var63_upvw.resetHooksAfterThrow
				tbl_2_upvr.ContextOnlyDispatcherRef = var63_upvw.ContextOnlyDispatcher
				tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef = var63_upvw.getIsUpdatingOpaqueValueInRenderPhaseInDEV
			end
			unwindInterruptedWork_upvr(arg2)
			new_4_upvr.assignFiberPropertiesInDEV(arg2, new_4_upvr.assignFiberPropertiesInDEV(nil, arg2))
			if ReactFeatureFlags_upvr.enableProfilerTimer and bit32.band(arg2.mode, ReactTypeOfMode_upvr.ProfileMode) ~= 0 then
				new_7_upvr.startProfilerTimer(arg2)
			end
			invokeGuardedCallback_upvr(nil, var61_upvr, nil, arg1, arg2, arg3)
			if hasCaughtError_upvr() then
				error(clearCaughtError_upvr())
				return xpcall_result2_9
			end
			error(xpcall_result2_9)
		end
		return xpcall_result2_9
	end
else
	tbl_upvr.beginWork = var61_upvr
end
var398_upvw = nil
if __DEV___upvr then
	var398_upvw = {}
end
local var403_upvw = false
function tbl_upvr.warnAboutRenderPhaseUpdatesInDEV(arg1) -- Line 3497
	--[[ Upvalues[11]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactCurrentFiber_upvr (readonly)
		[3]: var84_upvw (read and write)
		[4]: tbl_2_upvr (readonly)
		[5]: var63_upvw (read and write)
		[6]: ReactWorkTags_upvr (readonly)
		[7]: var86_upvw (read and write)
		[8]: getComponentName_upvr (readonly)
		[9]: var398_upvw (read and write)
		[10]: console_upvr (readonly)
		[11]: var403_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var405
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	var405 = ReactCurrentFiber_upvr.isRendering
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
	var405 = bit32.band(var84_upvw, 16)
	-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 33. Error Block 6 start (CF ANALYSIS FAILED)
	var405 = tbl_2_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEVRef()
	-- KONSTANTERROR: [47] 33. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 49. Error Block 25 start (CF ANALYSIS FAILED)
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var405 = getComponentName_upvr(var86_upvw.type)
		return var405
	end
	if not var86_upvw or not INLINED_4() then
		var405 = "Unknown"
	end
	-- KONSTANTERROR: [73] 49. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [106] 78. Error Block 22 start (CF ANALYSIS FAILED)
	var405 = arg1.tag
	if var405 == ReactWorkTags_upvr.ClassComponent then
		var405 = var403_upvw
		if not var405 then
			var405 = console_upvr.error
			var405("Cannot update during an existing state transition (such as ".."within `render`). Render methods should be a pure ".."function of props and state.")
			var405 = true
			var403_upvw = var405
		end
	end
	-- KONSTANTERROR: [106] 78. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [125] 93. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [125] 93. Error Block 20 end (CF ANALYSIS FAILED)
end
module_2_upvr.IsThisRendererActing = {
	current = false;
}
function module_2_upvr.warnIfNotScopedWithMatchingAct(arg1) -- Line 3548
	--[[ Upvalues[8]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactFiberHostConfig_upvr (readonly)
		[3]: IsSomeRendererActing_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: ReactCurrentFiber_upvr (readonly)
		[6]: setCurrentFiber_upvr (readonly)
		[7]: console_upvr (readonly)
		[8]: resetCurrentFiber_upvr (readonly)
	]]
	if __DEV___upvr then
		if ReactFiberHostConfig_upvr.warnsIfNotActing == true and IsSomeRendererActing_upvr.current == true then
			if module_2_upvr.IsThisRendererActing.current ~= true then
				local pcall_result1_4, pcall_result2 = pcall(function() -- Line 3556
					--[[ Upvalues[3]:
						[1]: setCurrentFiber_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: console_upvr (copied, readonly)
					]]
					setCurrentFiber_upvr(arg1)
					console_upvr.error("It looks like you're using the wrong act() around your test interactions.\n".."Be sure to use the matching version of act() corresponding to your renderer:\n\n".."-- for react-roblox:\n".."local React = require(Packages.React)\n".."-- ...\n".."React.TestUtils.act(function() ... end)\n\n".."-- for react-test-renderer:\n".."local TestRenderer = require(Packages.ReactTestRenderer)\n".."-- ...\n".."TestRenderer.act(function() ... end)")
				end)
				if ReactCurrentFiber_upvr.current then
					setCurrentFiber_upvr(arg1)
				else
					resetCurrentFiber_upvr()
				end
				if not pcall_result1_4 then
					error(pcall_result2)
				end
			end
		end
	end
end
function module_2_upvr.warnIfNotCurrentlyActingEffectsInDEV(arg1) -- Line 3591
	--[[ Upvalues[7]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactFiberHostConfig_upvr (readonly)
		[3]: ReactTypeOfMode_upvr (readonly)
		[4]: IsSomeRendererActing_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: console_upvr (readonly)
		[7]: getComponentName_upvr (readonly)
	]]
	if __DEV___upvr then
		if ReactFiberHostConfig_upvr.warnsIfNotActing == true and bit32.band(arg1.mode, ReactTypeOfMode_upvr.StrictMode) ~= ReactTypeOfMode_upvr.NoMode and IsSomeRendererActing_upvr.current == false and module_2_upvr.IsThisRendererActing.current == false then
			console_upvr.error("An update to %s ran an effect, but was not wrapped in act(...).\n\n".."When testing, code that causes React state updates should be ".."wrapped into act(...):\n\n".."act(function()\n".."  --[[ fire events that update state ]]\n".."end)\n".."--[[ assert on the output ]]\n\n".."This ensures that you're testing the behavior the user would see ".."in the real client.".." Learn more at https://reactjs.org/link/wrap-tests-with-act", getComponentName_upvr(arg1.type))
		end
	end
end
local current_3_upvr = ReactCurrentFiber_upvr.current
function module_2_upvr.warnIfNotCurrentlyActingUpdatesInDEV(arg1) -- Line 3617
	--[[ Upvalues[10]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactFiberHostConfig_upvr (readonly)
		[3]: var84_upvw (read and write)
		[4]: IsSomeRendererActing_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: current_3_upvr (readonly)
		[7]: setCurrentFiber_upvr (readonly)
		[8]: console_upvr (readonly)
		[9]: getComponentName_upvr (readonly)
		[10]: resetCurrentFiber_upvr (readonly)
	]]
	if __DEV___upvr then
		if ReactFiberHostConfig_upvr.warnsIfNotActing == true and var84_upvw == 0 and IsSomeRendererActing_upvr.current == false and module_2_upvr.IsThisRendererActing.current == false then
			local pcall_result1, pcall_result2_3 = pcall(function() -- Line 3626
				--[[ Upvalues[4]:
					[1]: setCurrentFiber_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: console_upvr (copied, readonly)
					[4]: getComponentName_upvr (copied, readonly)
				]]
				setCurrentFiber_upvr(arg1)
				console_upvr.error("An update to %s inside a test was not wrapped in act(...).\n\n".."When testing, code that causes React state updates should be ".."wrapped into act(...):\n\n".."act(function()\n".."  --[[ fire events that update state ]]\n".."end)\n".."--[[ assert on the output ]]\n\n".."This ensures that you're testing the behavior the user would see ".."in the client application.".." Learn more at https://reactjs.org/link/wrap-tests-with-act", getComponentName_upvr(arg1.type))
			end)
			if current_3_upvr then
				setCurrentFiber_upvr(arg1)
			else
				resetCurrentFiber_upvr()
			end
			if pcall_result1 then
				return pcall_result2_3
			end
		end
	end
end
local var418_upvw = false
function module_2_upvr.warnIfUnmockedScheduler(arg1) -- Line 3667
	--[[ Upvalues[6]:
		[1]: __DEV___upvr (readonly)
		[2]: var418_upvw (read and write)
		[3]: Scheduler_upvr (readonly)
		[4]: ReactTypeOfMode_upvr (readonly)
		[5]: console_upvr (readonly)
		[6]: ReactFeatureFlags_upvr (readonly)
	]]
	if __DEV___upvr then
		if var418_upvw == false and Scheduler_upvr.unstable_flushAllWithoutAsserting == nil then
			if bit32.band(arg1.mode, ReactTypeOfMode_upvr.BlockingMode) ~= 0 or bit32.band(arg1.mode, ReactTypeOfMode_upvr.ConcurrentMode) ~= 0 then
				var418_upvw = true
				console_upvr.error("In Concurrent or Sync modes, the 'scheduler' module needs to be mocked ".."to guarantee consistent behaviour across tests and client application. ".."For example, with Jest: \n".."jest.mock('scheduler', function() return require(Packages.Scheduler).unstable_mock end)\n\n".."For more info, visit https://reactjs.org/link/mock-scheduler")
				return
			end
			if ReactFeatureFlags_upvr.warnAboutUnmockedScheduler == true then
				var418_upvw = true
				console_upvr.error("Starting from React v18, the 'scheduler' module will need to be mocked ".."to guarantee consistent behaviour across tests and client applications. ".."For example, with Jest: \n".."jest.mock('scheduler', function() return require(Packages.Scheduler).unstable_mock end)\n\n".."For more info, visit https://reactjs.org/link/mock-scheduler")
			end
		end
	end
end
function computeThreadID(arg1, arg2) -- Line 3711
	return arg2 * 1000 + arg1.interactionThreadID
end
function module_2_upvr.markSpawnedWork(arg1) -- Line 3719
	--[[ Upvalues[2]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: var111_upvw (read and write)
	]]
	if not ReactFeatureFlags_upvr.enableSchedulerTracing then
	else
		if var111_upvw == nil then
			local tbl = {}
			tbl[1] = arg1
			var111_upvw = tbl
			return
		end
		table.insert(var111_upvw, arg1)
	end
end
function scheduleInteractions(arg1, arg2, arg3) -- Line 3731
	--[[ Upvalues[3]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: __subscriberRef_upvr (readonly)
	]]
	if not ReactFeatureFlags_upvr.enableSchedulerTracing then
	elseif 0 < arg3.size then
		local pendingInteractionMap = arg1.pendingInteractionMap
		local any_get_result1_upvr = pendingInteractionMap:get(arg2)
		if any_get_result1_upvr ~= nil then
			arg3:forEach(function(arg1_2) -- Line 3744
				--[[ Upvalues[1]:
					[1]: any_get_result1_upvr (readonly)
				]]
				if not any_get_result1_upvr:has(arg1_2) then
					arg1_2.__count += 1
				end
				any_get_result1_upvr:add(arg1_2)
			end)
		else
			pendingInteractionMap:set(arg2, Set_upvr.new(arg3))
			for _, v_2 in arg3 do
				v_2.__count += 1
			end
		end
		local current_6 = __subscriberRef_upvr.current
		if current_6 ~= nil then
			current_6.onWorkScheduled(arg3, computeThreadID(arg1, arg2))
		end
	end
end
function tbl_upvr.schedulePendingInteractions(arg1, arg2) -- Line 3769
	--[[ Upvalues[2]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: __interactionsRef_upvr (readonly)
	]]
	if not ReactFeatureFlags_upvr.enableSchedulerTracing then
	else
		scheduleInteractions(arg1, arg2, __interactionsRef_upvr.current)
	end
end
function tbl_upvr.startWorkOnPendingInteractions(arg1, arg2) -- Line 3780
	--[[ Upvalues[7]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: includesSomeLane_upvr (readonly)
		[4]: __subscriberRef_upvr (readonly)
		[5]: describeError_upvr (readonly)
		[6]: scheduleCallback_upvr (readonly)
		[7]: ImmediatePriority_upvr (readonly)
	]]
	if not ReactFeatureFlags_upvr.enableSchedulerTracing then
	else
		local any_new_result1_upvr_2 = Set_upvr.new()
		arg1.pendingInteractionMap:forEach(function(arg1_5, arg2_3) -- Line 3790
			--[[ Upvalues[3]:
				[1]: includesSomeLane_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_new_result1_upvr_2 (readonly)
			]]
			if includesSomeLane_upvr(arg2, arg2_3) then
				arg1_5:forEach(function(arg1_6) -- Line 3792
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr_2 (copied, readonly)
					]]
					any_new_result1_upvr_2:add(arg1_6)
				end)
			end
		end)
		arg1.memoizedInteractions = any_new_result1_upvr_2
		if 0 < any_new_result1_upvr_2.size then
			local current_5 = __subscriberRef_upvr.current
			if current_5 ~= nil then
				local xpcall_result1_11, xpcall_result2_4_upvr = xpcall(current_5.onWorkStarted, describeError_upvr, any_new_result1_upvr_2, computeThreadID(arg1, arg2))
				if not xpcall_result1_11 then
					scheduleCallback_upvr(ImmediatePriority_upvr, function() -- Line 3814
						--[[ Upvalues[1]:
							[1]: xpcall_result2_4_upvr (readonly)
						]]
						error(xpcall_result2_4_upvr)
					end)
				end
			end
		end
	end
end
function tbl_upvr.finishPendingInteractions(arg1, arg2) -- Line 3822
	--[[ Upvalues[6]:
		[1]: ReactFeatureFlags_upvr (readonly)
		[2]: __subscriberRef_upvr (readonly)
		[3]: describeError_upvr (readonly)
		[4]: includesSomeLane_upvr (readonly)
		[5]: scheduleCallback_upvr (readonly)
		[6]: ImmediatePriority_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not ReactFeatureFlags_upvr.enableSchedulerTracing then
	else
		local var444_upvw
		if var444_upvw ~= nil and 0 < arg1.memoizedInteractions.size then
			var444_upvw = __subscriberRef_upvr.current
			local xpcall_result1_25, xpcall_result2_16_upvw = xpcall(var444_upvw.onWorkStopped, describeError_upvr, arg1.memoizedInteractions, computeThreadID(arg1, arg2))
		end
		local pendingInteractionMap_2_upvr = arg1.pendingInteractionMap
		local pendingLanes_upvr = arg1.pendingLanes
		pendingInteractionMap_2_upvr:forEach(function(arg1_7, arg2_4) -- Line 3853
			--[[ Upvalues[7]:
				[1]: includesSomeLane_upvr (copied, readonly)
				[2]: pendingLanes_upvr (readonly)
				[3]: pendingInteractionMap_2_upvr (readonly)
				[4]: var444_upvw (read and write)
				[5]: describeError_upvr (copied, readonly)
				[6]: scheduleCallback_upvr (copied, readonly)
				[7]: ImmediatePriority_upvr (copied, readonly)
			]]
			if not includesSomeLane_upvr(pendingLanes_upvr, arg2_4) then
				pendingInteractionMap_2_upvr:delete(arg2_4)
				arg1_7:forEach(function(arg1_8) -- Line 3859
					--[[ Upvalues[4]:
						[1]: var444_upvw (copied, read and write)
						[2]: describeError_upvr (copied, readonly)
						[3]: scheduleCallback_upvr (copied, readonly)
						[4]: ImmediatePriority_upvr (copied, readonly)
					]]
					arg1_8.__count -= 1
					if var444_upvw ~= nil and arg1_8.__count == 0 then
						local xpcall_result1_5, xpcall_result2_2_upvr = xpcall(var444_upvw.onInteractionScheduledWorkCompleted, describeError_upvr, arg1_8)
						if not xpcall_result1_5 then
							scheduleCallback_upvr(ImmediatePriority_upvr, function() -- Line 3870
								--[[ Upvalues[1]:
									[1]: xpcall_result2_2_upvr (readonly)
								]]
								error(xpcall_result2_2_upvr)
							end)
						end
					end
				end)
			end
		end)
		if not xpcall_result1_25 then
			scheduleCallback_upvr(ImmediatePriority_upvr, function() -- Line 3882
				--[[ Upvalues[1]:
					[1]: xpcall_result2_16_upvw (read and write)
				]]
				error(xpcall_result2_16_upvw)
			end)
		end
	end
end
local unstable_flushAllWithoutAsserting_upvr = Scheduler_upvr.unstable_flushAllWithoutAsserting
if typeof(unstable_flushAllWithoutAsserting_upvr) ~= "function" then
else
end
local var459_upvw = false
local function flushActWork_upvr() -- Line 3901, Named "flushActWork"
	--[[ Upvalues[4]:
		[1]: unstable_flushAllWithoutAsserting_upvr (readonly)
		[2]: var459_upvw (read and write)
		[3]: describeError_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	if unstable_flushAllWithoutAsserting_upvr ~= nil then
		var459_upvw = true
		local xpcall_result1_15, xpcall_result2_18 = xpcall(unstable_flushAllWithoutAsserting_upvr, describeError_upvr)
		var459_upvw = var459_upvw
		if not xpcall_result1_15 then
			error(xpcall_result2_18)
		else
			return xpcall_result2_18
		end
	end
	var459_upvw = true
	local xpcall_result1_13, xpcall_result2_11 = xpcall(function() -- Line 3921
		--[[ Upvalues[1]:
			[1]: module_2_upvr (copied, readonly)
		]]
		local var463
		while module_2_upvr.flushPassiveEffects() do
			var463 = true
		end
		return var463
	end, describeError_upvr)
	var459_upvw = var459_upvw
	if not xpcall_result1_13 then
		error(xpcall_result2_11)
	else
		return xpcall_result2_11
	end
end
local enqueueTask_upvr = require(Parent.Shared).enqueueTask
local function flushWorkAndMicroTasks_upvr(arg1) -- Line 3940, Named "flushWorkAndMicroTasks"
	--[[ Upvalues[4]:
		[1]: flushActWork_upvr (readonly)
		[2]: describeError_upvr (readonly)
		[3]: enqueueTask_upvr (readonly)
		[4]: flushWorkAndMicroTasks_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local xpcall_result1_20, _ = xpcall(flushActWork_upvr, describeError_upvr)
	if xpcall_result1_20 then
		local xpcall_result1_3, xpcall_result2_23 = xpcall(enqueueTask_upvr, describeError_upvr, function() -- Line 3944
			--[[ Upvalues[3]:
				[1]: flushActWork_upvr (copied, readonly)
				[2]: flushWorkAndMicroTasks_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			if flushActWork_upvr() then
				flushWorkAndMicroTasks_upvr(arg1)
			else
				arg1()
			end
		end)
		xpcall_result1_20 = xpcall_result1_3
	end
	if not xpcall_result1_20 then
		arg1(xpcall_result2_23)
	end
end
local var473_upvw = false
local var474_upvw = false
local Promise_upvr = require(Parent.Promise)
local var476_upvr = true
function module_2_upvr.act(arg1) -- Line 3958
	--[[ Upvalues[12]:
		[1]: __DEV___upvr (readonly)
		[2]: var473_upvw (read and write)
		[3]: console_upvr (readonly)
		[4]: var169_upvw (read and write)
		[5]: IsSomeRendererActing_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: var474_upvw (read and write)
		[8]: describeError_upvr (readonly)
		[9]: Promise_upvr (readonly)
		[10]: var476_upvr (readonly)
		[11]: flushWorkAndMicroTasks_upvr (readonly)
		[12]: flushActWork_upvr (readonly)
	]]
	if not __DEV___upvr then
		if not _G.__ROACT_17_MOCK_SCHEDULER__ and var473_upvw == false then
			var473_upvw = true
			console_upvr.error("act(...) is not supported in production builds of React, and might not behave as expected.")
		end
	end
	local var477_upvr = var169_upvw
	var169_upvw += 1
	local current_7_upvr = IsSomeRendererActing_upvr.current
	local current_4_upvr = module_2_upvr.IsThisRendererActing.current
	local var480_upvr = var474_upvw
	IsSomeRendererActing_upvr.current = true
	module_2_upvr.IsThisRendererActing.current = true
	var474_upvw = true
	local function _() -- Line 3983, Named "onDone"
		--[[ Upvalues[10]:
			[1]: var169_upvw (copied, read and write)
			[2]: IsSomeRendererActing_upvr (copied, readonly)
			[3]: current_7_upvr (readonly)
			[4]: module_2_upvr (copied, readonly)
			[5]: current_4_upvr (readonly)
			[6]: var474_upvw (copied, read and write)
			[7]: var480_upvr (readonly)
			[8]: __DEV___upvr (copied, readonly)
			[9]: var477_upvr (readonly)
			[10]: console_upvr (copied, readonly)
		]]
		var169_upvw -= 1
		IsSomeRendererActing_upvr.current = current_7_upvr
		module_2_upvr.IsThisRendererActing.current = current_4_upvr
		var474_upvw = var480_upvr
		if __DEV___upvr and var477_upvr < var169_upvw then
			console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
		end
	end
	local xpcall_result1_4, xpcall_result2_17_upvr = xpcall(module_2_upvr.batchedUpdates, describeError_upvr, arg1)
	if not xpcall_result1_4 then
		var169_upvw -= 1
		IsSomeRendererActing_upvr.current = current_7_upvr
		module_2_upvr.IsThisRendererActing.current = current_4_upvr
		var474_upvw = var480_upvr
		if __DEV___upvr and var477_upvr < var169_upvw then
			console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
		end
		error(xpcall_result2_17_upvr)
	end
	if xpcall_result2_17_upvr ~= nil and typeof(xpcall_result2_17_upvr) == "table" and typeof(xpcall_result2_17_upvr.andThen) == "function" then
		local var483_upvw = false
		if __DEV___upvr and typeof(Promise_upvr) ~= nil then
			Promise_upvr.resolve():andThen(function() -- Line 4016
			end):andThen(function() -- Line 4016
				--[[ Upvalues[2]:
					[1]: var483_upvw (read and write)
					[2]: console_upvr (copied, readonly)
				]]
				if var483_upvw == false then
					console_upvr.error("You called act(Promise.new(function() --[[ ... ]] end)) without :await() or :expect(). ".."This could lead to unexpected testing behaviour, interleaving multiple act ".."calls and mixing their scopes. You should - act(function() Promise.new(function() --[[ ... ]] end):await() end);")
				end
			end)
		end
		local module = {}
		local function andThen(arg1_9, arg2, arg3) -- Line 4035
			--[[ Upvalues[14]:
				[1]: var483_upvw (read and write)
				[2]: xpcall_result2_17_upvr (readonly)
				[3]: var169_upvw (copied, read and write)
				[4]: var476_upvr (copied, readonly)
				[5]: current_7_upvr (readonly)
				[6]: IsSomeRendererActing_upvr (copied, readonly)
				[7]: module_2_upvr (copied, readonly)
				[8]: current_4_upvr (readonly)
				[9]: var474_upvw (copied, read and write)
				[10]: var480_upvr (readonly)
				[11]: __DEV___upvr (copied, readonly)
				[12]: var477_upvr (readonly)
				[13]: console_upvr (copied, readonly)
				[14]: flushWorkAndMicroTasks_upvr (copied, readonly)
			]]
			var483_upvw = true
			return xpcall_result2_17_upvr:andThen(function() -- Line 4037
				--[[ Upvalues[14]:
					[1]: var169_upvw (copied, read and write)
					[2]: var476_upvr (copied, readonly)
					[3]: current_7_upvr (copied, readonly)
					[4]: IsSomeRendererActing_upvr (copied, readonly)
					[5]: module_2_upvr (copied, readonly)
					[6]: current_4_upvr (copied, readonly)
					[7]: var474_upvw (copied, read and write)
					[8]: var480_upvr (copied, readonly)
					[9]: __DEV___upvr (copied, readonly)
					[10]: var477_upvr (copied, readonly)
					[11]: console_upvr (copied, readonly)
					[12]: arg2 (readonly)
					[13]: flushWorkAndMicroTasks_upvr (copied, readonly)
					[14]: arg3 (readonly)
				]]
				if 1 < var169_upvw or var476_upvr == true and current_7_upvr == true then
					var169_upvw -= 1
					IsSomeRendererActing_upvr.current = current_7_upvr
					module_2_upvr.IsThisRendererActing.current = current_4_upvr
					var474_upvw = var480_upvr
					if __DEV___upvr then
						if var477_upvr < var169_upvw then
							console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
						end
					end
					arg2()
				else
					flushWorkAndMicroTasks_upvr(function(arg1_10) -- Line 4051
						--[[ Upvalues[12]:
							[1]: var169_upvw (copied, read and write)
							[2]: IsSomeRendererActing_upvr (copied, readonly)
							[3]: current_7_upvr (copied, readonly)
							[4]: module_2_upvr (copied, readonly)
							[5]: current_4_upvr (copied, readonly)
							[6]: var474_upvw (copied, read and write)
							[7]: var480_upvr (copied, readonly)
							[8]: __DEV___upvr (copied, readonly)
							[9]: var477_upvr (copied, readonly)
							[10]: console_upvr (copied, readonly)
							[11]: arg3 (copied, readonly)
							[12]: arg2 (copied, readonly)
						]]
						var169_upvw -= 1
						IsSomeRendererActing_upvr.current = current_7_upvr
						module_2_upvr.IsThisRendererActing.current = current_4_upvr
						var474_upvw = var480_upvr
						if __DEV___upvr and var477_upvr < var169_upvw then
							console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
						end
						if arg1_10 then
							arg3(arg1_10)
						else
							arg2()
						end
					end)
				end
			end, function(arg1_11) -- Line 4059
				--[[ Upvalues[11]:
					[1]: var169_upvw (copied, read and write)
					[2]: IsSomeRendererActing_upvr (copied, readonly)
					[3]: current_7_upvr (copied, readonly)
					[4]: module_2_upvr (copied, readonly)
					[5]: current_4_upvr (copied, readonly)
					[6]: var474_upvw (copied, read and write)
					[7]: var480_upvr (copied, readonly)
					[8]: __DEV___upvr (copied, readonly)
					[9]: var477_upvr (copied, readonly)
					[10]: console_upvr (copied, readonly)
					[11]: arg3 (readonly)
				]]
				var169_upvw -= 1
				IsSomeRendererActing_upvr.current = current_7_upvr
				module_2_upvr.IsThisRendererActing.current = current_4_upvr
				var474_upvw = var480_upvr
				if __DEV___upvr and var477_upvr < var169_upvw then
					console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
				end
				arg3(arg1_11)
			end)
		end
		module.andThen = andThen
		return module
	end
	if __DEV___upvr and xpcall_result2_17_upvr ~= nil then
		console_upvr.error("The callback passed to act(...) function ".."must return nil, or a Promise. You returned %s", tostring(xpcall_result2_17_upvr))
	end
	local xpcall_result1_19, xpcall_result2_14 = xpcall(function() -- Line 4078
		--[[ Upvalues[12]:
			[1]: var169_upvw (copied, read and write)
			[2]: var476_upvr (copied, readonly)
			[3]: current_7_upvr (readonly)
			[4]: flushActWork_upvr (copied, readonly)
			[5]: IsSomeRendererActing_upvr (copied, readonly)
			[6]: module_2_upvr (copied, readonly)
			[7]: current_4_upvr (readonly)
			[8]: var474_upvw (copied, read and write)
			[9]: var480_upvr (readonly)
			[10]: __DEV___upvr (copied, readonly)
			[11]: var477_upvr (readonly)
			[12]: console_upvr (copied, readonly)
		]]
		if var169_upvw == 1 then
			if var476_upvr == false or current_7_upvr == false then
				flushActWork_upvr()
			end
		end
		var169_upvw -= 1
		IsSomeRendererActing_upvr.current = current_7_upvr
		module_2_upvr.IsThisRendererActing.current = current_4_upvr
		var474_upvw = var480_upvr
		if __DEV___upvr and var477_upvr < var169_upvw then
			console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
		end
	end, describeError_upvr)
	if not xpcall_result1_19 then
		var169_upvw -= 1
		IsSomeRendererActing_upvr.current = current_7_upvr
		module_2_upvr.IsThisRendererActing.current = current_4_upvr
		var474_upvw = var480_upvr
		if __DEV___upvr and var477_upvr < var169_upvw then
			console_upvr.error("You seem to have overlapping act() calls, this is not supported. ".."Be sure to await previous act() calls before making a new one. ")
		end
		error(xpcall_result2_14)
	end
	return {
		andThen = function(arg1_12, arg2, arg3) -- Line 4098, Named "andThen"
			--[[ Upvalues[2]:
				[1]: __DEV___upvr (copied, readonly)
				[2]: console_upvr (copied, readonly)
			]]
			if __DEV___upvr then
				console_upvr.error("Do not await the result of calling act(...) with sync logic, it is not a Promise.")
			end
			arg2()
		end;
	}
end
function tbl_upvr.detachFiberAfterEffects(arg1) -- Line 4110
	--[[ Upvalues[1]:
		[1]: __DEV___upvr (readonly)
	]]
	arg1.child = nil
	arg1.deletions = nil
	arg1.dependencies = nil
	arg1.memoizedProps = nil
	arg1.memoizedState = nil
	arg1.pendingProps = nil
	arg1.sibling = nil
	arg1.stateNode = nil
	arg1.updateQueue = nil
	if __DEV___upvr then
		arg1._debugOwner = nil
	end
end
return module_2_upvr