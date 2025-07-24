-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:21
-- Luau version 6, Types version 3
-- Time taken: 0.003022 seconds

local Parent = script.Parent.Parent
local ReactFeatureFlags = require(Parent.Shared).ReactFeatureFlags
local enableProfilerTimer_upvr = ReactFeatureFlags.enableProfilerTimer
local enableProfilerCommitHooks_upvr = ReactFeatureFlags.enableProfilerCommitHooks
local Profiler_upvr = require(script.Parent.ReactWorkTags).Profiler
local unstable_now_upvr = require(Parent.Scheduler).unstable_now
local var7_upvw = 0
local var8_upvw = -1
local var9_upvw = -1
local var10_upvw = -1
function getCommitTime() -- Line 43
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	return var7_upvw
end
function recordCommitTime() -- Line 47
	--[[ Upvalues[3]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: unstable_now_upvr (readonly)
	]]
	if not enableProfilerTimer_upvr then
	else
		var7_upvw = unstable_now_upvr()
	end
end
function startProfilerTimer(arg1) -- Line 54
	--[[ Upvalues[3]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: unstable_now_upvr (readonly)
	]]
	if not enableProfilerTimer_upvr then
	else
		var9_upvw = unstable_now_upvr()
		if arg1.actualStartTime ~= nil and arg1.actualStartTime < 0 then
			arg1.actualStartTime = unstable_now_upvr()
		end
	end
end
function stopProfilerTimerIfRunning(arg1) -- Line 67
	--[[ Upvalues[2]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: var9_upvw (read and write)
	]]
	if not enableProfilerTimer_upvr then
	else
		var9_upvw = -1
	end
end
function stopProfilerTimerIfRunningAndRecordDelta(arg1, arg2) -- Line 74
	--[[ Upvalues[3]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: unstable_now_upvr (readonly)
	]]
	if not enableProfilerTimer_upvr then
	elseif 0 <= var9_upvw then
		local var11 = unstable_now_upvr() - var9_upvw
		arg1.actualDuration += var11
		if arg2 then
			arg1.selfBaseDuration = var11
		end
		var9_upvw = -1
	end
end
function recordLayoutEffectDuration(arg1) -- Line 92
	--[[ Upvalues[5]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: enableProfilerCommitHooks_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: unstable_now_upvr (readonly)
		[5]: Profiler_upvr (readonly)
	]]
	if not enableProfilerTimer_upvr or not enableProfilerCommitHooks_upvr then
	elseif 0 <= var8_upvw then
		var8_upvw = -1
		local return_ = arg1.return_
		while return_ ~= nil do
			if return_.tag == Profiler_upvr then
				local stateNode = return_.stateNode
				stateNode.effectDuration += unstable_now_upvr() - var8_upvw
				return
			end
		end
	end
end
function recordPassiveEffectDuration(arg1) -- Line 115
	--[[ Upvalues[5]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: enableProfilerCommitHooks_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: unstable_now_upvr (readonly)
		[5]: Profiler_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	if not enableProfilerTimer_upvr or not enableProfilerCommitHooks_upvr then
	else
		local const_number = 0
		-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 16. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 16. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 20. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 20. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 28. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 28. Error Block 12 end (CF ANALYSIS FAILED)
	end
end
function startLayoutEffectTimer() -- Line 143
	--[[ Upvalues[4]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: enableProfilerCommitHooks_upvr (readonly)
		[3]: var8_upvw (read and write)
		[4]: unstable_now_upvr (readonly)
	]]
	if not enableProfilerTimer_upvr or not enableProfilerCommitHooks_upvr then
	else
		var8_upvw = unstable_now_upvr()
	end
end
function startPassiveEffectTimer() -- Line 150
	--[[ Upvalues[4]:
		[1]: enableProfilerTimer_upvr (readonly)
		[2]: enableProfilerCommitHooks_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: unstable_now_upvr (readonly)
	]]
	if not enableProfilerTimer_upvr or not enableProfilerCommitHooks_upvr then
	else
		var10_upvw = unstable_now_upvr()
	end
end
function transferActualDuration(arg1) -- Line 157
	local child = arg1.child
	while child do
		arg1.actualDuration += child.actualDuration
	end
end
return {
	getCommitTime = getCommitTime;
	recordCommitTime = recordCommitTime;
	recordLayoutEffectDuration = recordLayoutEffectDuration;
	recordPassiveEffectDuration = recordPassiveEffectDuration;
	startLayoutEffectTimer = startLayoutEffectTimer;
	startPassiveEffectTimer = startPassiveEffectTimer;
	startProfilerTimer = startProfilerTimer;
	stopProfilerTimerIfRunning = stopProfilerTimerIfRunning;
	stopProfilerTimerIfRunningAndRecordDelta = stopProfilerTimerIfRunningAndRecordDelta;
	transferActualDuration = transferActualDuration;
}