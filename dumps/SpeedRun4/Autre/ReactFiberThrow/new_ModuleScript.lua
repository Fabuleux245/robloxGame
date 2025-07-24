-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:15
-- Luau version 6, Types version 3
-- Time taken: 0.007824 seconds

local Parent = script.Parent.Parent
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local new_2 = require(script.Parent["ReactUpdateQueue.new"])
local new = require(script.Parent["ReactFiberSuspenseContext.new"])
local getComponentName_upvr = require(Parent.Shared).getComponentName
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local ReactTypeOfMode = require(script.Parent.ReactTypeOfMode)
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local createUpdate_upvr = new_2.createUpdate
local CaptureUpdate_upvr = new_2.CaptureUpdate
local var12_upvw
local var14_upvw
local function var13_upvr(...) -- Line 88
	--[[ Upvalues[2]:
		[1]: var14_upvw (read and write)
		[2]: var12_upvw (read and write)
	]]
	if not var14_upvw then
		var12_upvw = require(script.Parent["ReactFiberWorkLoop.new"])
		var14_upvw = var12_upvw.markLegacyErrorBoundaryAsFailed
	end
	return var14_upvw(...)
end
local var16_upvw
local function var15_upvr(...) -- Line 103
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: var16_upvw (read and write)
	]]
	if var12_upvw == nil then
		var12_upvw = require(script.Parent["ReactFiberWorkLoop.new"])
	end
	var16_upvw = var12_upvw.pingSuspendedRoot
	return var16_upvw(...)
end
local var18_upvw
local function var17_upvr(...) -- Line 110
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: var18_upvw (read and write)
	]]
	if var12_upvw == nil then
		var12_upvw = require(script.Parent["ReactFiberWorkLoop.new"])
	end
	var18_upvw = var12_upvw.isAlreadyFailedLegacyErrorBoundary
	return var18_upvw(...)
end
local logCapturedError_upvr = require(script.Parent.ReactFiberErrorLogger).logCapturedError
local SyncLane_upvr = ReactFiberLane.SyncLane
local NoTimestamp_upvr = ReactFiberLane.NoTimestamp
local Object_upvr = require(Parent.LuauPolyfill).Object
function createRootErrorUpdate(arg1, arg2, arg3, arg4) -- Line 132
	--[[ Upvalues[5]:
		[1]: createUpdate_upvr (readonly)
		[2]: NoTimestamp_upvr (readonly)
		[3]: CaptureUpdate_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: logCapturedError_upvr (readonly)
	]]
	local createUpdate_upvr_result1 = createUpdate_upvr(NoTimestamp_upvr, arg3)
	createUpdate_upvr_result1.tag = CaptureUpdate_upvr
	createUpdate_upvr_result1.payload = {
		element = Object_upvr.None;
	}
	local value_upvr = arg2.value
	function createUpdate_upvr_result1.callback() -- Line 146
		--[[ Upvalues[5]:
			[1]: arg4 (readonly)
			[2]: value_upvr (readonly)
			[3]: logCapturedError_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
		]]
		if arg4 ~= nil then
			arg4(value_upvr)
		end
		logCapturedError_upvr(arg1, arg2)
	end
	return createUpdate_upvr_result1
end
local markFailedErrorBoundaryForHotReloading_upvr = require(script.Parent["ReactFiberHotReloading.new"]).markFailedErrorBoundaryForHotReloading
local includesSomeLane_upvr = ReactFiberLane.includesSomeLane
local console_upvr = require(Parent.Shared).console
function createClassErrorUpdate(arg1, arg2, arg3) -- Line 155
	--[[ Upvalues[10]:
		[1]: createUpdate_upvr (readonly)
		[2]: NoTimestamp_upvr (readonly)
		[3]: CaptureUpdate_upvr (readonly)
		[4]: logCapturedError_upvr (readonly)
		[5]: markFailedErrorBoundaryForHotReloading_upvr (readonly)
		[6]: var13_upvr (readonly)
		[7]: includesSomeLane_upvr (readonly)
		[8]: SyncLane_upvr (readonly)
		[9]: console_upvr (readonly)
		[10]: getComponentName_upvr (readonly)
	]]
	local createUpdate_upvr_result1_2 = createUpdate_upvr(NoTimestamp_upvr, arg3)
	createUpdate_upvr_result1_2.tag = CaptureUpdate_upvr
	local getDerivedStateFromError_upvr = arg1.type.getDerivedStateFromError
	if typeof(getDerivedStateFromError_upvr) == "function" then
		local value_upvr_2 = arg2.value
		function createUpdate_upvr_result1_2.payload() -- Line 165
			--[[ Upvalues[5]:
				[1]: logCapturedError_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
				[4]: getDerivedStateFromError_upvr (readonly)
				[5]: value_upvr_2 (readonly)
			]]
			logCapturedError_upvr(arg1, arg2)
			return getDerivedStateFromError_upvr(value_upvr_2)
		end
	end
	value_upvr_2 = arg1.stateNode
	local var34_upvr = value_upvr_2
	if var34_upvr ~= nil and typeof(var34_upvr.componentDidCatch) == "function" then
		function createUpdate_upvr_result1_2.callback() -- Line 173
			--[[ Upvalues[11]:
				[1]: markFailedErrorBoundaryForHotReloading_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: getDerivedStateFromError_upvr (readonly)
				[4]: var13_upvr (copied, readonly)
				[5]: var34_upvr (readonly)
				[6]: logCapturedError_upvr (copied, readonly)
				[7]: arg2 (readonly)
				[8]: includesSomeLane_upvr (copied, readonly)
				[9]: SyncLane_upvr (copied, readonly)
				[10]: console_upvr (copied, readonly)
				[11]: getComponentName_upvr (copied, readonly)
			]]
			if _G.__DEV__ then
				markFailedErrorBoundaryForHotReloading_upvr(arg1)
			end
			if typeof(getDerivedStateFromError_upvr) ~= "function" then
				var13_upvr(var34_upvr)
				logCapturedError_upvr(arg1, arg2)
			end
			var34_upvr:componentDidCatch(arg2.value, {
				componentStack = arg2.stack or "";
			})
			if _G.__DEV__ and typeof(getDerivedStateFromError_upvr) ~= "function" and not includesSomeLane_upvr(arg1.lanes, SyncLane_upvr) then
				console_upvr.error("%s: Error boundaries should implement getDerivedStateFromError(). ".."In that method, return a state update to display an error message or fallback UI.", getComponentName_upvr(arg1.type) or "Unknown")
			end
		end
		return createUpdate_upvr_result1_2
	end
	if _G.__DEV__ then
		function createUpdate_upvr_result1_2.callback() -- Line 211
			--[[ Upvalues[2]:
				[1]: markFailedErrorBoundaryForHotReloading_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			markFailedErrorBoundaryForHotReloading_upvr(arg1)
		end
	end
	return createUpdate_upvr_result1_2
end
local function attachPingListener_upvr(arg1, arg2, arg3) -- Line 218, Named "attachPingListener"
	--[[ Upvalues[1]:
		[1]: var15_upvr (readonly)
	]]
	local var39
	if arg1.pingCache == nil then
		var39 = {}
		arg1.pingCache = {
			[arg2] = var39;
		}
	else
		var39 = arg1.pingCache[arg2]
		if var39 == nil then
			var39 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1.pingCache[arg2] = var39
		end
	end
	if not var39[arg3] then
		var39[arg3] = true
		local function var41() -- Line 246
			--[[ Upvalues[4]:
				[1]: var15_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
				[4]: arg3 (readonly)
			]]
			return var15_upvr(arg1, arg2, arg3)
		end
		arg2:andThen(var41, var41)
	end
end
local Incomplete_upvr = ReactFiberFlags.Incomplete
local enableDebugTracing_upvr = ReactFeatureFlags.enableDebugTracing
local DebugTracingMode_upvr = ReactTypeOfMode.DebugTracingMode
local logComponentSuspended_upvr = require(script.Parent.DebugTracing).logComponentSuspended
local enableSchedulingProfiler_upvr = ReactFeatureFlags.enableSchedulingProfiler
local markComponentSuspended_upvr = require(script.Parent.SchedulingProfiler).markComponentSuspended
local BlockingMode_upvr = ReactTypeOfMode.BlockingMode
local NoMode_upvr = ReactTypeOfMode.NoMode
local hasSuspenseContext_upvr = new.hasSuspenseContext
local suspenseStackCursor_upvr = new.suspenseStackCursor
local InvisibleParentSuspenseContext_upvr = new.InvisibleParentSuspenseContext
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local shouldCaptureSuspense_upvr = require(script.Parent["ReactFiberSuspenseComponent.new"]).shouldCaptureSuspense
local DidCapture_upvr = ReactFiberFlags.DidCapture
local ForceUpdateForLegacySuspense_upvr = ReactFiberFlags.ForceUpdateForLegacySuspense
local LifecycleEffectMask_upvr = ReactFiberFlags.LifecycleEffectMask
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local IncompleteClassComponent_upvr = ReactWorkTags.IncompleteClassComponent
local ForceUpdate_upvr = new_2.ForceUpdate
local enqueueUpdate_upvr = new_2.enqueueUpdate
local mergeLanes_upvr = ReactFiberLane.mergeLanes
local ShouldCapture_upvr = ReactFiberFlags.ShouldCapture
local createCapturedValue_upvr = require(script.Parent.ReactCapturedValue).createCapturedValue
local HostRoot_upvr = ReactWorkTags.HostRoot
local pickArbitraryLane_upvr = ReactFiberLane.pickArbitraryLane
local enqueueCapturedUpdate_upvr = new_2.enqueueCapturedUpdate
local NoFlags_upvr = ReactFiberFlags.NoFlags
function throwException(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 253
	--[[ Upvalues[33]:
		[1]: Incomplete_upvr (readonly)
		[2]: enableDebugTracing_upvr (readonly)
		[3]: DebugTracingMode_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: logComponentSuspended_upvr (readonly)
		[6]: enableSchedulingProfiler_upvr (readonly)
		[7]: markComponentSuspended_upvr (readonly)
		[8]: BlockingMode_upvr (readonly)
		[9]: NoMode_upvr (readonly)
		[10]: hasSuspenseContext_upvr (readonly)
		[11]: suspenseStackCursor_upvr (readonly)
		[12]: InvisibleParentSuspenseContext_upvr (readonly)
		[13]: SuspenseComponent_upvr (readonly)
		[14]: shouldCaptureSuspense_upvr (readonly)
		[15]: DidCapture_upvr (readonly)
		[16]: ForceUpdateForLegacySuspense_upvr (readonly)
		[17]: LifecycleEffectMask_upvr (readonly)
		[18]: ClassComponent_upvr (readonly)
		[19]: IncompleteClassComponent_upvr (readonly)
		[20]: createUpdate_upvr (readonly)
		[21]: NoTimestamp_upvr (readonly)
		[22]: SyncLane_upvr (readonly)
		[23]: ForceUpdate_upvr (readonly)
		[24]: enqueueUpdate_upvr (readonly)
		[25]: mergeLanes_upvr (readonly)
		[26]: attachPingListener_upvr (readonly)
		[27]: ShouldCapture_upvr (readonly)
		[28]: createCapturedValue_upvr (readonly)
		[29]: HostRoot_upvr (readonly)
		[30]: pickArbitraryLane_upvr (readonly)
		[31]: enqueueCapturedUpdate_upvr (readonly)
		[32]: NoFlags_upvr (readonly)
		[33]: var17_upvr (readonly)
	]]
	arg3.flags = bit32.bor(arg3.flags, Incomplete_upvr)
	local var69
	if var69 ~= nil and typeof(var69) == "table" and typeof(var69.andThen) == "function" then
		local var70 = var69
		if _G.__DEV__ and enableDebugTracing_upvr and bit32.band(arg3.mode, DebugTracingMode_upvr) ~= 0 then
			logComponentSuspended_upvr(getComponentName_upvr(arg3.type) or "Unknown", var70)
		end
		if enableSchedulingProfiler_upvr then
			markComponentSuspended_upvr(arg3, var70)
		end
		if bit32.band(arg3.mode, BlockingMode_upvr) == NoMode_upvr then
			local alternate = arg3.alternate
			if alternate then
				arg3.updateQueue = alternate.updateQueue
				arg3.memoizedState = alternate.memoizedState
				arg3.lanes = alternate.lanes
			else
				arg3.updateQueue = nil
				arg3.memoizedState = nil
			end
		end
		local var72 = arg2
		repeat
			if var72.tag == SuspenseComponent_upvr and shouldCaptureSuspense_upvr(var72, hasSuspenseContext_upvr(suspenseStackCursor_upvr.current, InvisibleParentSuspenseContext_upvr)) then
				local updateQueue = var72.updateQueue
				if updateQueue == nil then
					var72.updateQueue = {
						[var70] = true;
					}
				else
					updateQueue[var70] = true
				end
				if bit32.band(var72.mode, BlockingMode_upvr) == NoMode_upvr then
					var72.flags = bit32.bor(var72.flags, DidCapture_upvr)
					arg3.flags = bit32.bor(arg3.flags, ForceUpdateForLegacySuspense_upvr)
					arg3.flags = bit32.band(arg3.flags, bit32.bnot(bit32.bor(LifecycleEffectMask_upvr, Incomplete_upvr)))
					if arg3.tag == ClassComponent_upvr then
						if arg3.alternate == nil then
							arg3.tag = IncompleteClassComponent_upvr
						else
							local createUpdate_upvr_result1_3 = createUpdate_upvr(NoTimestamp_upvr, SyncLane_upvr)
							createUpdate_upvr_result1_3.tag = ForceUpdate_upvr
							enqueueUpdate_upvr(arg3, createUpdate_upvr_result1_3)
						end
					end
					arg3.lanes = mergeLanes_upvr(arg3.lanes, SyncLane_upvr)
				else
					attachPingListener_upvr(arg1, var70, arg5)
					var72.flags = bit32.bor(var72.flags, ShouldCapture_upvr)
					var72.lanes = arg5
				end
			end
		until var72.return_ == nil
		var69 = (getComponentName_upvr(arg3.type) or "A React component").." suspended while rendering, but no fallback UI was specified.\n"..'\n'.."Add a <Suspense fallback=...> component higher in the tree to ".."provide a loading indicator or placeholder to display."
	end
	arg7()
	var69 = createCapturedValue_upvr(var69, arg3)
	local var76 = arg2
	repeat
		if var76.tag == HostRoot_upvr then
			var76.flags = bit32.bor(var76.flags, ShouldCapture_upvr)
			local var66_result1 = pickArbitraryLane_upvr(arg5)
			var76.lanes = mergeLanes_upvr(var76.lanes, var66_result1)
			enqueueCapturedUpdate_upvr(var76, createRootErrorUpdate(var76, var69, var66_result1, arg6))
			return
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local stateNode = var76.stateNode
			return bit32.band(var76.flags, DidCapture_upvr) == NoFlags_upvr
		end
		if var76.tag == ClassComponent_upvr and INLINED() and (typeof(var76.type.getDerivedStateFromError) == "function" or stateNode ~= nil and typeof(stateNode.componentDidCatch) == "function" and not var17_upvr(stateNode)) then
			var76.flags = bit32.bor(var76.flags, ShouldCapture_upvr)
			local var66_result1_2 = pickArbitraryLane_upvr(arg5)
			var76.lanes = mergeLanes_upvr(var76.lanes, var66_result1_2)
			enqueueCapturedUpdate_upvr(var76, createClassErrorUpdate(var76, var69, var66_result1_2))
			return
		end
	until var76.return_ == nil
end
return {
	throwException = throwException;
	createRootErrorUpdate = createRootErrorUpdate;
	createClassErrorUpdate = createClassErrorUpdate;
}