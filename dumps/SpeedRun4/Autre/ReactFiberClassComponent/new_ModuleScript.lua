-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:59
-- Luau version 6, Types version 3
-- Time taken: 0.033670 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local new_3 = require(script.Parent["ReactUpdateQueue.new"])
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local Update_upvr = ReactFiberFlags.Update
local MountLayoutDev_upvr = ReactFiberFlags.MountLayoutDev
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local debugRenderPhaseSideEffectsForStrictMode_upvr = ReactFeatureFlags.debugRenderPhaseSideEffectsForStrictMode
local disableLegacyContext_upvr = ReactFeatureFlags.disableLegacyContext
local enableDoubleInvokingEffects_upvr = ReactFeatureFlags.enableDoubleInvokingEffects
local ReactInstanceMap = require(Parent.Shared).ReactInstanceMap
local set_upvr = ReactInstanceMap.set
local getComponentName_upvr = require(Parent.Shared).getComponentName
local describeError_upvr = require(Parent.Shared).describeError
local ReactSymbols = require(Parent.Shared).ReactSymbols
local ReactTypeOfMode = require(script.Parent.ReactTypeOfMode)
local StrictMode_upvr = ReactTypeOfMode.StrictMode
local processUpdateQueue_upvr = new_3.processUpdateQueue
local checkHasForceUpdateAfterProcessing_upvr = new_3.checkHasForceUpdateAfterProcessing
local resetHasForceUpdateBeforeProcessing_upvr = new_3.resetHasForceUpdateBeforeProcessing
local new = require(script.Parent["ReactFiberContext.new"])
local getMaskedContext_upvr = new.getMaskedContext
local getUnmaskedContext_upvr = new.getUnmaskedContext
local hasContextChanged_upvr = new.hasContextChanged
local emptyContextObject_upvr = new.emptyContextObject
local readContext_upvr = require(script.Parent["ReactFiberNewContext.new"]).readContext
local DebugTracing = require(script.Parent.DebugTracing)
local ConsolePatchingDev = require(Parent.Shared).ConsolePatchingDev
local disableLogs_upvr = ConsolePatchingDev.disableLogs
local reenableLogs_upvr = ConsolePatchingDev.reenableLogs
local SchedulingProfiler = require(script.Parent.SchedulingProfiler)
local tbl_upvr_2 = {}
local __refs_upvr = require(Parent.React).Component:extend("").__refs
local var35_upvw
local var36_upvw
local var37_upvw
local var38_upvw
local warnOnUndefinedDerivedState_upvw
local warnOnInvalidCallback_upvw
local var41_upvw
local var42_upvw
local var43_upvw
if __DEV___upvr then
	var35_upvw = {}
	var36_upvw = {}
	var37_upvw = {}
	var38_upvw = {}
	var41_upvw = {}
	var42_upvw = {}
	var43_upvw = {}
	local tbl_upvr = {}
	function warnOnInvalidCallback_upvw(arg1, arg2) -- Line 138, Named "warnOnInvalidCallback"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: console_upvr (readonly)
		]]
		if arg1 == nil or type(arg1) == "function" then
		else
			local var45 = arg2..'_'..tostring(arg1)
			if not tbl_upvr[var45] then
				tbl_upvr[var45] = true
				console_upvr.error("%s(...): Expected the last optional `callback` argument to be a ".."function. Instead received: %s.", arg2, tostring(arg1))
			end
		end
	end
	function warnOnUndefinedDerivedState_upvw(arg1, arg2) -- Line 154, Named "warnOnUndefinedDerivedState"
	end
end
function tbl_upvr(arg1, arg2, arg3, arg4) -- Line 197, Named "applyDerivedStateFromProps"
	--[[ Upvalues[9]:
		[1]: __DEV___upvr (readonly)
		[2]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[3]: StrictMode_upvr (readonly)
		[4]: disableLogs_upvr (readonly)
		[5]: describeError_upvr (readonly)
		[6]: reenableLogs_upvr (readonly)
		[7]: warnOnUndefinedDerivedState_upvw (read and write)
		[8]: Object_upvr (readonly)
		[9]: NoLanes_upvr (readonly)
	]]
	local memoizedState = arg1.memoizedState
	local var55
	if __DEV___upvr then
		if debugRenderPhaseSideEffectsForStrictMode_upvr then
			var55 = arg1.mode
			if bit32.band(var55, StrictMode_upvr) ~= 0 then
				disableLogs_upvr()
				var55 = arg3
				local xpcall_result1_2, xpcall_result2_4 = xpcall(var55, describeError_upvr, arg4, memoizedState)
				reenableLogs_upvr()
				if not xpcall_result1_2 then
					error(xpcall_result2_4)
				end
			end
		end
	end
	xpcall_result2_4 = arg4
	local arg3_result1_2 = arg3(xpcall_result2_4, memoizedState)
	xpcall_result2_4 = __DEV___upvr
	if xpcall_result2_4 then
		xpcall_result2_4 = warnOnUndefinedDerivedState_upvw
		xpcall_result2_4(arg2, arg3_result1_2)
	end
	if arg3_result1_2 == nil then
		xpcall_result2_4 = memoizedState
	else
		xpcall_result2_4 = Object_upvr.assign({}, memoizedState, arg3_result1_2)
	end
	arg1.memoizedState = xpcall_result2_4
	if arg1.lanes == NoLanes_upvr then
		arg1.updateQueue.baseState = xpcall_result2_4
	end
end
local Object_upvr = require(Parent.LuauPolyfill).Object
local NoLanes_upvr = require(script.Parent.ReactFiberLane).NoLanes
local var46_upvr = tbl_upvr
local var59_upvw
local isMounted_upvr = require(script.Parent.ReactFiberTreeReflection).isMounted
local get_upvr = ReactInstanceMap.get
local createUpdate_upvr = new_3.createUpdate
local enqueueUpdate_upvr = new_3.enqueueUpdate
local enableDebugTracing_upvr = ReactFeatureFlags.enableDebugTracing
local DebugTracingMode_upvr = ReactTypeOfMode.DebugTracingMode
local logStateUpdateScheduled_upvr = DebugTracing.logStateUpdateScheduled
local enableSchedulingProfiler_upvr = ReactFeatureFlags.enableSchedulingProfiler
local markStateUpdateScheduled_upvr = SchedulingProfiler.markStateUpdateScheduled
local ReplaceState_upvr = new_3.ReplaceState
local ForceUpdate_upvr = new_3.ForceUpdate
local logForceUpdateScheduled_upvr = DebugTracing.logForceUpdateScheduled
local markForceUpdateScheduled_upvr = SchedulingProfiler.markForceUpdateScheduled
local function initializeClassComponentUpdater_upvr() -- Line 245, Named "initializeClassComponentUpdater"
	--[[ Upvalues[17]:
		[1]: var59_upvw (read and write)
		[2]: isMounted_upvr (readonly)
		[3]: get_upvr (readonly)
		[4]: createUpdate_upvr (readonly)
		[5]: __DEV___upvr (readonly)
		[6]: warnOnInvalidCallback_upvw (read and write)
		[7]: enqueueUpdate_upvr (readonly)
		[8]: enableDebugTracing_upvr (readonly)
		[9]: DebugTracingMode_upvr (readonly)
		[10]: getComponentName_upvr (readonly)
		[11]: logStateUpdateScheduled_upvr (readonly)
		[12]: enableSchedulingProfiler_upvr (readonly)
		[13]: markStateUpdateScheduled_upvr (readonly)
		[14]: ReplaceState_upvr (readonly)
		[15]: ForceUpdate_upvr (readonly)
		[16]: logForceUpdateScheduled_upvr (readonly)
		[17]: markForceUpdateScheduled_upvr (readonly)
	]]
	local new_2 = require(script.Parent["ReactFiberWorkLoop.new"])
	local requestEventTime_upvr = new_2.requestEventTime
	local requestUpdateLane_upvr = new_2.requestUpdateLane
	local scheduleUpdateOnFiber_upvr = new_2.scheduleUpdateOnFiber
	var59_upvw = {
		isMounted = isMounted_upvr;
		enqueueSetState = function(arg1, arg2, arg3) -- Line 253, Named "enqueueSetState"
			--[[ Upvalues[14]:
				[1]: get_upvr (copied, readonly)
				[2]: requestEventTime_upvr (readonly)
				[3]: requestUpdateLane_upvr (readonly)
				[4]: createUpdate_upvr (copied, readonly)
				[5]: __DEV___upvr (copied, readonly)
				[6]: warnOnInvalidCallback_upvw (copied, read and write)
				[7]: enqueueUpdate_upvr (copied, readonly)
				[8]: scheduleUpdateOnFiber_upvr (readonly)
				[9]: enableDebugTracing_upvr (copied, readonly)
				[10]: DebugTracingMode_upvr (copied, readonly)
				[11]: getComponentName_upvr (copied, readonly)
				[12]: logStateUpdateScheduled_upvr (copied, readonly)
				[13]: enableSchedulingProfiler_upvr (copied, readonly)
				[14]: markStateUpdateScheduled_upvr (copied, readonly)
			]]
			local get_upvr_result1_3 = get_upvr(arg1)
			local var74_result1_3 = requestEventTime_upvr()
			local var75_result1_2 = requestUpdateLane_upvr(get_upvr_result1_3)
			if arg3 ~= nil and __DEV___upvr then
				warnOnInvalidCallback_upvw(arg3, "setState")
			end
			enqueueUpdate_upvr(get_upvr_result1_3, createUpdate_upvr(var74_result1_3, var75_result1_2, arg2, arg3))
			scheduleUpdateOnFiber_upvr(get_upvr_result1_3, var75_result1_2, var74_result1_3)
			if __DEV___upvr and enableDebugTracing_upvr and bit32.band(get_upvr_result1_3.mode, DebugTracingMode_upvr) ~= 0 then
				logStateUpdateScheduled_upvr(getComponentName_upvr(get_upvr_result1_3.type) or "Unknown", var75_result1_2, arg2)
			end
			if enableSchedulingProfiler_upvr then
				markStateUpdateScheduled_upvr(get_upvr_result1_3, var75_result1_2)
			end
		end;
		enqueueReplaceState = function(arg1, arg2, arg3) -- Line 283, Named "enqueueReplaceState"
			--[[ Upvalues[15]:
				[1]: get_upvr (copied, readonly)
				[2]: requestEventTime_upvr (readonly)
				[3]: requestUpdateLane_upvr (readonly)
				[4]: createUpdate_upvr (copied, readonly)
				[5]: ReplaceState_upvr (copied, readonly)
				[6]: __DEV___upvr (copied, readonly)
				[7]: warnOnInvalidCallback_upvw (copied, read and write)
				[8]: enqueueUpdate_upvr (copied, readonly)
				[9]: scheduleUpdateOnFiber_upvr (readonly)
				[10]: enableDebugTracing_upvr (copied, readonly)
				[11]: DebugTracingMode_upvr (copied, readonly)
				[12]: getComponentName_upvr (copied, readonly)
				[13]: logStateUpdateScheduled_upvr (copied, readonly)
				[14]: enableSchedulingProfiler_upvr (copied, readonly)
				[15]: markStateUpdateScheduled_upvr (copied, readonly)
			]]
			local get_upvr_result1_2 = get_upvr(arg1)
			local var74_result1 = requestEventTime_upvr()
			local var75_result1_3 = requestUpdateLane_upvr(get_upvr_result1_2)
			local createUpdate_upvr_result1 = createUpdate_upvr(var74_result1, var75_result1_3, arg2, arg3)
			createUpdate_upvr_result1.tag = ReplaceState_upvr
			if arg3 ~= nil and __DEV___upvr then
				warnOnInvalidCallback_upvw(arg3, "replaceState")
			end
			enqueueUpdate_upvr(get_upvr_result1_2, createUpdate_upvr_result1)
			scheduleUpdateOnFiber_upvr(get_upvr_result1_2, var75_result1_3, var74_result1)
			if __DEV___upvr and enableDebugTracing_upvr and bit32.band(get_upvr_result1_2.mode, DebugTracingMode_upvr) ~= 0 then
				logStateUpdateScheduled_upvr(getComponentName_upvr(get_upvr_result1_2.type) or "Unknown", var75_result1_3, arg2)
			end
			if enableSchedulingProfiler_upvr then
				markStateUpdateScheduled_upvr(get_upvr_result1_2, var75_result1_3)
			end
		end;
		enqueueForceUpdate = function(arg1, arg2) -- Line 315, Named "enqueueForceUpdate"
			--[[ Upvalues[15]:
				[1]: get_upvr (copied, readonly)
				[2]: requestEventTime_upvr (readonly)
				[3]: requestUpdateLane_upvr (readonly)
				[4]: createUpdate_upvr (copied, readonly)
				[5]: ForceUpdate_upvr (copied, readonly)
				[6]: __DEV___upvr (copied, readonly)
				[7]: warnOnInvalidCallback_upvw (copied, read and write)
				[8]: enqueueUpdate_upvr (copied, readonly)
				[9]: scheduleUpdateOnFiber_upvr (readonly)
				[10]: enableDebugTracing_upvr (copied, readonly)
				[11]: DebugTracingMode_upvr (copied, readonly)
				[12]: getComponentName_upvr (copied, readonly)
				[13]: logForceUpdateScheduled_upvr (copied, readonly)
				[14]: enableSchedulingProfiler_upvr (copied, readonly)
				[15]: markForceUpdateScheduled_upvr (copied, readonly)
			]]
			local get_upvr_result1 = get_upvr(arg1)
			local var74_result1_2 = requestEventTime_upvr()
			local var75_result1 = requestUpdateLane_upvr(get_upvr_result1)
			local createUpdate_upvr_result1_2 = createUpdate_upvr(var74_result1_2, var75_result1, nil, arg2)
			createUpdate_upvr_result1_2.tag = ForceUpdate_upvr
			if arg2 ~= nil and __DEV___upvr then
				warnOnInvalidCallback_upvw(arg2, "forceUpdate")
			end
			enqueueUpdate_upvr(get_upvr_result1, createUpdate_upvr_result1_2)
			scheduleUpdateOnFiber_upvr(get_upvr_result1, var75_result1, var74_result1_2)
			if __DEV___upvr and enableDebugTracing_upvr and bit32.band(get_upvr_result1.mode, DebugTracingMode_upvr) ~= 0 then
				logForceUpdateScheduled_upvr(getComponentName_upvr(get_upvr_result1.type) or "Unknown", var75_result1)
			end
			if enableSchedulingProfiler_upvr then
				markForceUpdateScheduled_upvr(get_upvr_result1, var75_result1)
			end
		end;
	}
end
local function _() -- Line 349, Named "getClassComponentUpdater"
	--[[ Upvalues[2]:
		[1]: var59_upvw (read and write)
		[2]: initializeClassComponentUpdater_upvr (readonly)
	]]
	if var59_upvw == nil then
		initializeClassComponentUpdater_upvr()
	end
	return var59_upvw
end
local shallowEqual_upvr = require(Parent.Shared).shallowEqual
function checkShouldComponentUpdate(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 356
	--[[ Upvalues[9]:
		[1]: __DEV___upvr (readonly)
		[2]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[3]: StrictMode_upvr (readonly)
		[4]: disableLogs_upvr (readonly)
		[5]: describeError_upvr (readonly)
		[6]: reenableLogs_upvr (readonly)
		[7]: console_upvr (readonly)
		[8]: getComponentName_upvr (readonly)
		[9]: shallowEqual_upvr (readonly)
	]]
	local stateNode_2 = arg1.stateNode
	if stateNode_2.shouldComponentUpdate ~= nil then
		if type(stateNode_2.shouldComponentUpdate) == "function" then
			if __DEV___upvr then
				if debugRenderPhaseSideEffectsForStrictMode_upvr then
					if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 then
						disableLogs_upvr()
						local xpcall_result1_4, xpcall_result2_2 = xpcall(stateNode_2.shouldComponentUpdate, describeError_upvr, stateNode_2, arg4, arg6, arg7)
						reenableLogs_upvr()
						if not xpcall_result1_4 then
							error(xpcall_result2_2)
						end
					end
				end
			end
			if __DEV___upvr and stateNode_2:shouldComponentUpdate(arg4, arg6, arg7) == nil then
				console_upvr.error("%s.shouldComponentUpdate(): Returned nil instead of a ".."boolean value. Make sure to return true or false.", getComponentName_upvr(arg2) or "Component")
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return stateNode_2:shouldComponentUpdate(arg4, arg6, arg7)
		end
	end
	if type(arg2) == "table" and arg2.isPureReactComponent then
		local var98 = not shallowEqual_upvr(arg3, arg4)
		if not var98 then
			var98 = not shallowEqual_upvr(arg5, arg6)
		end
		return var98
	end
	return true
end
local function checkClassInstance_upvr(arg1, arg2, arg3) -- Line 421, Named "checkClassInstance"
	--[[ Upvalues[6]:
		[1]: __DEV___upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: disableLegacyContext_upvr (readonly)
		[5]: var42_upvw (read and write)
		[6]: var37_upvw (read and write)
	]]
	local stateNode_6 = arg1.stateNode
	local var120
	if __DEV___upvr then
		var120 = arg2
		local var121 = getComponentName_upvr(var120) or "Component"
		if not stateNode_6.render then
			var120 = type(arg2.render)
			if var120 == "function" then
				var120 = console_upvr.error
				var120("%s(...): No `render` method found on the returned component ".."instance: did you accidentally return an object from the constructor?", var121)
			else
				var120 = console_upvr.error
				var120("%s(...): No `render` method found on the returned component ".."instance: you may have forgotten to define `render`.", var121)
			end
		end
		var120 = stateNode_6.getInitialState
		if var120 then
			var120 = stateNode_6.getInitialState.isReactClassApproved
			if not var120 then
				var120 = stateNode_6.state
				if not var120 then
					var120 = console_upvr.error
					var120("getInitialState was defined on %s, a plain JavaScript class. ".."This is only supported for classes created using React.createClass. ".."Did you mean to define a state property instead?", var121)
				end
			end
		end
		var120 = stateNode_6.getDefaultProps
		if var120 then
			var120 = stateNode_6.getDefaultProps.isReactClassApproved
			if not var120 then
				var120 = console_upvr.error
				var120("getDefaultProps was defined on %s, a plain JavaScript class. ".."This is only supported for classes created using React.createClass. ".."Use a static property to define defaultProps instead.", var121)
			end
		end
		var120 = stateNode_6.propTypes
		if var120 then
			var120 = arg2.propTypes
			if not var120 then
				var120 = console_upvr.error
				var120("propTypes was defined as an instance property on %s. Use a static ".."property to define propTypes instead.", var121)
			end
		end
		var120 = stateNode_6.contextType
		if var120 then
			var120 = arg2.contextType
			if not var120 then
				var120 = console_upvr.error
				var120("contextType was defined as an instance property on %s. Use a static ".."property to define contextType instead.", var121)
			end
		end
		var120 = disableLegacyContext_upvr
		if var120 then
			var120 = arg2.childContextTypes
			if var120 then
				var120 = console_upvr.error
				var120("%s uses the legacy childContextTypes API which is no longer supported. ".."Use React.createContext() instead.", var121)
			end
			var120 = arg2.contextTypes
			if var120 then
				var120 = console_upvr.error
				var120("%s uses the legacy contextTypes API which is no longer supported. ".."Use React.createContext() with static contextType instead.", var121)
				-- KONSTANTWARNING: GOTO [167] #134
			end
		else
			var120 = stateNode_6.contextTypes
			if var120 then
				var120 = arg2.contextTypes
				if not var120 then
					var120 = console_upvr.error
					var120("contextTypes was defined as an instance property on %s. Use a static ".."property to define contextTypes instead.", var121)
				end
			end
			var120 = type(arg2)
			if var120 == "table" then
				var120 = arg2.contextType
				if var120 then
					var120 = arg2.contextTypes
					if var120 then
						var120 = var42_upvw[arg2]
						if not var120 then
							var120 = var42_upvw
							var120[arg2] = true
							var120 = console_upvr.error
							var120("%s declares both contextTypes and contextType static properties. ".."The legacy contextTypes property will be ignored.", var121)
						end
					end
				end
			end
		end
		var120 = type(stateNode_6.componentShouldUpdate)
		if var120 == "function" then
			var120 = console_upvr.error
			var120("%s has a method called ".."componentShouldUpdate(). Did you mean shouldComponentUpdate()? ".."The name is phrased as a question because the function is ".."expected to return a value.", var121)
		end
		var120 = type(arg2)
		if var120 == "table" then
			var120 = arg2.isPureReactComponent
			if var120 then
				var120 = stateNode_6.shouldComponentUpdate
				if var120 ~= nil then
					var120 = console_upvr.error
					var120("%s has a method called shouldComponentUpdate(). ".."shouldComponentUpdate should not be used when extending React.PureComponent. ".."Please extend React.Component if shouldComponentUpdate is used.", getComponentName_upvr(arg2) or "A pure component")
				end
			end
		end
		var120 = type(stateNode_6.componentDidUnmount)
		if var120 == "function" then
			var120 = console_upvr.error
			var120("%s has a method called ".."componentDidUnmount(). But there is no such lifecycle method. ".."Did you mean componentWillUnmount()?", var121)
		end
		var120 = type(stateNode_6.componentDidReceiveProps)
		if var120 == "function" then
			var120 = console_upvr.error
			var120("%s has a method called ".."componentDidReceiveProps(). But there is no such lifecycle method. ".."If you meant to update the state in response to changing props, ".."use componentWillReceiveProps(). If you meant to fetch data or ".."run side-effects or mutations after React has updated the UI, use componentDidUpdate().", var121)
		end
		var120 = type(stateNode_6.componentWillRecieveProps)
		if var120 == "function" then
			var120 = console_upvr.error
			var120("%s has a method called ".."componentWillRecieveProps(). Did you mean componentWillReceiveProps()?", var121)
		end
		var120 = type(stateNode_6.UNSAFE_componentWillRecieveProps)
		if var120 == "function" then
			var120 = console_upvr.error
			var120("%s has a method called ".."UNSAFE_componentWillRecieveProps(). Did you mean UNSAFE_componentWillReceiveProps()?", var121)
		end
		if stateNode_6.props == arg3 then
			var120 = false
		else
			var120 = true
		end
		if stateNode_6.props ~= nil and var120 then
			console_upvr.error("%s(...): When calling super() in `%s`, make sure to pass ".."up the same props that your component's constructor was passed.", var121, var121)
		end
		if rawget(stateNode_6, "defaultProps") then
			console_upvr.error("Setting defaultProps as an instance property on %s is not supported and will be ignored.".." Instead, define defaultProps as a static property on %s.", var121, var121)
		end
		if type(stateNode_6.getSnapshotBeforeUpdate) == "function" and type(stateNode_6.componentDidUpdate) ~= "function" and not var37_upvw[arg2] then
			var37_upvw[arg2] = true
			console_upvr.error("%s: getSnapshotBeforeUpdate() should be used with componentDidUpdate(). ".."This component defines getSnapshotBeforeUpdate() only.", getComponentName_upvr(arg2))
		end
		local state_4 = stateNode_6.state
		if state_4 ~= nil and type(state_4) ~= "table" then
			console_upvr.error("%s.state: must be set to an object or nil", var121)
		end
		if type(arg2) == "table" and type(stateNode_6.getChildContext) == "function" and type(arg2.childContextTypes) ~= "table" then
			console_upvr.error("%s.getChildContext(): childContextTypes must be defined in order to ".."use getChildContext().", var121)
		end
	end
end
local REACT_CONTEXT_TYPE_upvr = ReactSymbols.REACT_CONTEXT_TYPE
local REACT_PROVIDER_TYPE_upvr = ReactSymbols.REACT_PROVIDER_TYPE
local UninitializedState_upvr = require(Parent.Shared).UninitializedState
local cacheContext_upvr = new.cacheContext
local function callComponentWillMount_upvr(arg1, arg2) -- Line 879, Named "callComponentWillMount"
	--[[ Upvalues[5]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: getComponentName_upvr (readonly)
		[4]: var59_upvw (read and write)
		[5]: initializeClassComponentUpdater_upvr (readonly)
	]]
	if arg2.componentWillMount ~= nil then
		if type(arg2.componentWillMount) == "function" then
			arg2:componentWillMount()
		end
	end
	if arg2.UNSAFE_componentWillMount ~= nil then
		if type(arg2.UNSAFE_componentWillMount) == "function" then
			arg2:UNSAFE_componentWillMount()
		end
	end
	if arg2.state ~= arg2.state then
		if __DEV___upvr then
			console_upvr.error("%s.componentWillMount(): Assigning directly to this.state is ".."deprecated (except inside a component's ".."constructor). Use setState instead.", getComponentName_upvr(arg1.type) or "Component")
		end
		if var59_upvw == nil then
			initializeClassComponentUpdater_upvr()
		end
		var59_upvw.enqueueReplaceState(arg2, arg2.state)
	end
end
function callComponentWillReceiveProps(arg1, arg2, arg3, arg4) -- Line 911
	--[[ Upvalues[6]:
		[1]: __DEV___upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: var35_upvw (read and write)
		[4]: console_upvr (readonly)
		[5]: var59_upvw (read and write)
		[6]: initializeClassComponentUpdater_upvr (readonly)
	]]
	if arg2.componentWillReceiveProps ~= nil then
		if type(arg2.componentWillReceiveProps) == "function" then
			arg2:componentWillReceiveProps(arg3, arg4)
		end
	end
	if arg2.UNSAFE_componentWillReceiveProps ~= nil and type(arg2.UNSAFE_componentWillReceiveProps) == "function" then
		arg2:UNSAFE_componentWillReceiveProps(arg3, arg4)
	end
	if arg2.state ~= arg2.state then
		if __DEV___upvr then
			local var135 = getComponentName_upvr(arg1.type) or "Component"
			if not var35_upvw[var135] then
				var35_upvw[var135] = true
				console_upvr.error("%s.componentWillReceiveProps(): Assigning directly to ".."this.state is deprecated (except inside a component's ".."constructor). Use setState instead.", var135)
			end
		end
		if var59_upvw == nil then
			initializeClassComponentUpdater_upvr()
		end
		var59_upvw.enqueueReplaceState(arg2, arg2.state)
	end
end
local initializeUpdateQueue_upvr = new_3.initializeUpdateQueue
local new_4_upvr = require(script.Parent["ReactStrictModeWarnings.new"])
local warnAboutDeprecatedLifecycles_upvr = ReactFeatureFlags.warnAboutDeprecatedLifecycles
function resumeMountClassInstance(arg1, arg2, arg3, arg4) -- Line 1057
	--[[ Upvalues[14]:
		[1]: emptyContextObject_upvr (readonly)
		[2]: readContext_upvr (readonly)
		[3]: disableLegacyContext_upvr (readonly)
		[4]: getUnmaskedContext_upvr (readonly)
		[5]: getMaskedContext_upvr (readonly)
		[6]: resetHasForceUpdateBeforeProcessing_upvr (readonly)
		[7]: processUpdateQueue_upvr (readonly)
		[8]: hasContextChanged_upvr (readonly)
		[9]: checkHasForceUpdateAfterProcessing_upvr (readonly)
		[10]: __DEV___upvr (readonly)
		[11]: enableDoubleInvokingEffects_upvr (readonly)
		[12]: MountLayoutDev_upvr (readonly)
		[13]: Update_upvr (readonly)
		[14]: var46_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.stateNode.props = arg1.memoizedProps
	local contextType = arg2.contextType
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 64 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 64 end (CF ANALYSIS FAILED)
end
local cloneUpdateQueue_upvr = new_3.cloneUpdateQueue
local resolveDefaultProps_upvr = require(script.Parent["ReactFiberLazyComponent.new"]).resolveDefaultProps
local Snapshot_upvr = ReactFiberFlags.Snapshot
return {
	adoptClassInstance = function(arg1, arg2) -- Line 655, Named "adoptClassInstance"
		--[[ Upvalues[5]:
			[1]: var59_upvw (read and write)
			[2]: initializeClassComponentUpdater_upvr (readonly)
			[3]: set_upvr (readonly)
			[4]: __DEV___upvr (readonly)
			[5]: tbl_upvr_2 (readonly)
		]]
		if var59_upvw == nil then
			initializeClassComponentUpdater_upvr()
		end
		arg2.__updater = var59_upvw
		arg1.stateNode = arg2
		set_upvr(arg2, arg1)
		if __DEV___upvr then
			arg2._reactInternalInstance = tbl_upvr_2
		end
	end;
	constructClassInstance = function(arg1, arg2, arg3) -- Line 666, Named "constructClassInstance"
		--[[ Upvalues[24]:
			[1]: emptyContextObject_upvr (readonly)
			[2]: __DEV___upvr (readonly)
			[3]: REACT_CONTEXT_TYPE_upvr (readonly)
			[4]: var43_upvw (read and write)
			[5]: REACT_PROVIDER_TYPE_upvr (readonly)
			[6]: console_upvr (readonly)
			[7]: getComponentName_upvr (readonly)
			[8]: readContext_upvr (readonly)
			[9]: disableLegacyContext_upvr (readonly)
			[10]: getUnmaskedContext_upvr (readonly)
			[11]: getMaskedContext_upvr (readonly)
			[12]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
			[13]: StrictMode_upvr (readonly)
			[14]: disableLogs_upvr (readonly)
			[15]: describeError_upvr (readonly)
			[16]: reenableLogs_upvr (readonly)
			[17]: var59_upvw (read and write)
			[18]: initializeClassComponentUpdater_upvr (readonly)
			[19]: set_upvr (readonly)
			[20]: tbl_upvr_2 (readonly)
			[21]: UninitializedState_upvr (readonly)
			[22]: var36_upvw (read and write)
			[23]: var38_upvw (read and write)
			[24]: cacheContext_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local contextType_2 = arg2.contextType
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 2 start (CF ANALYSIS FAILED)
		local contextType_3 = arg2.contextType
		-- KONSTANTERROR: [7] 7. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 19. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 19. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 20. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [27] 20. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [30] 23. Error Block 134 start (CF ANALYSIS FAILED)
		var43_upvw[arg2] = true
		local var133 = ""
		if contextType_2 == nil then
			var133 = " However, it is set to nil. ".."This can be caused by a typo or by mixing up named and default imports. ".."This can also happen due to a circular dependency, so ".."try moving the createContext() call to a separate file."
		elseif type(contextType_2) ~= "table" then
			var133 = " However, it is set to a "..type(contextType_2)..'.'
		elseif contextType_2["$$typeof"] == REACT_PROVIDER_TYPE_upvr then
		elseif contextType_2._context ~= nil then
		else
			for var129, _ in contextType_2 do
			end
		end
		var129 = "contextType should point to the Context object returned by React.createContext().%s"
		var129 = getComponentName_upvr
		_ = arg2
		var129 = var129(_)
		var129 = " Did you accidentally pass the Context.Consumer instead?".." However, it is set to an object with keys {"..var129..", ".."}."
		console_upvr.error("%s defines an invalid contextType. "..var129, var129 or "Component", var129)
		-- KONSTANTERROR: [30] 23. Error Block 134 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [100] 83. Error Block 26 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [100] 83. Error Block 26 end (CF ANALYSIS FAILED)
	end;
	mountClassInstance = function(arg1, arg2, arg3, arg4) -- Line 946, Named "mountClassInstance"
		--[[ Upvalues[21]:
			[1]: __DEV___upvr (readonly)
			[2]: checkClassInstance_upvr (readonly)
			[3]: __refs_upvr (readonly)
			[4]: initializeUpdateQueue_upvr (readonly)
			[5]: readContext_upvr (readonly)
			[6]: disableLegacyContext_upvr (readonly)
			[7]: emptyContextObject_upvr (readonly)
			[8]: getUnmaskedContext_upvr (readonly)
			[9]: getMaskedContext_upvr (readonly)
			[10]: getComponentName_upvr (readonly)
			[11]: var41_upvw (read and write)
			[12]: console_upvr (readonly)
			[13]: StrictMode_upvr (readonly)
			[14]: new_4_upvr (readonly)
			[15]: warnAboutDeprecatedLifecycles_upvr (readonly)
			[16]: processUpdateQueue_upvr (readonly)
			[17]: var46_upvr (readonly)
			[18]: callComponentWillMount_upvr (readonly)
			[19]: enableDoubleInvokingEffects_upvr (readonly)
			[20]: MountLayoutDev_upvr (readonly)
			[21]: Update_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var143
		if __DEV___upvr then
			var143 = arg1
			checkClassInstance_upvr(var143, arg2, arg3)
		end
		local stateNode_5 = arg1.stateNode
		stateNode_5.props = arg3
		var143 = arg1.memoizedState
		stateNode_5.state = var143
		var143 = __refs_upvr
		stateNode_5.__refs = var143
		var143 = initializeUpdateQueue_upvr
		var143(arg1)
		var143 = nil
		if type(arg2) == "table" then
			var143 = arg2.contextType
		end
		if var143 ~= nil then
			if type(var143) == "table" then
				stateNode_5.context = readContext_upvr(var143)
				-- KONSTANTWARNING: GOTO [63] #50
			end
		end
		if disableLegacyContext_upvr then
			stateNode_5.context = emptyContextObject_upvr
		else
			stateNode_5.context = getMaskedContext_upvr(arg1, getUnmaskedContext_upvr(arg1, arg2, true))
		end
		if __DEV___upvr then
			if stateNode_5.state == arg3 then
				local var145 = getComponentName_upvr(arg2) or "Component"
				if not var41_upvw[var145] then
					var41_upvw[var145] = true
					console_upvr.error("%s: It is not recommended to assign props directly to state ".."because updates to props won't be reflected in state. ".."In most cases, it is better to use props directly.", var145)
				end
			end
			if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 then
				new_4_upvr.recordLegacyContextWarning(arg1, stateNode_5)
			end
			if warnAboutDeprecatedLifecycles_upvr then
				new_4_upvr.recordUnsafeLifecycleWarnings(arg1, stateNode_5)
			end
		end
		processUpdateQueue_upvr(arg1, arg3, stateNode_5, arg4)
		stateNode_5.state = arg1.memoizedState
		if type(arg2) == "table" then
			local getDerivedStateFromProps = arg2.getDerivedStateFromProps
		end
		if getDerivedStateFromProps ~= nil and type(getDerivedStateFromProps) == "function" then
			var46_upvr(arg1, arg2, getDerivedStateFromProps, arg3)
			stateNode_5.state = arg1.memoizedState
		end
		if type(arg2) == "table" and type(arg2.getDerivedStateFromProps) ~= "function" and type(stateNode_5.getSnapshotBeforeUpdate) ~= "function" and (type(stateNode_5.UNSAFE_componentWillMount) == "function" or type(stateNode_5.componentWillMount) == "function") then
			callComponentWillMount_upvr(arg1, stateNode_5)
			processUpdateQueue_upvr(arg1, arg3, stateNode_5, arg4)
			stateNode_5.state = arg1.memoizedState
		end
		if type(stateNode_5.componentDidMount) == "function" then
			if __DEV___upvr and enableDoubleInvokingEffects_upvr then
				arg1.flags = bit32.bor(arg1.flags, bit32.bor(MountLayoutDev_upvr, Update_upvr))
				return
			end
			arg1.flags = bit32.bor(arg1.flags, Update_upvr)
		end
	end;
	resumeMountClassInstance = resumeMountClassInstance;
	updateClassInstance = function(arg1, arg2, arg3, arg4, arg5) -- Line 1205, Named "updateClassInstance"
		--[[ Upvalues[14]:
			[1]: cloneUpdateQueue_upvr (readonly)
			[2]: resolveDefaultProps_upvr (readonly)
			[3]: emptyContextObject_upvr (readonly)
			[4]: readContext_upvr (readonly)
			[5]: disableLegacyContext_upvr (readonly)
			[6]: getUnmaskedContext_upvr (readonly)
			[7]: getMaskedContext_upvr (readonly)
			[8]: resetHasForceUpdateBeforeProcessing_upvr (readonly)
			[9]: processUpdateQueue_upvr (readonly)
			[10]: hasContextChanged_upvr (readonly)
			[11]: checkHasForceUpdateAfterProcessing_upvr (readonly)
			[12]: Update_upvr (readonly)
			[13]: Snapshot_upvr (readonly)
			[14]: var46_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 110 start (CF ANALYSIS FAILED)
		local var153 = arg1
		cloneUpdateQueue_upvr(var153, arg2)
		if arg2.type == arg2.elementType then
			var153 = arg2.memoizedProps
		else
			var153 = resolveDefaultProps_upvr(arg2.type, arg2.memoizedProps)
		end
		arg2.stateNode.props = var153
		-- KONSTANTERROR: [0] 1. Error Block 110 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 26. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 26. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 28. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [40] 28. Error Block 7 end (CF ANALYSIS FAILED)
	end;
	applyDerivedStateFromProps = var46_upvr;
	emptyRefsObject = __refs_upvr;
}