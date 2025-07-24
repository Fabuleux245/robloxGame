-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:00
-- Luau version 6, Types version 3
-- Time taken: 0.030647 seconds

local function unimplemented_upvr(arg1) -- Line 11, Named "unimplemented"
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..tostring(arg1))
	error("FIXME (roblox): "..arg1.." is unimplemented", 2)
end
local __DEV___upvr = _G.__DEV__
local function _(arg1) -- Line 27, Named "isCallable"
	if typeof(arg1) == "function" then
		return true
	end
	if typeof(arg1) == "table" then
		local getmetatable_result1 = getmetatable(arg1)
		if getmetatable_result1 and rawget(getmetatable_result1, "__call") then
			return true
		end
		if arg1._isMockFunction then
			return true
		end
	end
	return false
end
local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local LuauPolyfill = require(Parent.LuauPolyfill)
local Error_upvr = LuauPolyfill.Error
local ReactFiberHostConfig = require(script.Parent.ReactFiberHostConfig)
local ReactHookEffectTags = require(script.Parent.ReactHookEffectTags)
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local enableSchedulerTracing_upvr = ReactFeatureFlags.enableSchedulerTracing
local enableProfilerTimer_upvr = ReactFeatureFlags.enableProfilerTimer
local enableProfilerCommitHooks_upvr = ReactFeatureFlags.enableProfilerCommitHooks
local enableSuspenseCallback_upvr = ReactFeatureFlags.enableSuspenseCallback
local enableDoubleInvokingEffects_upvr = ReactFeatureFlags.enableDoubleInvokingEffects
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local FunctionComponent_upvr = ReactWorkTags.FunctionComponent
local ForwardRef_upvr = ReactWorkTags.ForwardRef
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local HostRoot_upvr = ReactWorkTags.HostRoot
local HostComponent_upvr = ReactWorkTags.HostComponent
local HostText_upvr = ReactWorkTags.HostText
local HostPortal_upvr = ReactWorkTags.HostPortal
local Profiler_upvr = ReactWorkTags.Profiler
local SuspenseComponent_upvr = ReactWorkTags.SuspenseComponent
local IncompleteClassComponent_upvr = ReactWorkTags.IncompleteClassComponent
local MemoComponent_upvr = ReactWorkTags.MemoComponent
local SimpleMemoComponent_upvr = ReactWorkTags.SimpleMemoComponent
local SuspenseListComponent_upvr = ReactWorkTags.SuspenseListComponent
local Block_upvr = ReactWorkTags.Block
local OffscreenComponent_upvr = ReactWorkTags.OffscreenComponent
local LegacyHiddenComponent_upvr = ReactWorkTags.LegacyHiddenComponent
local ReactErrorUtils = require(Parent.Shared).ReactErrorUtils
local invokeGuardedCallback_upvr = ReactErrorUtils.invokeGuardedCallback
local hasCaughtError_upvr = ReactErrorUtils.hasCaughtError
local clearCaughtError_upvr = ReactErrorUtils.clearCaughtError
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local NoFlags_upvr_2 = ReactFiberFlags.NoFlags
local Update_upvr = ReactFiberFlags.Update
local Callback_upvr = ReactFiberFlags.Callback
local getComponentName_upvr = require(Parent.Shared).getComponentName
local invariant_upvr = require(Parent.Shared).invariant
local describeError_upvr = require(Parent.Shared).describeError
local ReactCurrentFiber_upvr = require(script.Parent.ReactCurrentFiber)
local resolveDefaultProps_upvr = require(script.Parent["ReactFiberLazyComponent.new"]).resolveDefaultProps
local new = require(script.Parent["ReactProfilerTimer.new"])
local startLayoutEffectTimer_upvr = new.startLayoutEffectTimer
local recordPassiveEffectDuration_upvr = new.recordPassiveEffectDuration
local recordLayoutEffectDuration_upvr = new.recordLayoutEffectDuration
local startPassiveEffectTimer_upvr = new.startPassiveEffectTimer
local getCommitTime_upvr = new.getCommitTime
local ProfileMode_upvr = require(script.Parent.ReactTypeOfMode).ProfileMode
local commitUpdateQueue_upvr = require(script.Parent["ReactUpdateQueue.new"]).commitUpdateQueue
local getPublicInstance_upvr = ReactFiberHostConfig.getPublicInstance
local supportsMutation_upvr = ReactFiberHostConfig.supportsMutation
local supportsHydration_upvr = ReactFiberHostConfig.supportsHydration
local resetTextContent_upvr = ReactFiberHostConfig.resetTextContent
local var57_upvw
local function resolveRetryWakeable_upvr(arg1, arg2) -- Line 193, Named "resolveRetryWakeable"
	--[[ Upvalues[1]:
		[1]: var57_upvw (read and write)
	]]
	if not var57_upvw then
		var57_upvw = require(script.Parent["ReactFiberWorkLoop.new"])
	end
	var57_upvw.resolveRetryWakeable(arg1, arg2)
end
local function _() -- Line 200, Named "markCommitTimeOfFallback"
	--[[ Upvalues[1]:
		[1]: var57_upvw (read and write)
	]]
	if not var57_upvw then
		var57_upvw = require(script.Parent["ReactFiberWorkLoop.new"])
	end
	var57_upvw.markCommitTimeOfFallback()
end
local function schedulePassiveEffectCallback_upvw() -- Line 208, Named "schedulePassiveEffectCallback"
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	console_upvr.warn("ReactFiberCommitWork: schedulePassiveEffectCallback causes a dependency cycle\n"..debug.traceback())
end
local function captureCommitPhaseError_upvw(arg1, arg2, arg3) -- Line 216, Named "captureCommitPhaseError"
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	console_upvr.warn("ReactFiberCommitWork: captureCommitPhaseError causes a dependency cycle")
	error(arg3)
end
local HasEffect_upvr = ReactHookEffectTags.HasEffect
local Layout_upvr = ReactHookEffectTags.Layout
local Passive_upvr = ReactHookEffectTags.Passive
local var62_upvw
local function var61_upvr() -- Line 234
	--[[ Upvalues[1]:
		[1]: var62_upvw (read and write)
	]]
	if not var62_upvw then
		var62_upvw = require(script.Parent["ReactFiberBeginWork.new"]).didWarnAboutReassigningProps
	end
	return var62_upvw
end
local function callComponentWillUnmountWithTimer_upvr(arg1, arg2) -- Line 259, Named "callComponentWillUnmountWithTimer"
	--[[ Upvalues[6]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: enableProfilerCommitHooks_upvr (readonly)
		[3]: ProfileMode_upvr (readonly)
		[4]: startLayoutEffectTimer_upvr (readonly)
		[5]: describeError_upvr (readonly)
		[6]: recordLayoutEffectDuration_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg2.props = arg1.memoizedProps
	arg2.state = arg1.memoizedState
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 3 start (CF ANALYSIS FAILED)
	local mode = arg1.mode
	-- KONSTANTERROR: [12] 9. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 25. Error Block 5 start (CF ANALYSIS FAILED)
	error(mode)
	do
		return
	end
	-- KONSTANTERROR: [33] 25. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 29. Error Block 6 start (CF ANALYSIS FAILED)
	arg2:componentWillUnmount()
	-- KONSTANTERROR: [38] 29. Error Block 6 end (CF ANALYSIS FAILED)
end
function safelyCallComponentWillUnmount(arg1, arg2, arg3) -- Line 286
	--[[ Upvalues[3]:
		[1]: callComponentWillUnmountWithTimer_upvr (readonly)
		[2]: describeError_upvr (readonly)
		[3]: captureCommitPhaseError_upvw (read and write)
	]]
	local xpcall_result1, xpcall_result2_8 = xpcall(callComponentWillUnmountWithTimer_upvr, describeError_upvr, arg1, arg2)
	if not xpcall_result1 then
		captureCommitPhaseError_upvw(arg1, arg3, xpcall_result2_8)
	end
end
local function _(arg1, arg2) -- Line 300, Named "safelyDetachRef"
	--[[ Upvalues[2]:
		[1]: describeError_upvr (readonly)
		[2]: captureCommitPhaseError_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ref_2 = arg1.ref
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
	local xpcall_result1_7, xpcall_result2_4 = xpcall(ref_2, describeError_upvr)
	-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 19. Error Block 5 start (CF ANALYSIS FAILED)
	ref_2.current = nil
	-- KONSTANTERROR: [23] 19. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 21. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 21. Error Block 6 end (CF ANALYSIS FAILED)
end
local Snapshot_upvr = ReactFiberFlags.Snapshot
local clearContainer_upvr = ReactFiberHostConfig.clearContainer
local function commitHookEffectListUnmount_upvr(arg1, arg2, arg3) -- Line 421, Named "commitHookEffectListUnmount"
	--[[ Upvalues[2]:
		[1]: describeError_upvr (readonly)
		[2]: captureCommitPhaseError_upvw (read and write)
	]]
	local updateQueue_6 = arg2.updateQueue
	local var84
	if updateQueue_6 ~= nil then
		var84 = updateQueue_6.lastEffect
	end
	if var84 ~= nil then
		local next_5 = var84.next
		local var86 = next_5
		repeat
			if bit32.band(var86.tag, arg1) == arg1 then
				local destroy_3 = var86.destroy
				var86.destroy = nil
				if destroy_3 ~= nil then
					local xpcall_result1_9, xpcall_result2_9 = xpcall(destroy_3, describeError_upvr)
					if not xpcall_result1_9 then
						captureCommitPhaseError_upvw(arg2, arg3, xpcall_result2_9)
					end
				end
			end
		until var86.next == next_5
	end
end
local function commitHookEffectListMount_upvr(arg1, arg2) -- Line 449, Named "commitHookEffectListMount"
	--[[ Upvalues[2]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local updateQueue_7 = arg2.updateQueue
	local var97
	if updateQueue_7 ~= nil then
		var97 = updateQueue_7.lastEffect
	else
		var97 = nil
	end
	if var97 ~= nil then
		local next_2 = var97.next
		local var99 = next_2
		repeat
			if bit32.band(var99.tag, arg1) == arg1 then
				var99.destroy = var99.create()
				if __DEV___upvr then
					local destroy = var99.destroy
					if destroy ~= nil and typeof(destroy) ~= "function" then
						local var101
						if destroy == nil then
							var101 = " You returned nil. If your effect does not require clean ".."up, return nil (or nothing)."
						elseif typeof(destroy.andThen) == "function" then
							var101 = "\n\nIt looks like you wrote useEffect(Promise.new(function() --[[...]] end) or returned a Promise. ".."Instead, write the async function inside your effect ".."and call it immediately:\n\n".."useEffect(function()\n".."  function fetchData()\n".."    -- You can await here\n".."    local response = MyAPI.getData(someId):await()\n".."    -- ...\n".."  end\n".."  fetchData()\n".."end, {someId}) -- Or {} if effect doesn't need props or state\n\n".."Learn more about data fetching with Hooks: https://reactjs.org/link/hooks-data-fetching"
						else
							var101 = " You returned: "..destroy
						end
						console_upvr.error("An effect function must not return anything besides a function, ".."which is used for clean-up.%s", var101)
					end
				end
			end
		until var99.next == next_2
	end
end
function commitProfilerPassiveEffect(arg1, arg2) -- Line 489
	--[[ Upvalues[5]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: enableProfilerCommitHooks_upvr (readonly)
		[3]: Profiler_upvr (readonly)
		[4]: getCommitTime_upvr (readonly)
		[5]: enableSchedulerTracing_upvr (readonly)
	]]
	if enableProfilerTimer_upvr then
		if enableProfilerCommitHooks_upvr then
			if arg2.tag == Profiler_upvr then
				local id = arg2.memoizedProps.id
				local onPostCommit_2 = arg2.memoizedProps.onPostCommit
				local var108
				if typeof(onPostCommit_2) == "function" then
					if enableSchedulerTracing_upvr then
						if arg2.alternate == nil then
							var108 = "mount"
						else
							var108 = "update"
						end
						onPostCommit_2(id, var108, arg2.stateNode.passiveEffectDuration, getCommitTime_upvr(), arg1.memoizedInteractions)
						return
					end
					if arg2.alternate == nil then
						var108 = "mount"
					else
						var108 = "update"
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					onPostCommit_2(id, var108, arg2.stateNode.passiveEffectDuration, getCommitTime_upvr())
				end
			end
		end
	end
end
local var109_upvw
local LayoutMask_upvr = ReactFiberFlags.LayoutMask
local current_upvr = ReactCurrentFiber_upvr.current
local setCurrentFiber_upvr = ReactCurrentFiber_upvr.setCurrentFiber
local resetCurrentFiber_upvr = ReactCurrentFiber_upvr.resetCurrentFiber
local const_number_upvw = 0
local __YOLO___upvr = _G.__YOLO__
local PassiveMask_upvr = ReactFiberFlags.PassiveMask
local commitLayoutEffectsForClassComponent_upvw
local commitLayoutEffectsForHostRoot_upvw
local commitLayoutEffectsForHostComponent_upvw
local FundamentalComponent_upvr = ReactWorkTags.FundamentalComponent
local ScopeComponent_upvr = ReactWorkTags.ScopeComponent
local Ref_upvr = ReactFiberFlags.Ref
local function recursivelyCommitLayoutEffects_upvr(arg1, arg2, arg3, arg4) -- Line 522, Named "recursivelyCommitLayoutEffects"
	--[[ Upvalues[50]:
		[1]: captureCommitPhaseError_upvw (read and write)
		[2]: schedulePassiveEffectCallback_upvw (read and write)
		[3]: Profiler_upvr (readonly)
		[4]: enableProfilerTimer_upvr (readonly)
		[5]: enableProfilerCommitHooks_upvr (readonly)
		[6]: var109_upvw (read and write)
		[7]: LayoutMask_upvr (readonly)
		[8]: NoFlags_upvr_2 (readonly)
		[9]: __DEV___upvr (readonly)
		[10]: current_upvr (readonly)
		[11]: setCurrentFiber_upvr (readonly)
		[12]: invokeGuardedCallback_upvr (readonly)
		[13]: recursivelyCommitLayoutEffects_upvr (readonly)
		[14]: hasCaughtError_upvr (readonly)
		[15]: clearCaughtError_upvr (readonly)
		[16]: resetCurrentFiber_upvr (readonly)
		[17]: describeError_upvr (readonly)
		[18]: Update_upvr (readonly)
		[19]: Callback_upvr (readonly)
		[20]: ReactCurrentFiber_upvr (readonly)
		[21]: const_number_upvw (read and write)
		[22]: __YOLO___upvr (readonly)
		[23]: FunctionComponent_upvr (readonly)
		[24]: ForwardRef_upvr (readonly)
		[25]: SimpleMemoComponent_upvr (readonly)
		[26]: Block_upvr (readonly)
		[27]: ProfileMode_upvr (readonly)
		[28]: startLayoutEffectTimer_upvr (readonly)
		[29]: commitHookEffectListMount_upvr (readonly)
		[30]: Layout_upvr (readonly)
		[31]: HasEffect_upvr (readonly)
		[32]: recordLayoutEffectDuration_upvr (readonly)
		[33]: PassiveMask_upvr (readonly)
		[34]: ClassComponent_upvr (readonly)
		[35]: commitLayoutEffectsForClassComponent_upvw (read and write)
		[36]: HostRoot_upvr (readonly)
		[37]: commitLayoutEffectsForHostRoot_upvw (read and write)
		[38]: HostComponent_upvr (readonly)
		[39]: commitLayoutEffectsForHostComponent_upvw (read and write)
		[40]: SuspenseComponent_upvr (readonly)
		[41]: FundamentalComponent_upvr (readonly)
		[42]: HostPortal_upvr (readonly)
		[43]: HostText_upvr (readonly)
		[44]: IncompleteClassComponent_upvr (readonly)
		[45]: LegacyHiddenComponent_upvr (readonly)
		[46]: OffscreenComponent_upvr (readonly)
		[47]: ScopeComponent_upvr (readonly)
		[48]: SuspenseListComponent_upvr (readonly)
		[49]: invariant_upvr (readonly)
		[50]: Ref_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	captureCommitPhaseError_upvw = arg3
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 3 end (CF ANALYSIS FAILED)
end
function commitLayoutEffectsForProfiler(arg1, arg2) -- Line 809
	--[[ Upvalues[7]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: getCommitTime_upvr (readonly)
		[3]: Update_upvr (readonly)
		[4]: Callback_upvr (readonly)
		[5]: NoFlags_upvr_2 (readonly)
		[6]: enableSchedulerTracing_upvr (readonly)
		[7]: enableProfilerCommitHooks_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var123 = enableProfilerTimer_upvr
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 81. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 81. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [114] 83. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [117.9]
	local masked = bit32.band(var123, nil)
	-- KONSTANTERROR: [114] 83. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [162] 120. Error Block 76 start (CF ANALYSIS FAILED)
	if masked then
		if enableSchedulerTracing_upvr then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [165.4]
			local memoizedProps_2 = arg1.memoizedProps
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [170.3]
			if nil == nil then
				memoizedProps_2 = "mount"
			else
				memoizedProps_2 = "update"
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [175.6]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [176.7]
			nil(memoizedProps_2.id, memoizedProps_2, nil, nil, arg2.memoizedInteractions)
			return
		end
		memoizedProps_2 = arg1.memoizedProps
		local var126 = memoizedProps_2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == nil then
			var126 = "mount"
		else
			var126 = "update"
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		nil(var126.id, var126, nil, nil)
	end
	-- KONSTANTERROR: [162] 120. Error Block 76 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [194] 145. Error Block 52 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [194] 145. Error Block 52 end (CF ANALYSIS FAILED)
end
function commitLayoutEffectsForClassComponent_upvw(arg1) -- Line 877, Named "commitLayoutEffectsForClassComponent"
	--[[ Upvalues[13]:
		[1]: Update_upvr (readonly)
		[2]: __DEV___upvr (readonly)
		[3]: var61_upvr (readonly)
		[4]: console_upvr (readonly)
		[5]: getComponentName_upvr (readonly)
		[6]: enableProfilerTimer_upvr (readonly)
		[7]: enableProfilerCommitHooks_upvr (readonly)
		[8]: ProfileMode_upvr (readonly)
		[9]: startLayoutEffectTimer_upvr (readonly)
		[10]: describeError_upvr (readonly)
		[11]: recordLayoutEffectDuration_upvr (readonly)
		[12]: resolveDefaultProps_upvr (readonly)
		[13]: commitUpdateQueue_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local stateNode_upvr = arg1.stateNode
	local alternate_2 = arg1.alternate
	local var140
	if var140 ~= 0 then
		if alternate_2 == nil then
			var140 = __DEV___upvr
			if var140 then
				var140 = arg1.type
				if var140 == arg1.elementType then
					var140 = var61_upvr
					if not var140 then
						var140 = stateNode_upvr.props
						if var140 ~= arg1.memoizedProps then
							var140 = console_upvr.error
							var140("Expected %s props to match memoized props before ".."componentDidMount. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.props`. ".."Please file an issue.", getComponentName_upvr(arg1.type) or "instance")
						end
						var140 = stateNode_upvr.state
						if var140 ~= arg1.memoizedState then
							var140 = console_upvr.error
							var140("Expected %s state to match memoized state before ".."componentDidMount. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.state`. ".."Please file an issue.", getComponentName_upvr(arg1.type) or "instance")
						end
					end
				end
			end
			var140 = enableProfilerTimer_upvr
			if var140 then
				var140 = enableProfilerCommitHooks_upvr
				if var140 then
					var140 = bit32.band(arg1.mode, ProfileMode_upvr)
					if var140 ~= 0 then
						var140 = xpcall
						local function var141() -- Line 917
							--[[ Upvalues[2]:
								[1]: startLayoutEffectTimer_upvr (copied, readonly)
								[2]: stateNode_upvr (readonly)
							]]
							startLayoutEffectTimer_upvr()
							stateNode_upvr:componentDidMount()
						end
						var140 = var140(var141, describeError_upvr)
						local var140_result1_upvr, var140_result2 = var140(var141, describeError_upvr)
						recordLayoutEffectDuration_upvr(arg1)
						if not var140_result1_upvr then
							error(var140_result2)
							-- KONSTANTWARNING: GOTO [210] #156
						end
						-- KONSTANTWARNING: GOTO [210] #156
					end
				end
			end
			var140_result1_upvr = stateNode_upvr:componentDidMount
			var140_result1_upvr()
		else
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var140_result1_upvr = alternate_2.memoizedProps
				return var140_result1_upvr
			end
			if arg1.elementType ~= arg1.type or not INLINED_3() then
				var140_result1_upvr = resolveDefaultProps_upvr(arg1.type, alternate_2.memoizedProps)
			end
			if __DEV___upvr and arg1.type == arg1.elementType and not var61_upvr then
				if stateNode_upvr.props ~= arg1.memoizedProps then
					console_upvr.error("Expected %s props to match memoized props before ".."componentDidUpdate. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.props`. ".."Please file an issue.", getComponentName_upvr(arg1.type) or "instance")
				end
				if stateNode_upvr.state ~= arg1.memoizedState then
					console_upvr.error("Expected %s state to match memoized state before ".."componentDidUpdate. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.state`. ".."Please file an issue.", getComponentName_upvr(arg1.type) or "instance")
				end
			end
			if enableProfilerTimer_upvr and enableProfilerCommitHooks_upvr and bit32.band(arg1.mode, ProfileMode_upvr) ~= 0 then
				local memoizedState_4_upvr = alternate_2.memoizedState
				local xpcall_result1_8, xpcall_result2_6 = xpcall(function() -- Line 971
					--[[ Upvalues[4]:
						[1]: startLayoutEffectTimer_upvr (copied, readonly)
						[2]: stateNode_upvr (readonly)
						[3]: var140_result1_upvr (readonly)
						[4]: memoizedState_4_upvr (readonly)
					]]
					startLayoutEffectTimer_upvr()
					stateNode_upvr:componentDidUpdate(var140_result1_upvr, memoizedState_4_upvr, stateNode_upvr.__reactInternalSnapshotBeforeUpdate)
				end, describeError_upvr)
				recordLayoutEffectDuration_upvr(arg1)
				if not xpcall_result1_8 then
					error(xpcall_result2_6)
					-- KONSTANTWARNING: GOTO [210] #156
				end
			else
				stateNode_upvr:componentDidUpdate(var140_result1_upvr, memoizedState_4_upvr, stateNode_upvr.__reactInternalSnapshotBeforeUpdate)
			end
		end
	end
	var140_result1_upvr = arg1.updateQueue
	local var148 = var140_result1_upvr
	if var148 ~= nil then
		memoizedState_4_upvr = __DEV___upvr
		if memoizedState_4_upvr then
			memoizedState_4_upvr = arg1.type
			if memoizedState_4_upvr == arg1.elementType then
				memoizedState_4_upvr = var61_upvr
				if not memoizedState_4_upvr then
					memoizedState_4_upvr = stateNode_upvr.props
					if memoizedState_4_upvr ~= arg1.memoizedProps then
						memoizedState_4_upvr = console_upvr.error
						memoizedState_4_upvr("Expected %s props to match memoized props before ".."processing the update queue. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.props`. ".."Please file an issue.", getComponentName_upvr(arg1.type) or "instance")
					end
					memoizedState_4_upvr = stateNode_upvr.state
					if memoizedState_4_upvr ~= arg1.memoizedState then
						memoizedState_4_upvr = console_upvr.error
						memoizedState_4_upvr("Expected %s state to match memoized state before ".."processing the update queue. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.state`. ".."Please file an issue.", getComponentName_upvr(arg1.type) or "instance")
					end
				end
			end
		end
		memoizedState_4_upvr = commitUpdateQueue_upvr
		memoizedState_4_upvr(arg1, var148, stateNode_upvr)
	end
end
function commitLayoutEffectsForHostRoot_upvw(arg1) -- Line 1034, Named "commitLayoutEffectsForHostRoot"
	--[[ Upvalues[4]:
		[1]: HostComponent_upvr (readonly)
		[2]: getPublicInstance_upvr (readonly)
		[3]: ClassComponent_upvr (readonly)
		[4]: commitUpdateQueue_upvr (readonly)
	]]
	local updateQueue = arg1.updateQueue
	if updateQueue ~= nil then
		local var150
		if arg1.child ~= nil then
			local child = arg1.child
			if child.tag == HostComponent_upvr then
				var150 = getPublicInstance_upvr(child.stateNode)
			elseif child.tag == ClassComponent_upvr then
				var150 = child.stateNode
			end
		end
		commitUpdateQueue_upvr(arg1, updateQueue, var150)
	end
end
local commitMount_upvr = ReactFiberHostConfig.commitMount
function commitLayoutEffectsForHostComponent_upvw(arg1) -- Line 1053, Named "commitLayoutEffectsForHostComponent"
	--[[ Upvalues[2]:
		[1]: Update_upvr (readonly)
		[2]: commitMount_upvr (readonly)
	]]
	if arg1.alternate == nil and bit32.band(arg1.flags, Update_upvr) ~= 0 then
		commitMount_upvr(arg1.stateNode, arg1.type, arg1.memoizedProps, arg1)
	end
end
local hideInstance_upvr = ReactFiberHostConfig.hideInstance
local unhideInstance_upvr = ReactFiberHostConfig.unhideInstance
local hideTextInstance_upvr = ReactFiberHostConfig.hideTextInstance
local unhideTextInstance_upvr = ReactFiberHostConfig.unhideTextInstance
local function hideOrUnhideAllChildren_upvr(arg1, arg2) -- Line 1068, Named "hideOrUnhideAllChildren"
	--[[ Upvalues[9]:
		[1]: supportsMutation_upvr (readonly)
		[2]: HostComponent_upvr (readonly)
		[3]: hideInstance_upvr (readonly)
		[4]: unhideInstance_upvr (readonly)
		[5]: HostText_upvr (readonly)
		[6]: hideTextInstance_upvr (readonly)
		[7]: unhideTextInstance_upvr (readonly)
		[8]: OffscreenComponent_upvr (readonly)
		[9]: LegacyHiddenComponent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 64. Error Block 35 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 64. Error Block 35 end (CF ANALYSIS FAILED)
end
function commitAttachRef(arg1) -- Line 1118
	--[[ Upvalues[5]:
		[1]: HostComponent_upvr (readonly)
		[2]: getPublicInstance_upvr (readonly)
		[3]: __DEV___upvr (readonly)
		[4]: console_upvr (readonly)
		[5]: getComponentName_upvr (readonly)
	]]
	local ref_3 = arg1.ref
	local var158
	if ref_3 ~= nil then
		var158 = nil
		if arg1.tag == HostComponent_upvr then
			var158 = getPublicInstance_upvr(arg1.stateNode)
		else
			var158 = arg1.stateNode
		end
		if typeof(ref_3) == "function" then
			ref_3(var158)
			return
		end
		if __DEV___upvr and typeof(ref_3) ~= "table" then
			console_upvr.error("Unexpected ref object provided for %s. ".."Use either a ref-setter function or React.createRef().", getComponentName_upvr(arg1.type) or "instance")
			return
		end
		ref_3.current = var158
	end
end
function commitDetachRef(arg1) -- Line 1157
	local ref = arg1.ref
	if ref ~= nil then
		if typeof(ref) == "function" then
			ref(nil)
			return
		end
		ref.current = nil
	end
end
local onCommitUnmount_upvr = require(script.Parent["ReactFiberDevToolsHook.new"]).onCommitUnmount
local NoFlags_upvr = ReactHookEffectTags.NoFlags
local unmountHostComponents_upvw
local supportsPersistence_upvr = ReactFiberHostConfig.supportsPersistence
local function commitUnmount_upvw(arg1, arg2, arg3, arg4) -- Line 1171, Named "commitUnmount"
	--[[ Upvalues[22]:
		[1]: onCommitUnmount_upvr (readonly)
		[2]: FunctionComponent_upvr (readonly)
		[3]: ForwardRef_upvr (readonly)
		[4]: MemoComponent_upvr (readonly)
		[5]: SimpleMemoComponent_upvr (readonly)
		[6]: Block_upvr (readonly)
		[7]: Layout_upvr (readonly)
		[8]: NoFlags_upvr (readonly)
		[9]: enableProfilerTimer_upvr (readonly)
		[10]: enableProfilerCommitHooks_upvr (readonly)
		[11]: ProfileMode_upvr (readonly)
		[12]: startLayoutEffectTimer_upvr (readonly)
		[13]: describeError_upvr (readonly)
		[14]: captureCommitPhaseError_upvw (read and write)
		[15]: recordLayoutEffectDuration_upvr (readonly)
		[16]: ClassComponent_upvr (readonly)
		[17]: HostComponent_upvr (readonly)
		[18]: HostPortal_upvr (readonly)
		[19]: supportsMutation_upvr (readonly)
		[20]: unmountHostComponents_upvw (read and write)
		[21]: supportsPersistence_upvr (readonly)
		[22]: unimplemented_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	onCommitUnmount_upvr(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 13. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 13. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 16. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 16. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 19. Error Block 77 start (CF ANALYSIS FAILED)
	local updateQueue_2 = arg2.updateQueue
	if updateQueue_2 ~= nil then
		local lastEffect = updateQueue_2.lastEffect
		if lastEffect ~= nil then
			local next_3 = lastEffect.next
			local var167 = next_3
			repeat
				if var167.destroy ~= nil and bit32.band(var167.tag, Layout_upvr) ~= NoFlags_upvr then
					if enableProfilerTimer_upvr and enableProfilerCommitHooks_upvr and bit32.band(arg2.mode, ProfileMode_upvr) ~= 0 then
						startLayoutEffectTimer_upvr()
						local xpcall_result1_4, xpcall_result2_3 = xpcall(var167.destroy, describeError_upvr)
						if not xpcall_result1_4 then
							captureCommitPhaseError_upvw(arg2, arg3, xpcall_result2_3)
						end
						recordLayoutEffectDuration_upvr(arg2)
					else
						local xpcall_result1_2, xpcall_result2 = xpcall(var167.destroy, describeError_upvr)
						if not xpcall_result1_2 then
							captureCommitPhaseError_upvw(arg2, arg3, xpcall_result2)
						end
					end
				end
			until var167.next == next_3
		end
	end
	do
		return
	end
	-- KONSTANTERROR: [28] 19. Error Block 77 end (CF ANALYSIS FAILED)
end
local function commitNestedUnmounts_upvw(arg1, arg2, arg3, arg4) -- Line 1278, Named "commitNestedUnmounts"
	--[[ Upvalues[3]:
		[1]: commitUnmount_upvw (read and write)
		[2]: supportsMutation_upvr (readonly)
		[3]: HostPortal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = arg2
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 34. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 34. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [52.5]
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 1318, Named "detachFiberMutation"
	local alternate_3 = arg1.alternate
	if alternate_3 ~= nil then
		alternate_3.return_ = nil
		arg1.alternate = nil
	end
	arg1.return_ = nil
end
local isHostParent_upvw
local function getHostParentFiber_upvr(arg1) -- Line 1385, Named "getHostParentFiber"
	--[[ Upvalues[2]:
		[1]: isHostParent_upvw (read and write)
		[2]: Error_upvr (readonly)
	]]
	local return_ = arg1.return_
	while return_ ~= nil do
		if isHostParent_upvw(return_) then
			return return_
		end
	end
	error(Error_upvr.new("Expected to find a host parent. This error is likely caused by a bug ".."in React. Please file an issue."))
end
function isHostParent_upvw(arg1) -- Line 1403, Named "isHostParent"
	--[[ Upvalues[3]:
		[1]: HostComponent_upvr (readonly)
		[2]: HostRoot_upvr (readonly)
		[3]: HostPortal_upvr (readonly)
	]]
	local var176 = true
	if arg1.tag ~= HostComponent_upvr then
		var176 = true
		if arg1.tag ~= HostRoot_upvr then
			if arg1.tag ~= HostPortal_upvr then
				var176 = false
			else
				var176 = true
			end
		end
	end
	return var176
end
local DehydratedFragment_upvr = ReactWorkTags.DehydratedFragment
local Placement_upvr = ReactFiberFlags.Placement
local function getHostSibling_upvw(arg1) -- Line 1407, Named "getHostSibling"
	--[[ Upvalues[6]:
		[1]: isHostParent_upvw (read and write)
		[2]: HostComponent_upvr (readonly)
		[3]: HostText_upvr (readonly)
		[4]: DehydratedFragment_upvr (readonly)
		[5]: Placement_upvr (readonly)
		[6]: HostPortal_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var179 = arg1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 47. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [73.2]
	if not nil and bit32.band(var179.flags, Placement_upvr) == 0 then
		return var179.stateNode
	end
	-- KONSTANTERROR: [73] 47. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if var179.stateNode == nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if var179.stateNode == nil or var179.stateNode then
		end
		-- KONSTANTWARNING: GOTO [2] #3
	end
	-- KONSTANTERROR: [1] 2. Error Block 40 end (CF ANALYSIS FAILED)
end
local ContentReset_upvr = ReactFiberFlags.ContentReset
local insertOrAppendPlacementNodeIntoContainer_upvw
local insertOrAppendPlacementNode_upvw
local insertInContainerBefore_upvr = ReactFiberHostConfig.insertInContainerBefore
local appendChildToContainer_upvr = ReactFiberHostConfig.appendChildToContainer
function insertOrAppendPlacementNodeIntoContainer_upvw(arg1, arg2, arg3) -- Line 1512, Named "insertOrAppendPlacementNodeIntoContainer"
	--[[ Upvalues[6]:
		[1]: HostComponent_upvr (readonly)
		[2]: HostText_upvr (readonly)
		[3]: insertInContainerBefore_upvr (readonly)
		[4]: appendChildToContainer_upvr (readonly)
		[5]: HostPortal_upvr (readonly)
		[6]: insertOrAppendPlacementNodeIntoContainer_upvw (read and write)
	]]
	local tag_2 = arg1.tag
	local var190 = true
	if tag_2 ~= HostComponent_upvr then
		if tag_2 ~= HostText_upvr then
			var190 = false
		else
			var190 = true
		end
	end
	if var190 then
		local stateNode = arg1.stateNode
		if arg2 then
			insertInContainerBefore_upvr(arg3, stateNode, arg2)
		else
			appendChildToContainer_upvr(arg3, stateNode)
		end
	end
	if tag_2 == HostPortal_upvr then
	else
		local child_2 = arg1.child
		if child_2 ~= nil then
			insertOrAppendPlacementNodeIntoContainer_upvw(child_2, arg2, arg3)
			local sibling = child_2.sibling
			while sibling ~= nil do
				insertOrAppendPlacementNodeIntoContainer_upvw(sibling, arg2, arg3)
			end
		end
	end
end
local insertBefore_upvr = ReactFiberHostConfig.insertBefore
local appendChild_upvr = ReactFiberHostConfig.appendChild
function insertOrAppendPlacementNode_upvw(arg1, arg2, arg3) -- Line 1544, Named "insertOrAppendPlacementNode"
	--[[ Upvalues[6]:
		[1]: HostComponent_upvr (readonly)
		[2]: HostText_upvr (readonly)
		[3]: insertBefore_upvr (readonly)
		[4]: appendChild_upvr (readonly)
		[5]: HostPortal_upvr (readonly)
		[6]: insertOrAppendPlacementNode_upvw (read and write)
	]]
	local tag = arg1.tag
	local var197 = true
	if tag ~= HostComponent_upvr then
		if tag ~= HostText_upvr then
			var197 = false
		else
			var197 = true
		end
	end
	if var197 then
		local stateNode_5 = arg1.stateNode
		if arg2 then
			insertBefore_upvr(arg3, stateNode_5, arg2)
		else
			appendChild_upvr(arg3, stateNode_5)
		end
	end
	if tag == HostPortal_upvr then
	else
		local child_3 = arg1.child
		if child_3 ~= nil then
			insertOrAppendPlacementNode_upvw(child_3, arg2, arg3)
			local sibling_2 = child_3.sibling
			while sibling_2 ~= nil do
				insertOrAppendPlacementNode_upvw(sibling_2, arg2, arg3)
			end
		end
	end
end
local removeChildFromContainer_upvr = ReactFiberHostConfig.removeChildFromContainer
local removeChild_upvr = ReactFiberHostConfig.removeChild
function unmountHostComponents_upvw(arg1, arg2, arg3, arg4) -- Line 1572, Named "unmountHostComponents"
	--[[ Upvalues[9]:
		[1]: Error_upvr (readonly)
		[2]: HostComponent_upvr (readonly)
		[3]: HostRoot_upvr (readonly)
		[4]: HostPortal_upvr (readonly)
		[5]: HostText_upvr (readonly)
		[6]: commitNestedUnmounts_upvw (read and write)
		[7]: removeChildFromContainer_upvr (readonly)
		[8]: removeChild_upvr (readonly)
		[9]: commitUnmount_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [152] 105. Error Block 45 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [152] 105. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
local commitUpdate_upvr = ReactFiberHostConfig.commitUpdate
local commitTextUpdate_upvr = ReactFiberHostConfig.commitTextUpdate
function commitSuspenseComponent(arg1) -- Line 1997
	--[[ Upvalues[6]:
		[1]: var57_upvw (read and write)
		[2]: supportsMutation_upvr (readonly)
		[3]: hideOrUnhideAllChildren_upvr (readonly)
		[4]: enableSuspenseCallback_upvr (readonly)
		[5]: __DEV___upvr (readonly)
		[6]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 11. Error Block 4 start (CF ANALYSIS FAILED)
	var57_upvw.markCommitTimeOfFallback()
	-- KONSTANTERROR: [16] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 5 start (CF ANALYSIS FAILED)
	hideOrUnhideAllChildren_upvr(arg1.child, true)
	-- KONSTANTERROR: [22] 16. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 21. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 21. Error Block 6 end (CF ANALYSIS FAILED)
end
local commitHydratedSuspenseInstance_upvr = ReactFiberHostConfig.commitHydratedSuspenseInstance
function commitSuspenseHydrationCallbacks(arg1, arg2) -- Line 2036
	--[[ Upvalues[3]:
		[1]: supportsHydration_upvr (readonly)
		[2]: commitHydratedSuspenseInstance_upvr (readonly)
		[3]: enableSuspenseCallback_upvr (readonly)
	]]
	if not supportsHydration_upvr then
	elseif arg2.memoizedState == nil then
		local alternate_7 = arg2.alternate
		if alternate_7 ~= nil then
			local memoizedState_6 = alternate_7.memoizedState
			if memoizedState_6 ~= nil then
				local dehydrated_2 = memoizedState_6.dehydrated
				if dehydrated_2 ~= nil then
					commitHydratedSuspenseInstance_upvr(dehydrated_2)
					if enableSuspenseCallback_upvr then
						local hydrationCallbacks_2 = arg1.hydrationCallbacks
						if hydrationCallbacks_2 ~= nil then
							local onHydrated = hydrationCallbacks_2.onHydrated
							if onHydrated then
								onHydrated(dehydrated_2)
							end
						end
					end
				end
			end
		end
	end
end
local Set_upvr = LuauPolyfill.Set
local unstable_wrap_upvr = require(Parent.Scheduler).tracing.unstable_wrap
function attachSuspenseRetryListeners(arg1) -- Line 2064
	--[[ Upvalues[4]:
		[1]: Set_upvr (readonly)
		[2]: resolveRetryWakeable_upvr (readonly)
		[3]: enableSchedulerTracing_upvr (readonly)
		[4]: unstable_wrap_upvr (readonly)
	]]
	local updateQueue_5 = arg1.updateQueue
	local var230
	if updateQueue_5 ~= nil then
		var230 = nil
		arg1.updateQueue = var230
		var230 = arg1.stateNode
		if var230 == nil then
			arg1.stateNode = Set_upvr.new()
			var230 = arg1.stateNode
		end
		for i_upvr, _ in updateQueue_5 do
			local function var231_upvw() -- Line 2078
				--[[ Upvalues[3]:
					[1]: resolveRetryWakeable_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: i_upvr (readonly)
				]]
				return resolveRetryWakeable_upvr(arg1, i_upvr)
			end
			if not var230:has(i_upvr) then
				if enableSchedulerTracing_upvr and i_upvr.__reactDoNotTraceInteractions ~= true then
					var231_upvw = unstable_wrap_upvr(var231_upvw)
				end
				var230:add(i_upvr)
				i_upvr:andThen(function() -- Line 2089
					--[[ Upvalues[1]:
						[1]: var231_upvw (read and write)
					]]
					return var231_upvw()
				end, function() -- Line 2091
					--[[ Upvalues[1]:
						[1]: var231_upvw (read and write)
					]]
					return var231_upvw()
				end)
			end
		end
	end
end
function isSuspenseBoundaryBeingHidden(arg1, arg2) -- Line 2102
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		local memoizedState_5 = arg1.memoizedState
		return memoizedState_5 == nil
	end
	if arg1 ~= nil and (INLINED_4() or memoizedState_5.dehydrated ~= nil) then
		local memoizedState_3 = arg2.memoizedState
		if memoizedState_3 ~= nil then
			if memoizedState_3.dehydrated ~= nil then
			else
			end
		end
		return true
	end
	return false
end
function commitResetTextContent(arg1) -- Line 2114
	--[[ Upvalues[2]:
		[1]: supportsMutation_upvr (readonly)
		[2]: resetTextContent_upvr (readonly)
	]]
	if not supportsMutation_upvr then
	else
		resetTextContent_upvr(arg1.stateNode)
	end
end
function invokeLayoutEffectMountInDEV(arg1) -- Line 2207
	--[[ Upvalues[14]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: FunctionComponent_upvr (readonly)
		[4]: ForwardRef_upvr (readonly)
		[5]: SimpleMemoComponent_upvr (readonly)
		[6]: Block_upvr (readonly)
		[7]: invokeGuardedCallback_upvr (readonly)
		[8]: commitHookEffectListMount_upvr (readonly)
		[9]: Layout_upvr (readonly)
		[10]: HasEffect_upvr (readonly)
		[11]: hasCaughtError_upvr (readonly)
		[12]: clearCaughtError_upvr (readonly)
		[13]: captureCommitPhaseError_upvw (read and write)
		[14]: ClassComponent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 17. Error Block 20 start (CF ANALYSIS FAILED)
	invokeGuardedCallback_upvr(nil, commitHookEffectListMount_upvr, nil, bit32.bor(Layout_upvr, HasEffect_upvr), arg1)
	if hasCaughtError_upvr() then
		captureCommitPhaseError_upvw(arg1, arg1.return_, clearCaughtError_upvr())
	end
	do
		return
	end
	do
		return
	end
	-- KONSTANTERROR: [24] 17. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 40. Error Block 21 start (CF ANALYSIS FAILED)
	if arg1.tag == ClassComponent_upvr then
		local stateNode_2 = arg1.stateNode
		invokeGuardedCallback_upvr(nil, stateNode_2.componentDidMount, stateNode_2)
		if hasCaughtError_upvr() then
			captureCommitPhaseError_upvw(arg1, arg1.return_, clearCaughtError_upvr())
		end
		return
	end
	-- KONSTANTERROR: [50] 40. Error Block 21 end (CF ANALYSIS FAILED)
end
function invokePassiveEffectMountInDEV(arg1) -- Line 2239
	--[[ Upvalues[13]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: FunctionComponent_upvr (readonly)
		[4]: ForwardRef_upvr (readonly)
		[5]: SimpleMemoComponent_upvr (readonly)
		[6]: Block_upvr (readonly)
		[7]: invokeGuardedCallback_upvr (readonly)
		[8]: commitHookEffectListMount_upvr (readonly)
		[9]: Passive_upvr (readonly)
		[10]: HasEffect_upvr (readonly)
		[11]: hasCaughtError_upvr (readonly)
		[12]: clearCaughtError_upvr (readonly)
		[13]: captureCommitPhaseError_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 15 start (CF ANALYSIS FAILED)
	if arg1.tag == Block_upvr then
		-- KONSTANTERROR: [24] 17. Error Block 14 start (CF ANALYSIS FAILED)
		invokeGuardedCallback_upvr(nil, commitHookEffectListMount_upvr, nil, bit32.bor(Passive_upvr, HasEffect_upvr), arg1)
		if hasCaughtError_upvr() then
			captureCommitPhaseError_upvw(arg1, arg1.return_, clearCaughtError_upvr())
		end
		do
			return
		end
		-- KONSTANTERROR: [24] 17. Error Block 14 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [19] 14. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 39. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 39. Error Block 11 end (CF ANALYSIS FAILED)
end
function invokeLayoutEffectUnmountInDEV(arg1) -- Line 2263
	--[[ Upvalues[14]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: FunctionComponent_upvr (readonly)
		[4]: ForwardRef_upvr (readonly)
		[5]: SimpleMemoComponent_upvr (readonly)
		[6]: Block_upvr (readonly)
		[7]: invokeGuardedCallback_upvr (readonly)
		[8]: commitHookEffectListUnmount_upvr (readonly)
		[9]: Layout_upvr (readonly)
		[10]: HasEffect_upvr (readonly)
		[11]: hasCaughtError_upvr (readonly)
		[12]: clearCaughtError_upvr (readonly)
		[13]: captureCommitPhaseError_upvw (read and write)
		[14]: ClassComponent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 17. Error Block 20 start (CF ANALYSIS FAILED)
	invokeGuardedCallback_upvr(nil, commitHookEffectListUnmount_upvr, nil, bit32.bor(Layout_upvr, HasEffect_upvr), arg1, arg1.return_)
	if hasCaughtError_upvr() then
		captureCommitPhaseError_upvw(arg1, arg1.return_, clearCaughtError_upvr())
	end
	do
		return
	end
	do
		return
	end
	-- KONSTANTERROR: [24] 17. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 41. Error Block 21 start (CF ANALYSIS FAILED)
	if arg1.tag == ClassComponent_upvr then
		local stateNode_4 = arg1.stateNode
		if typeof(stateNode_4.componentWillUnmount) == "function" then
			safelyCallComponentWillUnmount(arg1, stateNode_4, arg1.return_)
		end
		return
	end
	-- KONSTANTERROR: [52] 41. Error Block 21 end (CF ANALYSIS FAILED)
end
function invokePassiveEffectUnmountInDEV(arg1) -- Line 2294
	--[[ Upvalues[13]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: FunctionComponent_upvr (readonly)
		[4]: ForwardRef_upvr (readonly)
		[5]: SimpleMemoComponent_upvr (readonly)
		[6]: Block_upvr (readonly)
		[7]: invokeGuardedCallback_upvr (readonly)
		[8]: commitHookEffectListUnmount_upvr (readonly)
		[9]: Passive_upvr (readonly)
		[10]: HasEffect_upvr (readonly)
		[11]: hasCaughtError_upvr (readonly)
		[12]: clearCaughtError_upvr (readonly)
		[13]: captureCommitPhaseError_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 15 start (CF ANALYSIS FAILED)
	if arg1.tag == Block_upvr then
		-- KONSTANTERROR: [24] 17. Error Block 14 start (CF ANALYSIS FAILED)
		invokeGuardedCallback_upvr(nil, commitHookEffectListUnmount_upvr, nil, bit32.bor(Passive_upvr, HasEffect_upvr), arg1, arg1.return_)
		if hasCaughtError_upvr() then
			captureCommitPhaseError_upvw(arg1, arg1.return_, clearCaughtError_upvr())
		end
		do
			return
		end
		-- KONSTANTERROR: [24] 17. Error Block 14 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [19] 14. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 40. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 40. Error Block 11 end (CF ANALYSIS FAILED)
end
return {
	safelyCallDestroy = function(arg1, arg2, arg3) -- Line 316, Named "safelyCallDestroy"
		--[[ Upvalues[2]:
			[1]: describeError_upvr (readonly)
			[2]: captureCommitPhaseError_upvw (read and write)
		]]
		local xpcall_result1_3, xpcall_result2_5 = xpcall(arg3, describeError_upvr)
		if not xpcall_result1_3 then
			captureCommitPhaseError_upvw(arg1, arg2, xpcall_result2_5)
		end
	end;
	commitBeforeMutationLifeCycles = function(arg1, arg2) -- Line 328, Named "commitBeforeMutationLifeCycles"
		--[[ Upvalues[19]:
			[1]: FunctionComponent_upvr (readonly)
			[2]: ForwardRef_upvr (readonly)
			[3]: SimpleMemoComponent_upvr (readonly)
			[4]: Block_upvr (readonly)
			[5]: ClassComponent_upvr (readonly)
			[6]: Snapshot_upvr (readonly)
			[7]: __DEV___upvr (readonly)
			[8]: var61_upvr (readonly)
			[9]: console_upvr (readonly)
			[10]: getComponentName_upvr (readonly)
			[11]: resolveDefaultProps_upvr (readonly)
			[12]: HostRoot_upvr (readonly)
			[13]: supportsMutation_upvr (readonly)
			[14]: clearContainer_upvr (readonly)
			[15]: HostComponent_upvr (readonly)
			[16]: HostText_upvr (readonly)
			[17]: HostPortal_upvr (readonly)
			[18]: IncompleteClassComponent_upvr (readonly)
			[19]: invariant_upvr (readonly)
		]]
		if arg2.tag == FunctionComponent_upvr or arg2.tag == ForwardRef_upvr or arg2.tag == SimpleMemoComponent_upvr or arg2.tag == Block_upvr then
		else
			if arg2.tag == ClassComponent_upvr then
				if bit32.band(arg2.flags, Snapshot_upvr) ~= 0 and arg1 ~= nil then
					local memoizedProps = arg1.memoizedProps
					local stateNode_6 = arg2.stateNode
					local var75
					if __DEV___upvr and arg2.type == arg2.elementType and not var61_upvr then
						if stateNode_6.props ~= arg2.memoizedProps then
							var75 = "Expected %s props to match memoized props before "
							var75 = getComponentName_upvr(arg2.type) or "instance"
							console_upvr.error(var75.."getSnapshotBeforeUpdate. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.props`. ".."Please file an issue.", var75)
						end
						if stateNode_6.state ~= arg2.memoizedState then
							var75 = "Expected %s state to match memoized state before "
							var75 = getComponentName_upvr(arg2.type) or "instance"
							console_upvr.error(var75.."getSnapshotBeforeUpdate. ".."This might either be because of a bug in React, or because ".."a component reassigns its own `this.state`. ".."Please file an issue.", var75)
						end
					end
					local function INLINED() -- Internal function, doesn't exist in bytecode
						var75 = memoizedProps
						return var75
					end
					if arg2.elementType ~= arg2.type or not INLINED() then
						var75 = resolveDefaultProps_upvr(arg2.type, memoizedProps)
					end
					if not __DEV___upvr then
					end
					stateNode_6.__reactInternalSnapshotBeforeUpdate = stateNode_6:getSnapshotBeforeUpdate(var75, arg1.memoizedState)
				end
				return
			end
			if arg2.tag == HostRoot_upvr then
				if supportsMutation_upvr and bit32.band(arg2.flags, Snapshot_upvr) ~= 0 then
					clearContainer_upvr(arg2.stateNode.containerInfo)
				end
				return
			end
			if arg2.tag == HostComponent_upvr or arg2.tag == HostText_upvr or arg2.tag == HostPortal_upvr or arg2.tag == IncompleteClassComponent_upvr then return end
			invariant_upvr(false, "This unit of work tag should not have side-effects. This error is ".."likely caused by a bug in React. Please file an issue.")
		end
	end;
	commitResetTextContent = commitResetTextContent;
	commitPlacement = function(arg1) -- Line 1461, Named "commitPlacement"
		--[[ Upvalues[11]:
			[1]: supportsMutation_upvr (readonly)
			[2]: getHostParentFiber_upvr (readonly)
			[3]: HostComponent_upvr (readonly)
			[4]: HostRoot_upvr (readonly)
			[5]: HostPortal_upvr (readonly)
			[6]: invariant_upvr (readonly)
			[7]: ContentReset_upvr (readonly)
			[8]: resetTextContent_upvr (readonly)
			[9]: getHostSibling_upvw (read and write)
			[10]: insertOrAppendPlacementNodeIntoContainer_upvw (read and write)
			[11]: insertOrAppendPlacementNode_upvw (read and write)
		]]
		local var183
		if not supportsMutation_upvr then
		else
			var183 = arg1
			local getHostParentFiber_result1 = getHostParentFiber_upvr(var183)
			var183 = nil
			local var185
			if getHostParentFiber_result1.tag == HostComponent_upvr then
				var183 = getHostParentFiber_result1.stateNode
				var185 = false
			elseif getHostParentFiber_result1.tag == HostRoot_upvr then
				var183 = getHostParentFiber_result1.stateNode.containerInfo
				var185 = true
			elseif getHostParentFiber_result1.tag == HostPortal_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var183 = getHostParentFiber_result1.stateNode.containerInfo
				var185 = true
			else
				invariant_upvr(false, "Invalid host parent fiber. This error is likely caused by a bug ".."in React. Please file an issue.")
			end
			if bit32.band(getHostParentFiber_result1.flags, ContentReset_upvr) ~= 0 then
				resetTextContent_upvr(var183)
				getHostParentFiber_result1.flags = bit32.band(getHostParentFiber_result1.flags, bit32.bnot(ContentReset_upvr))
			end
			local getHostSibling_result1 = getHostSibling_upvw(arg1)
			if var185 then
				insertOrAppendPlacementNodeIntoContainer_upvw(arg1, getHostSibling_result1, var183)
				return
			end
			insertOrAppendPlacementNode_upvw(arg1, getHostSibling_result1, var183)
		end
	end;
	commitDeletion = function(arg1, arg2, arg3, arg4) -- Line 1750, Named "commitDeletion"
		--[[ Upvalues[1]:
			[1]: unmountHostComponents_upvw (read and write)
		]]
		unmountHostComponents_upvw(arg1, arg2, arg3, arg4)
		local alternate_4 = arg2.alternate
		local alternate = arg2.alternate
		if alternate ~= nil then
			alternate.return_ = nil
			arg2.alternate = nil
		end
		arg2.return_ = nil
		if alternate_4 ~= nil then
			local alternate_9 = alternate_4.alternate
			if alternate_9 ~= nil then
				alternate_9.return_ = nil
				alternate_4.alternate = nil
			end
			alternate_4.return_ = nil
		end
	end;
	commitWork = function(arg1, arg2) -- Line 1782, Named "commitWork"
		--[[ Upvalues[30]:
			[1]: FunctionComponent_upvr (readonly)
			[2]: ForwardRef_upvr (readonly)
			[3]: MemoComponent_upvr (readonly)
			[4]: SimpleMemoComponent_upvr (readonly)
			[5]: Block_upvr (readonly)
			[6]: enableProfilerTimer_upvr (readonly)
			[7]: enableProfilerCommitHooks_upvr (readonly)
			[8]: ProfileMode_upvr (readonly)
			[9]: startLayoutEffectTimer_upvr (readonly)
			[10]: commitHookEffectListUnmount_upvr (readonly)
			[11]: Layout_upvr (readonly)
			[12]: HasEffect_upvr (readonly)
			[13]: describeError_upvr (readonly)
			[14]: recordLayoutEffectDuration_upvr (readonly)
			[15]: ClassComponent_upvr (readonly)
			[16]: HostComponent_upvr (readonly)
			[17]: commitUpdate_upvr (readonly)
			[18]: HostText_upvr (readonly)
			[19]: invariant_upvr (readonly)
			[20]: commitTextUpdate_upvr (readonly)
			[21]: HostRoot_upvr (readonly)
			[22]: supportsHydration_upvr (readonly)
			[23]: unimplemented_upvr (readonly)
			[24]: Profiler_upvr (readonly)
			[25]: SuspenseComponent_upvr (readonly)
			[26]: SuspenseListComponent_upvr (readonly)
			[27]: IncompleteClassComponent_upvr (readonly)
			[28]: OffscreenComponent_upvr (readonly)
			[29]: LegacyHiddenComponent_upvr (readonly)
			[30]: hideOrUnhideAllChildren_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 10. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 10. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 16. Error Block 66 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 16. Error Block 66 end (CF ANALYSIS FAILED)
	end;
	commitAttachRef = commitAttachRef;
	commitDetachRef = commitDetachRef;
	commitPassiveUnmount = function(arg1) -- Line 2121, Named "commitPassiveUnmount"
		--[[ Upvalues[12]:
			[1]: FunctionComponent_upvr (readonly)
			[2]: ForwardRef_upvr (readonly)
			[3]: SimpleMemoComponent_upvr (readonly)
			[4]: Block_upvr (readonly)
			[5]: enableProfilerTimer_upvr (readonly)
			[6]: enableProfilerCommitHooks_upvr (readonly)
			[7]: ProfileMode_upvr (readonly)
			[8]: startPassiveEffectTimer_upvr (readonly)
			[9]: commitHookEffectListUnmount_upvr (readonly)
			[10]: Passive_upvr (readonly)
			[11]: HasEffect_upvr (readonly)
			[12]: recordPassiveEffectDuration_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 16 start (CF ANALYSIS FAILED)
		if enableProfilerTimer_upvr then
			if enableProfilerCommitHooks_upvr then
				if bit32.band(arg1.mode, ProfileMode_upvr) ~= 0 then
					startPassiveEffectTimer_upvr()
					commitHookEffectListUnmount_upvr(bit32.bor(Passive_upvr, HasEffect_upvr), arg1, arg1.return_)
					recordPassiveEffectDuration_upvr(arg1)
					return
				end
			end
		end
		commitHookEffectListUnmount_upvr(bit32.bor(Passive_upvr, HasEffect_upvr), arg1, arg1.return_)
		-- KONSTANTERROR: [20] 13. Error Block 16 end (CF ANALYSIS FAILED)
	end;
	commitPassiveUnmountInsideDeletedTree = function(arg1, arg2) -- Line 2150, Named "commitPassiveUnmountInsideDeletedTree"
		--[[ Upvalues[11]:
			[1]: FunctionComponent_upvr (readonly)
			[2]: ForwardRef_upvr (readonly)
			[3]: SimpleMemoComponent_upvr (readonly)
			[4]: Block_upvr (readonly)
			[5]: enableProfilerTimer_upvr (readonly)
			[6]: enableProfilerCommitHooks_upvr (readonly)
			[7]: ProfileMode_upvr (readonly)
			[8]: startPassiveEffectTimer_upvr (readonly)
			[9]: commitHookEffectListUnmount_upvr (readonly)
			[10]: Passive_upvr (readonly)
			[11]: recordPassiveEffectDuration_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 16 start (CF ANALYSIS FAILED)
		if enableProfilerTimer_upvr then
			if enableProfilerCommitHooks_upvr then
				if bit32.band(arg1.mode, ProfileMode_upvr) ~= 0 then
					startPassiveEffectTimer_upvr()
					commitHookEffectListUnmount_upvr(Passive_upvr, arg1, arg2)
					recordPassiveEffectDuration_upvr(arg1)
					return
				end
			end
		end
		commitHookEffectListUnmount_upvr(Passive_upvr, arg1, arg2)
		-- KONSTANTERROR: [20] 13. Error Block 16 end (CF ANALYSIS FAILED)
	end;
	commitPassiveMount = function(arg1, arg2) -- Line 2174, Named "commitPassiveMount"
		--[[ Upvalues[14]:
			[1]: FunctionComponent_upvr (readonly)
			[2]: ForwardRef_upvr (readonly)
			[3]: SimpleMemoComponent_upvr (readonly)
			[4]: Block_upvr (readonly)
			[5]: enableProfilerTimer_upvr (readonly)
			[6]: enableProfilerCommitHooks_upvr (readonly)
			[7]: ProfileMode_upvr (readonly)
			[8]: startPassiveEffectTimer_upvr (readonly)
			[9]: commitHookEffectListMount_upvr (readonly)
			[10]: describeError_upvr (readonly)
			[11]: Passive_upvr (readonly)
			[12]: HasEffect_upvr (readonly)
			[13]: recordPassiveEffectDuration_upvr (readonly)
			[14]: Profiler_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 7. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 10. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 10. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 16 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 16 end (CF ANALYSIS FAILED)
	end;
	invokeLayoutEffectMountInDEV = invokeLayoutEffectMountInDEV;
	invokeLayoutEffectUnmountInDEV = invokeLayoutEffectUnmountInDEV;
	invokePassiveEffectMountInDEV = invokePassiveEffectMountInDEV;
	invokePassiveEffectUnmountInDEV = invokePassiveEffectUnmountInDEV;
	isSuspenseBoundaryBeingHidden = isSuspenseBoundaryBeingHidden;
	recursivelyCommitLayoutEffects = recursivelyCommitLayoutEffects_upvr;
}