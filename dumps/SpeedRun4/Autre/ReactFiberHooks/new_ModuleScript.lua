-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:05
-- Luau version 6, Types version 3
-- Time taken: 0.056752 seconds

local function _(arg1) -- Line 12, Named "unimplemented"
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
	print("UNIMPLEMENTED ERROR: "..arg1)
	error("FIXME (roblox): "..arg1.." is unimplemented")
end
local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Error_upvr = LuauPolyfill.Error
local console_upvr = require(Parent.Shared).console
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local ReactHookEffectTags = require(script.Parent.ReactHookEffectTags)
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local enableNewReconciler = ReactFeatureFlags.enableNewReconciler
local enableDoubleInvokingEffects_upvr = ReactFeatureFlags.enableDoubleInvokingEffects
local NoLanes_upvr = ReactFiberLane.NoLanes
local readContext_upvr = require(script.Parent["ReactFiberNewContext.new"]).readContext
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local Update_upvr = ReactFiberFlags.Update
local Passive_upvr_2 = ReactFiberFlags.Passive
local MountLayoutDev_upvr = ReactFiberFlags.MountLayoutDev
local MountPassiveDev_upvr = ReactFiberFlags.MountPassiveDev
local HasEffect_upvr = ReactHookEffectTags.HasEffect
local Layout_upvr = ReactHookEffectTags.Layout
local Passive_upvr = ReactHookEffectTags.Passive
local new_2 = require(script.Parent["ReactFiberWorkLoop.new"])
local requestUpdateLane_upvr = new_2.requestUpdateLane
local warnIfNotCurrentlyActingEffectsInDEV_upvr = new_2.warnIfNotCurrentlyActingEffectsInDEV
local getComponentName_upvr = require(Parent.Shared).getComponentName
local function _(arg1, arg2) -- Line 115, Named "is"
	if arg1 ~= arg2 or arg1 == 0 and 1 / arg1 ~= 1 / arg2 or arg1 ~= arg1 then
		if arg2 == arg2 then
		else
		end
	end
	return true
end
local markWorkInProgressReceivedUpdate_upvr = require(script.Parent["ReactFiberBeginWork.new"]).markWorkInProgressReceivedUpdate
local new = require(script.Parent["ReactMutableSource.new"])
local ReactCurrentDispatcher_upvr = require(Parent.Shared).ReactSharedInternals.ReactCurrentDispatcher
local var29_upvw
if __DEV___upvr then
	var29_upvw = {}
end
local module_6_upvr = {}
local var31_upvw = NoLanes_upvr
local var32_upvw
local var33_upvw
local var34_upvw
local var35_upvw = false
local var36_upvw = false
local var37_upvw
local var38_upvw
local var39_upvw = 0
local var40_upvw
local var41_upvw
local var42_upvw
local var43_upvw
local var44_upvw
local var45_upvw
local var46_upvw
local function _(arg1) -- Line 260, Named "getHighestIndex"
	local var51
	for i, _ in arg1 do
		if var51 < i then
			var51 = i
		end
	end
	return var51
end
local function _(arg1) -- Line 270, Named "isArrayOrSparseArray"
	if type(arg1) ~= "table" then
		return false
	end
	for i_2, _ in arg1 do
		if type(i_2) ~= "number" then
			return false
		end
	end
	return true
end
local function _() -- Line 282, Named "mountHookTypesDev"
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: var37_upvw (read and write)
		[3]: var38_upvw (read and write)
	]]
	if __DEV___upvr then
		local var54 = var37_upvw
		if var38_upvw == nil then
			var38_upvw = {var54}
			return
		end
		table.insert(var38_upvw, var54)
	end
end
function updateHookTypesDev() -- Line 295
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: var37_upvw (read and write)
		[3]: var38_upvw (read and write)
		[4]: var39_upvw (read and write)
	]]
	if __DEV___upvr then
		local var57 = var37_upvw
		if var38_upvw ~= nil then
			var39_upvw += 1
			if var38_upvw[var39_upvw] ~= var57 then
				warnOnHookMismatchInDev(var57)
			end
		end
	end
end
local function _(arg1) -- Line 309, Named "checkDepsAreArrayDev"
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: var37_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	if not true then
		console_upvr.error("%s received a final argument that is not an array (instead, received `%s`). When ".."specified, the final argument must be an array.", var37_upvw, type(arg1))
	end
	-- KONSTANTERROR: [43] 36. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 36. Error Block 13 end (CF ANALYSIS FAILED)
end
function warnOnHookMismatchInDev(arg1) -- Line 324
	--[[ Upvalues[7]:
		[1]: __DEV___upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: var32_upvw (read and write)
		[4]: var29_upvw (read and write)
		[5]: var38_upvw (read and write)
		[6]: var39_upvw (read and write)
		[7]: console_upvr (readonly)
	]]
	if __DEV___upvr then
		local var67 = getComponentName_upvr(var32_upvw.type) or "Component"
		if not var29_upvw[var67] then
			var29_upvw[var67] = true
			local var68
			if var68 ~= nil then
				var68 = ""
				for i_3 = 1, var39_upvw do
					local var69 = var38_upvw[i_3]
					local var70
					local var71
					if i_3 == var71 then
						var70 = arg1
					else
						var70 = var69
					end
					var71 = tostring(i_3)..". "..(var69 or "undefined")
					while string.len(var71) < 30 do
						var71 = var71..' '
					end
					var71 = var71..var70..'\n'
					var68 = var68..var71
				end
				console_upvr.error("React has detected a change in the order of Hooks called by %s. ".."This will lead to bugs and errors if not fixed. ".."For more information, read the Rules of Hooks: https://reactjs.org/link/rules-of-hooks\n\n".."   Previous render            Next render\n".."   ------------------------------------------------------\n".."%s".."   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n", var67, var68)
			end
		end
	end
end
local function throwInvalidHookError() -- Line 376
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	error(Error_upvr.new("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."))
end
local function areHookInputsEqual_upvr(arg1, arg2) -- Line 391, Named "areHookInputsEqual"
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: var37_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var92
	if not __DEV___upvr then
	end
	if arg2 == nil then
		if __DEV___upvr then
			var92 = console_upvr
			var92 = "%s received a final argument during this render, but not during ".."the previous render. Even though the final argument is optional, ".."its type cannot change between renders."
			var92.error(var92, var37_upvw)
		end
		return false
	end
	var92 = 0
	for i_4, _ in arg1 do
		if var92 < i_4 then
			var92 = i_4
		end
	end
	local var93 = var92
	for i_5, v_4 in arg2 do
		if 0 < i_5 then
		end
	end
	var92 = i_5
	if var93 ~= var92 then
		return false
	end
	for i_6 = 1, math.min(var92, var93) do
		v_4 = arg1[i_6]
		local var94 = arg2[i_6]
		local function INLINED() -- Internal function, doesn't exist in bytecode
			i_5 = true
			return v_4 == 0
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			i_5 = true
			return 1 / v_4 ~= 1 / var94
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			i_5 = false
			return v_4 ~= v_4
		end
		if v_4 ~= var94 or INLINED() and INLINED_2() or INLINED_3() then
			if var94 == var94 then
				i_5 = false
			else
				i_5 = true
			end
		end
		if not i_5 then
			i_5 = false
			return i_5
		end
	end
	return true
end
local removeLanes_upvr = ReactFiberLane.removeLanes
function module_6_upvr.bailoutHooks(arg1, arg2, arg3) -- Line 455
	--[[ Upvalues[7]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: MountPassiveDev_upvr (readonly)
		[4]: Passive_upvr_2 (readonly)
		[5]: MountLayoutDev_upvr (readonly)
		[6]: Update_upvr (readonly)
		[7]: removeLanes_upvr (readonly)
	]]
	arg2.updateQueue = arg1.updateQueue
	if __DEV___upvr and enableDoubleInvokingEffects_upvr then
		arg2.flags = bit32.band(arg2.flags, bit32.bnot(bit32.bor(MountPassiveDev_upvr, Passive_upvr_2, MountLayoutDev_upvr, Update_upvr)))
	else
		arg2.flags = bit32.band(arg2.flags, bit32.bnot(bit32.bor(Passive_upvr_2, Update_upvr)))
	end
	arg1.lanes = removeLanes_upvr(arg1.lanes, arg3)
end
local var98_upvw = false
function module_6_upvr.resetHooksAfterThrow() -- Line 480
	--[[ Upvalues[14]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: var35_upvw (read and write)
		[4]: var32_upvw (read and write)
		[5]: var31_upvw (read and write)
		[6]: NoLanes_upvr (readonly)
		[7]: var33_upvw (read and write)
		[8]: var34_upvw (read and write)
		[9]: __DEV___upvr (readonly)
		[10]: var38_upvw (read and write)
		[11]: var39_upvw (read and write)
		[12]: var37_upvw (read and write)
		[13]: var98_upvw (read and write)
		[14]: var36_upvw (read and write)
	]]
	ReactCurrentDispatcher_upvr.current = module_6_upvr.ContextOnlyDispatcher
	if var35_upvw then
		local memoizedState_6 = var32_upvw.memoizedState
		while memoizedState_6 ~= nil do
			local queue = memoizedState_6.queue
			if queue ~= nil then
				queue.pending = nil
			end
		end
		var35_upvw = false
	end
	var31_upvw = NoLanes_upvr
	var32_upvw = nil
	var33_upvw = nil
	var34_upvw = nil
	if __DEV___upvr then
		var38_upvw = nil
		var39_upvw = 0
		var37_upvw = nil
		var98_upvw = false
	end
	var36_upvw = false
end
local function _() -- Line 525, Named "mountWorkInProgressHook"
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
	]]
	local tbl_6 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_6
		var34_upvw = tbl_6
	else
		var34_upvw.next = tbl_6
		var34_upvw = tbl_6
	end
	return var34_upvw
end
local function updateWorkInProgressHook_upvr() -- Line 548, Named "updateWorkInProgressHook"
	--[[ Upvalues[4]:
		[1]: var33_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var34_upvw (read and write)
		[4]: Error_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local var102
	local var103
	if var103 == nil then
		var103 = var32_upvw.alternate
		if var103 ~= nil then
			var102 = var103.memoizedState
		else
			var102 = nil
		end
	else
		var103 = var33_upvw
		var102 = var103.next
	end
	var103 = nil
	if var34_upvw == nil then
		var103 = var32_upvw.memoizedState
	else
		var103 = var34_upvw.next
	end
	if var103 ~= nil then
		var34_upvw = var103
		var33_upvw = var102
		-- KONSTANTWARNING: GOTO [83] #59
	end
	if var102 == nil then
		error(Error_upvr.new("Rendered more hooks than during the previous render."))
	end
	var33_upvw = var102
	local tbl_18 = {
		memoizedState = var33_upvw.memoizedState;
		baseState = var33_upvw.baseState;
		baseQueue = var33_upvw.baseQueue;
		queue = var33_upvw.queue;
		next = nil;
	}
	if var34_upvw == nil then
		var34_upvw = tbl_18
		var32_upvw.memoizedState = tbl_18
	else
		var34_upvw.next = tbl_18
		var34_upvw = tbl_18
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 59. Error Block 20 start (CF ANALYSIS FAILED)
	do
		return var34_upvw
	end
	-- KONSTANTERROR: [83] 59. Error Block 20 end (CF ANALYSIS FAILED)
end
function basicStateReducer(arg1, arg2) -- Line 623
	if type(arg2) == "function" then
		return arg2(arg1)
	end
	return arg2
end
function mountReducer(arg1, arg2, arg3) -- Line 632
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
	]]
	local tbl_22 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_22
		var34_upvw = tbl_22
	else
		var34_upvw.next = tbl_22
		var34_upvw = tbl_22
	end
	local var106 = var34_upvw
	tbl_22 = nil
	local var107 = tbl_22
	if arg3 ~= nil then
		var107 = arg3(arg2)
	else
		var107 = arg2
	end
	var106.baseState = var107
	var106.memoizedState = var106.baseState
	local tbl_25_upvr = {
		pending = nil;
		dispatch = nil;
	}
	tbl_25_upvr.lastRenderedReducer = arg1
	tbl_25_upvr.lastRenderedState = var107
	var106.queue = tbl_25_upvr
	local function var109(arg1_2, ...) -- Line 659
		--[[ Upvalues[2]:
			[1]: var32_upvw (readonly)
			[2]: tbl_25_upvr (readonly)
		]]
		dispatchAction(var32_upvw, tbl_25_upvr, arg1_2, ...)
	end
	tbl_25_upvr.dispatch = var109
	return var106.memoizedState, var109
end
local mergeLanes_upvr = ReactFiberLane.mergeLanes
local markSkippedUpdateLanes_upvr = new_2.markSkippedUpdateLanes
local NoLane_upvr = ReactFiberLane.NoLane
function updateReducer(arg1, arg2, arg3) -- Line 669
	--[[ Upvalues[8]:
		[1]: updateWorkInProgressHook_upvr (readonly)
		[2]: var33_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var32_upvw (read and write)
		[5]: mergeLanes_upvr (readonly)
		[6]: markSkippedUpdateLanes_upvr (readonly)
		[7]: NoLane_upvr (readonly)
		[8]: markWorkInProgressReceivedUpdate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local updateWorkInProgressHook_upvr_result1_2 = updateWorkInProgressHook_upvr()
	local queue_2 = updateWorkInProgressHook_upvr_result1_2.queue
	local var115
	if queue_2 == nil then
		var115 = false
	else
		var115 = true
	end
	assert(var115, "Should have a queue. This is likely a bug in React. Please file an issue.")
	queue_2.lastRenderedReducer = arg1
	local var116 = var33_upvw
	var115 = var116.baseQueue
	local pending_2 = queue_2.pending
	if pending_2 ~= nil then
		if var115 ~= nil then
			var115.next = pending_2.next
			pending_2.next = var115.next
		end
		var115 = pending_2
		var116.baseQueue = var115
		queue_2.pending = nil
		local var118
	end
	if var115 ~= nil then
		local next_3 = var115.next
		var118 = nil
		local var120 = next_3
		repeat
			local lane = var120.lane
			if bit32.band(var31_upvw, lane) ~= lane then
				local tbl_36 = {
					lane = lane;
					action = var120.action;
					eagerReducer = var120.eagerReducer;
					eagerState = var120.eagerState;
					next = nil;
				}
				if var118 == nil then
					var118 = tbl_36
				else
					var118.next = tbl_36
					var118 = var118.next
				end
				var32_upvw.lanes = mergeLanes_upvr(var32_upvw.lanes, lane)
				markSkippedUpdateLanes_upvr(lane)
			else
				if var118 ~= nil then
					var118.next = {
						lane = NoLane_upvr;
						action = var120.action;
						eagerReducer = var120.eagerReducer;
						eagerState = var120.eagerState;
						next = nil;
					}
					var118 = var118.next
				end
				if var120.eagerReducer == arg1 then
					local eagerState = var120.eagerState
				else
				end
			end
			local next = var120.next
		until next == nil and next == next_3
		if var118 == nil then
		else
			var118.next = var118
		end
		local arg1_result1_2 = arg1(eagerState, var120.action)
		local memoizedState_2 = updateWorkInProgressHook_upvr_result1_2.memoizedState
		if arg1_result1_2 ~= memoizedState_2 or arg1_result1_2 == 0 and 1 / arg1_result1_2 ~= 1 / memoizedState_2 or arg1_result1_2 ~= arg1_result1_2 then
			if memoizedState_2 == memoizedState_2 then
			else
			end
		end
		if not true then
			markWorkInProgressReceivedUpdate_upvr()
		end
		updateWorkInProgressHook_upvr_result1_2.memoizedState = arg1(eagerState, var120.action)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		updateWorkInProgressHook_upvr_result1_2.baseState = arg1(eagerState, var120.action)
		updateWorkInProgressHook_upvr_result1_2.baseQueue = var118
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		queue_2.lastRenderedState = arg1(eagerState, var120.action)
	end
	return updateWorkInProgressHook_upvr_result1_2.memoizedState, queue_2.dispatch
end
function rerenderReducer(arg1, arg2, arg3) -- Line 810
	--[[ Upvalues[2]:
		[1]: updateWorkInProgressHook_upvr (readonly)
		[2]: markWorkInProgressReceivedUpdate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local updateWorkInProgressHook_upvr_result1_3 = updateWorkInProgressHook_upvr()
	local queue_3 = updateWorkInProgressHook_upvr_result1_3.queue
	local var130
	if queue_3 == nil then
		var130 = false
	else
		var130 = true
	end
	assert(var130, "Should have a queue. This is likely a bug in React. Please file an issue.")
	queue_3.lastRenderedReducer = arg1
	var130 = queue_3.pending
	if var130 ~= nil then
		queue_3.pending = nil
		local next_2 = var130.next
		local var132 = next_2
		repeat
			local arg1_result1 = arg1(updateWorkInProgressHook_upvr_result1_3.memoizedState, var132.action)
		until var132.next == next_2
		local var134 = arg1_result1
		local memoizedState_7 = updateWorkInProgressHook_upvr_result1_3.memoizedState
		if var134 ~= memoizedState_7 or var134 == 0 and 1 / var134 ~= 1 / memoizedState_7 or var134 ~= var134 then
			if memoizedState_7 == memoizedState_7 then
			else
			end
		end
		if not true then
			markWorkInProgressReceivedUpdate_upvr()
		end
		updateWorkInProgressHook_upvr_result1_3.memoizedState = arg1_result1
		if updateWorkInProgressHook_upvr_result1_3.baseQueue == nil then
			updateWorkInProgressHook_upvr_result1_3.baseState = arg1_result1
		end
		queue_3.lastRenderedState = arg1_result1
	end
	return arg1_result1, queue_3.dispatch
end
local warnAboutMultipleRenderersDEV_upvr = new.warnAboutMultipleRenderersDEV
local getWorkInProgressVersion_upvr = new.getWorkInProgressVersion
local isSubsetOfLanes_upvr = ReactFiberLane.isSubsetOfLanes
local setWorkInProgressVersion_upvr = new.setWorkInProgressVersion
local markSourceAsDirty_upvr = new.markSourceAsDirty
function readFromUnsubcribedMutableSource(arg1, arg2, arg3) -- Line 875
	--[[ Upvalues[9]:
		[1]: __DEV___upvr (readonly)
		[2]: warnAboutMultipleRenderersDEV_upvr (readonly)
		[3]: getWorkInProgressVersion_upvr (readonly)
		[4]: isSubsetOfLanes_upvr (readonly)
		[5]: var31_upvw (read and write)
		[6]: setWorkInProgressVersion_upvr (readonly)
		[7]: console_upvr (readonly)
		[8]: markSourceAsDirty_upvr (readonly)
		[9]: Error_upvr (readonly)
	]]
	if __DEV___upvr then
		warnAboutMultipleRenderersDEV_upvr(arg2)
	end
	local var141 = false
	local getWorkInProgressVersion_upvr_result1 = getWorkInProgressVersion_upvr(arg2)
	if getWorkInProgressVersion_upvr_result1 ~= nil then
		if getWorkInProgressVersion_upvr_result1 ~= arg2._getVersion(arg2._source) then
			var141 = false
		else
			var141 = true
		end
	else
		var141 = isSubsetOfLanes_upvr(var31_upvw, arg1.mutableReadLanes)
		if var141 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			setWorkInProgressVersion_upvr(arg2, arg2._getVersion(arg2._source))
		end
	end
	if var141 then
		if __DEV___upvr and type(arg3(arg2._source)) == "function" then
			console_upvr.error("Mutable source should not return a function as the snapshot value. ".."Functions may close over mutable values and cause tearing.")
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return arg3(arg2._source)
	end
	markSourceAsDirty_upvr(arg2)
	error(Error_upvr.new("Cannot read from mutable source during the current render without tearing. This is a bug in React. Please file an issue."))
end
local getWorkInProgressRoot_upvr = new_2.getWorkInProgressRoot
local invariant_upvr = require(Parent.Shared).invariant
local markRootMutableRead_upvr = ReactFiberLane.markRootMutableRead
local markRootEntangled_upvr = ReactFiberLane.markRootEntangled
local function useMutableSource(arg1, arg2, arg3, arg4) -- Line 958
	--[[ Upvalues[10]:
		[1]: getWorkInProgressRoot_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: ReactCurrentDispatcher_upvr (readonly)
		[4]: var34_upvw (read and write)
		[5]: var32_upvw (read and write)
		[6]: __DEV___upvr (readonly)
		[7]: console_upvr (readonly)
		[8]: requestUpdateLane_upvr (readonly)
		[9]: markRootMutableRead_upvr (readonly)
		[10]: markRootEntangled_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local getWorkInProgressRoot_upvr_result1_upvr = getWorkInProgressRoot_upvr()
	local var148_upvr
	if getWorkInProgressRoot_upvr_result1_upvr == nil then
		var148_upvr = false
	else
		var148_upvr = true
	end
	invariant_upvr(var148_upvr, "Expected a work-in-progress root. This is a bug in React. Please file an issue.")
	local _getVersion_upvr = arg2._getVersion
	var148_upvr = _getVersion_upvr(arg2._source)
	local current = ReactCurrentDispatcher_upvr.current
	if current == nil then
	else
	end
	assert(true, "dispatcher was nil, this is a bug in React")
	local any_useState_result1_upvw, any_useState_result2_upvw = current.useState(function() -- Line 983
		--[[ Upvalues[3]:
			[1]: getWorkInProgressRoot_upvr_result1_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		return readFromUnsubcribedMutableSource(getWorkInProgressRoot_upvr_result1_upvr, arg2, arg3)
	end)
	local memoizedState_5 = arg1.memoizedState
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 33. Error Block 10 start (CF ANALYSIS FAILED)
	error(tostring(debug.traceback()))
	-- KONSTANTERROR: [43] 33. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 40. Error Block 11 start (CF ANALYSIS FAILED)
	local refs_upvr = memoizedState_5.refs
	local var156_upvr = var32_upvw
	local tbl_39 = {
		refs = refs_upvr;
	}
	tbl_39.source = arg2
	tbl_39.subscribe = arg4
	arg1.memoizedState = tbl_39
	local tbl_12 = {}
	tbl_12[1] = arg3
	tbl_12[2] = arg2
	tbl_12[3] = arg4
	current.useEffect(function() -- Line 1012
		--[[ Upvalues[14]:
			[1]: refs_upvr (readonly)
			[2]: arg3 (readonly)
			[3]: any_useState_result2_upvw (read and write)
			[4]: _getVersion_upvr (readonly)
			[5]: arg2 (readonly)
			[6]: var148_upvr (readonly)
			[7]: __DEV___upvr (copied, readonly)
			[8]: console_upvr (copied, readonly)
			[9]: any_useState_result1_upvw (read and write)
			[10]: requestUpdateLane_upvr (copied, readonly)
			[11]: var156_upvr (readonly)
			[12]: markRootMutableRead_upvr (copied, readonly)
			[13]: getWorkInProgressRoot_upvr_result1_upvr (readonly)
			[14]: markRootEntangled_upvr (copied, readonly)
		]]
		refs_upvr.getSnapshot = arg3
		refs_upvr.setSnapshot = any_useState_result2_upvw
		local _source_2 = arg2._source
		local _getVersion_upvr_result1 = _getVersion_upvr(_source_2)
		local var167 = var148_upvr
		local function INLINED_10() -- Internal function, doesn't exist in bytecode
			_source_2 = true
			return var167 == 0
		end
		local function INLINED_11() -- Internal function, doesn't exist in bytecode
			_source_2 = true
			return 1 / var167 ~= 1 / _getVersion_upvr_result1
		end
		local function INLINED_12() -- Internal function, doesn't exist in bytecode
			_source_2 = false
			return var167 ~= var167
		end
		if var167 ~= _getVersion_upvr_result1 or INLINED_10() and INLINED_11() or INLINED_12() then
			if _getVersion_upvr_result1 == _getVersion_upvr_result1 then
				_source_2 = false
			else
				_source_2 = true
				local var168
			end
		end
		if not _source_2 then
			var168 = arg2._source
			local arg3_result1_2 = arg3(var168)
			var168 = __DEV___upvr
			if var168 then
				var168 = type(arg3_result1_2)
				if var168 == "function" then
					var168 = console_upvr.error
					var168("Mutable source should not return a function as the snapshot value. ".."Functions may close over mutable values and cause tearing.")
				end
			end
			local var170 = any_useState_result1_upvw
			local function INLINED_13() -- Internal function, doesn't exist in bytecode
				var168 = true
				return var170 == 0
			end
			local function INLINED_14() -- Internal function, doesn't exist in bytecode
				var168 = true
				return 1 / var170 ~= 1 / arg3_result1_2
			end
			local function INLINED_15() -- Internal function, doesn't exist in bytecode
				var168 = false
				return var170 ~= var170
			end
			if var170 ~= arg3_result1_2 or INLINED_13() and INLINED_14() or INLINED_15() then
				if arg3_result1_2 == arg3_result1_2 then
					var168 = false
				else
					var168 = true
				end
			end
			if not var168 then
				var168 = any_useState_result2_upvw
				var168(arg3_result1_2)
				var168 = requestUpdateLane_upvr(var156_upvr)
				markRootMutableRead_upvr(getWorkInProgressRoot_upvr_result1_upvr, var168)
			end
			var168 = markRootEntangled_upvr
			var168(getWorkInProgressRoot_upvr_result1_upvr, getWorkInProgressRoot_upvr_result1_upvr.mutableReadLanes)
		end
	end, tbl_12)
	local tbl_10 = {}
	tbl_10[1] = arg2
	tbl_10[2] = arg4
	current.useEffect(function() -- Line 1050
		--[[ Upvalues[9]:
			[1]: refs_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: requestUpdateLane_upvr (copied, readonly)
			[4]: var156_upvr (readonly)
			[5]: markRootMutableRead_upvr (copied, readonly)
			[6]: getWorkInProgressRoot_upvr_result1_upvr (readonly)
			[7]: arg4 (readonly)
			[8]: __DEV___upvr (copied, readonly)
			[9]: console_upvr (copied, readonly)
		]]
		local function var173() -- Line 1051
			--[[ Upvalues[6]:
				[1]: refs_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: requestUpdateLane_upvr (copied, readonly)
				[4]: var156_upvr (copied, readonly)
				[5]: markRootMutableRead_upvr (copied, readonly)
				[6]: getWorkInProgressRoot_upvr_result1_upvr (copied, readonly)
			]]
			local setSnapshot_upvr = refs_upvr.setSnapshot
			local getSnapshot_upvr = refs_upvr.getSnapshot
			local pcall_result1_5, pcall_result2_16_upvr = pcall(function() -- Line 1056
				--[[ Upvalues[7]:
					[1]: setSnapshot_upvr (readonly)
					[2]: getSnapshot_upvr (readonly)
					[3]: arg2 (copied, readonly)
					[4]: requestUpdateLane_upvr (copied, readonly)
					[5]: var156_upvr (copied, readonly)
					[6]: markRootMutableRead_upvr (copied, readonly)
					[7]: getWorkInProgressRoot_upvr_result1_upvr (copied, readonly)
				]]
				setSnapshot_upvr(getSnapshot_upvr(arg2._source))
				markRootMutableRead_upvr(getWorkInProgressRoot_upvr_result1_upvr, requestUpdateLane_upvr(var156_upvr))
			end)
			if not pcall_result1_5 then
				setSnapshot_upvr(function() -- Line 1070
					--[[ Upvalues[1]:
						[1]: pcall_result2_16_upvr (readonly)
					]]
					error(pcall_result2_16_upvr)
				end)
			end
		end
		if __DEV___upvr and type(arg4(arg2._source, var173)) ~= "function" then
			console_upvr.error("Mutable source subscribe function must return an unsubscribe function.")
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return arg4(arg2._source, var173)
	end, tbl_10)
	-- KONSTANTERROR: [53] 40. Error Block 11 end (CF ANALYSIS FAILED)
end
useMutableSource = useMutableSource -- Setting global
function mountMutableSource(arg1, arg2, arg3) -- Line 1133
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
	]]
	local tbl_9 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_9
		var34_upvw = tbl_9
	else
		var34_upvw.next = tbl_9
		var34_upvw = tbl_9
	end
	local var182 = var34_upvw
	local tbl_38 = {}
	local tbl_30 = {}
	tbl_30.getSnapshot = arg2
	tbl_30.setSnapshot = nil
	tbl_38.refs = tbl_30
	tbl_38.source = arg1
	tbl_38.subscribe = arg3
	var182.memoizedState = tbl_38
	return useMutableSource(var182, arg1, arg2, arg3)
end
function updateMutableSource(arg1, arg2, arg3) -- Line 1156
	--[[ Upvalues[1]:
		[1]: updateWorkInProgressHook_upvr (readonly)
	]]
	return useMutableSource(updateWorkInProgressHook_upvr(), arg1, arg2, arg3)
end
function mountState(arg1) -- Line 1171
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
	]]
	local tbl_26 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	local var186
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_26
		var34_upvw = tbl_26
	else
		var34_upvw.next = tbl_26
		var34_upvw = tbl_26
	end
	local var187 = var34_upvw
	if type(var186) == "function" then
		var186 = var186()
	end
	var187.baseState = var186
	var187.memoizedState = var187.baseState
	local tbl_2_upvr = {
		pending = nil;
		dispatch = nil;
		lastRenderedReducer = nil;
		lastRenderedState = var186;
		lastRenderedReducer = basicStateReducer;
	}
	var187.queue = tbl_2_upvr
	local function var189(arg1_3, ...) -- Line 1193
		--[[ Upvalues[2]:
			[1]: var32_upvw (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		dispatchAction(var32_upvw, tbl_2_upvr, arg1_3, ...)
	end
	tbl_2_upvr.dispatch = var189
	return var187.memoizedState, var189
end
function updateState(arg1) -- Line 1202
	return updateReducer(basicStateReducer, arg1)
end
function rerenderState(arg1) -- Line 1206
	return rerenderReducer(basicStateReducer, arg1)
end
local function pushEffect_upvr(arg1, arg2, arg3, arg4) -- Line 1210, Named "pushEffect"
	--[[ Upvalues[1]:
		[1]: var32_upvw (read and write)
	]]
	local module_2 = {}
	module_2.tag = arg1
	module_2.create = arg2
	module_2.destroy = arg3
	module_2.deps = arg4
	module_2.next = nil
	if var32_upvw.updateQueue == nil then
		local var192 = {
			lastEffect = nil;
		}
		var32_upvw.updateQueue = var192
		module_2.next = module_2
		var192.lastEffect = module_2
		return module_2
	end
	local lastEffect = var192.lastEffect
	if lastEffect == nil then
		var192.lastEffect = module_2
		module_2.next = module_2
		return module_2
	end
	lastEffect.next = module_2
	module_2.next = lastEffect.next
	var192.lastEffect = module_2
	return module_2
end
local createBinding_upvr = require(Parent.React).createBinding
function mountBinding(arg1) -- Line 1246
	--[[ Upvalues[3]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: createBinding_upvr (readonly)
	]]
	local tbl_27 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_27
		var34_upvw = tbl_27
	else
		var34_upvw.next = tbl_27
		var34_upvw = tbl_27
	end
	local var194_result1, var194_result2 = createBinding_upvr(arg1)
	var34_upvw.memoizedState = {var194_result1, var194_result2}
	return var194_result1, var194_result2
end
function updateBinding(arg1) -- Line 1255
	--[[ Upvalues[1]:
		[1]: updateWorkInProgressHook_upvr (readonly)
	]]
	return unpack(updateWorkInProgressHook_upvr().memoizedState)
end
local createRef_upvr = require(Parent.React).createRef
function mountRef(arg1) -- Line 1260
	--[[ Upvalues[3]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: createRef_upvr (readonly)
	]]
	local tbl_23 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_23
		var34_upvw = tbl_23
	else
		var34_upvw.next = tbl_23
		var34_upvw = tbl_23
	end
	local var199_result1 = createRef_upvr()
	var199_result1.current = arg1
	var34_upvw.memoizedState = var199_result1
	return var199_result1
end
function updateRef(arg1) -- Line 1272
	--[[ Upvalues[1]:
		[1]: updateWorkInProgressHook_upvr (readonly)
	]]
	return updateWorkInProgressHook_upvr().memoizedState
end
local function mountEffectImpl_upvr(arg1, arg2, arg3, arg4) -- Line 1277, Named "mountEffectImpl"
	--[[ Upvalues[4]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: pushEffect_upvr (readonly)
		[4]: HasEffect_upvr (readonly)
	]]
	local tbl = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl
		var34_upvw = tbl
	else
		var34_upvw.next = tbl
		var34_upvw = tbl
	end
	var32_upvw.flags = bit32.bor(var32_upvw.flags, arg1)
	var34_upvw.memoizedState = pushEffect_upvr(bit32.bor(HasEffect_upvr, arg2), arg3, nil, arg4)
end
function updateEffectImpl(arg1, arg2, arg3, arg4) -- Line 1289
	--[[ Upvalues[6]:
		[1]: updateWorkInProgressHook_upvr (readonly)
		[2]: var33_upvw (read and write)
		[3]: areHookInputsEqual_upvr (readonly)
		[4]: pushEffect_upvr (readonly)
		[5]: var32_upvw (read and write)
		[6]: HasEffect_upvr (readonly)
	]]
	local var203
	if var33_upvw ~= nil then
		local memoizedState = var33_upvw.memoizedState
		var203 = memoizedState.destroy
		if arg4 ~= nil and areHookInputsEqual_upvr(arg4, memoizedState.deps) then
			updateWorkInProgressHook_upvr().memoizedState = pushEffect_upvr(arg2, arg3, var203, arg4)
			return
		end
	end
	var32_upvw.flags = bit32.bor(var32_upvw.flags, arg1)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	updateWorkInProgressHook_upvr().memoizedState = pushEffect_upvr(bit32.bor(HasEffect_upvr, arg2), arg3, var203, arg4)
end
local PassiveStatic_upvr = ReactFiberFlags.PassiveStatic
local function mountEffect_upvr(arg1, arg2) -- Line 1315, Named "mountEffect"
	--[[ Upvalues[11]:
		[1]: __DEV___upvr (readonly)
		[2]: warnIfNotCurrentlyActingEffectsInDEV_upvr (readonly)
		[3]: var32_upvw (read and write)
		[4]: enableDoubleInvokingEffects_upvr (readonly)
		[5]: MountPassiveDev_upvr (readonly)
		[6]: Passive_upvr_2 (readonly)
		[7]: PassiveStatic_upvr (readonly)
		[8]: Passive_upvr (readonly)
		[9]: var34_upvw (read and write)
		[10]: pushEffect_upvr (readonly)
		[11]: HasEffect_upvr (readonly)
	]]
	if __DEV___upvr then
		if type(_G.jest) ~= "nil" or _G.__TESTEZ_RUNNING_TEST__ then
			warnIfNotCurrentlyActingEffectsInDEV_upvr(var32_upvw)
		end
	end
	if __DEV___upvr and enableDoubleInvokingEffects_upvr then
		local tbl_33 = {
			memoizedState = nil;
			baseState = nil;
			baseQueue = nil;
			queue = nil;
			next = nil;
		}
		if var34_upvw == nil then
			var32_upvw.memoizedState = tbl_33
			var34_upvw = tbl_33
		else
			var34_upvw.next = tbl_33
			var34_upvw = tbl_33
		end
		var32_upvw.flags = bit32.bor(var32_upvw.flags, bit32.bor(MountPassiveDev_upvr, Passive_upvr_2, PassiveStatic_upvr))
		var34_upvw.memoizedState = pushEffect_upvr(bit32.bor(HasEffect_upvr, Passive_upvr), arg1, nil, arg2)
	else
		local tbl_5 = {
			memoizedState = nil;
			baseState = nil;
			baseQueue = nil;
			queue = nil;
			next = nil;
		}
		if var34_upvw == nil then
			var32_upvw.memoizedState = tbl_5
			var34_upvw = tbl_5
		else
			var34_upvw.next = tbl_5
			var34_upvw = tbl_5
		end
		var32_upvw.flags = bit32.bor(var32_upvw.flags, bit32.bor(Passive_upvr_2, PassiveStatic_upvr))
		var34_upvw.memoizedState = pushEffect_upvr(bit32.bor(HasEffect_upvr, Passive_upvr), arg1, nil, arg2)
	end
end
local function updateEffect_upvr(arg1, arg2) -- Line 1345, Named "updateEffect"
	--[[ Upvalues[5]:
		[1]: __DEV___upvr (readonly)
		[2]: warnIfNotCurrentlyActingEffectsInDEV_upvr (readonly)
		[3]: var32_upvw (read and write)
		[4]: Passive_upvr_2 (readonly)
		[5]: Passive_upvr (readonly)
	]]
	if __DEV___upvr then
		if type(_G.jest) ~= "nil" or _G.__TESTEZ_RUNNING_TEST__ then
			warnIfNotCurrentlyActingEffectsInDEV_upvr(var32_upvw)
		end
	end
	updateEffectImpl(Passive_upvr_2, Passive_upvr, arg1, arg2)
end
local function mountLayoutEffect_upvr(arg1, arg2) -- Line 1360, Named "mountLayoutEffect"
	--[[ Upvalues[9]:
		[1]: __DEV___upvr (readonly)
		[2]: enableDoubleInvokingEffects_upvr (readonly)
		[3]: MountLayoutDev_upvr (readonly)
		[4]: Update_upvr (readonly)
		[5]: Layout_upvr (readonly)
		[6]: var34_upvw (read and write)
		[7]: var32_upvw (read and write)
		[8]: pushEffect_upvr (readonly)
		[9]: HasEffect_upvr (readonly)
	]]
	if __DEV___upvr then
		if enableDoubleInvokingEffects_upvr then
			local tbl_4 = {
				memoizedState = nil;
				baseState = nil;
				baseQueue = nil;
				queue = nil;
				next = nil;
			}
			if var34_upvw == nil then
				var32_upvw.memoizedState = tbl_4
				var34_upvw = tbl_4
			else
				var34_upvw.next = tbl_4
				var34_upvw = tbl_4
			end
			var32_upvw.flags = bit32.bor(var32_upvw.flags, bit32.bor(MountLayoutDev_upvr, Update_upvr))
			var34_upvw.memoizedState = pushEffect_upvr(bit32.bor(HasEffect_upvr, Layout_upvr), arg1, nil, arg2)
			return
		end
	end
	local tbl_13 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_13
		var34_upvw = tbl_13
	else
		var34_upvw.next = tbl_13
		var34_upvw = tbl_13
	end
	var32_upvw.flags = bit32.bor(var32_upvw.flags, Update_upvr)
	var34_upvw.memoizedState = pushEffect_upvr(bit32.bor(HasEffect_upvr, Layout_upvr), arg1, nil, arg2)
end
local function updateLayoutEffect_upvr(arg1, arg2) -- Line 1377, Named "updateLayoutEffect"
	--[[ Upvalues[2]:
		[1]: Update_upvr (readonly)
		[2]: Layout_upvr (readonly)
	]]
	updateEffectImpl(Update_upvr, Layout_upvr, arg1, arg2)
end
local Object_upvr = LuauPolyfill.Object
function imperativeHandleEffect(arg1, arg2) -- Line 1385
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: console_upvr (readonly)
		[4]: Array_upvr (readonly)
	]]
	if arg2 ~= nil and type(arg2) == "function" then
		arg2(arg1())
		return function() -- Line 1394
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			return arg2(nil)
		end
	end
	if arg2 ~= nil then
		if __DEV___upvr then
			local var212 = false
			if getmetatable(arg2) ~= nil then
				if #Object_upvr.keys(arg2) ~= 0 then
					var212 = false
				else
					var212 = true
				end
			end
			if not var212 then
				console_upvr.error("Expected useImperativeHandle() first argument to either be a ".."ref callback or React.createRef() object. Instead received: %s.", "an object with keys {"..Array_upvr.join(Object_upvr.keys(arg2), ", ")..'}')
			end
		end
		arg2.current = arg1()
		return function() -- Line 1419
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2.current = nil
		end
	end
	return nil
end
function mountImperativeHandle(arg1, arg2, arg3) -- Line 1428
	--[[ Upvalues[8]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: enableDoubleInvokingEffects_upvr (readonly)
		[5]: mountEffectImpl_upvr (readonly)
		[6]: MountLayoutDev_upvr (readonly)
		[7]: Update_upvr (readonly)
		[8]: Layout_upvr (readonly)
	]]
	local var214
	if var214 then
		var214 = type(arg2)
		if var214 ~= "function" then
			var214 = console_upvr.error
			local var215 = "Expected useImperativeHandle() second argument to be a function "
			if arg2 ~= nil then
				var215 = type(arg2)
			else
				var215 = "nil"
			end
			var214(var215.."that creates a handle. Instead received: %s.", var215)
		end
	end
	if arg3 ~= nil then
		var214 = Array_upvr.concat
		local tbl_3 = {}
		tbl_3[1] = arg1
		var214 = var214(arg3, tbl_3)
	else
		var214 = nil
	end
	if __DEV___upvr and enableDoubleInvokingEffects_upvr then
		return mountEffectImpl_upvr(bit32.bor(MountLayoutDev_upvr, Update_upvr), Layout_upvr, function() -- Line 1451
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			return imperativeHandleEffect(arg2, arg1)
		end, var214)
	end
	return mountEffectImpl_upvr(Update_upvr, Layout_upvr, function() -- Line 1457
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		return imperativeHandleEffect(arg2, arg1)
	end, var214)
end
function updateImperativeHandle(arg1, arg2, arg3) -- Line 1463
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: Update_upvr (readonly)
		[4]: Layout_upvr (readonly)
	]]
	if __DEV___upvr then
		if type(arg2) ~= "function" then
			local var219 = "nil"
			if arg2 then
				var219 = type(arg2)
			end
			console_upvr.error("Expected useImperativeHandle() second argument to be a function ".."that creates a handle. Instead received: %s.", var219)
		end
	end
	var219 = nil
	local var220 = var219
	if arg3 ~= nil then
		var220 = table.clone(arg3)
		table.insert(var220, arg1)
	end
	return updateEffectImpl(Update_upvr, Layout_upvr, function() -- Line 1490
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		return imperativeHandleEffect(arg2, arg1)
	end, var220)
end
function mountDebugValue(arg1, arg2) -- Line 1495
end
local mountDebugValue_3_upvr = mountDebugValue
function mountCallback(arg1, arg2) -- Line 1503
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
	]]
	local tbl_35 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_35
		var34_upvw = tbl_35
	else
		var34_upvw.next = tbl_35
		var34_upvw = tbl_35
	end
	local tbl_28 = {}
	tbl_28[1] = arg1
	tbl_28[2] = arg2
	var34_upvw.memoizedState = tbl_28
	return arg1
end
function updateCallback(arg1, arg2) -- Line 1511
	--[[ Upvalues[2]:
		[1]: updateWorkInProgressHook_upvr (readonly)
		[2]: areHookInputsEqual_upvr (readonly)
	]]
	local updateWorkInProgressHook_upvr_result1 = updateWorkInProgressHook_upvr()
	local memoizedState_3 = updateWorkInProgressHook_upvr_result1.memoizedState
	if memoizedState_3 ~= nil and arg2 ~= nil then
		if areHookInputsEqual_upvr(arg2, memoizedState_3[2]) then
			return memoizedState_3[1]
		end
	end
	local tbl_8 = {}
	tbl_8[1] = arg1
	tbl_8[2] = arg2
	updateWorkInProgressHook_upvr_result1.memoizedState = tbl_8
	return arg1
end
function mountMemo(arg1, arg2) -- Line 1530
	--[[ Upvalues[2]:
		[1]: var34_upvw (read and write)
		[2]: var32_upvw (read and write)
	]]
	local tbl_31 = {
		memoizedState = nil;
		baseState = nil;
		baseQueue = nil;
		queue = nil;
		next = nil;
	}
	if var34_upvw == nil then
		var32_upvw.memoizedState = tbl_31
		var34_upvw = tbl_31
	else
		var34_upvw.next = tbl_31
		var34_upvw = tbl_31
	end
	local module_5 = {arg1()}
	local tbl_34 = {module_5}
	tbl_34[2] = arg2
	var34_upvw.memoizedState = tbl_34
	return unpack(module_5)
end
function updateMemo(arg1, arg2) -- Line 1542
	--[[ Upvalues[2]:
		[1]: updateWorkInProgressHook_upvr (readonly)
		[2]: areHookInputsEqual_upvr (readonly)
	]]
	local updateWorkInProgressHook_result1 = updateWorkInProgressHook_upvr()
	local memoizedState_4 = updateWorkInProgressHook_result1.memoizedState
	if memoizedState_4 ~= nil and arg2 ~= nil then
		if areHookInputsEqual_upvr(arg2, memoizedState_4[2]) then
			return unpack(memoizedState_4[1])
		end
	end
	local module_4 = {arg1()}
	local tbl_11 = {module_4}
	tbl_11[2] = arg2
	updateWorkInProgressHook_result1.memoizedState = tbl_11
	return unpack(module_4)
end
function module_6_upvr.getIsUpdatingOpaqueValueInRenderPhaseInDEV() -- Line 1692
	--[[ Upvalues[1]:
		[1]: __DEV___upvr (readonly)
	]]
	if __DEV___upvr then
		return false
	end
	return nil
end
local makeClientId_upvr = require(script.Parent.ReactFiberHostConfig).makeClientId
local getIsHydrating_upvr = require(script.Parent["ReactFiberHydrationContext.new"]).getIsHydrating
function mountOpaqueIdentifier() -- Line 1714
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: makeClientId_upvr (readonly)
		[4]: getIsHydrating_upvr (readonly)
	]]
	local var238
	if __DEV___upvr then
		console_upvr.warn("!!! unimplemented: warnOnOpaqueIdentifierAccessInDEV")
	else
		var238 = makeClientId_upvr
	end
	if getIsHydrating_upvr() then
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		print("UNIMPLEMENTED ERROR: ".."ReactFiberHooks: getIsHydrating() true")
		error("FIXME (roblox): ".."ReactFiberHooks: getIsHydrating() true".." is unimplemented")
		return nil
	end
	local var238_result1 = var238()
	mountState(var238_result1)
	return var238_result1
end
function updateOpaqueIdentifier() -- Line 1781
	local updateState_result1, _ = updateState(nil)
	return updateState_result1
end
function rerenderOpaqueIdentifier() -- Line 1786
	local rerenderState_result1, rerenderState_result2 = rerenderState(nil)
	return rerenderState_result1
end
local requestEventTime_upvr = new_2.requestEventTime
local warnIfNotScopedWithMatchingAct_upvr = new_2.warnIfNotScopedWithMatchingAct
local warnIfNotCurrentlyActingUpdatesInDEV_upvr = new_2.warnIfNotCurrentlyActingUpdatesInDEV
local scheduleUpdateOnFiber_upvr = new_2.scheduleUpdateOnFiber
local enableDebugTracing_upvr = ReactFeatureFlags.enableDebugTracing
local DebugTracingMode_upvr = require(script.Parent.ReactTypeOfMode).DebugTracingMode
local logStateUpdateScheduled_upvr = require(script.Parent.DebugTracing).logStateUpdateScheduled
local enableSchedulingProfiler_upvr = ReactFeatureFlags.enableSchedulingProfiler
local markStateUpdateScheduled_upvr = require(script.Parent.SchedulingProfiler).markStateUpdateScheduled
function dispatchAction(arg1, arg2, arg3, ...) -- Line 1791
	--[[ Upvalues[19]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: requestEventTime_upvr (readonly)
		[4]: requestUpdateLane_upvr (readonly)
		[5]: var32_upvw (read and write)
		[6]: var35_upvw (read and write)
		[7]: var36_upvw (read and write)
		[8]: NoLanes_upvr (readonly)
		[9]: ReactCurrentDispatcher_upvr (readonly)
		[10]: var45_upvw (read and write)
		[11]: warnIfNotScopedWithMatchingAct_upvr (readonly)
		[12]: warnIfNotCurrentlyActingUpdatesInDEV_upvr (readonly)
		[13]: scheduleUpdateOnFiber_upvr (readonly)
		[14]: enableDebugTracing_upvr (readonly)
		[15]: DebugTracingMode_upvr (readonly)
		[16]: getComponentName_upvr (readonly)
		[17]: logStateUpdateScheduled_upvr (readonly)
		[18]: enableSchedulingProfiler_upvr (readonly)
		[19]: markStateUpdateScheduled_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if __DEV___upvr then
		local var263
		if select('#', ...) == 1 then
			var263 = select(1, ...)
		end
		if type(var263) == "function" then
			console_upvr.error("State updates from the useState() and useReducer() Hooks don't support the ".."second callback argument. To execute a side effect after ".."rendering, declare it in the component body with useEffect().")
		end
	end
	local var23_result1_2 = requestUpdateLane_upvr(arg1)
	local tbl_14 = {
		lane = var23_result1_2;
	}
	tbl_14.action = arg3
	tbl_14.eagerReducer = nil
	tbl_14.eagerState = nil
	tbl_14.next = nil
	local pending_3 = arg2.pending
	if pending_3 == nil then
		tbl_14.next = tbl_14
	else
		tbl_14.next = pending_3.next
		pending_3.next = tbl_14
	end
	arg2.pending = tbl_14
	local alternate = arg1.alternate
	if arg1 == var32_upvw or alternate ~= nil and alternate == var32_upvw then
		var35_upvw = true
		var36_upvw = true
	else
		local var268
		var268 = NoLanes_upvr
		local function INLINED_20() -- Internal function, doesn't exist in bytecode
			var268 = NoLanes_upvr
			return alternate.lanes == var268
		end
		local function INLINED_21() -- Internal function, doesn't exist in bytecode
			local lastRenderedReducer = arg2.lastRenderedReducer
			return lastRenderedReducer ~= nil
		end
		if arg1.lanes == var268 and (alternate == nil or INLINED_20()) or INLINED_21() then
			var268 = nil
			if __DEV___upvr then
				var268 = ReactCurrentDispatcher_upvr.current
				ReactCurrentDispatcher_upvr.current = var45_upvw
			end
			local lastRenderedState = arg2.lastRenderedState
			local pcall_result1_10, pcall_result2_17 = pcall(lastRenderedReducer, lastRenderedState, arg3)
			if pcall_result1_10 then
				tbl_14.eagerReducer = lastRenderedReducer
				tbl_14.eagerState = pcall_result2_17
			end
			if __DEV___upvr then
				ReactCurrentDispatcher_upvr.current = var268
			end
			if pcall_result2_17 ~= lastRenderedState or pcall_result2_17 == 0 and 1 / pcall_result2_17 ~= 1 / lastRenderedState or pcall_result2_17 ~= pcall_result2_17 then
				if lastRenderedState == lastRenderedState then
				else
				end
			end
			if true then return end
			if pcall_result1_10 then
			end
		end
		local function INLINED_22() -- Internal function, doesn't exist in bytecode
			var268 = _G.jest
			return type(var268) ~= "nil"
		end
		local function INLINED_23() -- Internal function, doesn't exist in bytecode
			var268 = _G
			return var268.__TESTEZ_RUNNING_TEST__
		end
		if __DEV___upvr and (INLINED_22() or INLINED_23()) then
			var268 = arg1
			warnIfNotScopedWithMatchingAct_upvr(var268)
			var268 = arg1
			warnIfNotCurrentlyActingUpdatesInDEV_upvr(var268)
		end
		var268 = arg1
		scheduleUpdateOnFiber_upvr(var268, var23_result1_2, requestEventTime_upvr())
	end
	if __DEV___upvr and enableDebugTracing_upvr then
		var268 = arg1.mode
		if bit32.band(var268, DebugTracingMode_upvr) ~= 0 then
			var268 = getComponentName_upvr(arg1.type)
			var268 = logStateUpdateScheduled_upvr
			var268(var268 or "Unknown", var23_result1_2, arg3)
		end
	end
	if enableSchedulingProfiler_upvr then
		var268 = arg1
		markStateUpdateScheduled_upvr(var268, var23_result1_2)
	end
end
local tbl_32_upvr = {
	readContext = readContext_upvr;
	useCallback = throwInvalidHookError;
	useContext = throwInvalidHookError;
	useEffect = throwInvalidHookError;
	useImperativeHandle = throwInvalidHookError;
	useLayoutEffect = throwInvalidHookError;
	useMemo = throwInvalidHookError;
	useReducer = throwInvalidHookError;
	useRef = throwInvalidHookError;
	useBinding = throwInvalidHookError;
	useState = throwInvalidHookError;
	useDebugValue = throwInvalidHookError;
	useMutableSource = throwInvalidHookError;
	useOpaqueIdentifier = throwInvalidHookError;
	unstable_isNewReconciler = enableNewReconciler;
}
module_6_upvr.ContextOnlyDispatcher = tbl_32_upvr
local tbl_21_upvr = {
	readContext = readContext_upvr;
	useCallback = mountCallback;
	useContext = readContext_upvr;
	useEffect = mountEffect_upvr;
	useImperativeHandle = mountImperativeHandle;
	useLayoutEffect = mountLayoutEffect_upvr;
	useMemo = mountMemo;
	useReducer = mountReducer;
	useRef = mountRef;
	useBinding = mountBinding;
	useState = mountState;
	useDebugValue = mountDebugValue;
	useMutableSource = mountMutableSource;
	useOpaqueIdentifier = mountOpaqueIdentifier;
	unstable_isNewReconciler = enableNewReconciler;
}
local tbl_37_upvr = {
	readContext = readContext_upvr;
	useCallback = updateCallback;
	useContext = readContext_upvr;
	useEffect = updateEffect_upvr;
	useImperativeHandle = updateImperativeHandle;
	useLayoutEffect = updateLayoutEffect_upvr;
	useMemo = updateMemo;
	useReducer = updateReducer;
	useRef = updateRef;
	useBinding = updateBinding;
	useState = updateState;
	useDebugValue = mountDebugValue_3_upvr;
	useMutableSource = updateMutableSource;
	useOpaqueIdentifier = updateOpaqueIdentifier;
	unstable_isNewReconciler = enableNewReconciler;
}
local tbl_29_upvr = {
	readContext = readContext_upvr;
	useCallback = updateCallback;
	useContext = readContext_upvr;
	useEffect = updateEffect_upvr;
	useImperativeHandle = updateImperativeHandle;
	useLayoutEffect = updateLayoutEffect_upvr;
	useMemo = updateMemo;
	useReducer = rerenderReducer;
	useRef = updateRef;
	useBinding = updateBinding;
	useState = rerenderState;
	useDebugValue = mountDebugValue_3_upvr;
	useMutableSource = updateMutableSource;
	useOpaqueIdentifier = rerenderOpaqueIdentifier;
	unstable_isNewReconciler = enableNewReconciler;
}
if __DEV___upvr then
	local function _() -- Line 2006
		--[[ Upvalues[1]:
			[1]: console_upvr (readonly)
		]]
		console_upvr.error("Context can only be read while React is rendering. ".."In classes, you can read it in the render method or getDerivedStateFromProps. ".."In function components, you can read it directly in the function body, but not ".."inside Hooks like useReducer() or useMemo().")
	end
	local function _() -- Line 2015
		--[[ Upvalues[1]:
			[1]: console_upvr (readonly)
		]]
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
	end
	local tbl_17 = {}
	local function readContext(arg1, arg2) -- Line 2025
		--[[ Upvalues[1]:
			[1]: readContext_upvr (readonly)
		]]
		return readContext_upvr(arg1, arg2)
	end
	tbl_17.readContext = readContext
	local function useCallback(arg1, arg2) -- Line 2031
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: console_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var37_upvw = "useCallback"
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 24 start (CF ANALYSIS FAILED)
		if var38_upvw == nil then
			var38_upvw = {var37_upvw}
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(var38_upvw, var37_upvw)
		end
		-- KONSTANTERROR: [4] 5. Error Block 24 end (CF ANALYSIS FAILED)
	end
	tbl_17.useCallback = useCallback
	local function useContext(arg1, arg2) -- Line 2037
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: readContext_upvr (readonly)
		]]
		var37_upvw = "useContext"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return readContext_upvr(arg1, arg2)
	end
	tbl_17.useContext = useContext
	local function useEffect(arg1, arg2) -- Line 2045
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: console_upvr (readonly)
			[5]: mountEffect_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var37_upvw = "useEffect"
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 24 start (CF ANALYSIS FAILED)
		if var38_upvw == nil then
			var38_upvw = {var37_upvw}
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(var38_upvw, var37_upvw)
		end
		-- KONSTANTERROR: [4] 5. Error Block 24 end (CF ANALYSIS FAILED)
	end
	tbl_17.useEffect = useEffect
	local function useImperativeHandle(arg1, arg2, arg3) -- Line 2055
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: console_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var37_upvw = "useImperativeHandle"
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 24 start (CF ANALYSIS FAILED)
		if var38_upvw == nil then
			var38_upvw = {var37_upvw}
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(var38_upvw, var37_upvw)
		end
		-- KONSTANTERROR: [4] 5. Error Block 24 end (CF ANALYSIS FAILED)
	end
	tbl_17.useImperativeHandle = useImperativeHandle
	local function useLayoutEffect(arg1, arg2) -- Line 2065
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: console_upvr (readonly)
			[5]: mountLayoutEffect_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var37_upvw = "useLayoutEffect"
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 24 start (CF ANALYSIS FAILED)
		if var38_upvw == nil then
			var38_upvw = {var37_upvw}
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(var38_upvw, var37_upvw)
		end
		-- KONSTANTERROR: [4] 5. Error Block 24 end (CF ANALYSIS FAILED)
	end
	tbl_17.useLayoutEffect = useLayoutEffect
	function tbl_17.useMemo(arg1, arg2) -- Line 2076
		--[[ Upvalues[6]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: console_upvr (readonly)
			[5]: ReactCurrentDispatcher_upvr (readonly)
			[6]: var44_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var37_upvw = "useMemo"
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 28 start (CF ANALYSIS FAILED)
		if var38_upvw == nil then
			var38_upvw = {var37_upvw}
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert(var38_upvw, var37_upvw)
		end
		-- KONSTANTERROR: [4] 5. Error Block 28 end (CF ANALYSIS FAILED)
	end
	local function useReducer(arg1, arg2, arg3) -- Line 2094
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: ReactCurrentDispatcher_upvr (readonly)
			[5]: var44_upvw (read and write)
		]]
		var37_upvw = "useReducer"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local pcall_result1_17, pcall_result2_7, pcall_result3 = pcall(mountReducer, arg1, arg2, arg3)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_17 then
			error(pcall_result2_7)
		end
		return pcall_result2_7, pcall_result3
	end
	tbl_17.useReducer = useReducer
	local function useRef(arg1) -- Line 2112
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
		]]
		var37_upvw = "useRef"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountRef(arg1)
	end
	tbl_17.useRef = useRef
	local function useBinding(arg1) -- Line 2118
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
		]]
		var37_upvw = "useBinding"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountBinding(arg1)
	end
	tbl_17.useBinding = useBinding
	local function useState(arg1) -- Line 2123
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
			[4]: ReactCurrentDispatcher_upvr (readonly)
			[5]: var44_upvw (read and write)
		]]
		var37_upvw = "useState"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local pcall_result1_11, pcall_result2_5, pcall_result3_4 = pcall(mountState, arg1)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_11 then
			error(pcall_result2_5)
		end
		return pcall_result2_5, pcall_result3_4
	end
	tbl_17.useState = useState
	local function useDebugValue(arg1, arg2) -- Line 2139
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
		]]
		var37_upvw = "useDebugValue"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountDebugValue(arg1, arg2)
	end
	tbl_17.useDebugValue = useDebugValue
	local function useMutableSource(arg1, arg2, arg3) -- Line 2154
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
		]]
		var37_upvw = "useMutableSource"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountMutableSource(arg1, arg2, arg3)
	end
	tbl_17.useMutableSource = useMutableSource
	local function useOpaqueIdentifier() -- Line 2169
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: var38_upvw (read and write)
		]]
		var37_upvw = "useOpaqueIdentifier"
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountOpaqueIdentifier()
	end
	tbl_17.useOpaqueIdentifier = useOpaqueIdentifier
	tbl_17.unstable_isNewReconciler = enableNewReconciler
	var40_upvw = tbl_17
	local tbl_19 = {}
	local function readContext(arg1, arg2) -- Line 2179
		--[[ Upvalues[1]:
			[1]: readContext_upvr (readonly)
		]]
		return readContext_upvr(arg1, arg2)
	end
	tbl_19.readContext = readContext
	local function useCallback(arg1, arg2) -- Line 2185
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: __DEV___upvr (readonly)
			[3]: console_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		var37_upvw = "useCallback"
		updateHookTypesDev()
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 2 end (CF ANALYSIS FAILED)
		if not true then
			console_upvr.error("%s received a final argument that is not an array (instead, received `%s`). When ".."specified, the final argument must be an array.", var37_upvw, type(arg2))
		end
		-- KONSTANTERROR: [48] 40. Error Block 13 start (CF ANALYSIS FAILED)
		do
			return mountCallback(arg1, arg2)
		end
		-- KONSTANTERROR: [48] 40. Error Block 13 end (CF ANALYSIS FAILED)
	end
	tbl_19.useCallback = useCallback
	local function useContext(arg1, arg2) -- Line 2191
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: readContext_upvr (readonly)
		]]
		var37_upvw = "useContext"
		updateHookTypesDev()
		return readContext_upvr(arg1, arg2)
	end
	tbl_19.useContext = useContext
	local function useEffect(arg1, arg2) -- Line 2199
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: mountEffect_upvr (readonly)
		]]
		var37_upvw = "useEffect"
		updateHookTypesDev()
		return mountEffect_upvr(arg1, arg2)
	end
	tbl_19.useEffect = useEffect
	local function useImperativeHandle(arg1, arg2, arg3) -- Line 2208
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useImperativeHandle"
		updateHookTypesDev()
		return mountImperativeHandle(arg1, arg2, arg3)
	end
	tbl_19.useImperativeHandle = useImperativeHandle
	local function useLayoutEffect(arg1, arg2) -- Line 2217
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: mountLayoutEffect_upvr (readonly)
		]]
		var37_upvw = "useLayoutEffect"
		updateHookTypesDev()
		return mountLayoutEffect_upvr(arg1, arg2)
	end
	tbl_19.useLayoutEffect = useLayoutEffect
	function tbl_19.useMemo(arg1, arg2) -- Line 2227
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var44_upvw (read and write)
		]]
		var37_upvw = "useMemo"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local module_7 = {pcall(mountMemo, arg1, arg2)}
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not module_7[1] then
			error(module_7[2])
		end
		return unpack(module_7, 2)
	end
	local function useReducer(arg1, arg2, arg3) -- Line 2243
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var44_upvw (read and write)
		]]
		var37_upvw = "useReducer"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local pcall_result1_7, pcall_result2_8, pcall_result3_8 = pcall(mountReducer, arg1, arg2, arg3)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_7 then
			error(pcall_result2_8)
		end
		return pcall_result2_8, pcall_result3_8
	end
	tbl_19.useReducer = useReducer
	local function useRef(arg1) -- Line 2261
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useRef"
		updateHookTypesDev()
		return mountRef(arg1)
	end
	tbl_19.useRef = useRef
	local function useBinding(arg1) -- Line 2267
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useBinding"
		updateHookTypesDev()
		return mountBinding(arg1)
	end
	tbl_19.useBinding = useBinding
	local function useState(arg1) -- Line 2272
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var44_upvw (read and write)
		]]
		var37_upvw = "useState"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local pcall_result1_6, pcall_result2_11, pcall_result3_14 = pcall(mountState, arg1)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_6 then
			error(pcall_result2_11)
		end
		return pcall_result2_11, pcall_result3_14
	end
	tbl_19.useState = useState
	local function useDebugValue(arg1, arg2) -- Line 2288
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useDebugValue"
		updateHookTypesDev()
		return mountDebugValue(arg1, arg2)
	end
	tbl_19.useDebugValue = useDebugValue
	local function useMutableSource(arg1, arg2, arg3) -- Line 2303
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useMutableSource"
		updateHookTypesDev()
		return mountMutableSource(arg1, arg2, arg3)
	end
	tbl_19.useMutableSource = useMutableSource
	local function useOpaqueIdentifier() -- Line 2318
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useOpaqueIdentifier"
		updateHookTypesDev()
		return mountOpaqueIdentifier()
	end
	tbl_19.useOpaqueIdentifier = useOpaqueIdentifier
	tbl_19.unstable_isNewReconciler = enableNewReconciler
	var41_upvw = tbl_19
	local tbl_24 = {}
	local function readContext(arg1, arg2) -- Line 2328
		--[[ Upvalues[1]:
			[1]: readContext_upvr (readonly)
		]]
		return readContext_upvr(arg1, arg2)
	end
	tbl_24.readContext = readContext
	local function useCallback(arg1, arg2) -- Line 2334
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useCallback"
		updateHookTypesDev()
		return updateCallback(arg1, arg2)
	end
	tbl_24.useCallback = useCallback
	local function useContext(arg1, arg2) -- Line 2339
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: readContext_upvr (readonly)
		]]
		var37_upvw = "useContext"
		updateHookTypesDev()
		return readContext_upvr(arg1, arg2)
	end
	tbl_24.useContext = useContext
	local function useEffect(arg1, arg2) -- Line 2347
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: updateEffect_upvr (readonly)
		]]
		var37_upvw = "useEffect"
		updateHookTypesDev()
		return updateEffect_upvr(arg1, arg2)
	end
	tbl_24.useEffect = useEffect
	local function useImperativeHandle(arg1, arg2, arg3) -- Line 2356
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useImperativeHandle"
		updateHookTypesDev()
		return updateImperativeHandle(arg1, arg2, arg3)
	end
	tbl_24.useImperativeHandle = useImperativeHandle
	local function useLayoutEffect(arg1, arg2) -- Line 2365
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: updateLayoutEffect_upvr (readonly)
		]]
		var37_upvw = "useLayoutEffect"
		updateHookTypesDev()
		return updateLayoutEffect_upvr(arg1, arg2)
	end
	tbl_24.useLayoutEffect = useLayoutEffect
	function tbl_24.useMemo(arg1, arg2) -- Line 2375
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var45_upvw (read and write)
		]]
		var37_upvw = "useMemo"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var45_upvw
		local module_3 = {pcall(updateMemo, arg1, arg2)}
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not module_3[1] then
			error(module_3[2])
		end
		return unpack(module_3, 2)
	end
	local function useReducer(arg1, arg2, arg3) -- Line 2391
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var45_upvw (read and write)
		]]
		var37_upvw = "useReducer"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var45_upvw
		local pcall_result1_4, pcall_result2_6, pcall_result3_3 = pcall(updateReducer, arg1, arg2, arg3)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_4 then
			error(pcall_result2_6)
		end
		return pcall_result2_6, pcall_result3_3
	end
	tbl_24.useReducer = useReducer
	local function useRef(arg1) -- Line 2409
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useRef"
		updateHookTypesDev()
		return updateRef(arg1)
	end
	tbl_24.useRef = useRef
	local function useBinding(arg1) -- Line 2415
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useBinding"
		updateHookTypesDev()
		return updateBinding(arg1)
	end
	tbl_24.useBinding = useBinding
	local function useState(arg1) -- Line 2420
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var45_upvw (read and write)
		]]
		var37_upvw = "useState"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var45_upvw
		local pcall_result1_3, pcall_result2_15, pcall_result3_12 = pcall(updateState, arg1)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_3 then
			error(pcall_result2_15)
		end
		return pcall_result2_15, pcall_result3_12
	end
	tbl_24.useState = useState
	local function useDebugValue(arg1, arg2) -- Line 2436
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: mountDebugValue_3_upvr (readonly)
		]]
		var37_upvw = "useDebugValue"
		updateHookTypesDev()
		return mountDebugValue_3_upvr(arg1, arg2)
	end
	tbl_24.useDebugValue = useDebugValue
	local function useMutableSource(arg1, arg2, arg3) -- Line 2451
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useMutableSource"
		updateHookTypesDev()
		return updateMutableSource(arg1, arg2, arg3)
	end
	tbl_24.useMutableSource = useMutableSource
	local function useOpaqueIdentifier() -- Line 2466
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useOpaqueIdentifier"
		updateHookTypesDev()
		return updateOpaqueIdentifier()
	end
	tbl_24.useOpaqueIdentifier = useOpaqueIdentifier
	tbl_24.unstable_isNewReconciler = enableNewReconciler
	var42_upvw = tbl_24
	local tbl_15 = {}
	local function readContext(arg1, arg2) -- Line 2476
		--[[ Upvalues[1]:
			[1]: readContext_upvr (readonly)
		]]
		return readContext_upvr(arg1, arg2)
	end
	tbl_15.readContext = readContext
	local function useCallback(arg1, arg2) -- Line 2482
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useCallback"
		updateHookTypesDev()
		return mountCallback(arg1, arg2)
	end
	tbl_15.useCallback = useCallback
	local function useContext(arg1, arg2) -- Line 2487
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: readContext_upvr (readonly)
		]]
		var37_upvw = "useContext"
		updateHookTypesDev()
		return readContext_upvr(arg1, arg2)
	end
	tbl_15.useContext = useContext
	local function useEffect(arg1, arg2) -- Line 2495
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: updateEffect_upvr (readonly)
		]]
		var37_upvw = "useEffect"
		updateHookTypesDev()
		return updateEffect_upvr(arg1, arg2)
	end
	tbl_15.useEffect = useEffect
	local function useImperativeHandle(arg1, arg2, arg3) -- Line 2504
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useImperativeHandle"
		updateHookTypesDev()
		return updateImperativeHandle(arg1, arg2, arg3)
	end
	tbl_15.useImperativeHandle = useImperativeHandle
	local function useLayoutEffect(arg1, arg2) -- Line 2513
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: updateLayoutEffect_upvr (readonly)
		]]
		var37_upvw = "useLayoutEffect"
		updateHookTypesDev()
		return updateLayoutEffect_upvr(arg1, arg2)
	end
	tbl_15.useLayoutEffect = useLayoutEffect
	function tbl_15.useMemo(arg1, arg2) -- Line 2523
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var46_upvw (read and write)
		]]
		var37_upvw = "useMemo"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var46_upvw
		local module_8 = {pcall(updateMemo, arg1, arg2)}
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not module_8[1] then
			error(module_8[2])
		end
		return unpack(module_8, 2)
	end
	local function useReducer(arg1, arg2, arg3) -- Line 2539
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var46_upvw (read and write)
		]]
		var37_upvw = "useReducer"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var46_upvw
		local pcall_result1_16, pcall_result2_4, pcall_result3_7 = pcall(rerenderReducer, arg1, arg2, arg3)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_16 then
			error(pcall_result2_4)
		end
		return pcall_result2_4, pcall_result3_7
	end
	tbl_15.useReducer = useReducer
	local function useRef(arg1) -- Line 2558
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useRef"
		updateHookTypesDev()
		return updateRef(arg1)
	end
	tbl_15.useRef = useRef
	local function useBinding(arg1) -- Line 2564
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useBinding"
		updateHookTypesDev()
		return updateBinding(arg1)
	end
	tbl_15.useBinding = useBinding
	local function useState(arg1) -- Line 2569
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: ReactCurrentDispatcher_upvr (readonly)
			[3]: var46_upvw (read and write)
		]]
		var37_upvw = "useState"
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var46_upvw
		local pcall_result1_13, pcall_result2, pcall_result3_9 = pcall(rerenderState, arg1)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_13 then
			error(pcall_result2)
		end
		return pcall_result2, pcall_result3_9
	end
	tbl_15.useState = useState
	local function useDebugValue(arg1, arg2) -- Line 2585
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: mountDebugValue_3_upvr (readonly)
		]]
		var37_upvw = "useDebugValue"
		updateHookTypesDev()
		return mountDebugValue_3_upvr(arg1, arg2)
	end
	tbl_15.useDebugValue = useDebugValue
	local function useMutableSource(arg1, arg2, arg3) -- Line 2600
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useMutableSource"
		updateHookTypesDev()
		return updateMutableSource(arg1, arg2, arg3)
	end
	tbl_15.useMutableSource = useMutableSource
	local function useOpaqueIdentifier() -- Line 2615
		--[[ Upvalues[1]:
			[1]: var37_upvw (read and write)
		]]
		var37_upvw = "useOpaqueIdentifier"
		updateHookTypesDev()
		return rerenderOpaqueIdentifier()
	end
	tbl_15.useOpaqueIdentifier = useOpaqueIdentifier
	tbl_15.unstable_isNewReconciler = enableNewReconciler
	var43_upvw = tbl_15
	local tbl_7 = {}
	local function readContext(arg1, arg2) -- Line 2625
		--[[ Upvalues[2]:
			[1]: console_upvr (readonly)
			[2]: readContext_upvr (readonly)
		]]
		console_upvr.error("Context can only be read while React is rendering. ".."In classes, you can read it in the render method or getDerivedStateFromProps. ".."In function components, you can read it directly in the function body, but not ".."inside Hooks like useReducer() or useMemo().")
		return readContext_upvr(arg1, arg2)
	end
	tbl_7.readContext = readContext
	local function useCallback(arg1, arg2) -- Line 2632
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useCallback"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountCallback(arg1, arg2)
	end
	tbl_7.useCallback = useCallback
	local function useContext(arg1, arg2) -- Line 2638
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
			[5]: readContext_upvr (readonly)
		]]
		var37_upvw = "useContext"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return readContext_upvr(arg1, arg2)
	end
	tbl_7.useContext = useContext
	local function useEffect(arg1, arg2) -- Line 2647
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
			[5]: mountEffect_upvr (readonly)
		]]
		var37_upvw = "useEffect"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountEffect_upvr(arg1, arg2)
	end
	tbl_7.useEffect = useEffect
	local function useImperativeHandle(arg1, arg2, arg3) -- Line 2657
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useImperativeHandle"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountImperativeHandle(arg1, arg2, arg3)
	end
	tbl_7.useImperativeHandle = useImperativeHandle
	local function useLayoutEffect(arg1, arg2) -- Line 2667
		--[[ Upvalues[5]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
			[5]: mountLayoutEffect_upvr (readonly)
		]]
		var37_upvw = "useLayoutEffect"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountLayoutEffect_upvr(arg1, arg2)
	end
	tbl_7.useLayoutEffect = useLayoutEffect
	function tbl_7.useMemo(arg1, arg2) -- Line 2678
		--[[ Upvalues[6]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
			[5]: ReactCurrentDispatcher_upvr (readonly)
			[6]: var44_upvw (read and write)
		]]
		var37_upvw = "useMemo"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local module_10 = {pcall(mountMemo, arg1, arg2)}
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not module_10[1] then
			error(module_10[2])
		end
		return unpack(module_10, 2)
	end
	local function useReducer(arg1, arg2, arg3) -- Line 2695
		--[[ Upvalues[6]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
			[5]: ReactCurrentDispatcher_upvr (readonly)
			[6]: var44_upvw (read and write)
		]]
		var37_upvw = "useReducer"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local pcall_result1_2, pcall_result2_3, pcall_result3_13 = pcall(mountReducer, arg1, arg2, arg3)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_2 then
			error(pcall_result2_3)
		end
		return pcall_result2_3, pcall_result3_13
	end
	tbl_7.useReducer = useReducer
	local function useRef(arg1) -- Line 2714
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useRef"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountRef(arg1)
	end
	tbl_7.useRef = useRef
	local function useBinding(arg1) -- Line 2721
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useBinding"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountBinding(arg1)
	end
	tbl_7.useBinding = useBinding
	local function useState(arg1) -- Line 2727
		--[[ Upvalues[6]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
			[5]: ReactCurrentDispatcher_upvr (readonly)
			[6]: var44_upvw (read and write)
		]]
		var37_upvw = "useState"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		ReactCurrentDispatcher_upvr.current = var44_upvw
		local pcall_result1_15, pcall_result2_13, pcall_result3_5 = pcall(mountState, arg1)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_15 then
			error(pcall_result2_13)
		end
		return pcall_result2_13, pcall_result3_5
	end
	tbl_7.useState = useState
	local function useDebugValue(arg1, arg2) -- Line 2744
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useDebugValue"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountDebugValue(arg1, arg2)
	end
	tbl_7.useDebugValue = useDebugValue
	local function useMutableSource(arg1, arg2, arg3) -- Line 2762
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useMutableSource"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountMutableSource(arg1, arg2, arg3)
	end
	tbl_7.useMutableSource = useMutableSource
	local function useOpaqueIdentifier() -- Line 2778
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: __DEV___upvr (readonly)
			[4]: var38_upvw (read and write)
		]]
		var37_upvw = "useOpaqueIdentifier"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		if __DEV___upvr then
			if var38_upvw == nil then
				var38_upvw = {var37_upvw}
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(var38_upvw, var37_upvw)
			end
		end
		return mountOpaqueIdentifier()
	end
	tbl_7.useOpaqueIdentifier = useOpaqueIdentifier
	tbl_7.unstable_isNewReconciler = enableNewReconciler
	var44_upvw = tbl_7
	local tbl_16 = {}
	local function readContext(arg1, arg2) -- Line 2789
		--[[ Upvalues[2]:
			[1]: console_upvr (readonly)
			[2]: readContext_upvr (readonly)
		]]
		console_upvr.error("Context can only be read while React is rendering. ".."In classes, you can read it in the render method or getDerivedStateFromProps. ".."In function components, you can read it directly in the function body, but not ".."inside Hooks like useReducer() or useMemo().")
		return readContext_upvr(arg1, arg2)
	end
	tbl_16.readContext = readContext
	local function useCallback(arg1, arg2) -- Line 2796
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		var37_upvw = "useCallback"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return mountCallback(arg1, arg2)
	end
	tbl_16.useCallback = useCallback
	local function useContext(arg1, arg2) -- Line 2802
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: readContext_upvr (readonly)
		]]
		var37_upvw = "useContext"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return readContext_upvr(arg1, arg2)
	end
	tbl_16.useContext = useContext
	local function useEffect(arg1, arg2) -- Line 2811
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: updateEffect_upvr (readonly)
		]]
		var37_upvw = "useEffect"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateEffect_upvr(arg1, arg2)
	end
	tbl_16.useEffect = useEffect
	local function useImperativeHandle(arg1, arg2, arg3) -- Line 2821
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		var37_upvw = "useImperativeHandle"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateImperativeHandle(arg1, arg2, arg3)
	end
	tbl_16.useImperativeHandle = useImperativeHandle
	local function useLayoutEffect(arg1, arg2) -- Line 2831
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: updateLayoutEffect_upvr (readonly)
		]]
		var37_upvw = "useLayoutEffect"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateLayoutEffect_upvr(arg1, arg2)
	end
	tbl_16.useLayoutEffect = useLayoutEffect
	function tbl_16.useMemo(arg1, arg2) -- Line 2842
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: ReactCurrentDispatcher_upvr (readonly)
			[4]: var45_upvw (read and write)
		]]
		var37_upvw = "useMemo"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var45_upvw
		local module_9 = {pcall(updateMemo, arg1, arg2)}
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not module_9[1] then
			error(module_9[2])
		end
		return unpack(module_9, 2)
	end
	local function useReducer(arg1, arg2, arg3) -- Line 2859
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: ReactCurrentDispatcher_upvr (readonly)
			[4]: var45_upvw (read and write)
		]]
		var37_upvw = "useReducer"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var45_upvw
		local pcall_result1_14, pcall_result2_14, pcall_result3_6 = pcall(updateReducer, arg1, arg2, arg3)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_14 then
			error(pcall_result2_14)
		end
		return pcall_result2_14, pcall_result3_6
	end
	tbl_16.useReducer = useReducer
	local function useRef(arg1) -- Line 2879
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		var37_upvw = "useRef"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateRef(arg1)
	end
	tbl_16.useRef = useRef
	local function useBinding(arg1) -- Line 2886
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		var37_upvw = "useBinding"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateBinding(arg1)
	end
	tbl_16.useBinding = useBinding
	local function useState(arg1) -- Line 2892
		--[[ Upvalues[4]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: ReactCurrentDispatcher_upvr (readonly)
			[4]: var45_upvw (read and write)
		]]
		var37_upvw = "useState"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		ReactCurrentDispatcher_upvr.current = var45_upvw
		local pcall_result1_12, pcall_result2_2, pcall_result3_10 = pcall(updateState, arg1)
		ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
		if not pcall_result1_12 then
			error(pcall_result2_2)
		end
		return pcall_result2_2, pcall_result3_10
	end
	tbl_16.useState = useState
	local function useDebugValue(arg1, arg2) -- Line 2909
		--[[ Upvalues[3]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
			[3]: mountDebugValue_3_upvr (readonly)
		]]
		var37_upvw = "useDebugValue"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return mountDebugValue_3_upvr(arg1, arg2)
	end
	tbl_16.useDebugValue = useDebugValue
	local function useMutableSource(arg1, arg2, arg3) -- Line 2927
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		var37_upvw = "useMutableSource"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateMutableSource(arg1, arg2, arg3)
	end
	tbl_16.useMutableSource = useMutableSource
	local function useOpaqueIdentifier() -- Line 2943
		--[[ Upvalues[2]:
			[1]: var37_upvw (read and write)
			[2]: console_upvr (readonly)
		]]
		var37_upvw = "useOpaqueIdentifier"
		console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
		updateHookTypesDev()
		return updateOpaqueIdentifier()
	end
	tbl_16.useOpaqueIdentifier = useOpaqueIdentifier
	tbl_16.unstable_isNewReconciler = enableNewReconciler
	var45_upvw = tbl_16
	local var358_upvw = var45_upvw
	var46_upvw = {
		readContext = function(arg1, arg2) -- Line 2954, Named "readContext"
			--[[ Upvalues[2]:
				[1]: console_upvr (readonly)
				[2]: readContext_upvr (readonly)
			]]
			console_upvr.error("Context can only be read while React is rendering. ".."In classes, you can read it in the render method or getDerivedStateFromProps. ".."In function components, you can read it directly in the function body, but not ".."inside Hooks like useReducer() or useMemo().")
			return readContext_upvr(arg1, arg2)
		end;
		useCallback = function(arg1, arg2) -- Line 2961, Named "useCallback"
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
			]]
			var37_upvw = "useCallback"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateCallback(arg1, arg2)
		end;
		useContext = function(arg1, arg2) -- Line 2967, Named "useContext"
			--[[ Upvalues[3]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: readContext_upvr (readonly)
			]]
			var37_upvw = "useContext"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return readContext_upvr(arg1, arg2)
		end;
		useEffect = function(arg1, arg2) -- Line 2976, Named "useEffect"
			--[[ Upvalues[3]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: updateEffect_upvr (readonly)
			]]
			var37_upvw = "useEffect"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateEffect_upvr(arg1, arg2)
		end;
		useImperativeHandle = function(arg1, arg2, arg3) -- Line 2986, Named "useImperativeHandle"
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
			]]
			var37_upvw = "useImperativeHandle"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateImperativeHandle(arg1, arg2, arg3)
		end;
		useLayoutEffect = function(arg1, arg2) -- Line 2996, Named "useLayoutEffect"
			--[[ Upvalues[3]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: updateLayoutEffect_upvr (readonly)
			]]
			var37_upvw = "useLayoutEffect"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateLayoutEffect_upvr(arg1, arg2)
		end;
		useMemo = function(arg1, arg2) -- Line 3007
			--[[ Upvalues[4]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: ReactCurrentDispatcher_upvr (readonly)
				[4]: var358_upvw (read and write)
			]]
			var37_upvw = "useMemo"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			ReactCurrentDispatcher_upvr.current = var358_upvw
			local module = {pcall(updateMemo, arg1, arg2)}
			ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
			if not module[1] then
				error(module[2])
			end
			return unpack(module, 2)
		end;
		useReducer = function(arg1, arg2, arg3) -- Line 3024, Named "useReducer"
			--[[ Upvalues[4]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: ReactCurrentDispatcher_upvr (readonly)
				[4]: var358_upvw (read and write)
			]]
			var37_upvw = "useReducer"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			ReactCurrentDispatcher_upvr.current = var358_upvw
			local pcall_result1_9, pcall_result2_9, pcall_result3_11 = pcall(rerenderReducer, arg1, arg2, arg3)
			ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
			if not pcall_result1_9 then
				error(pcall_result2_9)
			end
			return pcall_result2_9, pcall_result3_11
		end;
		useRef = function(arg1) -- Line 3044, Named "useRef"
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
			]]
			var37_upvw = "useRef"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateRef(arg1)
		end;
		useBinding = function(arg1) -- Line 3051, Named "useBinding"
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
			]]
			var37_upvw = "useBinding"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateBinding(arg1)
		end;
		useState = function(arg1) -- Line 3057, Named "useState"
			--[[ Upvalues[4]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: ReactCurrentDispatcher_upvr (readonly)
				[4]: var358_upvw (read and write)
			]]
			var37_upvw = "useState"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			ReactCurrentDispatcher_upvr.current = var358_upvw
			local pcall_result1_8, pcall_result2_12, pcall_result3_2 = pcall(rerenderState, arg1)
			ReactCurrentDispatcher_upvr.current = ReactCurrentDispatcher_upvr.current
			if not pcall_result1_8 then
				error(pcall_result2_12)
			end
			return pcall_result2_12, pcall_result3_2
		end;
		useDebugValue = function(arg1, arg2) -- Line 3074, Named "useDebugValue"
			--[[ Upvalues[3]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
				[3]: mountDebugValue_3_upvr (readonly)
			]]
			var37_upvw = "useDebugValue"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return mountDebugValue_3_upvr(arg1, arg2)
		end;
		useMutableSource = function(arg1, arg2, arg3) -- Line 3092, Named "useMutableSource"
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
			]]
			var37_upvw = "useMutableSource"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return updateMutableSource(arg1, arg2, arg3)
		end;
		useOpaqueIdentifier = function() -- Line 3108, Named "useOpaqueIdentifier"
			--[[ Upvalues[2]:
				[1]: var37_upvw (read and write)
				[2]: console_upvr (readonly)
			]]
			var37_upvw = "useOpaqueIdentifier"
			console_upvr.error("Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. ".."You can only call Hooks at the top level of your React function. ".."For more information, see ".."https://reactjs.org/link/rules-of-hooks")
			updateHookTypesDev()
			return rerenderOpaqueIdentifier()
		end;
		unstable_isNewReconciler = enableNewReconciler;
	}
end
function module_6_upvr.renderWithHooks(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 3119
	--[[ Upvalues[22]:
		[1]: var31_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: __DEV___upvr (readonly)
		[4]: var38_upvw (read and write)
		[5]: var39_upvw (read and write)
		[6]: NoLanes_upvr (readonly)
		[7]: ReactCurrentDispatcher_upvr (readonly)
		[8]: var42_upvw (read and write)
		[9]: var41_upvw (read and write)
		[10]: var40_upvw (read and write)
		[11]: tbl_21_upvr (readonly)
		[12]: tbl_37_upvr (readonly)
		[13]: var36_upvw (read and write)
		[14]: Error_upvr (readonly)
		[15]: var33_upvw (read and write)
		[16]: var34_upvw (read and write)
		[17]: var43_upvw (read and write)
		[18]: tbl_29_upvr (readonly)
		[19]: tbl_32_upvr (readonly)
		[20]: var37_upvw (read and write)
		[21]: var35_upvw (read and write)
		[22]: getComponentName_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	var31_upvw = arg6
	var32_upvw = arg2
	local var368
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 77 start (CF ANALYSIS FAILED)
	if arg1 ~= nil then
		var368 = arg1._debugHookTypes
	else
		var368 = nil
	end
	var38_upvw = var368
	var368 = 0
	var39_upvw = var368
	-- KONSTANTERROR: [4] 5. Error Block 77 end (CF ANALYSIS FAILED)
end
return module_6_upvr