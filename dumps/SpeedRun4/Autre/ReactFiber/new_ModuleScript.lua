-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:56
-- Luau version 6, Types version 3
-- Time taken: 0.008973 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local ReactRootTags = require(script.Parent.ReactRootTags)
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local ReactTypeOfMode = require(script.Parent.ReactTypeOfMode)
local enableProfilerTimer_upvr = require(Parent.Shared).ReactFeatureFlags.enableProfilerTimer
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local NoFlags_upvr = ReactFiberFlags.NoFlags
local StaticMask_upvr = ReactFiberFlags.StaticMask
local IndeterminateComponent_upvr = ReactWorkTags.IndeterminateComponent
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local HostComponent_upvr = ReactWorkTags.HostComponent
local ForwardRef_upvr = ReactWorkTags.ForwardRef
local FunctionComponent_upvr = ReactWorkTags.FunctionComponent
local MemoComponent_upvr = ReactWorkTags.MemoComponent
local new = require(script.Parent["ReactFiberHotReloading.new"])
local resolveClassForHotReloading_upvr = new.resolveClassForHotReloading
local resolveFunctionForHotReloading_upvr = new.resolveFunctionForHotReloading
local resolveForwardRefForHotReloading_upvr = new.resolveForwardRefForHotReloading
local NoLanes_upvr = require(script.Parent.ReactFiberLane).NoLanes
local NoMode_upvr = ReactTypeOfMode.NoMode
local ProfileMode_upvr = ReactTypeOfMode.ProfileMode
local StrictMode_upvr = ReactTypeOfMode.StrictMode
local ReactSymbols = require(Parent.Shared).ReactSymbols
local REACT_FORWARD_REF_TYPE_upvr = ReactSymbols.REACT_FORWARD_REF_TYPE
local REACT_PROFILER_TYPE_upvr = ReactSymbols.REACT_PROFILER_TYPE
local REACT_SUSPENSE_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_TYPE
local REACT_MEMO_TYPE_upvr = ReactSymbols.REACT_MEMO_TYPE
local REACT_OFFSCREEN_TYPE_upvr = ReactSymbols.REACT_OFFSCREEN_TYPE
local REACT_LEGACY_HIDDEN_TYPE_upvr = ReactSymbols.REACT_LEGACY_HIDDEN_TYPE
local var32_upvw = 1
local function createFiber_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 165, Named "createFiber"
	--[[ Upvalues[5]:
		[1]: NoFlags_upvr (readonly)
		[2]: NoLanes_upvr (readonly)
		[3]: enableProfilerTimer_upvr (readonly)
		[4]: __DEV___upvr (readonly)
		[5]: var32_upvw (read and write)
	]]
	local module = {}
	module.tag = arg1
	module.key = arg3
	module.elementType = arg5
	module.type = arg6
	module.stateNode = arg7
	module.index = 1
	module.pendingProps = arg2
	module.mode = arg4
	module.flags = NoFlags_upvr
	local var34 = NoFlags_upvr
	module.subtreeFlags = var34
	if arg8 then
		var34 = arg8
	else
		var34 = NoLanes_upvr
	end
	module.lanes = var34
	module.childLanes = NoLanes_upvr
	if enableProfilerTimer_upvr then
		module.actualDuration = 0
		module.actualStartTime = -1
		module.selfBaseDuration = 0
		module.treeBaseDuration = 0
	end
	if __DEV___upvr then
		module._debugID = var32_upvw
		var32_upvw += 1
		module._debugSource = nil
		module._debugOwner = nil
		module._debugNeedsRemount = false
		module._debugHookTypes = nil
	end
	return module
end
function _shouldConstruct(arg1) -- Line 265
	local var35 = false
	if type(arg1) ~= "function" then
		var35 = not not arg1.isReactComponent
	end
	return var35
end
local SimpleMemoComponent_upvr = ReactWorkTags.SimpleMemoComponent
local Placement_upvr = ReactFiberFlags.Placement
local ConcurrentRoot_upvr = ReactRootTags.ConcurrentRoot
local ConcurrentMode_upvr = ReactTypeOfMode.ConcurrentMode
local BlockingMode_upvr = ReactTypeOfMode.BlockingMode
local BlockingRoot_upvr = ReactRootTags.BlockingRoot
local isDevToolsPresent_upvr = require(script.Parent["ReactFiberDevToolsHook.new"]).isDevToolsPresent
local HostRoot_upvr = ReactWorkTags.HostRoot
local REACT_FRAGMENT_TYPE_upvr = ReactSymbols.REACT_FRAGMENT_TYPE
local createFiberFromFragment_upvw
local REACT_DEBUG_TRACING_MODE_TYPE_upvr = ReactSymbols.REACT_DEBUG_TRACING_MODE_TYPE
local Mode_upvr = ReactWorkTags.Mode
local DebugTracingMode_upvr = ReactTypeOfMode.DebugTracingMode
local REACT_STRICT_MODE_TYPE_upvr = ReactSymbols.REACT_STRICT_MODE_TYPE
local createFiberFromProfiler_upvw
local createFiberFromSuspense_upvw
local createFiberFromOffscreen_upvw
local createFiberFromLegacyHidden_upvw
local REACT_PROVIDER_TYPE_upvr = ReactSymbols.REACT_PROVIDER_TYPE
local ContextProvider_upvr = ReactWorkTags.ContextProvider
local REACT_CONTEXT_TYPE_upvr = ReactSymbols.REACT_CONTEXT_TYPE
local ContextConsumer_upvr = ReactWorkTags.ContextConsumer
local REACT_LAZY_TYPE_upvr = ReactSymbols.REACT_LAZY_TYPE
local LazyComponent_upvr = ReactWorkTags.LazyComponent
local Object_upvr = LuauPolyfill.Object
local inspect_upvr = LuauPolyfill.util.inspect
local getComponentName_upvr = require(Parent.Shared).getComponentName
local Array_upvr = LuauPolyfill.Array
local REACT_ELEMENT_TYPE_upvr = ReactSymbols.REACT_ELEMENT_TYPE
local invariant_upvr = require(Parent.Shared).invariant
local function createFiberFromTypeAndProps_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 503, Named "createFiberFromTypeAndProps"
	--[[ Upvalues[39]:
		[1]: IndeterminateComponent_upvr (readonly)
		[2]: __DEV___upvr (readonly)
		[3]: resolveFunctionForHotReloading_upvr (readonly)
		[4]: ClassComponent_upvr (readonly)
		[5]: resolveClassForHotReloading_upvr (readonly)
		[6]: HostComponent_upvr (readonly)
		[7]: REACT_FRAGMENT_TYPE_upvr (readonly)
		[8]: createFiberFromFragment_upvw (read and write)
		[9]: REACT_DEBUG_TRACING_MODE_TYPE_upvr (readonly)
		[10]: Mode_upvr (readonly)
		[11]: DebugTracingMode_upvr (readonly)
		[12]: REACT_STRICT_MODE_TYPE_upvr (readonly)
		[13]: StrictMode_upvr (readonly)
		[14]: REACT_PROFILER_TYPE_upvr (readonly)
		[15]: createFiberFromProfiler_upvw (read and write)
		[16]: REACT_SUSPENSE_TYPE_upvr (readonly)
		[17]: createFiberFromSuspense_upvw (read and write)
		[18]: REACT_OFFSCREEN_TYPE_upvr (readonly)
		[19]: createFiberFromOffscreen_upvw (read and write)
		[20]: REACT_LEGACY_HIDDEN_TYPE_upvr (readonly)
		[21]: createFiberFromLegacyHidden_upvw (read and write)
		[22]: REACT_PROVIDER_TYPE_upvr (readonly)
		[23]: ContextProvider_upvr (readonly)
		[24]: REACT_CONTEXT_TYPE_upvr (readonly)
		[25]: ContextConsumer_upvr (readonly)
		[26]: REACT_FORWARD_REF_TYPE_upvr (readonly)
		[27]: ForwardRef_upvr (readonly)
		[28]: resolveForwardRefForHotReloading_upvr (readonly)
		[29]: REACT_MEMO_TYPE_upvr (readonly)
		[30]: MemoComponent_upvr (readonly)
		[31]: REACT_LAZY_TYPE_upvr (readonly)
		[32]: LazyComponent_upvr (readonly)
		[33]: Object_upvr (readonly)
		[34]: inspect_upvr (readonly)
		[35]: getComponentName_upvr (readonly)
		[36]: Array_upvr (readonly)
		[37]: REACT_ELEMENT_TYPE_upvr (readonly)
		[38]: invariant_upvr (readonly)
		[39]: createFiber_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 91 start (CF ANALYSIS FAILED)
	if __DEV___upvr then
		-- KONSTANTWARNING: GOTO [248] #210
	end
	-- KONSTANTERROR: [9] 8. Error Block 91 end (CF ANALYSIS FAILED)
end
local Fragment_upvr = ReactWorkTags.Fragment
function createFiberFromFragment_upvw(arg1, arg2, arg3, arg4) -- Line 685, Named "createFiberFromFragment"
	--[[ Upvalues[2]:
		[1]: createFiber_upvr (readonly)
		[2]: Fragment_upvr (readonly)
	]]
	return createFiber_upvr(Fragment_upvr, arg1, arg4, arg2, nil, nil, nil, arg3)
end
local FundamentalComponent_upvr = ReactWorkTags.FundamentalComponent
local ScopeComponent_upvr = ReactWorkTags.ScopeComponent
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 723, Named "createFiberFromScope"
	--[[ Upvalues[2]:
		[1]: createFiber_upvr (readonly)
		[2]: ScopeComponent_upvr (readonly)
	]]
	return createFiber_upvr(ScopeComponent_upvr, arg2, arg5, arg3, arg1, arg1, nil, arg4)
end
local console_upvr = require(Parent.Shared).console
local Profiler_upvr = ReactWorkTags.Profiler
function createFiberFromProfiler_upvw(arg1, arg2, arg3, arg4) -- Line 740, Named "createFiberFromProfiler"
	--[[ Upvalues[7]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: createFiber_upvr (readonly)
		[4]: Profiler_upvr (readonly)
		[5]: ProfileMode_upvr (readonly)
		[6]: REACT_PROFILER_TYPE_upvr (readonly)
		[7]: enableProfilerTimer_upvr (readonly)
	]]
	local var84
	if __DEV___upvr and typeof(arg1.id) ~= "string" then
		console_upvr.error("Profiler must specify an \"id\" as a prop")
	end
	if enableProfilerTimer_upvr then
		var84 = {}
		var84.effectDuration = 0
		var84.passiveEffectDuration = 0
	else
		var84 = nil
	end
	return createFiber_upvr(Profiler_upvr, arg1, arg4, bit32.bor(arg2, ProfileMode_upvr), REACT_PROFILER_TYPE_upvr, REACT_PROFILER_TYPE_upvr, var84, arg3)
end
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
function createFiberFromSuspense_upvw(arg1, arg2, arg3, arg4) -- Line 784, Named "createFiberFromSuspense"
	--[[ Upvalues[3]:
		[1]: createFiber_upvr (readonly)
		[2]: SuspenseComponent_upvr (readonly)
		[3]: REACT_SUSPENSE_TYPE_upvr (readonly)
	]]
	return createFiber_upvr(SuspenseComponent_upvr, arg1, arg4, arg2, REACT_SUSPENSE_TYPE_upvr, REACT_SUSPENSE_TYPE_upvr, nil, arg3)
end
local SuspenseListComponent_upvr = ReactWorkTags.SuspenseListComponent
local REACT_SUSPENSE_LIST_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_LIST_TYPE
local OffscreenComponent_upvr = ReactWorkTags.OffscreenComponent
function createFiberFromOffscreen_upvw(arg1, arg2, arg3, arg4) -- Line 842, Named "createFiberFromOffscreen"
	--[[ Upvalues[4]:
		[1]: createFiber_upvr (readonly)
		[2]: OffscreenComponent_upvr (readonly)
		[3]: REACT_OFFSCREEN_TYPE_upvr (readonly)
		[4]: __DEV___upvr (readonly)
	]]
	local var90
	if __DEV___upvr then
		var90 = REACT_OFFSCREEN_TYPE_upvr
	else
		var90 = nil
	end
	return createFiber_upvr(OffscreenComponent_upvr, arg1, arg4, arg2, REACT_OFFSCREEN_TYPE_upvr, var90, nil, arg3)
end
local LegacyHiddenComponent_upvr = ReactWorkTags.LegacyHiddenComponent
function createFiberFromLegacyHidden_upvw(arg1, arg2, arg3, arg4) -- Line 871, Named "createFiberFromLegacyHidden"
	--[[ Upvalues[4]:
		[1]: createFiber_upvr (readonly)
		[2]: LegacyHiddenComponent_upvr (readonly)
		[3]: REACT_LEGACY_HIDDEN_TYPE_upvr (readonly)
		[4]: __DEV___upvr (readonly)
	]]
	local var92
	if __DEV___upvr then
		var92 = REACT_LEGACY_HIDDEN_TYPE_upvr
	else
		var92 = nil
	end
	return createFiber_upvr(LegacyHiddenComponent_upvr, arg1, arg4, arg2, REACT_LEGACY_HIDDEN_TYPE_upvr, var92, nil, arg3)
end
local HostText_upvr = ReactWorkTags.HostText
local DehydratedFragment_upvr = ReactWorkTags.DehydratedFragment
local HostPortal_upvr = ReactWorkTags.HostPortal
return {
	isSimpleFunctionComponent = function(arg1) -- Line 272, Named "isSimpleFunctionComponent"
		local var36
		if type(arg1) ~= "function" then
			var36 = false
		else
			var36 = true
		end
		return var36
	end;
	resolveLazyComponentTag = function(arg1) -- Line 280, Named "resolveLazyComponentTag"
		--[[ Upvalues[7]:
			[1]: FunctionComponent_upvr (readonly)
			[2]: ClassComponent_upvr (readonly)
			[3]: REACT_FORWARD_REF_TYPE_upvr (readonly)
			[4]: ForwardRef_upvr (readonly)
			[5]: REACT_MEMO_TYPE_upvr (readonly)
			[6]: MemoComponent_upvr (readonly)
			[7]: IndeterminateComponent_upvr (readonly)
		]]
		local typeof_result1 = typeof(arg1)
		if typeof_result1 == "function" then
			return FunctionComponent_upvr
		end
		if typeof_result1 == "table" then
			if arg1.isReactComponent then
				return ClassComponent_upvr
			end
			local __typeof = arg1["$$typeof"]
			if __typeof == REACT_FORWARD_REF_TYPE_upvr then
				return ForwardRef_upvr
			end
			if __typeof == REACT_MEMO_TYPE_upvr then
				return MemoComponent_upvr
			end
		end
		return IndeterminateComponent_upvr
	end;
	createWorkInProgress = function(arg1, arg2) -- Line 303, Named "createWorkInProgress"
		--[[ Upvalues[13]:
			[1]: createFiber_upvr (readonly)
			[2]: __DEV___upvr (readonly)
			[3]: NoFlags_upvr (readonly)
			[4]: enableProfilerTimer_upvr (readonly)
			[5]: StaticMask_upvr (readonly)
			[6]: IndeterminateComponent_upvr (readonly)
			[7]: FunctionComponent_upvr (readonly)
			[8]: SimpleMemoComponent_upvr (readonly)
			[9]: resolveFunctionForHotReloading_upvr (readonly)
			[10]: ClassComponent_upvr (readonly)
			[11]: resolveClassForHotReloading_upvr (readonly)
			[12]: ForwardRef_upvr (readonly)
			[13]: resolveForwardRefForHotReloading_upvr (readonly)
		]]
		if arg1.alternate == nil then
			local createFiber_upvr_result1 = createFiber_upvr(arg1.tag, arg2, arg1.key, arg1.mode, arg1.elementType, arg1.type, arg1.stateNode)
			if __DEV___upvr then
				createFiber_upvr_result1._debugID = arg1._debugID
				createFiber_upvr_result1._debugSource = arg1._debugSource
				createFiber_upvr_result1._debugOwner = arg1._debugOwner
				createFiber_upvr_result1._debugHookTypes = arg1._debugHookTypes
			end
			createFiber_upvr_result1.alternate = arg1
			arg1.alternate = createFiber_upvr_result1
		else
			createFiber_upvr_result1.pendingProps = arg2
			createFiber_upvr_result1.type = arg1.type
			createFiber_upvr_result1.flags = NoFlags_upvr
			createFiber_upvr_result1.subtreeFlags = NoFlags_upvr
			createFiber_upvr_result1.deletions = nil
			if enableProfilerTimer_upvr then
				createFiber_upvr_result1.actualDuration = 0
				createFiber_upvr_result1.actualStartTime = -1
			end
		end
		createFiber_upvr_result1.flags = bit32.band(arg1.flags, StaticMask_upvr)
		createFiber_upvr_result1.childLanes = arg1.childLanes
		createFiber_upvr_result1.lanes = arg1.lanes
		createFiber_upvr_result1.child = arg1.child
		createFiber_upvr_result1.memoizedProps = arg1.memoizedProps
		createFiber_upvr_result1.memoizedState = arg1.memoizedState
		createFiber_upvr_result1.updateQueue = arg1.updateQueue
		local dependencies_2 = arg1.dependencies
		if dependencies_2 == nil then
			createFiber_upvr_result1.dependencies = nil
		else
			createFiber_upvr_result1.dependencies = {
				lanes = dependencies_2.lanes;
				firstContext = dependencies_2.firstContext;
			}
		end
		createFiber_upvr_result1.sibling = arg1.sibling
		createFiber_upvr_result1.index = arg1.index
		createFiber_upvr_result1.ref = arg1.ref
		if enableProfilerTimer_upvr then
			createFiber_upvr_result1.selfBaseDuration = arg1.selfBaseDuration
			createFiber_upvr_result1.treeBaseDuration = arg1.treeBaseDuration
		end
		if __DEV___upvr then
			createFiber_upvr_result1._debugNeedsRemount = arg1._debugNeedsRemount
			if createFiber_upvr_result1.tag == IndeterminateComponent_upvr or createFiber_upvr_result1.tag == FunctionComponent_upvr or createFiber_upvr_result1.tag == SimpleMemoComponent_upvr then
				createFiber_upvr_result1.type = resolveFunctionForHotReloading_upvr(arg1.type)
				return createFiber_upvr_result1
			end
			if createFiber_upvr_result1.tag == ClassComponent_upvr then
				createFiber_upvr_result1.type = resolveClassForHotReloading_upvr(arg1.type)
				return createFiber_upvr_result1
			end
			if createFiber_upvr_result1.tag == ForwardRef_upvr then
				createFiber_upvr_result1.type = resolveForwardRefForHotReloading_upvr(arg1.type)
			end
		end
		return createFiber_upvr_result1
	end;
	resetWorkInProgress = function(arg1, arg2) -- Line 407, Named "resetWorkInProgress"
		--[[ Upvalues[5]:
			[1]: StaticMask_upvr (readonly)
			[2]: Placement_upvr (readonly)
			[3]: NoLanes_upvr (readonly)
			[4]: NoFlags_upvr (readonly)
			[5]: enableProfilerTimer_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		arg1.flags = bit32.band(arg1.flags, bit32.bor(StaticMask_upvr, Placement_upvr))
		local alternate = arg1.alternate
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 32. Error Block 3 start (CF ANALYSIS FAILED)
		arg1.selfBaseDuration = 0
		arg1.treeBaseDuration = 0
		do
			return arg1
		end
		-- KONSTANTERROR: [48] 32. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [55] 37. Error Block 14 start (CF ANALYSIS FAILED)
		arg1.childLanes = alternate.childLanes
		arg1.lanes = alternate.lanes
		arg1.child = alternate.child
		arg1.subtreeFlags = alternate.subtreeFlags
		arg1.deletions = nil
		arg1.memoizedProps = alternate.memoizedProps
		arg1.memoizedState = alternate.memoizedState
		arg1.updateQueue = alternate.updateQueue
		arg1.type = alternate.type
		local dependencies = alternate.dependencies
		if dependencies == nil then
			arg1.dependencies = nil
		else
			arg1.dependencies = {
				lanes = dependencies.lanes;
				firstContext = dependencies.firstContext;
			}
		end
		if enableProfilerTimer_upvr then
			arg1.selfBaseDuration = alternate.selfBaseDuration
			arg1.treeBaseDuration = alternate.treeBaseDuration
		end
		-- KONSTANTERROR: [55] 37. Error Block 14 end (CF ANALYSIS FAILED)
	end;
	createHostRootFiber = function(arg1) -- Line 482, Named "createHostRootFiber"
		--[[ Upvalues[11]:
			[1]: ConcurrentRoot_upvr (readonly)
			[2]: ConcurrentMode_upvr (readonly)
			[3]: BlockingMode_upvr (readonly)
			[4]: StrictMode_upvr (readonly)
			[5]: BlockingRoot_upvr (readonly)
			[6]: NoMode_upvr (readonly)
			[7]: enableProfilerTimer_upvr (readonly)
			[8]: isDevToolsPresent_upvr (readonly)
			[9]: ProfileMode_upvr (readonly)
			[10]: createFiber_upvr (readonly)
			[11]: HostRoot_upvr (readonly)
		]]
		local var54
		if arg1 == ConcurrentRoot_upvr then
			var54 = bit32.bor(ConcurrentMode_upvr, BlockingMode_upvr, StrictMode_upvr)
		elseif arg1 == BlockingRoot_upvr then
			var54 = bit32.bor(BlockingMode_upvr, StrictMode_upvr)
		else
			var54 = NoMode_upvr
		end
		if enableProfilerTimer_upvr and isDevToolsPresent_upvr() then
			var54 = bit32.bor(var54, ProfileMode_upvr)
		end
		return createFiber_upvr(HostRoot_upvr, nil, nil, var54)
	end;
	createFiberFromTypeAndProps = createFiberFromTypeAndProps_upvr;
	createFiberFromElement = function(arg1, arg2, arg3) -- Line 657, Named "createFiberFromElement"
		--[[ Upvalues[2]:
			[1]: __DEV___upvr (readonly)
			[2]: createFiberFromTypeAndProps_upvr (readonly)
		]]
		local var77
		if __DEV___upvr then
			var77 = arg1._owner
		end
		local createFiberFromTypeAndProps_upvr_result1 = createFiberFromTypeAndProps_upvr(arg1.type, arg1.key, arg1.props, var77, arg2, arg3)
		if __DEV___upvr then
			createFiberFromTypeAndProps_upvr_result1._debugSource = arg1._source
			createFiberFromTypeAndProps_upvr_result1._debugOwner = arg1._owner
		end
		return createFiberFromTypeAndProps_upvr_result1
	end;
	createFiberFromFragment = createFiberFromFragment_upvw;
	createFiberFromFundamental = function(arg1, arg2, arg3, arg4, arg5) -- Line 698, Named "createFiberFromFundamental"
		--[[ Upvalues[2]:
			[1]: createFiber_upvr (readonly)
			[2]: FundamentalComponent_upvr (readonly)
		]]
		return createFiber_upvr(FundamentalComponent_upvr, arg2, arg5, arg3, arg1, arg1, nil, arg4)
	end;
	createFiberFromSuspense = createFiberFromSuspense_upvw;
	createFiberFromSuspenseList = function(arg1, arg2, arg3, arg4) -- Line 813, Named "createFiberFromSuspenseList"
		--[[ Upvalues[4]:
			[1]: createFiber_upvr (readonly)
			[2]: SuspenseListComponent_upvr (readonly)
			[3]: REACT_SUSPENSE_LIST_TYPE_upvr (readonly)
			[4]: __DEV___upvr (readonly)
		]]
		local var88
		if __DEV___upvr then
			var88 = REACT_SUSPENSE_LIST_TYPE_upvr
		else
			var88 = nil
		end
		return createFiber_upvr(SuspenseListComponent_upvr, arg1, arg4, arg2, REACT_SUSPENSE_LIST_TYPE_upvr, var88, nil, arg3)
	end;
	createFiberFromOffscreen = createFiberFromOffscreen_upvw;
	createFiberFromLegacyHidden = createFiberFromLegacyHidden_upvw;
	createFiberFromText = function(arg1, arg2, arg3) -- Line 900, Named "createFiberFromText"
		--[[ Upvalues[2]:
			[1]: createFiber_upvr (readonly)
			[2]: HostText_upvr (readonly)
		]]
		return createFiber_upvr(HostText_upvr, arg1, nil, arg2, nil, nil, nil, arg3)
	end;
	createFiberFromHostInstanceForDeletion = function() -- Line 908, Named "createFiberFromHostInstanceForDeletion"
		--[[ Upvalues[3]:
			[1]: createFiber_upvr (readonly)
			[2]: HostComponent_upvr (readonly)
			[3]: NoMode_upvr (readonly)
		]]
		return createFiber_upvr(HostComponent_upvr, nil, nil, NoMode_upvr, "DELETED", "DELETED")
	end;
	createFiberFromDehydratedFragment = function(arg1) -- Line 918, Named "createFiberFromDehydratedFragment"
		--[[ Upvalues[3]:
			[1]: createFiber_upvr (readonly)
			[2]: DehydratedFragment_upvr (readonly)
			[3]: NoMode_upvr (readonly)
		]]
		return createFiber_upvr(DehydratedFragment_upvr, nil, nil, NoMode_upvr, nil, nil, arg1)
	end;
	createFiberFromPortal = function(arg1, arg2, arg3) -- Line 927, Named "createFiberFromPortal"
		--[[ Upvalues[2]:
			[1]: createFiber_upvr (readonly)
			[2]: HostPortal_upvr (readonly)
		]]
		local var96
		if arg1.children ~= nil then
			var96 = arg1.children
		else
			var96 = {}
		end
		return createFiber_upvr(HostPortal_upvr, var96, arg1.key, arg2, nil, nil, {
			containerInfo = arg1.containerInfo;
			pendingChildren = nil;
			implementation = arg1.implementation;
		}, arg3)
	end;
	assignFiberPropertiesInDEV = function(arg1, arg2) -- Line 951, Named "assignFiberPropertiesInDEV"
		--[[ Upvalues[4]:
			[1]: createFiber_upvr (readonly)
			[2]: IndeterminateComponent_upvr (readonly)
			[3]: NoMode_upvr (readonly)
			[4]: enableProfilerTimer_upvr (readonly)
		]]
		if arg1 == nil then
			local createFiber_result1 = createFiber_upvr(IndeterminateComponent_upvr, nil, nil, NoMode_upvr)
		end
		createFiber_result1.tag = arg2.tag
		createFiber_result1.key = arg2.key
		createFiber_result1.elementType = arg2.elementType
		createFiber_result1.type = arg2.type
		createFiber_result1.stateNode = arg2.stateNode
		createFiber_result1.return_ = arg2.return_
		createFiber_result1.child = arg2.child
		createFiber_result1.sibling = arg2.sibling
		createFiber_result1.index = arg2.index
		createFiber_result1.ref = arg2.ref
		createFiber_result1.pendingProps = arg2.pendingProps
		createFiber_result1.memoizedProps = arg2.memoizedProps
		createFiber_result1.updateQueue = arg2.updateQueue
		createFiber_result1.memoizedState = arg2.memoizedState
		createFiber_result1.dependencies = arg2.dependencies
		createFiber_result1.mode = arg2.mode
		createFiber_result1.flags = arg2.flags
		createFiber_result1.subtreeFlags = arg2.subtreeFlags
		createFiber_result1.deletions = arg2.deletions
		createFiber_result1.lanes = arg2.lanes
		createFiber_result1.childLanes = arg2.childLanes
		createFiber_result1.alternate = arg2.alternate
		if enableProfilerTimer_upvr then
			createFiber_result1.actualDuration = arg2.actualDuration
			createFiber_result1.actualStartTime = arg2.actualStartTime
			createFiber_result1.selfBaseDuration = arg2.selfBaseDuration
			createFiber_result1.treeBaseDuration = arg2.treeBaseDuration
		end
		createFiber_result1._debugID = arg2._debugID
		createFiber_result1._debugSource = arg2._debugSource
		createFiber_result1._debugOwner = arg2._debugOwner
		createFiber_result1._debugNeedsRemount = arg2._debugNeedsRemount
		createFiber_result1._debugHookTypes = arg2._debugHookTypes
		return createFiber_result1
	end;
}