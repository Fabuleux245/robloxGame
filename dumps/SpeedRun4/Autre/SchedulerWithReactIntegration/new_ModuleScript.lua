-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:26
-- Luau version 6, Types version 3
-- Time taken: 0.003997 seconds

local Parent = script.Parent.Parent
local Scheduler = require(Parent.Scheduler)
local invariant_upvr = require(Parent.Shared).invariant
local ReactFiberLane = require(script.Parent.ReactFiberLane)
local unstable_runWithPriority_upvr = Scheduler.unstable_runWithPriority
local unstable_scheduleCallback_upvr = Scheduler.unstable_scheduleCallback
local unstable_cancelCallback_upvr = Scheduler.unstable_cancelCallback
local unstable_requestPaint = Scheduler.unstable_requestPaint
local unstable_now_upvr = Scheduler.unstable_now
local unstable_ImmediatePriority_upvr = Scheduler.unstable_ImmediatePriority
local unstable_UserBlockingPriority_upvr = Scheduler.unstable_UserBlockingPriority
local unstable_NormalPriority_upvr = Scheduler.unstable_NormalPriority
local unstable_LowPriority_upvr = Scheduler.unstable_LowPriority
local unstable_IdlePriority_upvr = Scheduler.unstable_IdlePriority
local roblox = require(script.Parent["ReactFiberSchedulerPriorities.roblox"])
local ImmediatePriority_upvr = roblox.ImmediatePriority
local UserBlockingPriority_upvr = roblox.UserBlockingPriority
local NormalPriority_upvr = roblox.NormalPriority
local LowPriority_upvr = roblox.LowPriority
local IdlePriority_upvr = roblox.IdlePriority
local NoPriority_upvr = roblox.NoPriority
local var32_upvw
local tbl_upvr = {}
local var24
if unstable_requestPaint ~= nil then
	var24 = unstable_requestPaint
else
	var24 = function() -- Line 93
	end
end
local var26_upvw
local var27_upvw
local unstable_now_upvr_result1_upvr = unstable_now_upvr()
local unstable_getCurrentPriorityLevel_upvr = Scheduler.unstable_getCurrentPriorityLevel
function reactPriorityToSchedulerPriority(arg1) -- Line 140
	--[[ Upvalues[11]:
		[1]: ImmediatePriority_upvr (readonly)
		[2]: unstable_ImmediatePriority_upvr (readonly)
		[3]: UserBlockingPriority_upvr (readonly)
		[4]: unstable_UserBlockingPriority_upvr (readonly)
		[5]: NormalPriority_upvr (readonly)
		[6]: unstable_NormalPriority_upvr (readonly)
		[7]: LowPriority_upvr (readonly)
		[8]: unstable_LowPriority_upvr (readonly)
		[9]: IdlePriority_upvr (readonly)
		[10]: unstable_IdlePriority_upvr (readonly)
		[11]: invariant_upvr (readonly)
	]]
	if arg1 == ImmediatePriority_upvr then
		return unstable_ImmediatePriority_upvr
	end
	if arg1 == UserBlockingPriority_upvr then
		return unstable_UserBlockingPriority_upvr
	end
	if arg1 == NormalPriority_upvr then
		return unstable_NormalPriority_upvr
	end
	if arg1 == LowPriority_upvr then
		return unstable_LowPriority_upvr
	end
	if arg1 == IdlePriority_upvr then
		return unstable_IdlePriority_upvr
	end
	invariant_upvr(false, "Unknown priority level.")
	return nil
end
local function runWithPriority_upvr(arg1, arg2) -- Line 159, Named "runWithPriority"
	--[[ Upvalues[1]:
		[1]: unstable_runWithPriority_upvr (readonly)
	]]
	return unstable_runWithPriority_upvr(reactPriorityToSchedulerPriority(arg1), arg2)
end
local function flushSyncCallbackQueue_upvr() -- Line 201, Named "flushSyncCallbackQueue"
	--[[ Upvalues[3]:
		[1]: var27_upvw (read and write)
		[2]: unstable_cancelCallback_upvr (readonly)
		[3]: var32_upvw (read and write)
	]]
	if var27_upvw ~= nil then
		var27_upvw = nil
		unstable_cancelCallback_upvr(var27_upvw)
	end
	return var32_upvw()
end
local var33_upvw = false
local decoupleUpdatePriorityFromScheduler_upvr = require(Parent.Shared).ReactFeatureFlags.decoupleUpdatePriorityFromScheduler
local getCurrentUpdateLanePriority_upvr = ReactFiberLane.getCurrentUpdateLanePriority
local setCurrentUpdateLanePriority_upvr = ReactFiberLane.setCurrentUpdateLanePriority
local SyncLanePriority_upvr = ReactFiberLane.SyncLanePriority
local describeError_upvr = require(Parent.Shared).describeError
local Array_upvr = require(Parent.LuauPolyfill).Array
function var32_upvw() -- Line 210
	--[[ Upvalues[14]:
		[1]: var33_upvw (read and write)
		[2]: var26_upvw (read and write)
		[3]: decoupleUpdatePriorityFromScheduler_upvr (readonly)
		[4]: getCurrentUpdateLanePriority_upvr (readonly)
		[5]: setCurrentUpdateLanePriority_upvr (readonly)
		[6]: SyncLanePriority_upvr (readonly)
		[7]: runWithPriority_upvr (readonly)
		[8]: describeError_upvr (readonly)
		[9]: ImmediatePriority_upvr (readonly)
		[10]: unstable_runWithPriority_upvr (readonly)
		[11]: Array_upvr (readonly)
		[12]: unstable_scheduleCallback_upvr (readonly)
		[13]: unstable_ImmediatePriority_upvr (readonly)
		[14]: flushSyncCallbackQueue_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [140] 126. Error Block 21 start (CF ANALYSIS FAILED)
	do
		return true
	end
	-- KONSTANTERROR: [140] 126. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [144] 130. Error Block 22 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [144] 130. Error Block 22 end (CF ANALYSIS FAILED)
end
return {
	ImmediatePriority = ImmediatePriority_upvr;
	UserBlockingPriority = UserBlockingPriority_upvr;
	NormalPriority = NormalPriority_upvr;
	LowPriority = LowPriority_upvr;
	IdlePriority = IdlePriority_upvr;
	NoPriority = NoPriority_upvr;
	getCurrentPriorityLevel = function() -- Line 121, Named "getCurrentPriorityLevel"
		--[[ Upvalues[13]:
			[1]: unstable_getCurrentPriorityLevel_upvr (readonly)
			[2]: unstable_ImmediatePriority_upvr (readonly)
			[3]: ImmediatePriority_upvr (readonly)
			[4]: unstable_UserBlockingPriority_upvr (readonly)
			[5]: UserBlockingPriority_upvr (readonly)
			[6]: unstable_NormalPriority_upvr (readonly)
			[7]: NormalPriority_upvr (readonly)
			[8]: unstable_LowPriority_upvr (readonly)
			[9]: LowPriority_upvr (readonly)
			[10]: unstable_IdlePriority_upvr (readonly)
			[11]: IdlePriority_upvr (readonly)
			[12]: invariant_upvr (readonly)
			[13]: NoPriority_upvr (readonly)
		]]
		local unstable_getCurrentPriorityLevel_upvr_result1 = unstable_getCurrentPriorityLevel_upvr()
		if unstable_getCurrentPriorityLevel_upvr_result1 == unstable_ImmediatePriority_upvr then
			return ImmediatePriority_upvr
		end
		if unstable_getCurrentPriorityLevel_upvr_result1 == unstable_UserBlockingPriority_upvr then
			return UserBlockingPriority_upvr
		end
		if unstable_getCurrentPriorityLevel_upvr_result1 == unstable_NormalPriority_upvr then
			return NormalPriority_upvr
		end
		if unstable_getCurrentPriorityLevel_upvr_result1 == unstable_LowPriority_upvr then
			return LowPriority_upvr
		end
		if unstable_getCurrentPriorityLevel_upvr_result1 == unstable_IdlePriority_upvr then
			return IdlePriority_upvr
		end
		invariant_upvr(false, "Unknown priority level.")
		return NoPriority_upvr
	end;
	flushSyncCallbackQueue = flushSyncCallbackQueue_upvr;
	runWithPriority = runWithPriority_upvr;
	scheduleCallback = function(arg1, arg2, arg3) -- Line 167, Named "scheduleCallback"
		--[[ Upvalues[1]:
			[1]: unstable_scheduleCallback_upvr (readonly)
		]]
		return unstable_scheduleCallback_upvr(reactPriorityToSchedulerPriority(arg1), arg2, arg3)
	end;
	scheduleSyncCallback = function(arg1) -- Line 176, Named "scheduleSyncCallback"
		--[[ Upvalues[6]:
			[1]: var26_upvw (read and write)
			[2]: var27_upvw (read and write)
			[3]: unstable_scheduleCallback_upvr (readonly)
			[4]: unstable_ImmediatePriority_upvr (readonly)
			[5]: var32_upvw (read and write)
			[6]: tbl_upvr (readonly)
		]]
		if var26_upvw == nil then
			local tbl = {}
			tbl[1] = arg1
			var26_upvw = tbl
			var27_upvw = unstable_scheduleCallback_upvr(unstable_ImmediatePriority_upvr, var32_upvw)
		else
			table.insert(var26_upvw, arg1)
		end
		return tbl_upvr
	end;
	cancelCallback = function(arg1) -- Line 195, Named "cancelCallback"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: unstable_cancelCallback_upvr (readonly)
		]]
		if arg1 ~= tbl_upvr then
			unstable_cancelCallback_upvr(arg1)
		end
	end;
	now = function() -- Line 117, Named "now"
		--[[ Upvalues[2]:
			[1]: unstable_now_upvr (readonly)
			[2]: unstable_now_upvr_result1_upvr (readonly)
		]]
		return unstable_now_upvr() - unstable_now_upvr_result1_upvr
	end;
	requestPaint = var24;
	shouldYield = Scheduler.unstable_shouldYield;
}