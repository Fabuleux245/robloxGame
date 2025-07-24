-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:58
-- Luau version 6, Types version 3
-- Time taken: 0.054073 seconds

local function _(arg1) -- Line 14, Named "unimplemented"
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring(arg1))
	error("FIXME (roblox): "..arg1.." is unimplemented", 2)
end
local __DEV___upvr = _G.__DEV__
local __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr = _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__
local Parent_upvr = script.Parent.Parent
local console_upvr = require(Parent_upvr.Shared).console
local LuauPolyfill = require(Parent_upvr.LuauPolyfill)
local ReactFiberLane_upvr = require(script.Parent.ReactFiberLane)
local new_10 = require(script.Parent["ReactFiberSuspenseContext.new"])
local checkPropTypes_upvr = require(Parent_upvr.Shared).checkPropTypes
local ReactWorkTags_upvr = require(script.Parent.ReactWorkTags)
local FunctionComponent_upvr = ReactWorkTags_upvr.FunctionComponent
local ClassComponent_upvr = ReactWorkTags_upvr.ClassComponent
local ForwardRef_upvr = ReactWorkTags_upvr.ForwardRef
local MemoComponent_upvr = ReactWorkTags_upvr.MemoComponent
local SimpleMemoComponent_upvr = ReactWorkTags_upvr.SimpleMemoComponent
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local NoFlags_upvr = ReactFiberFlags.NoFlags
local PerformedWork_upvr = ReactFiberFlags.PerformedWork
local Placement_upvr = ReactFiberFlags.Placement
local Hydrating_upvr = ReactFiberFlags.Hydrating
local DidCapture_upvr = ReactFiberFlags.DidCapture
local Ref_upvr = ReactFiberFlags.Ref
local Deletion_upvr = ReactFiberFlags.Deletion
local ForceUpdateForLegacySuspense_upvr = ReactFiberFlags.ForceUpdateForLegacySuspense
local ReactFeatureFlags = require(Parent_upvr.Shared).ReactFeatureFlags
local debugRenderPhaseSideEffectsForStrictMode_upvr = ReactFeatureFlags.debugRenderPhaseSideEffectsForStrictMode
local disableLegacyContext_upvr = ReactFeatureFlags.disableLegacyContext
local enableProfilerTimer_upvr = ReactFeatureFlags.enableProfilerTimer
local enableSchedulerTracing_upvr = ReactFeatureFlags.enableSchedulerTracing
local enableSuspenseServerRenderer_upvr = ReactFeatureFlags.enableSuspenseServerRenderer
local invariant_upvr = require(Parent_upvr.Shared).invariant
local describeError_upvr = require(Parent_upvr.Shared).describeError
local shallowEqual_upvr = require(Parent_upvr.Shared).shallowEqual
local getComponentName_upvr = require(Parent_upvr.Shared).getComponentName
local REACT_LAZY_TYPE_upvr = require(Parent_upvr.Shared).ReactSymbols.REACT_LAZY_TYPE
local ReactCurrentFiber = require(script.Parent.ReactCurrentFiber)
local setIsRendering_upvr = ReactCurrentFiber.setIsRendering
local new_13 = require(script.Parent["ReactFiberHotReloading.new"])
local resolveFunctionForHotReloading_upvr = new_13.resolveFunctionForHotReloading
local new_14 = require(script.Parent["ReactChildFiber.new"])
local mountChildFibers_upvr = new_14.mountChildFibers
local reconcileChildFibers_upvr = new_14.reconcileChildFibers
local new_6 = require(script.Parent["ReactUpdateQueue.new"])
local ReactTypeOfMode = require(script.Parent.ReactTypeOfMode)
local NoMode_upvr = ReactTypeOfMode.NoMode
local ProfileMode_upvr = ReactTypeOfMode.ProfileMode
local StrictMode_upvr = ReactTypeOfMode.StrictMode
local BlockingMode_upvr = ReactTypeOfMode.BlockingMode
local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local isSuspenseInstanceFallback_upvr = ReactFiberHostConfig.isSuspenseInstanceFallback
local new_7 = require(script.Parent["ReactFiberHostContext.new"])
local pushHostContext_upvr = new_7.pushHostContext
local pushHostContainer_upvr = new_7.pushHostContainer
local suspenseStackCursor_upvr = new_10.suspenseStackCursor
local hasSuspenseContext_upvr = new_10.hasSuspenseContext
local ForceSuspenseFallback_upvr = new_10.ForceSuspenseFallback
local pushSuspenseContext_upvr = new_10.pushSuspenseContext
local setDefaultShallowSuspenseContext_upvr = new_10.setDefaultShallowSuspenseContext
local new_2 = require(script.Parent["ReactFiberNewContext.new"])
local prepareToReadContext_upvr = new_2.prepareToReadContext
local pushProvider_upvr = new_2.pushProvider
local tbl_3_upvr = {
	renderWithHooksRef = nil;
	bailoutHooksRef = nil;
	shouldSuspendRef = nil;
}
local function _(arg1) -- Line 187, Named "shouldSuspend"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if not tbl_3_upvr.shouldSuspendRef then
		tbl_3_upvr.shouldSuspendRef = require(script.Parent.ReactFiberReconciler).shouldSuspend
	end
	return tbl_3_upvr.shouldSuspendRef(arg1)
end
local function _() -- Line 196, Named "initReactFiberHooks"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local new_3 = require(script.Parent["ReactFiberHooks.new"])
	tbl_3_upvr.renderWithHooksRef = new_3.renderWithHooks
	tbl_3_upvr.bailoutHooksRef = new_3.bailoutHooks
end
local function renderWithHooks_upvr(...) -- Line 203, Named "renderWithHooks"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if not tbl_3_upvr.renderWithHooksRef then
		local new = require(script.Parent["ReactFiberHooks.new"])
		tbl_3_upvr.renderWithHooksRef = new.renderWithHooks
		tbl_3_upvr.bailoutHooksRef = new.bailoutHooks
	end
	return tbl_3_upvr.renderWithHooksRef(...)
end
local function bailoutHooks_upvr(...) -- Line 211, Named "bailoutHooks"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if not tbl_3_upvr.bailoutHooksRef then
		local new_8 = require(script.Parent["ReactFiberHooks.new"])
		tbl_3_upvr.renderWithHooksRef = new_8.renderWithHooks
		tbl_3_upvr.bailoutHooksRef = new_8.bailoutHooks
	end
	return tbl_3_upvr.bailoutHooksRef(...)
end
local stopProfilerTimerIfRunning_upvr = require(script.Parent["ReactProfilerTimer.new"]).stopProfilerTimerIfRunning
local new_9 = require(script.Parent["ReactFiberContext.new"])
local getMaskedContext_upvr = new_9.getMaskedContext
local getUnmaskedContext_upvr = new_9.getUnmaskedContext
local hasContextChanged_upvr = new_9.hasContextChanged
local pushContextProvider_upvr = new_9.pushContextProvider
local isContextProvider_upvr = new_9.isContextProvider
local pushTopLevelContextObject_upvr = new_9.pushTopLevelContextObject
local new_5 = require(script.Parent["ReactFiberHydrationContext.new"])
local resetHydrationState_upvr = new_5.resetHydrationState
local tryToClaimNextHydratableInstance_upvr = new_5.tryToClaimNextHydratableInstance
local new_12 = require(script.Parent["ReactFiberClassComponent.new"])
local constructClassInstance_upvr = new_12.constructClassInstance
local mountClassInstance_upvr = new_12.mountClassInstance
local resolveDefaultProps_upvr = require(script.Parent["ReactFiberLazyComponent.new"]).resolveDefaultProps
local new_4 = require(script.Parent["ReactFiber.new"])
local createFiberFromFragment_upvr = new_4.createFiberFromFragment
local createFiberFromOffscreen_upvr = new_4.createFiberFromOffscreen
local createFiberFromTypeAndProps_upvr = new_4.createFiberFromTypeAndProps
local createWorkInProgress_upvr = new_4.createWorkInProgress
local new_15 = require(script.Parent["ReactFiberWorkLoop.new"])
local markSpawnedWork_upvr = new_15.markSpawnedWork
local ConsolePatchingDev = require(Parent_upvr.Shared).ConsolePatchingDev
local disableLogs_upvr = ConsolePatchingDev.disableLogs
local reenableLogs_upvr = ConsolePatchingDev.reenableLogs
local ReactCurrentOwner_upvr = require(Parent_upvr.Shared).ReactSharedInternals.ReactCurrentOwner
local module_2_upvr = {}
local bailoutOnAlreadyFinishedWork_upvw
local var94_upvw = false
local tbl_6_upvr = {
	didWarnAboutBadClass = {};
	didWarnAboutModulePatternComponent = {};
	didWarnAboutContextTypeOnFunctionComponent = {};
	didWarnAboutGetDerivedStateOnFunctionComponent = {};
	didWarnAboutFunctionRefs = {};
	didWarnAboutDefaultPropsOnFunctionComponent = {};
}
if __DEV___upvr then
	tbl_6_upvr.didWarnAboutBadClass = {}
	tbl_6_upvr.didWarnAboutModulePatternComponent = {}
	tbl_6_upvr.didWarnAboutContextTypeOnFunctionComponent = {}
	tbl_6_upvr.didWarnAboutGetDerivedStateOnFunctionComponent = {}
	tbl_6_upvr.didWarnAboutFunctionRefs = {}
	module_2_upvr.didWarnAboutReassigningProps = false
	tbl_6_upvr.didWarnAboutDefaultPropsOnFunctionComponent = {}
end
local function _(arg1, arg2, arg3, arg4) -- Line 312, Named "reconcileChildren"
	--[[ Upvalues[2]:
		[1]: mountChildFibers_upvr (readonly)
		[2]: reconcileChildFibers_upvr (readonly)
	]]
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, arg3, arg4)
	else
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, arg3, arg4)
	end
end
local function _(arg1, arg2, arg3, arg4) -- Line 341, Named "forceUnmountCurrentAndReconcile"
	--[[ Upvalues[1]:
		[1]: reconcileChildFibers_upvr (readonly)
	]]
	arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, nil, arg4)
	arg2.child = reconcileChildFibers_upvr(arg2, nil, arg3, arg4)
end
local function updateForwardRef_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 365, Named "updateForwardRef"
	--[[ Upvalues[20]:
		[1]: __DEV___upvr (readonly)
		[2]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[3]: checkPropTypes_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: prepareToReadContext_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: ReactCurrentOwner_upvr (readonly)
		[8]: setIsRendering_upvr (readonly)
		[9]: renderWithHooks_upvr (readonly)
		[10]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[11]: StrictMode_upvr (readonly)
		[12]: disableLogs_upvr (readonly)
		[13]: describeError_upvr (readonly)
		[14]: reenableLogs_upvr (readonly)
		[15]: var94_upvw (read and write)
		[16]: bailoutHooks_upvr (readonly)
		[17]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[18]: PerformedWork_upvr (readonly)
		[19]: mountChildFibers_upvr (readonly)
		[20]: reconcileChildFibers_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var96
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var96 = __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr
		return var96
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var96 = arg2.type
		return var96 ~= arg2.elementType
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		local validateProps_4 = arg3.validateProps
		var96 = arg3.propTypes
		return var96
	end
	if var96 or INLINED() or INLINED_2() and (INLINED_3() or validateProps_4) then
		checkPropTypes_upvr(var96, validateProps_4, arg4, "prop", getComponentName_upvr(arg3))
	end
	var96 = arg3.render
	local ref = arg2.ref
	prepareToReadContext_upvr(arg2, arg5, module_2_upvr.markWorkInProgressReceivedUpdate)
	if __DEV___upvr then
		ReactCurrentOwner_upvr.current = arg2
		setIsRendering_upvr(true)
		if debugRenderPhaseSideEffectsForStrictMode_upvr and bit32.band(arg2.mode, StrictMode_upvr) ~= 0 then
			disableLogs_upvr()
			local xpcall_result1_8, xpcall_result2_2 = xpcall(renderWithHooks_upvr, describeError_upvr, arg1, arg2, var96, arg4, ref, arg5)
			if xpcall_result1_8 then
			end
			reenableLogs_upvr()
			if not xpcall_result1_8 then
				error(xpcall_result2_2)
			end
		end
		setIsRendering_upvr(false)
	else
	end
	if arg1 ~= nil and not var94_upvw then
		bailoutHooks_upvr(arg1, arg2, arg5)
		return bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg5)
	end
	arg2.flags = bit32.bor(arg2.flags, PerformedWork_upvr)
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, renderWithHooks_upvr(arg1, arg2, var96, arg4, ref, arg5), arg5)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, renderWithHooks_upvr(arg1, arg2, var96, arg4, ref, arg5), arg5)
	end
	return arg2.child
end
local isSimpleFunctionComponent_upvr = new_4.isSimpleFunctionComponent
local updateSimpleMemoComponent_upvw
local function updateMemoComponent_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 452, Named "updateMemoComponent"
	--[[ Upvalues[14]:
		[1]: isSimpleFunctionComponent_upvr (readonly)
		[2]: __DEV___upvr (readonly)
		[3]: resolveFunctionForHotReloading_upvr (readonly)
		[4]: SimpleMemoComponent_upvr (readonly)
		[5]: updateSimpleMemoComponent_upvw (read and write)
		[6]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[7]: checkPropTypes_upvr (readonly)
		[8]: getComponentName_upvr (readonly)
		[9]: createFiberFromTypeAndProps_upvr (readonly)
		[10]: ReactFiberLane_upvr (readonly)
		[11]: shallowEqual_upvr (readonly)
		[12]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[13]: PerformedWork_upvr (readonly)
		[14]: createWorkInProgress_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1 == nil then
		local type_4 = arg3.type
		if isSimpleFunctionComponent_upvr(type_4) and arg3.compare == nil and arg3.defaultProps == nil then
			local var104 = type_4
			if __DEV___upvr then
				var104 = resolveFunctionForHotReloading_upvr(type_4)
			end
			arg2.tag = SimpleMemoComponent_upvr
			arg2.type = var104
			if __DEV___upvr then
				validateFunctionComponentInDev(arg2, type_4)
			end
			return updateSimpleMemoComponent_upvw(arg1, arg2, var104, arg4, arg5, arg6)
		end
		local var105
		if __DEV___upvr or __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr then
			local var106
			var105 = nil
			if type(type_4) == "table" then
				var106 = type_4.propTypes
				var105 = type_4.validateProps
			end
			if var106 or var105 then
				checkPropTypes_upvr(var106, var105, arg4, "prop", getComponentName_upvr(type_4))
			end
		end
		local createFiberFromTypeAndProps_upvr_result1 = createFiberFromTypeAndProps_upvr(arg3.type, nil, arg4, arg2, arg2.mode, arg6)
		createFiberFromTypeAndProps_upvr_result1.ref = arg2.ref
		createFiberFromTypeAndProps_upvr_result1.return_ = arg2
		arg2.child = createFiberFromTypeAndProps_upvr_result1
		return createFiberFromTypeAndProps_upvr_result1
	end
	local var108
	if __DEV___upvr or __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr then
		local type = arg3.type
		var108 = nil
		if type(type) == "table" then
			var108 = type.propTypes
			local validateProps_2 = type.validateProps
		end
		if var108 or validateProps_2 then
			checkPropTypes_upvr(var108, validateProps_2, arg4, "prop", getComponentName_upvr(type))
		end
	end
	local child_6 = arg1.child
	local var112
	if not ReactFiberLane_upvr.includesSomeLane(arg5, arg6) then
		var112 = arg3.compare
		if var112 == nil then
			var112 = shallowEqual_upvr
		end
		if var112(child_6.memoizedProps, arg4) and arg1.ref == arg2.ref then
			return bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg6)
		end
	end
	arg2.flags = bit32.bor(arg2.flags, PerformedWork_upvr)
	local createWorkInProgress_upvr_result1 = createWorkInProgress_upvr(child_6, arg4)
	createWorkInProgress_upvr_result1.ref = arg2.ref
	createWorkInProgress_upvr_result1.return_ = arg2
	arg2.child = createWorkInProgress_upvr_result1
	return createWorkInProgress_upvr_result1
end
local updateFunctionComponent_upvw
function updateSimpleMemoComponent_upvw(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 573, Named "updateSimpleMemoComponent"
	--[[ Upvalues[13]:
		[1]: __DEV___upvr (readonly)
		[2]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[3]: REACT_LAZY_TYPE_upvr (readonly)
		[4]: describeError_upvr (readonly)
		[5]: checkPropTypes_upvr (readonly)
		[6]: getComponentName_upvr (readonly)
		[7]: shallowEqual_upvr (readonly)
		[8]: var94_upvw (read and write)
		[9]: ReactFiberLane_upvr (readonly)
		[10]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[11]: ForceUpdateForLegacySuspense_upvr (readonly)
		[12]: NoFlags_upvr (readonly)
		[13]: updateFunctionComponent_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var115
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var115 = __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr
		return var115
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var115 = arg2.type
		return var115 ~= arg2.elementType
	end
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var115 = arg2.elementType
		return var115["$$typeof"] == REACT_LAZY_TYPE_upvr
	end
	if var115 or INLINED_4() or INLINED_5() and INLINED_6() then
		local var116 = var115
		local xpcall_result1_3, xpcall_result2_6 = xpcall(var116._init, describeError_upvr, var116._payload)
		if xpcall_result1_3 then
			var115 = xpcall_result2_6
		else
			var115 = nil
		end
		if var115 ~= nil and type(var115) == "table" then
			local propTypes_3 = var115.propTypes
			local validateProps_5 = var115.validateProps
		end
		if propTypes_3 or validateProps_5 then
			checkPropTypes_upvr(propTypes_3, validateProps_5, arg4, "prop", getComponentName_upvr(var115))
			local var121
		end
	end
	if arg1 ~= nil then
		var121 = true
		if __DEV___upvr then
			if arg2.type ~= arg1.type then
				var121 = false
			else
				var121 = true
			end
		end
		if shallowEqual_upvr(arg1.memoizedProps, arg4) and arg1.ref == arg2.ref and var121 then
			var94_upvw = false
			if not ReactFiberLane_upvr.includesSomeLane(arg6, arg5) then
				arg2.lanes = arg1.lanes
				return bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg6)
			end
			if bit32.band(arg1.flags, ForceUpdateForLegacySuspense_upvr) ~= NoFlags_upvr then
				var94_upvw = true
			end
		end
	end
	return updateFunctionComponent_upvw(arg1, arg2, arg3, arg4, arg6)
end
local ConcurrentMode_upvr = ReactTypeOfMode.ConcurrentMode
local pushRenderLanes_upvr = new_15.pushRenderLanes
local function updateOffscreenComponent_upvr(arg1, arg2, arg3) -- Line 675, Named "updateOffscreenComponent"
	--[[ Upvalues[8]:
		[1]: ConcurrentMode_upvr (readonly)
		[2]: NoMode_upvr (readonly)
		[3]: ReactFiberLane_upvr (readonly)
		[4]: pushRenderLanes_upvr (readonly)
		[5]: enableSchedulerTracing_upvr (readonly)
		[6]: markSpawnedWork_upvr (readonly)
		[7]: mountChildFibers_upvr (readonly)
		[8]: reconcileChildFibers_upvr (readonly)
	]]
	local pendingProps = arg2.pendingProps
	local var125
	if arg1 ~= nil then
		var125 = arg1.memoizedState
	end
	if pendingProps.mode == "hidden" or pendingProps.mode == "unstable-defer-without-hiding" then
		if bit32.band(arg2.mode, ConcurrentMode_upvr) == NoMode_upvr then
			arg2.memoizedState = {
				baseLanes = ReactFiberLane_upvr.NoLanes;
			}
			pushRenderLanes_upvr(arg2, arg3)
		else
			if not ReactFiberLane_upvr.includesSomeLane(arg3, ReactFiberLane_upvr.OffscreenLane) then
				local var127
				if var125 ~= nil then
					var127 = ReactFiberLane_upvr.mergeLanes(var125.baseLanes, arg3)
				else
					var127 = arg3
				end
				if enableSchedulerTracing_upvr then
					markSpawnedWork_upvr(ReactFiberLane_upvr.OffscreenLane)
				end
				arg2.childLanes = ReactFiberLane_upvr.laneToLanes(ReactFiberLane_upvr.OffscreenLane)
				arg2.lanes = arg2.childLanes
				arg2.memoizedState = {
					baseLanes = var127;
				}
				pushRenderLanes_upvr(arg2, var127)
				return nil
			end
			local tbl = {
				baseLanes = ReactFiberLane_upvr.NoLanes;
			}
			arg2.memoizedState = tbl
			local var130 = arg3
			if var125 ~= nil then
				var130 = var125.baseLanes
			end
			pushRenderLanes_upvr(arg2, var130)
		end
	else
		tbl = nil
		local var131 = tbl
		if var125 ~= nil then
			var131 = ReactFiberLane_upvr.mergeLanes(var125.baseLanes, arg3)
			arg2.memoizedState = nil
		else
			var131 = arg3
		end
		pushRenderLanes_upvr(arg2, var131)
	end
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, pendingProps.children, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, pendingProps.children, arg3)
	end
	return arg2.child
end
function updateFragment(arg1, arg2, arg3) -- Line 777
	--[[ Upvalues[2]:
		[1]: mountChildFibers_upvr (readonly)
		[2]: reconcileChildFibers_upvr (readonly)
	]]
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, arg2.pendingProps, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, arg2.pendingProps, arg3)
	end
	return arg2.child
end
function updateMode(arg1, arg2, arg3) -- Line 783
	--[[ Upvalues[2]:
		[1]: mountChildFibers_upvr (readonly)
		[2]: reconcileChildFibers_upvr (readonly)
	]]
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, arg2.pendingProps.children, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, arg2.pendingProps.children, arg3)
	end
	return arg2.child
end
function updateProfiler(arg1, arg2, arg3) -- Line 789
	--[[ Upvalues[3]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: mountChildFibers_upvr (readonly)
		[3]: reconcileChildFibers_upvr (readonly)
	]]
	if enableProfilerTimer_upvr then
		local stateNode_3 = arg2.stateNode
		stateNode_3.effectDuration = 0
		stateNode_3.passiveEffectDuration = 0
	end
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, arg2.pendingProps.children, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, arg2.pendingProps.children, arg3)
	end
	return arg2.child
end
local function _(arg1, arg2) -- Line 803, Named "markRef"
	--[[ Upvalues[1]:
		[1]: Ref_upvr (readonly)
	]]
	local ref_2 = arg2.ref
	if arg1 == nil and ref_2 ~= nil or arg1 ~= nil and arg1.ref ~= ref_2 then
		arg2.flags = bit32.bor(arg2.flags, Ref_upvr)
	end
end
function updateFunctionComponent_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 814, Named "updateFunctionComponent"
	--[[ Upvalues[23]:
		[1]: __DEV___upvr (readonly)
		[2]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[3]: checkPropTypes_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: disableLegacyContext_upvr (readonly)
		[6]: getUnmaskedContext_upvr (readonly)
		[7]: getMaskedContext_upvr (readonly)
		[8]: prepareToReadContext_upvr (readonly)
		[9]: module_2_upvr (readonly)
		[10]: ReactCurrentOwner_upvr (readonly)
		[11]: setIsRendering_upvr (readonly)
		[12]: renderWithHooks_upvr (readonly)
		[13]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[14]: StrictMode_upvr (readonly)
		[15]: disableLogs_upvr (readonly)
		[16]: describeError_upvr (readonly)
		[17]: reenableLogs_upvr (readonly)
		[18]: var94_upvw (read and write)
		[19]: bailoutHooks_upvr (readonly)
		[20]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[21]: PerformedWork_upvr (readonly)
		[22]: mountChildFibers_upvr (readonly)
		[23]: reconcileChildFibers_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var135
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		var135 = arg3
		return type(var135) ~= "function"
	end
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var135 = arg2.elementType
		return arg2.type ~= var135
	end
	if __DEV___upvr or __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr or INLINED_7() and INLINED_8() then
		var135 = nil
		if type(arg3) == "table" then
			local propTypes_2 = arg3.propTypes
			var135 = arg3.validateProps
		end
		if propTypes_2 or var135 then
			checkPropTypes_upvr(propTypes_2, var135, arg4, "prop", getComponentName_upvr(arg3))
		end
	end
	if not disableLegacyContext_upvr then
		local var68_result1 = getMaskedContext_upvr(arg2, getUnmaskedContext_upvr(arg2, arg3, true))
	end
	prepareToReadContext_upvr(arg2, arg5, module_2_upvr.markWorkInProgressReceivedUpdate)
	if __DEV___upvr then
		ReactCurrentOwner_upvr.current = arg2
		setIsRendering_upvr(true)
		if debugRenderPhaseSideEffectsForStrictMode_upvr and bit32.band(arg2.mode, StrictMode_upvr) ~= 0 then
			disableLogs_upvr()
			local xpcall_result1_2, xpcall_result2_4 = xpcall(renderWithHooks_upvr, describeError_upvr, arg1, arg2, arg3, arg4, var68_result1, arg5)
			reenableLogs_upvr()
			if xpcall_result1_2 then
			else
				error(xpcall_result2_4)
			end
		end
		setIsRendering_upvr(false)
	else
	end
	if arg1 ~= nil and not var94_upvw then
		bailoutHooks_upvr(arg1, arg2, arg5)
		return bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg5)
	end
	arg2.flags = bit32.bor(arg2.flags, PerformedWork_upvr)
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, renderWithHooks_upvr(arg1, arg2, arg3, arg4, var68_result1, arg5), arg5)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, renderWithHooks_upvr(arg1, arg2, arg3, arg4, var68_result1, arg5), arg5)
	end
	return arg2.child
end
local var134_upvw = updateFunctionComponent_upvw
local resumeMountClassInstance_upvr = new_12.resumeMountClassInstance
local updateClassInstance_upvr = new_12.updateClassInstance
local function updateClassComponent_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 993, Named "updateClassComponent"
	--[[ Upvalues[14]:
		[1]: __DEV___upvr (readonly)
		[2]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[3]: checkPropTypes_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: isContextProvider_upvr (readonly)
		[6]: pushContextProvider_upvr (readonly)
		[7]: prepareToReadContext_upvr (readonly)
		[8]: module_2_upvr (readonly)
		[9]: Placement_upvr (readonly)
		[10]: constructClassInstance_upvr (readonly)
		[11]: mountClassInstance_upvr (readonly)
		[12]: resumeMountClassInstance_upvr (readonly)
		[13]: updateClassInstance_upvr (readonly)
		[14]: console_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var145
	local function INLINED_12() -- Internal function, doesn't exist in bytecode
		var145 = __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr
		return var145
	end
	local function INLINED_13() -- Internal function, doesn't exist in bytecode
		var145 = arg2.type
		return var145 ~= arg2.elementType
	end
	local function INLINED_14() -- Internal function, doesn't exist in bytecode
		local validateProps_7 = arg3.validateProps
		var145 = arg3.propTypes
		return var145
	end
	if var145 or INLINED_12() or INLINED_13() and (INLINED_14() or validateProps_7) then
		checkPropTypes_upvr(var145, validateProps_7, arg4, "prop", getComponentName_upvr(arg3))
	end
	var145 = nil
	if isContextProvider_upvr(arg3) then
		var145 = true
		pushContextProvider_upvr(arg2)
	else
		var145 = false
	end
	prepareToReadContext_upvr(arg2, arg5, module_2_upvr.markWorkInProgressReceivedUpdate)
	if arg2.stateNode == nil then
		if arg1 ~= nil then
			arg1.alternate = nil
			arg2.alternate = nil
			arg2.flags = bit32.bor(arg2.flags, Placement_upvr)
		end
		constructClassInstance_upvr(arg2, arg3, arg4)
		mountClassInstance_upvr(arg2, arg3, arg4, arg5)
		local _ = true
	elseif arg1 == nil then
	else
	end
	if __DEV___upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if updateClassInstance_upvr(arg1, arg2, arg3, arg4, arg5) and arg2.stateNode.props ~= arg4 then
			if not module_2_upvr.didWarnAboutReassigningProps then
				console_upvr.error("It looks like %s is reassigning its own `this.props` while rendering. ".."This is not supported and can lead to confusing bugs.", getComponentName_upvr(arg2.type) or "a component")
			end
			module_2_upvr.didWarnAboutReassigningProps = true
		end
	end
	return finishClassComponent(arg1, arg2, arg3, updateClassInstance_upvr(arg1, arg2, arg3, arg4, arg5), var145, arg5)
end
local invalidateContextProvider_upvr = new_9.invalidateContextProvider
function finishClassComponent(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1090
	--[[ Upvalues[18]:
		[1]: Ref_upvr (readonly)
		[2]: DidCapture_upvr (readonly)
		[3]: NoFlags_upvr (readonly)
		[4]: invalidateContextProvider_upvr (readonly)
		[5]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[6]: ReactCurrentOwner_upvr (readonly)
		[7]: enableProfilerTimer_upvr (readonly)
		[8]: stopProfilerTimerIfRunning_upvr (readonly)
		[9]: __DEV___upvr (readonly)
		[10]: setIsRendering_upvr (readonly)
		[11]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[12]: StrictMode_upvr (readonly)
		[13]: disableLogs_upvr (readonly)
		[14]: describeError_upvr (readonly)
		[15]: reenableLogs_upvr (readonly)
		[16]: PerformedWork_upvr (readonly)
		[17]: reconcileChildFibers_upvr (readonly)
		[18]: mountChildFibers_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
	local var154
	if arg1 == nil and var154 ~= nil or arg1 ~= nil and arg1.ref ~= var154 then
		arg2.flags = bit32.bor(arg2.flags, Ref_upvr)
	end
	if bit32.band(arg2.flags, DidCapture_upvr) == NoFlags_upvr then
		var154 = false
	else
		var154 = true
	end
	if not arg4 and not var154 then
		if arg5 then
			invalidateContextProvider_upvr(arg2, arg3, false)
		end
		return bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg6)
	end
	local stateNode = arg2.stateNode
	ReactCurrentOwner_upvr.current = arg2
	if var154 and (arg3.getDerivedStateFromError == nil or type(arg3.getDerivedStateFromError) ~= "function") then
		if enableProfilerTimer_upvr then
			stopProfilerTimerIfRunning_upvr(arg2)
			-- KONSTANTWARNING: GOTO [120] #91
		end
		-- KONSTANTWARNING: GOTO [120] #91
	end
	-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 55. Error Block 55 start (CF ANALYSIS FAILED)
	if __DEV___upvr then
		setIsRendering_upvr(true)
		if debugRenderPhaseSideEffectsForStrictMode_upvr then
			if bit32.band(arg2.mode, StrictMode_upvr) ~= 0 then
				disableLogs_upvr()
				local xpcall_result1_7, xpcall_result2_8 = xpcall(stateNode.render, describeError_upvr, stateNode)
				reenableLogs_upvr()
				if not xpcall_result1_7 then
					error(xpcall_result2_8)
				end
			end
		end
		setIsRendering_upvr(false)
		-- KONSTANTWARNING: GOTO [120] #91
	end
	-- KONSTANTERROR: [75] 55. Error Block 55 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 1188, Named "pushHostRootContext"
	--[[ Upvalues[2]:
		[1]: pushTopLevelContextObject_upvr (readonly)
		[2]: pushHostContainer_upvr (readonly)
	]]
	local stateNode_4 = arg1.stateNode
	local var159
	if stateNode_4.pendingContext then
		if stateNode_4.pendingContext == stateNode_4.context then
			var159 = false
		else
			var159 = true
		end
		pushTopLevelContextObject_upvr(arg1, stateNode_4.pendingContext, var159)
	elseif stateNode_4.context then
		var159 = false
		pushTopLevelContextObject_upvr(arg1, stateNode_4.context, var159)
	end
	pushHostContainer_upvr(arg1, stateNode_4.containerInfo)
end
local cloneUpdateQueue_upvr = new_6.cloneUpdateQueue
local processUpdateQueue_upvr = new_6.processUpdateQueue
local enterHydrationState_upvr = new_5.enterHydrationState
local supportsHydration_upvr = ReactFiberHostConfig.supportsHydration
local setWorkInProgressVersion_upvr = require(script.Parent["ReactMutableSource.new"]).setWorkInProgressVersion
local function updateHostRoot_upvr(arg1, arg2, arg3) -- Line 1204, Named "updateHostRoot"
	--[[ Upvalues[14]:
		[1]: pushTopLevelContextObject_upvr (readonly)
		[2]: pushHostContainer_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: cloneUpdateQueue_upvr (readonly)
		[5]: processUpdateQueue_upvr (readonly)
		[6]: resetHydrationState_upvr (readonly)
		[7]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[8]: enterHydrationState_upvr (readonly)
		[9]: supportsHydration_upvr (readonly)
		[10]: setWorkInProgressVersion_upvr (readonly)
		[11]: mountChildFibers_upvr (readonly)
		[12]: Placement_upvr (readonly)
		[13]: Hydrating_upvr (readonly)
		[14]: reconcileChildFibers_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [141] 110. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [141] 110. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 60 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.4]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.8]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.655431]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.9]
		if nil == nil then
		else
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
		end
	end
	if arg1 ~= nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.3]
		if nil == nil then
		else
		end
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.5]
	if nil ~= nil then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.6]
	if nil == nil then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.10]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil and nil ~= nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.13]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.11]
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [141.12]
				for _ = nil, nil, nil do
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTWARNING: GOTO [117] #94
			end
			-- KONSTANTWARNING: GOTO [164] #129
		end
		-- KONSTANTWARNING: GOTO [142] #111
	end
	if arg1 == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = mountChildFibers_upvr(arg2, nil, nil, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, nil, arg3)
	end
	resetHydrationState_upvr()
	-- KONSTANTERROR: [0] 1. Error Block 60 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [164] 129. Error Block 35 start (CF ANALYSIS FAILED)
	do
		return arg2.child
	end
	-- KONSTANTERROR: [164] 129. Error Block 35 end (CF ANALYSIS FAILED)
end
local shouldSetTextContent_upvr = ReactFiberHostConfig.shouldSetTextContent
local ContentReset_upvr = ReactFiberFlags.ContentReset
local function updateHostComponent_upvr(arg1, arg2, arg3) -- Line 1281, Named "updateHostComponent"
	--[[ Upvalues[8]:
		[1]: pushHostContext_upvr (readonly)
		[2]: tryToClaimNextHydratableInstance_upvr (readonly)
		[3]: shouldSetTextContent_upvr (readonly)
		[4]: ContentReset_upvr (readonly)
		[5]: PerformedWork_upvr (readonly)
		[6]: Ref_upvr (readonly)
		[7]: mountChildFibers_upvr (readonly)
		[8]: reconcileChildFibers_upvr (readonly)
	]]
	pushHostContext_upvr(arg2)
	local var175
	if arg1 == nil then
		tryToClaimNextHydratableInstance_upvr(arg2)
	end
	local type_2 = arg2.type
	local pendingProps_2 = arg2.pendingProps
	var175 = nil
	if arg1 ~= nil then
		var175 = arg1.memoizedProps
	end
	local children_2 = pendingProps_2.children
	if shouldSetTextContent_upvr(type_2, pendingProps_2) then
		children_2 = nil
	elseif var175 ~= nil and shouldSetTextContent_upvr(type_2, var175) then
		arg2.flags = bit32.bor(arg2.flags, ContentReset_upvr)
	end
	arg2.flags = bit32.bor(arg2.flags, PerformedWork_upvr)
	local ref_3 = arg2.ref
	if arg1 == nil and ref_3 ~= nil or arg1 ~= nil and arg1.ref ~= ref_3 then
		arg2.flags = bit32.bor(arg2.flags, Ref_upvr)
	end
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, children_2, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, children_2, arg3)
	end
	return arg2.child
end
local function _(arg1, arg2) -- Line 1322, Named "updateHostText"
	--[[ Upvalues[1]:
		[1]: tryToClaimNextHydratableInstance_upvr (readonly)
	]]
	if arg1 == nil then
		tryToClaimNextHydratableInstance_upvr(arg2)
	end
	return nil
end
local resolveLazyComponentTag_upvr = new_4.resolveLazyComponentTag
local resolveClassForHotReloading_upvr = new_13.resolveClassForHotReloading
local resolveForwardRefForHotReloading_upvr = new_13.resolveForwardRefForHotReloading
local inspect_upvr = LuauPolyfill.util.inspect
local function mountLazyComponent_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 1331, Named "mountLazyComponent"
	--[[ Upvalues[21]:
		[1]: Placement_upvr (readonly)
		[2]: resolveLazyComponentTag_upvr (readonly)
		[3]: resolveDefaultProps_upvr (readonly)
		[4]: FunctionComponent_upvr (readonly)
		[5]: __DEV___upvr (readonly)
		[6]: resolveFunctionForHotReloading_upvr (readonly)
		[7]: var134_upvw (read and write)
		[8]: ClassComponent_upvr (readonly)
		[9]: resolveClassForHotReloading_upvr (readonly)
		[10]: updateClassComponent_upvr (readonly)
		[11]: ForwardRef_upvr (readonly)
		[12]: resolveForwardRefForHotReloading_upvr (readonly)
		[13]: updateForwardRef_upvr (readonly)
		[14]: MemoComponent_upvr (readonly)
		[15]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[16]: checkPropTypes_upvr (readonly)
		[17]: getComponentName_upvr (readonly)
		[18]: updateMemoComponent_upvr (readonly)
		[19]: REACT_LAZY_TYPE_upvr (readonly)
		[20]: inspect_upvr (readonly)
		[21]: invariant_upvr (readonly)
	]]
	if arg1 ~= nil then
		arg1.alternate = nil
		arg2.alternate = nil
		arg2.flags = bit32.bor(arg2.flags, Placement_upvr)
	end
	local any__init_result1 = arg3._init(arg3._payload)
	arg2.type = any__init_result1
	arg2.tag = resolveLazyComponentTag_upvr(any__init_result1)
	local tag = arg2.tag
	local var80_result1 = resolveDefaultProps_upvr(any__init_result1, arg2.pendingProps)
	if tag == FunctionComponent_upvr then
		if __DEV___upvr then
			validateFunctionComponentInDev(arg2, any__init_result1)
			any__init_result1 = resolveFunctionForHotReloading_upvr(any__init_result1)
			arg2.type = any__init_result1
		end
		return var134_upvw(nil, arg2, any__init_result1, var80_result1, arg5)
	end
	if tag == ClassComponent_upvr then
		if __DEV___upvr then
			any__init_result1 = resolveClassForHotReloading_upvr(any__init_result1)
			arg2.type = any__init_result1
		end
		return updateClassComponent_upvr(nil, arg2, any__init_result1, var80_result1, arg5)
	end
	if tag == ForwardRef_upvr then
		if __DEV___upvr then
			any__init_result1 = resolveForwardRefForHotReloading_upvr(any__init_result1)
			arg2.type = any__init_result1
		end
		return updateForwardRef_upvr(nil, arg2, any__init_result1, var80_result1, arg5)
	end
	local var187
	if tag == var187 then
		var187 = __DEV___upvr
		local function INLINED_15() -- Internal function, doesn't exist in bytecode
			var187 = __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr
			return var187
		end
		local function INLINED_16() -- Internal function, doesn't exist in bytecode
			var187 = arg2.type
			return var187 ~= arg2.elementType
		end
		local function INLINED_17() -- Internal function, doesn't exist in bytecode
			local validateProps_6 = any__init_result1.validateProps
			var187 = any__init_result1.propTypes
			return var187
		end
		if var187 or INLINED_15() or INLINED_16() and (INLINED_17() or validateProps_6) then
			checkPropTypes_upvr(var187, validateProps_6, var80_result1, "prop", getComponentName_upvr(any__init_result1))
		end
		var187 = updateMemoComponent_upvr(nil, arg2, any__init_result1, resolveDefaultProps_upvr(any__init_result1.type, var80_result1), arg4, arg5)
		return var187
	end
	var187 = ""
	if __DEV___upvr then
		if any__init_result1 ~= nil and type(any__init_result1) == "table" and any__init_result1["$$typeof"] == REACT_LAZY_TYPE_upvr then
			var187 = " Did you wrap a component in React.lazy() more than once?"
		elseif type(any__init_result1) == "table" and any__init_result1["$$typeof"] == nil then
			var187 = '\n'..inspect_upvr(any__init_result1)
		end
	end
	invariant_upvr(false, "Element type is invalid. Received a promise that resolves to: %s. ".."Lazy element type must resolve to a class or function.%s", tostring(any__init_result1), var187)
	return nil
end
function mountIncompleteClassComponent(arg1, arg2, arg3, arg4, arg5) -- Line 1462
	--[[ Upvalues[8]:
		[1]: Placement_upvr (readonly)
		[2]: ClassComponent_upvr (readonly)
		[3]: isContextProvider_upvr (readonly)
		[4]: pushContextProvider_upvr (readonly)
		[5]: prepareToReadContext_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: constructClassInstance_upvr (readonly)
		[8]: mountClassInstance_upvr (readonly)
	]]
	if arg1 ~= nil then
		arg1.alternate = nil
		arg2.alternate = nil
		arg2.flags = bit32.bor(arg2.flags, Placement_upvr)
	end
	arg2.tag = ClassComponent_upvr
	local var189
	if isContextProvider_upvr(arg3) then
		var189 = true
		pushContextProvider_upvr(arg2)
	else
		var189 = false
	end
	prepareToReadContext_upvr(arg2, arg5, module_2_upvr.markWorkInProgressReceivedUpdate)
	constructClassInstance_upvr(arg2, arg3, arg4)
	mountClassInstance_upvr(arg2, arg3, arg4, arg5)
	return finishClassComponent(nil, arg2, arg3, true, var189, arg5)
end
local new_11_upvr = require(script.Parent["ReactStrictModeWarnings.new"])
local disableModulePatternComponents_upvr = ReactFeatureFlags.disableModulePatternComponents
local initializeUpdateQueue_upvr = new_6.initializeUpdateQueue
local applyDerivedStateFromProps_upvr = new_12.applyDerivedStateFromProps
local adoptClassInstance_upvr = new_12.adoptClassInstance
local function mountIndeterminateComponent_upvr(arg1, arg2, arg3, arg4) -- Line 1514, Named "mountIndeterminateComponent"
	--[[ Upvalues[30]:
		[1]: Placement_upvr (readonly)
		[2]: disableLegacyContext_upvr (readonly)
		[3]: getUnmaskedContext_upvr (readonly)
		[4]: getMaskedContext_upvr (readonly)
		[5]: prepareToReadContext_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: __DEV___upvr (readonly)
		[8]: getComponentName_upvr (readonly)
		[9]: tbl_6_upvr (readonly)
		[10]: console_upvr (readonly)
		[11]: StrictMode_upvr (readonly)
		[12]: new_11_upvr (readonly)
		[13]: setIsRendering_upvr (readonly)
		[14]: ReactCurrentOwner_upvr (readonly)
		[15]: renderWithHooks_upvr (readonly)
		[16]: PerformedWork_upvr (readonly)
		[17]: disableModulePatternComponents_upvr (readonly)
		[18]: ClassComponent_upvr (readonly)
		[19]: isContextProvider_upvr (readonly)
		[20]: pushContextProvider_upvr (readonly)
		[21]: initializeUpdateQueue_upvr (readonly)
		[22]: applyDerivedStateFromProps_upvr (readonly)
		[23]: adoptClassInstance_upvr (readonly)
		[24]: mountClassInstance_upvr (readonly)
		[25]: FunctionComponent_upvr (readonly)
		[26]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[27]: disableLogs_upvr (readonly)
		[28]: describeError_upvr (readonly)
		[29]: reenableLogs_upvr (readonly)
		[30]: mountChildFibers_upvr (readonly)
	]]
	if arg1 ~= nil then
		arg1.alternate = nil
		arg2.alternate = nil
		arg2.flags = bit32.bor(arg2.flags, Placement_upvr)
	end
	local pendingProps_4 = arg2.pendingProps
	if not disableLegacyContext_upvr then
		local var68_result1_2 = getMaskedContext_upvr(arg2, getUnmaskedContext_upvr(arg2, arg3, false))
	end
	prepareToReadContext_upvr(arg2, arg4, module_2_upvr.markWorkInProgressReceivedUpdate)
	local var217
	if __DEV___upvr then
		if type(arg3) == "table" then
			if type(arg3.render) == "function" then
				local var218 = getComponentName_upvr(arg3) or "Unknown"
				if not tbl_6_upvr.didWarnAboutBadClass[var218] then
					console_upvr.error("The <%s /> component appears to have a render method, but doesn't extend React.Component. ".."This is likely to cause errors. Change %s to extend React.Component instead.", var218, var218)
					tbl_6_upvr.didWarnAboutBadClass[var218] = true
				end
			end
		end
		if bit32.band(arg2.mode, StrictMode_upvr) ~= 0 then
			new_11_upvr.recordLegacyContextWarning(arg2)
		end
		setIsRendering_upvr(true)
		ReactCurrentOwner_upvr.current = arg2
		var217 = renderWithHooks_upvr(nil, arg2, arg3, pendingProps_4, var68_result1_2, arg4)
		setIsRendering_upvr(false)
	else
		var217 = renderWithHooks_upvr(nil, arg2, arg3, pendingProps_4, var68_result1_2, arg4)
	end
	arg2.flags = bit32.bor(arg2.flags, PerformedWork_upvr)
	if __DEV___upvr then
		if var217 ~= nil and type(var217) == "table" and type(var217.render) == "function" and var217["$$typeof"] == nil then
			local var219 = getComponentName_upvr(arg3) or "Unknown"
			if not tbl_6_upvr.didWarnAboutModulePatternComponent[var219] then
				console_upvr.error("The <%s /> component appears to be a function component that returns a class instance. ".."Change %s to a class that extends React.Component instead. ", var219, var219)
				tbl_6_upvr.didWarnAboutModulePatternComponent[var219] = true
			end
		end
	end
	if not disableModulePatternComponents_upvr then
		if var217 ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if type(var217) == "table" and type(var217.render) == "function" then
				local var220
				if var217["$$typeof"] == nil then
					if __DEV___upvr then
						var220 = getComponentName_upvr(arg3)
						local var221 = var220 or "Unknown"
						var220 = tbl_6_upvr.didWarnAboutModulePatternComponent[var221]
						if not var220 then
							var220 = console_upvr.error
							var220("The <%s /> component appears to be a function component that returns a class instance. ".."Change %s to a class that extends React.Component instead. "..var221, var221)
							var220 = tbl_6_upvr.didWarnAboutModulePatternComponent
							var220[var221] = true
						end
					end
					arg2.tag = ClassComponent_upvr
					arg2.memoizedState = nil
					arg2.updateQueue = nil
					var220 = isContextProvider_upvr(arg3)
					if var220 then
						var220 = pushContextProvider_upvr
						var220(arg2)
					else
					end
					var220 = var217.state
					arg2.memoizedState = var220
					var220 = initializeUpdateQueue_upvr
					var220(arg2)
					var220 = nil
					if type(arg3) ~= "function" then
						var220 = arg3.getDerivedStateFromProps
					end
					if var220 ~= nil and type(var220) == "function" then
						applyDerivedStateFromProps_upvr(arg2, arg3, var220, pendingProps_4)
					end
					adoptClassInstance_upvr(arg2, var217)
					mountClassInstance_upvr(arg2, arg3, pendingProps_4, arg4)
					return finishClassComponent(nil, arg2, arg3, true, false, arg4)
				end
			end
		end
	end
	arg2.tag = FunctionComponent_upvr
	if __DEV___upvr then
		if disableLegacyContext_upvr and arg3.contextTypes then
			console_upvr.error("%s uses the legacy contextTypes API which is no longer supported. ".."Use React.createContext() with React.useContext() instead.", getComponentName_upvr(arg3) or "Unknown")
		end
		if debugRenderPhaseSideEffectsForStrictMode_upvr then
			if bit32.band(arg2.mode, StrictMode_upvr) ~= 0 then
				disableLogs_upvr()
				local xpcall_result1_4, xpcall_result2_7 = xpcall(renderWithHooks_upvr, describeError_upvr, nil, arg2, arg3, pendingProps_4, var68_result1_2, arg4)
				reenableLogs_upvr()
				if xpcall_result1_4 then
				else
					error(xpcall_result2_7)
				end
			end
		end
	end
	arg2.child = mountChildFibers_upvr(arg2, nil, xpcall_result2_7, arg4)
	if __DEV___upvr then
		validateFunctionComponentInDev(arg2, arg3)
	end
	return arg2.child
end
local getCurrentFiberOwnerNameInDevOrNull_upvr = ReactCurrentFiber.getCurrentFiberOwnerNameInDevOrNull
local warnAboutDefaultPropsOnFunctionComponents_upvr = ReactFeatureFlags.warnAboutDefaultPropsOnFunctionComponents
function validateFunctionComponentInDev(arg1, arg2) -- Line 1731
	--[[ Upvalues[6]:
		[1]: __DEV___upvr (readonly)
		[2]: getCurrentFiberOwnerNameInDevOrNull_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
		[4]: console_upvr (readonly)
		[5]: warnAboutDefaultPropsOnFunctionComponents_upvr (readonly)
		[6]: getComponentName_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if __DEV___upvr then
		local var230
		if arg1.ref ~= nil then
			local getCurrentFiberOwnerNameInDevOrNull_upvr_result1_2 = getCurrentFiberOwnerNameInDevOrNull_upvr()
			if getCurrentFiberOwnerNameInDevOrNull_upvr_result1_2 then
				var230 = ""
			end
			var230 = getCurrentFiberOwnerNameInDevOrNull_upvr_result1_2
			if not var230 then
				var230 = arg1._debugID
				if not var230 then
					var230 = ""
				end
			end
			local _debugSource = arg1._debugSource
			if _debugSource then
				var230 = _debugSource.fileName..':'.._debugSource.lineNumber
			end
			if not tbl_6_upvr.didWarnAboutFunctionRefs[var230] then
				tbl_6_upvr.didWarnAboutFunctionRefs[var230] = true
				console_upvr.error("Function components cannot be given refs. ".."Attempts to access this ref will fail. ".."Did you mean to use React.forwardRef()?%s", var230.."\n\nCheck the render method of `"..getCurrentFiberOwnerNameInDevOrNull_upvr_result1_2.."`.")
			end
		end
		if warnAboutDefaultPropsOnFunctionComponents_upvr then
			if type(arg2) ~= "function" then
				if arg2.defaultProps ~= nil then
					var230 = arg2
					local var233 = getComponentName_upvr(var230) or "Unknown"
					var230 = tbl_6_upvr.didWarnAboutDefaultPropsOnFunctionComponent
					if not var230[var233] then
						var230 = console_upvr
						var230 = "%s: Support for defaultProps will be removed from function components ".."in a future major release."
						var230.error(var230, var233)
						var230 = tbl_6_upvr
						var230 = true
						var230.didWarnAboutDefaultPropsOnFunctionComponent[var233] = var230
					end
				end
			end
		end
		if type(arg2) ~= "function" then
			if arg2.getDerivedStateFromProps ~= nil then
				if type(arg2.getDerivedStateFromProps) == "function" then
					var230 = arg2
					local var234 = getComponentName_upvr(var230) or "Unknown"
					var230 = tbl_6_upvr.didWarnAboutGetDerivedStateOnFunctionComponent
					if not var230[var234] then
						var230 = console_upvr
						var230 = "%s: Function components do not support getDerivedStateFromProps."
						var230.error(var230, var234)
						var230 = tbl_6_upvr
						var230 = true
						var230.didWarnAboutGetDerivedStateOnFunctionComponent[var234] = var230
					end
				end
			end
		end
		if type(arg2) ~= "function" then
			if arg2.contextType ~= nil then
				if type(arg2.contextType) == "table" then
					var230 = arg2
					local var235 = getComponentName_upvr(var230) or "Unknown"
					var230 = tbl_6_upvr.didWarnAboutContextTypeOnFunctionComponent
					if not var230[var235] then
						var230 = console_upvr
						var230 = "%s: Function components do not support contextType."
						var230.error(var230, var235)
						var230 = tbl_6_upvr
						var230 = true
						var230.didWarnAboutContextTypeOnFunctionComponent[var235] = var230
					end
				end
			end
		end
	end
end
local tbl_4_upvr = {
	dehydrated = nil;
	retryLane = ReactFiberLane_upvr.NoLane;
}
local function _(arg1) -- Line 1828, Named "mountSuspenseOffscreenState"
	local module = {}
	module.baseLanes = arg1
	return module
end
local function _(arg1, arg2) -- Line 1834, Named "updateSuspenseOffscreenState"
	--[[ Upvalues[1]:
		[1]: ReactFiberLane_upvr (readonly)
	]]
	return {
		baseLanes = ReactFiberLane_upvr.mergeLanes(arg1.baseLanes, arg2);
	}
end
local function _(arg1, arg2, arg3, arg4) -- Line 1844, Named "shouldRemainOnFallback"
	--[[ Upvalues[2]:
		[1]: hasSuspenseContext_upvr (readonly)
		[2]: ForceSuspenseFallback_upvr (readonly)
	]]
	if arg2 ~= nil and arg2.memoizedState == nil then
		return false
	end
	return hasSuspenseContext_upvr(arg1, ForceSuspenseFallback_upvr)
end
local function _(arg1, arg2) -- Line 1868, Named "getRemainingWorkInPrimaryTree"
	--[[ Upvalues[1]:
		[1]: ReactFiberLane_upvr (readonly)
	]]
	return ReactFiberLane_upvr.removeLanes(arg1.childLanes, arg2)
end
local addSubtreeSuspenseContext_upvr = new_10.addSubtreeSuspenseContext
local InvisibleParentSuspenseContext_upvr = new_10.InvisibleParentSuspenseContext
local mountDehydratedSuspenseComponent_upvw
local mountSuspensePrimaryChildren_upvw
local updateDehydratedSuspenseComponent_upvw
local updateSuspenseFallbackChildren_upvw
local updateSuspensePrimaryChildren_upvw
local function updateSuspenseComponent_upvr(arg1, arg2, arg3) -- Line 1880, Named "updateSuspenseComponent"
	--[[ Upvalues[22]:
		[1]: __DEV___upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: DidCapture_upvr (readonly)
		[4]: suspenseStackCursor_upvr (readonly)
		[5]: NoFlags_upvr (readonly)
		[6]: hasSuspenseContext_upvr (readonly)
		[7]: ForceSuspenseFallback_upvr (readonly)
		[8]: addSubtreeSuspenseContext_upvr (readonly)
		[9]: InvisibleParentSuspenseContext_upvr (readonly)
		[10]: setDefaultShallowSuspenseContext_upvr (readonly)
		[11]: pushSuspenseContext_upvr (readonly)
		[12]: tryToClaimNextHydratableInstance_upvr (readonly)
		[13]: enableSuspenseServerRenderer_upvr (readonly)
		[14]: mountDehydratedSuspenseComponent_upvw (read and write)
		[15]: tbl_4_upvr (readonly)
		[16]: ReactFiberLane_upvr (readonly)
		[17]: enableSchedulerTracing_upvr (readonly)
		[18]: markSpawnedWork_upvr (readonly)
		[19]: mountSuspensePrimaryChildren_upvw (read and write)
		[20]: updateDehydratedSuspenseComponent_upvw (read and write)
		[21]: updateSuspenseFallbackChildren_upvw (read and write)
		[22]: updateSuspensePrimaryChildren_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var246
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 81 start (CF ANALYSIS FAILED)
	var246 = tbl_3_upvr
	if not var246.shouldSuspendRef then
		var246 = require(script.Parent.ReactFiberReconciler).shouldSuspend
		tbl_3_upvr.shouldSuspendRef = var246
	end
	if tbl_3_upvr.shouldSuspendRef(arg2) then
		var246 = DidCapture_upvr
		arg2.flags = bit32.bor(arg2.flags, var246)
	end
	-- KONSTANTERROR: [4] 4. Error Block 81 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 26. Error Block 82 start (CF ANALYSIS FAILED)
	if bit32.band(arg2.flags, DidCapture_upvr) == NoFlags_upvr then
		var246 = false
	else
		var246 = true
	end
	-- KONSTANTERROR: [38] 26. Error Block 82 end (CF ANALYSIS FAILED)
end
function mountSuspensePrimaryChildren_upvw(arg1, arg2, arg3) -- Line 2165, Named "mountSuspensePrimaryChildren"
	--[[ Upvalues[1]:
		[1]: createFiberFromOffscreen_upvr (readonly)
	]]
	local tbl_8 = {
		mode = "visible";
	}
	tbl_8.children = arg2
	local var83_result1 = createFiberFromOffscreen_upvr(tbl_8, arg1.mode, arg3, nil)
	var83_result1.return_ = arg1
	arg1.child = var83_result1
	return var83_result1
end
local var247_upvw = mountSuspensePrimaryChildren_upvw
function mountSuspenseFallbackChildren(arg1, arg2, arg3, arg4) -- Line 2178
	--[[ Upvalues[7]:
		[1]: BlockingMode_upvr (readonly)
		[2]: NoMode_upvr (readonly)
		[3]: ReactFiberLane_upvr (readonly)
		[4]: enableProfilerTimer_upvr (readonly)
		[5]: ProfileMode_upvr (readonly)
		[6]: createFiberFromFragment_upvr (readonly)
		[7]: createFiberFromOffscreen_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	local mode = arg1.mode
	local child_5 = arg1.child
	local tbl_2 = {
		mode = "hidden";
	}
	tbl_2.children = arg2
	if bit32.band(mode, BlockingMode_upvr) == NoMode_upvr then
		if child_5 ~= nil then
			local var253 = child_5
			var253.childLanes = ReactFiberLane_upvr.NoLanes
			var253.pendingProps = tbl_2
			if enableProfilerTimer_upvr and bit32.band(arg1.mode, ProfileMode_upvr) ~= 0 then
				var253.actualDuration = 0
				var253.actualStartTime = -1
				var253.selfBaseDuration = 0
				var253.treeBaseDuration = 0
			end
			-- KONSTANTWARNING: GOTO [80] #61
		end
	end
	local var83_result1_3 = createFiberFromOffscreen_upvr(tbl_2, mode, ReactFiberLane_upvr.NoLanes, nil)
	local createFiberFromFragment_upvr_result1 = createFiberFromFragment_upvr(arg3, mode, arg4, nil)
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 61. Error Block 9 start (CF ANALYSIS FAILED)
	var83_result1_3.return_ = arg1
	createFiberFromFragment_upvr_result1.return_ = arg1
	var83_result1_3.sibling = createFiberFromFragment_upvr_result1
	arg1.child = var83_result1_3
	do
		return createFiberFromFragment_upvr_result1
	end
	-- KONSTANTERROR: [80] 61. Error Block 9 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 2228, Named "createWorkInProgressOffscreenFiber"
	--[[ Upvalues[1]:
		[1]: createWorkInProgress_upvr (readonly)
	]]
	return createWorkInProgress_upvr(arg1, arg2)
end
function updateSuspensePrimaryChildren_upvw(arg1, arg2, arg3, arg4) -- Line 2237, Named "updateSuspensePrimaryChildren"
	--[[ Upvalues[4]:
		[1]: createWorkInProgress_upvr (readonly)
		[2]: BlockingMode_upvr (readonly)
		[3]: NoMode_upvr (readonly)
		[4]: Deletion_upvr (readonly)
	]]
	local child = arg1.child
	local sibling_2 = child.sibling
	local tbl_7 = {
		mode = "visible";
	}
	tbl_7.children = arg3
	local createWorkInProgress_upvr_result1_2 = createWorkInProgress_upvr(child, tbl_7)
	if bit32.band(arg2.mode, BlockingMode_upvr) == NoMode_upvr then
		createWorkInProgress_upvr_result1_2.lanes = arg4
	end
	createWorkInProgress_upvr_result1_2.return_ = arg2
	createWorkInProgress_upvr_result1_2.sibling = nil
	if sibling_2 ~= nil then
		local deletions_2 = arg2.deletions
		if deletions_2 == nil then
			arg2.deletions = {sibling_2}
			arg2.flags = bit32.bor(arg2.flags, Deletion_upvr)
		else
			table.insert(deletions_2, sibling_2)
		end
	end
	arg2.child = createWorkInProgress_upvr_result1_2
	return createWorkInProgress_upvr_result1_2
end
local StaticMask_upvr = ReactFiberFlags.StaticMask
function updateSuspenseFallbackChildren_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 2272, Named "updateSuspenseFallbackChildren"
	--[[ Upvalues[9]:
		[1]: BlockingMode_upvr (readonly)
		[2]: NoMode_upvr (readonly)
		[3]: ReactFiberLane_upvr (readonly)
		[4]: enableProfilerTimer_upvr (readonly)
		[5]: ProfileMode_upvr (readonly)
		[6]: createWorkInProgress_upvr (readonly)
		[7]: StaticMask_upvr (readonly)
		[8]: createFiberFromFragment_upvr (readonly)
		[9]: Placement_upvr (readonly)
	]]
	local mode_2 = arg2.mode
	local child_2 = arg1.child
	local sibling = child_2.sibling
	local tbl_9 = {
		mode = "hidden";
	}
	tbl_9.children = arg3
	if bit32.band(mode_2, BlockingMode_upvr) == NoMode_upvr then
		if arg2.child ~= child_2 then
			local child_4 = arg2.child
			child_4.childLanes = ReactFiberLane_upvr.NoLanes
			child_4.pendingProps = tbl_9
			if enableProfilerTimer_upvr and bit32.band(arg2.mode, ProfileMode_upvr) ~= 0 then
				child_4.actualDuration = 0
				child_4.actualStartTime = -1
				child_4.selfBaseDuration = child_2.selfBaseDuration
				child_4.treeBaseDuration = child_2.treeBaseDuration
			end
			arg2.deletions = nil
			-- KONSTANTWARNING: GOTO [81] #53
		end
	end
	local var85_result1 = createWorkInProgress_upvr(child_2, tbl_9)
	var85_result1.subtreeFlags = bit32.band(child_2.subtreeFlags, StaticMask_upvr)
	local var269
	if sibling ~= nil then
		var269 = createWorkInProgress_upvr(sibling, arg4)
	else
		var269 = createFiberFromFragment_upvr(arg4, mode_2, arg5, nil)
		var269.flags = bit32.bor(var269.flags, Placement_upvr)
	end
	var269.return_ = arg2
	var85_result1.return_ = arg2
	var85_result1.sibling = var269
	arg2.child = var85_result1
	return var269
end
local function _(arg1, arg2, arg3) -- Line 2355, Named "retrySuspenseComponentWithoutHydrating"
	--[[ Upvalues[3]:
		[1]: reconcileChildFibers_upvr (readonly)
		[2]: var247_upvw (read and write)
		[3]: Placement_upvr (readonly)
	]]
	reconcileChildFibers_upvr(arg2, arg1.child, nil, arg3)
	local var247_upvw_result1_4 = var247_upvw(arg2, arg2.pendingProps.children, arg3)
	var247_upvw_result1_4.flags = bit32.bor(var247_upvw_result1_4.flags, Placement_upvr)
	arg2.memoizedState = nil
	return var247_upvw_result1_4
end
function mountSuspenseFallbackAfterRetryWithoutHydrating(arg1, arg2, arg3, arg4, arg5) -- Line 2376
	--[[ Upvalues[7]:
		[1]: createFiberFromOffscreen_upvr (readonly)
		[2]: ReactFiberLane_upvr (readonly)
		[3]: createFiberFromFragment_upvr (readonly)
		[4]: Placement_upvr (readonly)
		[5]: BlockingMode_upvr (readonly)
		[6]: NoMode_upvr (readonly)
		[7]: reconcileChildFibers_upvr (readonly)
	]]
	local mode_3 = arg2.mode
	local var83_result1_2 = createFiberFromOffscreen_upvr(arg3, mode_3, ReactFiberLane_upvr.NoLanes, nil)
	local createFiberFromFragment_upvr_result1_2 = createFiberFromFragment_upvr(arg4, mode_3, arg5, nil)
	createFiberFromFragment_upvr_result1_2.flags = bit32.bor(createFiberFromFragment_upvr_result1_2.flags, Placement_upvr)
	var83_result1_2.return_ = arg2
	createFiberFromFragment_upvr_result1_2.return_ = arg2
	var83_result1_2.sibling = createFiberFromFragment_upvr_result1_2
	arg2.child = var83_result1_2
	if bit32.band(arg2.mode, BlockingMode_upvr) ~= NoMode_upvr then
		reconcileChildFibers_upvr(arg2, arg1.child, nil, arg5)
	end
	return createFiberFromFragment_upvr_result1_2
end
function mountDehydratedSuspenseComponent_upvw(arg1, arg2, arg3) -- Line 2406, Named "mountDehydratedSuspenseComponent"
	--[[ Upvalues[8]:
		[1]: BlockingMode_upvr (readonly)
		[2]: NoMode_upvr (readonly)
		[3]: __DEV___upvr (readonly)
		[4]: console_upvr (readonly)
		[5]: ReactFiberLane_upvr (readonly)
		[6]: isSuspenseInstanceFallback_upvr (readonly)
		[7]: enableSchedulerTracing_upvr (readonly)
		[8]: markSpawnedWork_upvr (readonly)
	]]
	if bit32.band(arg1.mode, BlockingMode_upvr) == NoMode_upvr then
		if __DEV___upvr then
			console_upvr.error("Cannot hydrate Suspense in legacy mode. Switch from".."ReactDOM.hydrate(element, container) to ".."ReactDOM.createBlockingRoot(container, { hydrate: true })"..".render(element) or remove the Suspense components".."the server rendered components.")
		end
		arg1.lanes = ReactFiberLane_upvr.laneToLanes(ReactFiberLane_upvr.SyncLane)
	elseif isSuspenseInstanceFallback_upvr(arg2) then
		if enableSchedulerTracing_upvr then
			markSpawnedWork_upvr(ReactFiberLane_upvr.DefaultHydrationLane)
		end
		arg1.lanes = ReactFiberLane_upvr.laneToLanes(ReactFiberLane_upvr.DefaultHydrationLane)
	else
		arg1.lanes = ReactFiberLane_upvr.laneToLanes(ReactFiberLane_upvr.OffscreenLane)
		if enableSchedulerTracing_upvr then
			markSpawnedWork_upvr(ReactFiberLane_upvr.OffscreenLane)
		end
	end
	return nil
end
local warnIfHydrating_upvr = new_5.warnIfHydrating
local getExecutionContext_upvr = new_15.getExecutionContext
local RetryAfterError_upvr = new_15.RetryAfterError
local NoContext_upvr = new_15.NoContext
local getWorkInProgressRoot_upvr = new_15.getWorkInProgressRoot
local scheduleUpdateOnFiber_upvr = new_15.scheduleUpdateOnFiber
local renderDidSuspendDelayIfPossible_upvr = new_15.renderDidSuspendDelayIfPossible
local isSuspenseInstancePending_upvr = ReactFiberHostConfig.isSuspenseInstancePending
local retryDehydratedSuspenseBoundary_upvr = new_15.retryDehydratedSuspenseBoundary
local var283_upvw
local registerSuspenseInstanceRetry_upvr = ReactFiberHostConfig.registerSuspenseInstanceRetry
local reenterHydrationStateFromDehydratedSuspenseInstance_upvr = new_5.reenterHydrationStateFromDehydratedSuspenseInstance
function updateDehydratedSuspenseComponent_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 2453, Named "updateDehydratedSuspenseComponent"
	--[[ Upvalues[24]:
		[1]: warnIfHydrating_upvr (readonly)
		[2]: getExecutionContext_upvr (readonly)
		[3]: RetryAfterError_upvr (readonly)
		[4]: NoContext_upvr (readonly)
		[5]: reconcileChildFibers_upvr (readonly)
		[6]: var247_upvw (read and write)
		[7]: Placement_upvr (readonly)
		[8]: BlockingMode_upvr (readonly)
		[9]: NoMode_upvr (readonly)
		[10]: isSuspenseInstanceFallback_upvr (readonly)
		[11]: ReactFiberLane_upvr (readonly)
		[12]: var94_upvw (read and write)
		[13]: getWorkInProgressRoot_upvr (readonly)
		[14]: scheduleUpdateOnFiber_upvr (readonly)
		[15]: renderDidSuspendDelayIfPossible_upvr (readonly)
		[16]: isSuspenseInstancePending_upvr (readonly)
		[17]: DidCapture_upvr (readonly)
		[18]: retryDehydratedSuspenseBoundary_upvr (readonly)
		[19]: enableSchedulerTracing_upvr (readonly)
		[20]: var283_upvw (read and write)
		[21]: Parent_upvr (readonly)
		[22]: registerSuspenseInstanceRetry_upvr (readonly)
		[23]: reenterHydrationStateFromDehydratedSuspenseInstance_upvr (readonly)
		[24]: Hydrating_upvr (readonly)
	]]
	warnIfHydrating_upvr()
	if bit32.band(getExecutionContext_upvr(), RetryAfterError_upvr) ~= NoContext_upvr then
		reconcileChildFibers_upvr(arg2, arg1.child, nil, arg5)
		local var247_upvw_result1_5 = var247_upvw(arg2, arg2.pendingProps.children, arg5)
		var247_upvw_result1_5.flags = bit32.bor(var247_upvw_result1_5.flags, Placement_upvr)
		arg2.memoizedState = nil
		return var247_upvw_result1_5
	end
	if bit32.band(arg2.mode, BlockingMode_upvr) == NoMode_upvr then
		reconcileChildFibers_upvr(arg2, arg1.child, nil, arg5)
		local var247_result1_6 = var247_upvw(arg2, arg2.pendingProps.children, arg5)
		var247_result1_6.flags = bit32.bor(var247_result1_6.flags, Placement_upvr)
		arg2.memoizedState = nil
		return var247_result1_6
	end
	if isSuspenseInstanceFallback_upvr(arg3) then
		reconcileChildFibers_upvr(arg2, arg1.child, nil, arg5)
		local var247_result1_5 = var247_upvw(arg2, arg2.pendingProps.children, arg5)
		var247_result1_5.flags = bit32.bor(var247_result1_5.flags, Placement_upvr)
		arg2.memoizedState = nil
		return var247_result1_5
	end
	if var94_upvw or ReactFiberLane_upvr.includesSomeLane(arg5, arg1.childLanes) then
		local getWorkInProgressRoot_upvr_result1 = getWorkInProgressRoot_upvr()
		if getWorkInProgressRoot_upvr_result1 ~= nil then
			local any_getBumpedLaneForHydration_result1_2 = ReactFiberLane_upvr.getBumpedLaneForHydration(getWorkInProgressRoot_upvr_result1, arg5)
			if any_getBumpedLaneForHydration_result1_2 ~= ReactFiberLane_upvr.NoLane then
				if any_getBumpedLaneForHydration_result1_2 ~= arg4.retryLane then
					arg4.retryLane = any_getBumpedLaneForHydration_result1_2
					scheduleUpdateOnFiber_upvr(arg1, any_getBumpedLaneForHydration_result1_2, ReactFiberLane_upvr.NoTimestamp)
				end
			end
		end
		renderDidSuspendDelayIfPossible_upvr()
		reconcileChildFibers_upvr(arg2, arg1.child, nil, arg5)
		local var247_result1_4 = var247_upvw(arg2, arg2.pendingProps.children, arg5)
		var247_result1_4.flags = bit32.bor(var247_result1_4.flags, Placement_upvr)
		arg2.memoizedState = nil
		return var247_result1_4
	end
	if isSuspenseInstancePending_upvr(arg3) then
		arg2.flags = bit32.bor(arg2.flags, DidCapture_upvr)
		arg2.child = arg1.child
		local function var300() -- Line 2549
			--[[ Upvalues[2]:
				[1]: retryDehydratedSuspenseBoundary_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return retryDehydratedSuspenseBoundary_upvr(arg1)
		end
		if enableSchedulerTracing_upvr then
			if var283_upvw == nil then
				var283_upvw = require(Parent_upvr.Scheduler).tracing.unstable_wrap
			end
			var300 = var283_upvw(var300)
		end
		registerSuspenseInstanceRetry_upvr(arg3, var300)
		return nil
	end
	reenterHydrationStateFromDehydratedSuspenseInstance_upvr(arg2, arg3)
	local var247_result1_3 = var247_upvw(arg2, arg2.pendingProps.children, arg5)
	var247_result1_3.flags = bit32.bor(var247_result1_3.flags, Hydrating_upvr)
	return var247_result1_3
end
function updatePortalComponent(arg1, arg2, arg3) -- Line 2962
	--[[ Upvalues[3]:
		[1]: pushHostContainer_upvr (readonly)
		[2]: reconcileChildFibers_upvr (readonly)
		[3]: mountChildFibers_upvr (readonly)
	]]
	pushHostContainer_upvr(arg2, arg2.stateNode.containerInfo)
	if arg1 == nil then
		arg2.child = reconcileChildFibers_upvr(arg2, nil, arg2.pendingProps, arg3)
	elseif arg1 == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = mountChildFibers_upvr(arg2, nil, arg2.pendingProps, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, arg2.pendingProps, arg3)
	end
	return arg2.child
end
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local var304_upvw = false
local calculateChangedBits_upvr = new_2.calculateChangedBits
local propagateContextChange_upvr = new_2.propagateContextChange
local function updateContextProvider_upvr(arg1, arg2, arg3) -- Line 2985, Named "updateContextProvider"
	--[[ Upvalues[14]:
		[1]: __DEV___upvr (readonly)
		[2]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: var304_upvw (read and write)
		[6]: console_upvr (readonly)
		[7]: checkPropTypes_upvr (readonly)
		[8]: pushProvider_upvr (readonly)
		[9]: calculateChangedBits_upvr (readonly)
		[10]: hasContextChanged_upvr (readonly)
		[11]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[12]: propagateContextChange_upvr (readonly)
		[13]: mountChildFibers_upvr (readonly)
		[14]: reconcileChildFibers_upvr (readonly)
	]]
	local _context = arg2.type._context
	local pendingProps_7 = arg2.pendingProps
	local memoizedProps = arg2.memoizedProps
	local value = pendingProps_7.value
	if __DEV___upvr or __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr then
		if Array_upvr.indexOf(Object_upvr.keys(pendingProps_7), "value") < 1 and not var304_upvw then
			var304_upvw = true
			console_upvr.error("The `value` prop is required for the `<Context.Provider>`. Did you misspell it or forget to pass it?")
		end
		local propTypes = arg2.type.propTypes
		local validateProps = arg2.type.validateProps
		if propTypes or validateProps then
			checkPropTypes_upvr(propTypes, validateProps, pendingProps_7, "prop", "Context.Provider")
		end
	end
	pushProvider_upvr(arg2, value)
	if memoizedProps ~= nil then
		local var305_result1 = calculateChangedBits_upvr(_context, value, memoizedProps.value)
		if var305_result1 == 0 then
			if memoizedProps.children == pendingProps_7.children and not hasContextChanged_upvr() then
				do
					return bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg3)
				end
				-- KONSTANTWARNING: GOTO [90] #72
			end
		else
			propagateContextChange_upvr(arg2, _context, var305_result1, arg3)
		end
	end
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, pendingProps_7.children, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, pendingProps_7.children, arg3)
	end
	return arg2.child
end
local tbl_5_upvr = {
	usingContextAsConsumer = false;
	usingLegacyConsumer = false;
}
local __COMPAT_WARNINGS___upvr = _G.__COMPAT_WARNINGS__
local readContext_upvr = new_2.readContext
function updateContextConsumer(arg1, arg2, arg3) -- Line 3053
	--[[ Upvalues[12]:
		[1]: __DEV___upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: __COMPAT_WARNINGS___upvr (readonly)
		[5]: prepareToReadContext_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: readContext_upvr (readonly)
		[8]: ReactCurrentOwner_upvr (readonly)
		[9]: setIsRendering_upvr (readonly)
		[10]: PerformedWork_upvr (readonly)
		[11]: mountChildFibers_upvr (readonly)
		[12]: reconcileChildFibers_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local type_3 = arg2.type
	if __DEV___upvr then
		if type_3._context == nil then
			if type_3 ~= type_3.Consumer and not tbl_5_upvr.usingContextAsConsumer then
				tbl_5_upvr.usingContextAsConsumer = true
				console_upvr.error("Rendering <Context> directly is not supported and will be removed in ".."a future major release. Did you mean to render <Context.Consumer> instead?")
				-- KONSTANTWARNING: GOTO [30] #22
			end
		else
			type_3 = type_3._context
		end
	end
	local pendingProps_3 = arg2.pendingProps
	if pendingProps_3.render then
		if __DEV___upvr and __COMPAT_WARNINGS___upvr and not tbl_5_upvr.usingLegacyConsumer then
			tbl_5_upvr.usingLegacyConsumer = true
			console_upvr.warn("Your Context.Consumer component is using legacy Roact syntax, which won't be supported in future versions of Roact. \n".."Please provide no props and supply the 'render' function as a child (the 3rd argument of createElement). For example: \n".."       createElement(ContextConsumer, {render = function(...) end})\n".."becomes:\n".."       createElement(ContextConsumer, nil, function(...) end)\n".."For more info, reference the React documentation here: \n".."https://reactjs.org/docs/context.html#contextconsumer")
		end
		-- KONSTANTWARNING: GOTO [65] #50
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 49. Error Block 42 start (CF ANALYSIS FAILED)
	local children = pendingProps_3.children
	if __DEV___upvr and type(children) ~= "function" then
		console_upvr.error("A context consumer was rendered with multiple children, or a child ".."that isn't a function. A context consumer expects a single child ".."that is a function. If you did pass a function, make sure there ".."is no trailing or leading whitespace around it.")
	end
	prepareToReadContext_upvr(arg2, arg3, module_2_upvr.markWorkInProgressReceivedUpdate)
	local var320
	if __DEV___upvr then
		ReactCurrentOwner_upvr.current = arg2
		setIsRendering_upvr(true)
		var320 = children(readContext_upvr(type_3, pendingProps_3.unstable_observedBits))
		setIsRendering_upvr(false)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var320 = children(readContext_upvr(type_3, pendingProps_3.unstable_observedBits))
	end
	arg2.flags = bit32.bor(arg2.flags, PerformedWork_upvr)
	if arg1 == nil then
		arg2.child = mountChildFibers_upvr(arg2, nil, var320, arg3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg2.child = reconcileChildFibers_upvr(arg2, arg1.child, var320, arg3)
	end
	do
		return arg2.child
	end
	-- KONSTANTERROR: [63] 49. Error Block 42 end (CF ANALYSIS FAILED)
end
function module_2_upvr.markWorkInProgressReceivedUpdate() -- Line 3163
	--[[ Upvalues[1]:
		[1]: var94_upvw (read and write)
	]]
	var94_upvw = true
end
local markSkippedUpdateLanes_upvr = require(script.Parent.ReactFiberWorkInProgress).markSkippedUpdateLanes
local cloneChildFibers_upvr = new_14.cloneChildFibers
function bailoutOnAlreadyFinishedWork_upvw(arg1, arg2, arg3) -- Line 3167, Named "bailoutOnAlreadyFinishedWork"
	--[[ Upvalues[5]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: stopProfilerTimerIfRunning_upvr (readonly)
		[3]: markSkippedUpdateLanes_upvr (readonly)
		[4]: ReactFiberLane_upvr (readonly)
		[5]: cloneChildFibers_upvr (readonly)
	]]
	if arg1 then
		arg2.dependencies = arg1.dependencies
	end
	if enableProfilerTimer_upvr then
		stopProfilerTimerIfRunning_upvr(arg2)
	end
	markSkippedUpdateLanes_upvr(arg2.lanes)
	if not ReactFiberLane_upvr.includesSomeLane(arg3, arg2.childLanes) then
		return nil
	end
	cloneChildFibers_upvr(arg1, arg2)
	return arg2.child
end
function remountFiber(arg1, arg2, arg3) -- Line 3198
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: Deletion_upvr (readonly)
		[3]: Placement_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var324
	if __DEV___upvr then
		local return_ = arg2.return_
		local var326
		if return_ == nil then
			var324 = "Cannot swap the root fiber."
			error(var324)
		end
		if return_ == nil then
			var324 = false
		else
			var324 = true
		end
		assert(var324, "returnFiber was nil in remountFiber")
		arg1.alternate = nil
		arg2.alternate = nil
		arg3.index = arg2.index
		arg3.sibling = arg2.sibling
		arg3.return_ = arg2.return_
		arg3.ref = arg2.ref
		if arg2 == return_.child then
			return_.child = arg3
		else
			local child_3 = return_.child
			if child_3 == nil then
				var324 = error
				var324("Expected parent to have a child.")
			end
			if child_3 == nil then
			else
			end
			var324 = assert
			var324(true, "prevSibling was nil in remountFiber")
			while true do
				var324 = child_3.sibling
				if var324 == arg2 then break end
				if child_3.sibling == nil then
					var324 = error
					var324("Expected to find the previous sibling.")
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			child_3.sibling.sibling = arg3
		end
		local deletions = return_.deletions
		if deletions == nil then
			var324 = {}
			var324[1] = arg1
			return_.deletions = var324
			var324 = bit32.bor(return_.flags, Deletion_upvr)
			return_.flags = var324
		else
			var324 = table.insert
			var324(deletions, arg1)
		end
		var324 = bit32.bor(arg3.flags, Placement_upvr)
		arg3.flags = var324
		return arg3
	end
	error("Did not expect this call in production. ".."This is a bug in React. Please file an issue.")
end
local HostRoot_upvr = ReactWorkTags_upvr.HostRoot
local HostComponent_upvr = ReactWorkTags_upvr.HostComponent
local HostPortal_upvr = ReactWorkTags_upvr.HostPortal
local ContextProvider_upvr = ReactWorkTags_upvr.ContextProvider
local Profiler_upvr = ReactWorkTags_upvr.Profiler
local SuspenseComponent_upvr = ReactWorkTags_upvr.SuspenseComponent
local SuspenseListComponent_upvr = ReactWorkTags_upvr.SuspenseListComponent
local OffscreenComponent_upvr = ReactWorkTags_upvr.OffscreenComponent
local LegacyHiddenComponent_upvr = ReactWorkTags_upvr.LegacyHiddenComponent
local LazyComponent_upvr = ReactWorkTags_upvr.LazyComponent
local HostText_upvr = ReactWorkTags_upvr.HostText
local Fragment_upvr = ReactWorkTags_upvr.Fragment
local Mode_upvr = ReactWorkTags_upvr.Mode
local ContextConsumer_upvr = ReactWorkTags_upvr.ContextConsumer
local IncompleteClassComponent_upvr = ReactWorkTags_upvr.IncompleteClassComponent
function module_2_upvr.beginWork(arg1, arg2, arg3) -- Line 3267
	--[[ Upvalues[61]:
		[1]: __DEV___upvr (readonly)
		[2]: createFiberFromTypeAndProps_upvr (readonly)
		[3]: hasContextChanged_upvr (readonly)
		[4]: var94_upvw (read and write)
		[5]: ReactFiberLane_upvr (readonly)
		[6]: HostRoot_upvr (readonly)
		[7]: pushTopLevelContextObject_upvr (readonly)
		[8]: pushHostContainer_upvr (readonly)
		[9]: resetHydrationState_upvr (readonly)
		[10]: HostComponent_upvr (readonly)
		[11]: pushHostContext_upvr (readonly)
		[12]: ClassComponent_upvr (readonly)
		[13]: isContextProvider_upvr (readonly)
		[14]: pushContextProvider_upvr (readonly)
		[15]: HostPortal_upvr (readonly)
		[16]: ContextProvider_upvr (readonly)
		[17]: pushProvider_upvr (readonly)
		[18]: Profiler_upvr (readonly)
		[19]: enableProfilerTimer_upvr (readonly)
		[20]: SuspenseComponent_upvr (readonly)
		[21]: enableSuspenseServerRenderer_upvr (readonly)
		[22]: pushSuspenseContext_upvr (readonly)
		[23]: setDefaultShallowSuspenseContext_upvr (readonly)
		[24]: suspenseStackCursor_upvr (readonly)
		[25]: DidCapture_upvr (readonly)
		[26]: updateSuspenseComponent_upvr (readonly)
		[27]: bailoutOnAlreadyFinishedWork_upvw (read and write)
		[28]: SuspenseListComponent_upvr (readonly)
		[29]: OffscreenComponent_upvr (readonly)
		[30]: LegacyHiddenComponent_upvr (readonly)
		[31]: updateOffscreenComponent_upvr (readonly)
		[32]: ForceUpdateForLegacySuspense_upvr (readonly)
		[33]: NoFlags_upvr (readonly)
		[34]: ReactWorkTags_upvr (readonly)
		[35]: mountIndeterminateComponent_upvr (readonly)
		[36]: LazyComponent_upvr (readonly)
		[37]: mountLazyComponent_upvr (readonly)
		[38]: FunctionComponent_upvr (readonly)
		[39]: resolveDefaultProps_upvr (readonly)
		[40]: var134_upvw (read and write)
		[41]: updateClassComponent_upvr (readonly)
		[42]: updateHostRoot_upvr (readonly)
		[43]: updateHostComponent_upvr (readonly)
		[44]: HostText_upvr (readonly)
		[45]: tryToClaimNextHydratableInstance_upvr (readonly)
		[46]: ForwardRef_upvr (readonly)
		[47]: updateForwardRef_upvr (readonly)
		[48]: Fragment_upvr (readonly)
		[49]: Mode_upvr (readonly)
		[50]: updateContextProvider_upvr (readonly)
		[51]: ContextConsumer_upvr (readonly)
		[52]: MemoComponent_upvr (readonly)
		[53]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[54]: checkPropTypes_upvr (readonly)
		[55]: getComponentName_upvr (readonly)
		[56]: updateMemoComponent_upvr (readonly)
		[57]: SimpleMemoComponent_upvr (readonly)
		[58]: updateSimpleMemoComponent_upvw (read and write)
		[59]: IncompleteClassComponent_upvr (readonly)
		[60]: updateOffscreenComponent_upvr (readonly)
		[61]: invariant_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 4 start (CF ANALYSIS FAILED)
	do
		return remountFiber(arg1, arg2, createFiberFromTypeAndProps_upvr(arg2.type, arg2.key, arg2.pendingProps, arg2._debugOwner or nil, arg2.mode, arg2.lanes))
	end
	-- KONSTANTERROR: [9] 7. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 21. Error Block 5 end (CF ANALYSIS FAILED)
end
return module_2_upvr