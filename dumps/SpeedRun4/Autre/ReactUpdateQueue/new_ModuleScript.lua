-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:24
-- Luau version 6, Types version 3
-- Time taken: 0.009413 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local var6_upvw
local function _() -- Line 114, Named "enterDisallowedContextReadInDEV"
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	if not var6_upvw then
		var6_upvw = require(script.Parent["ReactFiberNewContext.new"])
	end
	var6_upvw.enterDisallowedContextReadInDEV()
end
local function _() -- Line 120, Named "exitDisallowedContextReadInDEV"
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	if not var6_upvw then
		var6_upvw = require(script.Parent["ReactFiberNewContext.new"])
	end
	var6_upvw.exitDisallowedContextReadInDEV()
end
local ReactFiberFlags = require(script.Parent.ReactFiberFlags)
local ConsolePatchingDev = require(Parent.Shared).ConsolePatchingDev
local module_2 = {
	UpdateState = 0;
	ReplaceState = 1;
	ForceUpdate = 2;
	CaptureUpdate = 3;
}
local var10_upvw = false
local var11_upvw
local var12_upvw
if __DEV___upvr then
	var11_upvw = false
	var12_upvw = nil
	function module_2.resetCurrentlyProcessingQueue() -- Line 180
		--[[ Upvalues[1]:
			[1]: var12_upvw (read and write)
		]]
		var12_upvw = nil
	end
end
local var15_upvw = 210
for i = 1, 210 do
	table.create(210)[i] = {
		eventTime = -1;
		lane = -1;
		tag = -1;
		payload = nil;
		callback = nil;
		next = nil;
	}
	local var17_upvr
end
function module_2.initializeUpdateQueue(arg1) -- Line 201
	arg1.updateQueue = {
		baseState = arg1.memoizedState;
		firstBaseUpdate = nil;
		lastBaseUpdate = nil;
		shared = {
			pending = nil;
		};
		effects = nil;
	}
end
function module_2.cloneUpdateQueue(arg1, arg2) -- Line 215
	local updateQueue_5 = arg1.updateQueue
	if arg2.updateQueue == updateQueue_5 then
		arg2.updateQueue = table.clone(updateQueue_5)
	end
end
function module_2.createUpdate(arg1, arg2, arg3, arg4) -- Line 229
	--[[ Upvalues[2]:
		[1]: var15_upvw (read and write)
		[2]: var17_upvr (readonly)
	]]
	if 0 < var15_upvw then
		local var21 = var17_upvr[var15_upvw]
		var17_upvr[var15_upvw] = nil
		var15_upvw -= 1
		var21.eventTime = arg1
		var21.lane = arg2
		var21.tag = 0
		var21.payload = arg3
		var21.callback = arg4
		return var21
	end
	local module = {}
	module.eventTime = arg1
	module.lane = arg2
	module.tag = 0
	module.payload = arg3
	module.callback = arg4
	module.next = nil
	return module
end
local console_upvr = require(Parent.Shared).console
function module_2.enqueueUpdate(arg1, arg2) -- Line 279
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: var12_upvw (read and write)
		[3]: var11_upvw (read and write)
		[4]: console_upvr (readonly)
	]]
	local updateQueue_4 = arg1.updateQueue
	if updateQueue_4 == nil then
	else
		local shared = updateQueue_4.shared
		local pending = shared.pending
		if pending == nil then
			arg2.next = arg2
		else
			arg2.next = pending.next
			pending.next = arg2
		end
		shared.pending = arg2
		if __DEV___upvr and var12_upvw == shared and not var11_upvw then
			console_upvr.error("An update (setState, replaceState, or forceUpdate) was scheduled ".."from inside an update function. Update functions should be pure, ".."with zero side-effects. Consider using componentDidUpdate or a ".."callback.")
			var11_upvw = true
		end
	end
end
function module_2.enqueueCapturedUpdate(arg1, arg2) -- Line 311
	local updateQueue_3 = arg1.updateQueue
	local alternate = arg1.alternate
	if alternate ~= nil then
		local updateQueue = alternate.updateQueue
		if updateQueue_3 == updateQueue then
			local var40
			local var41
			local firstBaseUpdate = updateQueue_3.firstBaseUpdate
			if firstBaseUpdate ~= nil then
				local var43 = firstBaseUpdate
				repeat
					local tbl_3 = {
						eventTime = var43.eventTime;
						lane = var43.lane;
						tag = var43.tag;
						payload = var43.payload;
						callback = var43.callback;
						next = nil;
					}
					if var41 == nil then
						var41 = tbl_3
						var40 = tbl_3
					else
						var41.next = tbl_3
						var41 = tbl_3
					end
				until var43.next == nil
				if var41 == nil then
					var41 = arg2
					var40 = arg2
				else
					var41.next = arg2
					var41 = arg2
				end
			else
				var41 = arg2
				var40 = arg2
			end
			updateQueue_3 = {
				baseState = updateQueue.baseState;
				firstBaseUpdate = var40;
				lastBaseUpdate = var41;
				shared = updateQueue.shared;
				effects = updateQueue.effects;
			}
			arg1.updateQueue = updateQueue_3
			return
		end
	end
	local lastBaseUpdate = updateQueue_3.lastBaseUpdate
	if lastBaseUpdate == nil then
		updateQueue_3.firstBaseUpdate = arg2
	else
		lastBaseUpdate.next = arg2
	end
	updateQueue_3.lastBaseUpdate = arg2
end
local debugRenderPhaseSideEffectsForStrictMode_upvr = require(Parent.Shared).ReactFeatureFlags.debugRenderPhaseSideEffectsForStrictMode
local StrictMode_upvr = require(script.Parent.ReactTypeOfMode).StrictMode
local disableLogs_upvr = ConsolePatchingDev.disableLogs
local __YOLO___upvr = _G.__YOLO__
local describeError_upvr = require(Parent.Shared).describeError
local reenableLogs_upvr = ConsolePatchingDev.reenableLogs
local ShouldCapture_upvr = ReactFiberFlags.ShouldCapture
local DidCapture_upvr = ReactFiberFlags.DidCapture
local Object_upvr = require(Parent.LuauPolyfill).Object
local function getStateFromUpdate_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 392, Named "getStateFromUpdate"
	--[[ Upvalues[12]:
		[1]: __DEV___upvr (readonly)
		[2]: var6_upvw (read and write)
		[3]: debugRenderPhaseSideEffectsForStrictMode_upvr (readonly)
		[4]: StrictMode_upvr (readonly)
		[5]: disableLogs_upvr (readonly)
		[6]: __YOLO___upvr (readonly)
		[7]: describeError_upvr (readonly)
		[8]: reenableLogs_upvr (readonly)
		[9]: ShouldCapture_upvr (readonly)
		[10]: DidCapture_upvr (readonly)
		[11]: Object_upvr (readonly)
		[12]: var10_upvw (read and write)
	]]
	local tag = arg3.tag
	if tag == 1 then
		local payload_3 = arg3.payload
		if type(payload_3) == "function" then
			if __DEV___upvr then
				if not var6_upvw then
					var6_upvw = require(script.Parent["ReactFiberNewContext.new"])
				end
				var6_upvw.enterDisallowedContextReadInDEV()
			end
			if __DEV___upvr then
				if debugRenderPhaseSideEffectsForStrictMode_upvr then
					local var70
					if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 then
						disableLogs_upvr()
						local var71
						var70 = nil
						if not __YOLO___upvr then
							local xpcall_result1_2, xpcall_result2_3 = xpcall(payload_3, describeError_upvr, arg4, arg5)
							var71 = xpcall_result1_2
							var70 = xpcall_result2_3
						else
							var71 = true
							payload_3(arg4, arg5)
						end
						reenableLogs_upvr()
						if not var71 then
							error(var70)
						end
					end
				end
				if not var6_upvw then
					var6_upvw = require(script.Parent["ReactFiberNewContext.new"])
				end
				var6_upvw.exitDisallowedContextReadInDEV()
			end
			return payload_3(arg4, arg5)
		end
		return payload_3
	end
	if tag == 3 or tag == 0 then
		if tag == 3 then
			arg1.flags = bit32.bor(bit32.band(arg1.flags, bit32.bnot(ShouldCapture_upvr)), DidCapture_upvr)
		end
		local payload_2 = arg3.payload
		local var75
		if type(payload_2) == "function" then
			if __DEV___upvr then
				if not var6_upvw then
					var6_upvw = require(script.Parent["ReactFiberNewContext.new"])
				end
				var6_upvw.enterDisallowedContextReadInDEV()
			end
			var75 = payload_2(arg4, arg5)
			if __DEV___upvr then
				if debugRenderPhaseSideEffectsForStrictMode_upvr then
					local var76
					if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 then
						disableLogs_upvr()
						local var77
						var76 = nil
						if not __YOLO___upvr then
							local xpcall_result1_4, xpcall_result2 = xpcall(payload_2, describeError_upvr, arg4, arg5)
							var77 = xpcall_result1_4
							var76 = xpcall_result2
						else
							var77 = true
							payload_2(arg4, arg5)
						end
						reenableLogs_upvr()
						if not var77 then
							error(var76)
						end
					end
				end
				if not var6_upvw then
					var6_upvw = require(script.Parent["ReactFiberNewContext.new"])
				end
				var6_upvw.exitDisallowedContextReadInDEV()
				-- KONSTANTWARNING: GOTO [214] #165
			end
		else
			var75 = payload_2
		end
		if var75 == nil then
			return arg4
		end
		return Object_upvr.assign({}, arg4, var75)
	end
	if tag == 2 then
		var10_upvw = true
		return arg4
	end
	return arg4
end
module_2.getStateFromUpdate = getStateFromUpdate_upvr
local NoLanes_upvr = ReactFiberLane.NoLanes
local isSubsetOfLanes_upvr = ReactFiberLane.isSubsetOfLanes
local mergeLanes_upvr = ReactFiberLane.mergeLanes
local NoLane_upvr = ReactFiberLane.NoLane
local Callback_upvr = ReactFiberFlags.Callback
local markSkippedUpdateLanes_upvr = require(script.Parent.ReactFiberWorkInProgress).markSkippedUpdateLanes
function module_2.processUpdateQueue(arg1, arg2, arg3, arg4) -- Line 501
	--[[ Upvalues[10]:
		[1]: var10_upvw (read and write)
		[2]: __DEV___upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: NoLanes_upvr (readonly)
		[5]: isSubsetOfLanes_upvr (readonly)
		[6]: mergeLanes_upvr (readonly)
		[7]: NoLane_upvr (readonly)
		[8]: getStateFromUpdate_upvr (readonly)
		[9]: Callback_upvr (readonly)
		[10]: markSkippedUpdateLanes_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local updateQueue_2 = arg1.updateQueue
	var10_upvw = false
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
	var12_upvw = updateQueue_2.shared
	-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 693, Named "callCallback"
	if type(arg1) ~= "function" then
		error(string.format("Invalid argument passed as callback. Expected a function. Instead ".."received: %s", tostring(arg1)))
	end
	arg1(arg2)
end
function module_2.resetHasForceUpdateBeforeProcessing() -- Line 708
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw = false
end
function module_2.checkHasForceUpdateAfterProcessing() -- Line 712
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	return var10_upvw
end
function module_2.commitUpdateQueue(arg1, arg2, arg3) -- Line 716
	--[[ Upvalues[2]:
		[1]: var17_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	local effects = arg2.effects
	arg2.effects = nil
	if effects ~= nil then
		for _, v in effects do
			local callback = v.callback
			if callback ~= nil then
				if type(callback) ~= "function" then
					error(string.format("Invalid argument passed as callback. Expected a function. Instead ".."received: %s", tostring(callback)))
				end
				callback(arg3)
			end
			table.clear(v)
			table.insert(var17_upvr, v)
			var15_upvw += 1
		end
	end
end
return module_2