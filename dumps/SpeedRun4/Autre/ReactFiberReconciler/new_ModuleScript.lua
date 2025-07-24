-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:11
-- Luau version 6, Types version 3
-- Time taken: 0.014351 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local console_upvr = require(Parent.Shared).console
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local ReactFiberTreeReflection = require(script.Parent.ReactFiberTreeReflection)
local findCurrentHostFiber_upvr = ReactFiberTreeReflection.findCurrentHostFiber
local get_upvr = require(Parent.Shared).ReactInstanceMap.get
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local getComponentName_upvr = require(Parent.Shared).getComponentName
local invariant_upvr = require(Parent.Shared).invariant
local describeError_upvr = require(Parent.Shared).describeError
local new_3 = require(script.Parent["ReactFiberContext.new"])
local findCurrentUnmaskedContext_upvr = new_3.findCurrentUnmaskedContext
local processChildContext_upvr = new_3.processChildContext
local emptyContextObject_upvr = new_3.emptyContextObject
local isContextProvider_upvr = new_3.isContextProvider
local new = require(script.Parent["ReactFiberDevToolsHook.new"])
local new_2 = require(script.Parent["ReactFiberWorkLoop.new"])
local requestEventTime_upvr = new_2.requestEventTime
local requestUpdateLane_upvr = new_2.requestUpdateLane
local scheduleUpdateOnFiber_upvr = new_2.scheduleUpdateOnFiber
local flushSync_upvr = new_2.flushSync
local new_4 = require(script.Parent["ReactUpdateQueue.new"])
local ReactCurrentFiber_upvr = require(script.Parent.ReactCurrentFiber)
local ReactTypeOfMode = require(script.Parent.ReactTypeOfMode)
local SyncLane_upvr = ReactFiberLane.SyncLane
local InputDiscreteHydrationLane_upvr = ReactFiberLane.InputDiscreteHydrationLane
local NoTimestamp_upvr = ReactFiberLane.NoTimestamp
local higherPriorityLane_upvr = ReactFiberLane.higherPriorityLane
local getCurrentUpdateLanePriority_upvr = ReactFiberLane.getCurrentUpdateLanePriority
local SchedulingProfiler = require(script.Parent.SchedulingProfiler)
local module = {
	ReactRootTags = require(script.Parent.ReactRootTags);
	ReactWorkTags = ReactWorkTags;
	ReactTypeOfMode = ReactTypeOfMode;
	ReactFiberFlags = require(script.Parent.ReactFiberFlags);
	getNearestMountedFiber = ReactFiberTreeReflection.getNearestMountedFiber;
	findCurrentFiberUsingSlowPath = ReactFiberTreeReflection.findCurrentFiberUsingSlowPath;
	createPortal = require(script.Parent.ReactPortal).createPortal;
}
local var38_upvw
local var39_upvw
if __DEV___upvr then
	var38_upvw = false
	var39_upvw = {}
end
local function _(arg1) -- Line 179, Named "getContextForSubtree"
	--[[ Upvalues[6]:
		[1]: emptyContextObject_upvr (readonly)
		[2]: get_upvr (readonly)
		[3]: findCurrentUnmaskedContext_upvr (readonly)
		[4]: ClassComponent_upvr (readonly)
		[5]: isContextProvider_upvr (readonly)
		[6]: processChildContext_upvr (readonly)
	]]
	if not arg1 then
		return emptyContextObject_upvr
	end
	local get_upvr_result1_3 = get_upvr(arg1)
	if get_upvr_result1_3.tag == ClassComponent_upvr then
		local type = get_upvr_result1_3.type
		if isContextProvider_upvr(type) then
			return processChildContext_upvr(get_upvr_result1_3, type, findCurrentUnmaskedContext_upvr(get_upvr_result1_3))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return findCurrentUnmaskedContext_upvr(get_upvr_result1_3)
end
local function findHostInstance_upvr(arg1) -- Line 197, Named "findHostInstance"
	--[[ Upvalues[4]:
		[1]: get_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: findCurrentHostFiber_upvr (readonly)
	]]
	local var11_result1 = get_upvr(arg1)
	if var11_result1 == nil then
		if typeof(arg1.render) == "function" then
			invariant_upvr(false, "Unable to find node on an unmounted component.")
		else
			invariant_upvr(false, "Argument appears to not be a ReactComponent. Keys: %s", table.concat(Object_upvr.keys(arg1)))
		end
	end
	local findCurrentHostFiber_upvr_result1 = findCurrentHostFiber_upvr(var11_result1)
	if findCurrentHostFiber_upvr_result1 == nil then
		return nil
	end
	return findCurrentHostFiber_upvr_result1.stateNode
end
local StrictMode_upvr = ReactTypeOfMode.StrictMode
local setCurrentFiber_upvr = ReactCurrentFiber_upvr.setCurrentFiber
local resetCurrentFiber_upvr = ReactCurrentFiber_upvr.resetCurrentFiber
local createFiberRoot_upvr = require(script.Parent["ReactFiberRoot.new"]).createFiberRoot
function module.createContainer(arg1, arg2, arg3, arg4) -- Line 291
	--[[ Upvalues[1]:
		[1]: createFiberRoot_upvr (readonly)
	]]
	return createFiberRoot_upvr(arg1, arg2, arg3, arg4)
end
local onScheduleRoot_upvr = new.onScheduleRoot
local warnIfUnmockedScheduler_upvr = new_2.warnIfUnmockedScheduler
local warnIfNotScopedWithMatchingAct_upvr = new_2.warnIfNotScopedWithMatchingAct
local enableSchedulingProfiler_upvr = require(Parent.Shared).ReactFeatureFlags.enableSchedulingProfiler
local markRenderScheduled_upvr = SchedulingProfiler.markRenderScheduled
local isRendering_upvr = ReactCurrentFiber_upvr.isRendering
local createUpdate_upvr = new_4.createUpdate
local enqueueUpdate_upvr = new_4.enqueueUpdate
function module.updateContainer(arg1, arg2, arg3, arg4) -- Line 300
	--[[ Upvalues[23]:
		[1]: __DEV___upvr (readonly)
		[2]: onScheduleRoot_upvr (readonly)
		[3]: requestEventTime_upvr (readonly)
		[4]: warnIfUnmockedScheduler_upvr (readonly)
		[5]: warnIfNotScopedWithMatchingAct_upvr (readonly)
		[6]: requestUpdateLane_upvr (readonly)
		[7]: enableSchedulingProfiler_upvr (readonly)
		[8]: markRenderScheduled_upvr (readonly)
		[9]: emptyContextObject_upvr (readonly)
		[10]: get_upvr (readonly)
		[11]: findCurrentUnmaskedContext_upvr (readonly)
		[12]: ClassComponent_upvr (readonly)
		[13]: isContextProvider_upvr (readonly)
		[14]: processChildContext_upvr (readonly)
		[15]: isRendering_upvr (readonly)
		[16]: ReactCurrentFiber_upvr (readonly)
		[17]: var38_upvw (read and write)
		[18]: console_upvr (readonly)
		[19]: getComponentName_upvr (readonly)
		[20]: createUpdate_upvr (readonly)
		[21]: Object_upvr (readonly)
		[22]: enqueueUpdate_upvr (readonly)
		[23]: scheduleUpdateOnFiber_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	onScheduleRoot_upvr(arg2, arg1)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
module.batchedEventUpdates = new_2.batchedEventUpdates
module.batchedUpdates = new_2.batchedUpdates
module.unbatchedUpdates = new_2.unbatchedUpdates
module.deferredUpdates = new_2.deferredUpdates
module.discreteUpdates = new_2.discreteUpdates
module.flushDiscreteUpdates = new_2.flushDiscreteUpdates
module.flushControlled = new_2.flushControlled
module.flushSync = flushSync_upvr
module.flushPassiveEffects = new_2.flushPassiveEffects
module.IsThisRendererActing = new_2.IsThisRendererActing
module.act = new_2.act
local HostComponent_upvr = ReactWorkTags.HostComponent
local getPublicInstance_upvr = require(script.Parent.ReactFiberHostConfig).getPublicInstance
function module.getPublicRootInstance(arg1) -- Line 395
	--[[ Upvalues[2]:
		[1]: HostComponent_upvr (readonly)
		[2]: getPublicInstance_upvr (readonly)
	]]
	local current_3 = arg1.current
	if not current_3.child then
		return nil
	end
	if current_3.child.tag == HostComponent_upvr then
		return getPublicInstance_upvr(current_3.child.stateNode)
	end
	return current_3.child.stateNode
end
local HostRoot_upvr = ReactWorkTags.HostRoot
local getHighestPriorityPendingLanes_upvr = ReactFiberLane.getHighestPriorityPendingLanes
local flushRoot_upvr = new_2.flushRoot
local var97_upvw
function module.attemptSynchronousHydration(arg1) -- Line 412
	--[[ Upvalues[10]:
		[1]: HostRoot_upvr (readonly)
		[2]: getHighestPriorityPendingLanes_upvr (readonly)
		[3]: flushRoot_upvr (readonly)
		[4]: SuspenseComponent_upvr (readonly)
		[5]: requestEventTime_upvr (readonly)
		[6]: flushSync_upvr (readonly)
		[7]: scheduleUpdateOnFiber_upvr (readonly)
		[8]: SyncLane_upvr (readonly)
		[9]: InputDiscreteHydrationLane_upvr (readonly)
		[10]: var97_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tag = arg1.tag
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 3 start (CF ANALYSIS FAILED)
	flushRoot_upvr(tag, getHighestPriorityPendingLanes_upvr(tag))
	do
		return
	end
	-- KONSTANTERROR: [10] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.tag == SuspenseComponent_upvr then
		local var24_result1_upvr = requestEventTime_upvr()
		flushSync_upvr(function() -- Line 422
			--[[ Upvalues[4]:
				[1]: scheduleUpdateOnFiber_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: SyncLane_upvr (copied, readonly)
				[4]: var24_result1_upvr (readonly)
			]]
			return scheduleUpdateOnFiber_upvr(arg1, SyncLane_upvr, var24_result1_upvr)
		end)
		var97_upvw(arg1, InputDiscreteHydrationLane_upvr)
	end
	-- KONSTANTERROR: [18] 15. Error Block 7 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 433, Named "markRetryLaneImpl"
	--[[ Upvalues[1]:
		[1]: higherPriorityLane_upvr (readonly)
	]]
	local memoizedState_2 = arg1.memoizedState
	if memoizedState_2 and memoizedState_2 ~= nil and memoizedState_2.dehydrated ~= nil then
		memoizedState_2.retryLane = higherPriorityLane_upvr(memoizedState_2.retryLane, arg2)
	end
end
function var97_upvw(arg1, arg2) -- Line 444
	--[[ Upvalues[1]:
		[1]: higherPriorityLane_upvr (readonly)
	]]
	local memoizedState_3 = arg1.memoizedState
	if memoizedState_3 and memoizedState_3 ~= nil and memoizedState_3.dehydrated ~= nil then
		memoizedState_3.retryLane = higherPriorityLane_upvr(memoizedState_3.retryLane, arg2)
	end
	local alternate = arg1.alternate
	if alternate then
		local memoizedState = alternate.memoizedState
		if memoizedState and memoizedState ~= nil and memoizedState.dehydrated ~= nil then
			memoizedState.retryLane = higherPriorityLane_upvr(memoizedState.retryLane, arg2)
		end
	end
end
local var98_upvw = var97_upvw
function module.attemptUserBlockingHydration(arg1) -- Line 453
	--[[ Upvalues[5]:
		[1]: SuspenseComponent_upvr (readonly)
		[2]: requestEventTime_upvr (readonly)
		[3]: InputDiscreteHydrationLane_upvr (readonly)
		[4]: scheduleUpdateOnFiber_upvr (readonly)
		[5]: var98_upvw (read and write)
	]]
	if arg1.tag ~= SuspenseComponent_upvr then
	else
		local var103 = InputDiscreteHydrationLane_upvr
		scheduleUpdateOnFiber_upvr(arg1, var103, requestEventTime_upvr())
		var98_upvw(arg1, var103)
	end
end
local SelectiveHydrationLane_upvr = ReactFiberLane.SelectiveHydrationLane
function module.attemptContinuousHydration(arg1) -- Line 467
	--[[ Upvalues[5]:
		[1]: SuspenseComponent_upvr (readonly)
		[2]: requestEventTime_upvr (readonly)
		[3]: SelectiveHydrationLane_upvr (readonly)
		[4]: scheduleUpdateOnFiber_upvr (readonly)
		[5]: var98_upvw (read and write)
	]]
	if arg1.tag ~= SuspenseComponent_upvr then
	else
		local var106 = SelectiveHydrationLane_upvr
		scheduleUpdateOnFiber_upvr(arg1, var106, requestEventTime_upvr())
		var98_upvw(arg1, var106)
	end
end
function module.attemptHydrationAtCurrentPriority(arg1) -- Line 481
	--[[ Upvalues[5]:
		[1]: SuspenseComponent_upvr (readonly)
		[2]: requestEventTime_upvr (readonly)
		[3]: requestUpdateLane_upvr (readonly)
		[4]: scheduleUpdateOnFiber_upvr (readonly)
		[5]: var98_upvw (read and write)
	]]
	if arg1.tag ~= SuspenseComponent_upvr then
	else
		local requestUpdateLane_upvr_result1 = requestUpdateLane_upvr(arg1)
		scheduleUpdateOnFiber_upvr(arg1, requestUpdateLane_upvr_result1, requestEventTime_upvr())
		var98_upvw(arg1, requestUpdateLane_upvr_result1)
	end
end
local setCurrentUpdateLanePriority_upvr = ReactFiberLane.setCurrentUpdateLanePriority
function module.runWithPriority(arg1, arg2) -- Line 493
	--[[ Upvalues[3]:
		[1]: getCurrentUpdateLanePriority_upvr (readonly)
		[2]: setCurrentUpdateLanePriority_upvr (readonly)
		[3]: describeError_upvr (readonly)
	]]
	setCurrentUpdateLanePriority_upvr(arg1)
	local xpcall_result1_3, xpcall_result2_3 = xpcall(arg2, describeError_upvr)
	setCurrentUpdateLanePriority_upvr(getCurrentUpdateLanePriority_upvr())
	if not xpcall_result1_3 then
		error(xpcall_result2_3)
	end
	return xpcall_result2_3
end
module.getCurrentUpdateLanePriority = getCurrentUpdateLanePriority_upvr
module.findHostInstance = findHostInstance_upvr
function module.findHostInstanceWithWarning(arg1, arg2) -- Line 218
	--[[ Upvalues[14]:
		[1]: __DEV___upvr (readonly)
		[2]: get_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: findCurrentHostFiber_upvr (readonly)
		[6]: StrictMode_upvr (readonly)
		[7]: getComponentName_upvr (readonly)
		[8]: var39_upvw (read and write)
		[9]: ReactCurrentFiber_upvr (readonly)
		[10]: setCurrentFiber_upvr (readonly)
		[11]: console_upvr (readonly)
		[12]: describeError_upvr (readonly)
		[13]: resetCurrentFiber_upvr (readonly)
		[14]: findHostInstance_upvr (readonly)
	]]
	if __DEV___upvr then
		local get_upvr_result1_2_upvr = get_upvr(arg1)
		if get_upvr_result1_2_upvr == nil then
			if typeof(arg1.render) == "function" then
				invariant_upvr(false, "Unable to find node on an unmounted component.")
			else
				invariant_upvr(false, "Argument appears to not be a ReactComponent. Keys: %s", table.concat(Object_upvr.keys(arg1)))
			end
		end
		local findCurrentHostFiber_upvr_result1_2_upvr = findCurrentHostFiber_upvr(get_upvr_result1_2_upvr)
		if findCurrentHostFiber_upvr_result1_2_upvr == nil then
			return nil
		end
		if bit32.band(findCurrentHostFiber_upvr_result1_2_upvr.mode, StrictMode_upvr) ~= 0 then
			local var59_upvr = getComponentName_upvr(get_upvr_result1_2_upvr.type) or "Component"
			if not var39_upvw[var59_upvr] then
				var39_upvw[var59_upvr] = true
				local current = ReactCurrentFiber_upvr.current
				local xpcall_result1, xpcall_result2_2 = xpcall(function() -- Line 246
					--[[ Upvalues[7]:
						[1]: setCurrentFiber_upvr (copied, readonly)
						[2]: findCurrentHostFiber_upvr_result1_2_upvr (readonly)
						[3]: get_upvr_result1_2_upvr (readonly)
						[4]: StrictMode_upvr (copied, readonly)
						[5]: console_upvr (copied, readonly)
						[6]: arg2 (readonly)
						[7]: var59_upvr (readonly)
					]]
					setCurrentFiber_upvr(findCurrentHostFiber_upvr_result1_2_upvr)
					if bit32.band(get_upvr_result1_2_upvr.mode, StrictMode_upvr) ~= 0 then
						console_upvr.error("%s is deprecated in StrictMode. ".."%s was passed an instance of %s which is inside StrictMode. ".."Instead, add a ref directly to the element you want to reference. ".."Learn more about using refs safely here: ".."https://reactjs.org/link/strict-mode-find-node", arg2, arg2, var59_upvr)
					else
						console_upvr.error("%s is deprecated in StrictMode. ".."%s was passed an instance of %s which renders StrictMode children. ".."Instead, add a ref directly to the element you want to reference. ".."Learn more about using refs safely here: ".."https://reactjs.org/link/strict-mode-find-node", arg2, arg2, var59_upvr)
					end
				end, describeError_upvr)
				if current then
					setCurrentFiber_upvr(current)
				else
					resetCurrentFiber_upvr()
				end
				if not xpcall_result1 then
					error(xpcall_result2_2)
				end
			end
		end
		var59_upvr = findCurrentHostFiber_upvr_result1_2_upvr.stateNode
		return var59_upvr
	end
	get_upvr_result1_2_upvr = findHostInstance_upvr
	findCurrentHostFiber_upvr_result1_2_upvr = arg1
	get_upvr_result1_2_upvr = get_upvr_result1_2_upvr(findCurrentHostFiber_upvr_result1_2_upvr)
	return get_upvr_result1_2_upvr
end
local findCurrentHostFiberWithNoPortals_upvr = ReactFiberTreeReflection.findCurrentHostFiberWithNoPortals
local FundamentalComponent_upvr = ReactWorkTags.FundamentalComponent
function module.findHostInstanceWithNoPortals(arg1) -- Line 511
	--[[ Upvalues[2]:
		[1]: findCurrentHostFiberWithNoPortals_upvr (readonly)
		[2]: FundamentalComponent_upvr (readonly)
	]]
	local var114_result1 = findCurrentHostFiberWithNoPortals_upvr(arg1)
	if var114_result1 == nil then
		return nil
	end
	if var114_result1.tag == FundamentalComponent_upvr then
		return var114_result1.stateNode.instance
	end
	return var114_result1.stateNode
end
local function shouldSuspendImpl_upvw(arg1) -- Line 522, Named "shouldSuspendImpl"
	return false
end
local function var117(arg1) -- Line 526
	--[[ Upvalues[1]:
		[1]: shouldSuspendImpl_upvw (read and write)
	]]
	return shouldSuspendImpl_upvw(arg1)
end
module.shouldSuspend = var117
var117 = nil
local var134_upvw = var117
local var139_upvw
local var144_upvw
local var149_upvw
local var151_upvw
local var153_upvw
local var155_upvw
local var156_upvw
if __DEV___upvr then
	local function var158_upvr(arg1, arg2, arg3) -- Line 541, Named "copyWithDeleteImpl"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: var158_upvr (readonly)
		]]
		local var126 = arg2[arg3]
		local var127
		if Array_upvr.isArray(arg1) then
			var127 = Array_upvr.slice(arg1)
		else
			var127 = table.clone(arg1)
		end
		if arg3 + 1 == #arg2 then
			if Array_upvr.isArray(var127) then
				Array_upvr.splice(var127, var126, 1)
				return var127
			end
			var127[var126] = nil
			return var127
		end
		var127[var126] = var158_upvr(arg1[var126], arg2, arg3 + 1)
		return var127
	end
	local function _(arg1, arg2) -- Line 569, Named "copyWithDelete"
		--[[ Upvalues[1]:
			[1]: var158_upvr (readonly)
		]]
		return var158_upvr(arg1, arg2, 0)
	end
	local function copyWithRenameImpl_upvr(arg1, arg2, arg3, arg4) -- Line 577, Named "copyWithRenameImpl"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: copyWithRenameImpl_upvr (readonly)
		]]
		local var128 = arg2[arg4]
		local var129
		if Array_upvr.isArray(arg1) then
			var129 = Array_upvr.slice(arg1)
		else
			var129 = table.clone(arg1)
		end
		if arg4 + 1 == #arg2 then
			var129[arg3[arg4]] = var129[var128]
			if Array_upvr.isArray(var129) then
				Array_upvr.splice(var129, var128, 1)
				return var129
			end
			var129[var128] = nil
			return var129
		end
		var129[var128] = copyWithRenameImpl_upvr(arg1[var128], arg2, arg3, arg4 + 1)
		return var129
	end
	local function copyWithRename_upvr(arg1, arg2, arg3) -- Line 613, Named "copyWithRename"
		--[[ Upvalues[2]:
			[1]: console_upvr (readonly)
			[2]: copyWithRenameImpl_upvr (readonly)
		]]
		if #arg2 ~= #arg3 then
			console_upvr.warn("copyWithRename() expects paths of the same length")
			return nil
		end
		for i = 1, #arg3 do
			if arg2[i] ~= arg3[i] then
				console_upvr.warn("copyWithRename() expects paths to be the same except for the deepest key")
				return nil
			end
		end
		return copyWithRenameImpl_upvr(arg1, arg2, arg3, 0)
	end
	local function copyWithSetImpl_upvr(arg1, arg2, arg3, arg4) -- Line 635, Named "copyWithSetImpl"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: copyWithSetImpl_upvr (readonly)
		]]
		if #arg2 + 1 <= arg3 then
			return arg4
		end
		local var131 = arg2[arg3]
		local var132
		if Array_upvr.isArray(arg1) then
			var132 = Array_upvr.slice(arg1)
		else
			var132 = table.clone(arg1)
		end
		var132[var131] = copyWithSetImpl_upvr(arg1[var131], arg2, arg3 + 2, arg4)
		return var132
	end
	local function _(arg1, arg2, arg3) -- Line 657, Named "copyWithSet"
		--[[ Upvalues[1]:
			[1]: copyWithSetImpl_upvr (readonly)
		]]
		return copyWithSetImpl_upvr(arg1, arg2, 1, arg3)
	end
	local function _(arg1, arg2) -- Line 665, Named "findHook"
		local var133
		while var133 ~= nil and 1 < arg2 do
			var133 = var133.next
		end
		return var133
	end
	function var134_upvw(arg1, arg2, arg3, arg4) -- Line 677
		--[[ Upvalues[4]:
			[1]: copyWithSetImpl_upvr (readonly)
			[2]: scheduleUpdateOnFiber_upvr (readonly)
			[3]: SyncLane_upvr (readonly)
			[4]: NoTimestamp_upvr (readonly)
		]]
		local var136
		while var136 ~= nil and 1 < arg2 do
			var136 = var136.next
		end
		local var137 = var136
		if var137 ~= nil then
			var136 = var137.memoizedState
			local copyWithSetImpl_result1 = copyWithSetImpl_upvr(var136, arg3, 1, arg4)
			var137.memoizedState = copyWithSetImpl_result1
			var137.baseState = copyWithSetImpl_result1
			var136 = table.clone(arg1.memoizedProps)
			arg1.memoizedProps = var136
			var136 = scheduleUpdateOnFiber_upvr
			var136(arg1, SyncLane_upvr, NoTimestamp_upvr)
		end
	end
	function var139_upvw(arg1, arg2, arg3) -- Line 699
		--[[ Upvalues[4]:
			[1]: var158_upvr (readonly)
			[2]: scheduleUpdateOnFiber_upvr (readonly)
			[3]: SyncLane_upvr (readonly)
			[4]: NoTimestamp_upvr (readonly)
		]]
		local var141
		while var141 ~= nil and 1 < arg2 do
			var141 = var141.next
		end
		local var142 = var141
		if var142 ~= nil then
			var141 = var142.memoizedState
			local var158_result1 = var158_upvr(var141, arg3, 0)
			var142.memoizedState = var158_result1
			var142.baseState = var158_result1
			var141 = table.clone(arg1.memoizedProps)
			arg1.memoizedProps = var141
			var141 = scheduleUpdateOnFiber_upvr
			var141(arg1, SyncLane_upvr, NoTimestamp_upvr)
		end
	end
	function var144_upvw(arg1, arg2, arg3, arg4) -- Line 720
		--[[ Upvalues[4]:
			[1]: copyWithRename_upvr (readonly)
			[2]: scheduleUpdateOnFiber_upvr (readonly)
			[3]: SyncLane_upvr (readonly)
			[4]: NoTimestamp_upvr (readonly)
		]]
		local var146
		while var146 ~= nil and 1 < arg2 do
			var146 = var146.next
		end
		local var147 = var146
		if var147 ~= nil then
			var146 = var147.memoizedState
			local copyWithRename_result1 = copyWithRename_upvr(var146, arg3, arg4)
			var147.memoizedState = copyWithRename_result1
			var147.baseState = copyWithRename_result1
			var146 = table.clone(arg1.memoizedProps)
			arg1.memoizedProps = var146
			var146 = scheduleUpdateOnFiber_upvr
			var146(arg1, SyncLane_upvr, NoTimestamp_upvr)
		end
	end
	function var149_upvw(arg1, arg2, arg3) -- Line 744
		--[[ Upvalues[4]:
			[1]: copyWithSetImpl_upvr (readonly)
			[2]: scheduleUpdateOnFiber_upvr (readonly)
			[3]: SyncLane_upvr (readonly)
			[4]: NoTimestamp_upvr (readonly)
		]]
		arg1.pendingProps = copyWithSetImpl_upvr(arg1.memoizedProps, arg2, 1, arg3)
		local alternate_2 = arg1.alternate
		if alternate_2 then
			alternate_2.pendingProps = arg1.pendingProps
		end
		scheduleUpdateOnFiber_upvr(arg1, SyncLane_upvr, NoTimestamp_upvr)
	end
	function var151_upvw(arg1, arg2) -- Line 753
		--[[ Upvalues[4]:
			[1]: var158_upvr (readonly)
			[2]: scheduleUpdateOnFiber_upvr (readonly)
			[3]: SyncLane_upvr (readonly)
			[4]: NoTimestamp_upvr (readonly)
		]]
		arg1.pendingProps = var158_upvr(arg1.memoizedProps, arg2, 0)
		local alternate_4 = arg1.alternate
		if alternate_4 then
			alternate_4.pendingProps = arg1.pendingProps
		end
		scheduleUpdateOnFiber_upvr(arg1, SyncLane_upvr, NoTimestamp_upvr)
	end
	function var153_upvw(arg1, arg2, arg3) -- Line 762
		--[[ Upvalues[4]:
			[1]: copyWithRename_upvr (readonly)
			[2]: scheduleUpdateOnFiber_upvr (readonly)
			[3]: SyncLane_upvr (readonly)
			[4]: NoTimestamp_upvr (readonly)
		]]
		arg1.pendingProps = copyWithRename_upvr(arg1.memoizedProps, arg2, arg3)
		local alternate_3 = arg1.alternate
		if alternate_3 then
			alternate_3.pendingProps = arg1.pendingProps
		end
		scheduleUpdateOnFiber_upvr(arg1, SyncLane_upvr, NoTimestamp_upvr)
	end
	function var155_upvw(arg1) -- Line 776
		--[[ Upvalues[3]:
			[1]: scheduleUpdateOnFiber_upvr (readonly)
			[2]: SyncLane_upvr (readonly)
			[3]: NoTimestamp_upvr (readonly)
		]]
		scheduleUpdateOnFiber_upvr(arg1, SyncLane_upvr, NoTimestamp_upvr)
	end
	function var156_upvw(arg1) -- Line 780
		--[[ Upvalues[1]:
			[1]: shouldSuspendImpl_upvw (read and write)
		]]
		shouldSuspendImpl_upvw = arg1
	end
end
function var158_upvr(arg1) -- Line 785, Named "findHostInstanceByFiber"
	--[[ Upvalues[1]:
		[1]: findCurrentHostFiber_upvr (readonly)
	]]
	local findCurrentHostFiber_upvr_result1_3 = findCurrentHostFiber_upvr(arg1)
	if findCurrentHostFiber_upvr_result1_3 == nil then
		return nil
	end
	return findCurrentHostFiber_upvr_result1_3.stateNode
end
findHostInstanceByFiber = var158_upvr -- Setting global
function var158_upvr(arg1) -- Line 793, Named "emptyFindFiberByHostInstance"
	return nil
end
emptyFindFiberByHostInstance = var158_upvr -- Setting global
function var158_upvr() -- Line 797, Named "getCurrentFiberForDevTools"
	--[[ Upvalues[1]:
		[1]: ReactCurrentFiber_upvr (readonly)
	]]
	return ReactCurrentFiber_upvr.current
end
getCurrentFiberForDevTools = var158_upvr -- Setting global
local ReactSharedInternals_upvr = require(Parent.Shared).ReactSharedInternals
local injectInternals_upvr = new.injectInternals
function var158_upvr(arg1) -- Line 801
	--[[ Upvalues[11]:
		[1]: ReactSharedInternals_upvr (readonly)
		[2]: __DEV___upvr (readonly)
		[3]: injectInternals_upvr (readonly)
		[4]: var134_upvw (read and write)
		[5]: var139_upvw (read and write)
		[6]: var144_upvw (read and write)
		[7]: var149_upvw (read and write)
		[8]: var151_upvw (read and write)
		[9]: var153_upvw (read and write)
		[10]: var156_upvw (read and write)
		[11]: var155_upvw (read and write)
	]]
	local var161
	if __DEV___upvr then
		var161 = getCurrentFiberForDevTools
	end
	local module_2 = {
		bundleType = arg1.bundleType;
		version = arg1.version;
		rendererPackageName = arg1.rendererPackageName;
		rendererConfig = arg1.rendererConfig;
		overrideHookState = var134_upvw;
		overrideHookStateDeletePath = var139_upvw;
		overrideHookStateRenamePath = var144_upvw;
		overrideProps = var149_upvw;
		overridePropsDeletePath = var151_upvw;
		overridePropsRenamePath = var153_upvw;
		setSuspenseHandler = var156_upvw;
		scheduleUpdate = var155_upvw;
		currentDispatcherRef = ReactSharedInternals_upvr.ReactCurrentDispatcher;
		findHostInstanceByFiber = findHostInstanceByFiber;
	}
	local findFiberByHostInstance = arg1.findFiberByHostInstance
	if not findFiberByHostInstance then
		findFiberByHostInstance = emptyFindFiberByHostInstance
	end
	module_2.findFiberByHostInstance = findFiberByHostInstance
	module_2.getCurrentFiber = var161
	return injectInternals_upvr(module_2)
end
module.injectIntoDevTools = var158_upvr
var158_upvr = require
copyWithRename_upvr = script
copyWithRenameImpl_upvr = copyWithRename_upvr.Parent
var158_upvr = var158_upvr(copyWithRenameImpl_upvr.RobloxReactProfiling)
module.robloxReactProfiling = var158_upvr
var158_upvr = {}
local var164 = var158_upvr
var164.profilerEventTypes = SchedulingProfiler.profilerEventTypes
var164.registerProfilerEventCallback = SchedulingProfiler.registerProfilerEventCallback
module.schedulingProfiler = var164
return module