-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:14
-- Luau version 6, Types version 3
-- Time taken: 0.003967 seconds

local module_upvr = {}
local enableProfiling_upvr = require(script.Parent.SchedulerFeatureFlags).enableProfiling
local var3_upvw = 0
local var4_upvw = 0
local var5_upvw = 0
local var6_upvw
local var7_upvw
local var8_upvw = 1
local console_upvr = require(script.Parent.Parent.Shared).console
local function logEvent_upvr(arg1) -- Line 46, Named "logEvent"
	--[[ Upvalues[6]:
		[1]: var7_upvw (read and write)
		[2]: var8_upvw (read and write)
		[3]: var5_upvw (read and write)
		[4]: console_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: var6_upvw (read and write)
	]]
	if var7_upvw ~= nil then
		var8_upvw += #arg1
		if var5_upvw < var8_upvw + 1 then
			var5_upvw *= 2
			if 524288 < var5_upvw then
				console_upvr.error("Scheduler Profiling: Event log exceeded maximum size. Don't ".."forget to call `stopLoggingProfilingEvents()`.")
				module_upvr.stopLoggingProfilingEvents()
				return
			end
			local tbl_2 = {}
			table.insert(tbl_2, var7_upvw)
			var6_upvw = tbl_2
			var7_upvw = tbl_2
		end
		table.insert(var7_upvw, arg1)
	end
end
function module_upvr.startLoggingProfilingEvents() -- Line 70
	--[[ Upvalues[4]:
		[1]: var5_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var8_upvw (read and write)
	]]
	var5_upvw = 131072
	var6_upvw = {}
	var7_upvw = var6_upvw
	var8_upvw = 1
end
function module_upvr.stopLoggingProfilingEvents() -- Line 77
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var8_upvw (read and write)
	]]
	var5_upvw = 0
	var6_upvw = nil
	var7_upvw = nil
	var8_upvw = 1
	return var6_upvw
end
function module_upvr.markTaskStart(arg1, arg2) -- Line 87
	--[[ Upvalues[3]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: logEvent_upvr (readonly)
	]]
	if enableProfiling_upvr and var7_upvw ~= nil then
		logEvent_upvr({1, arg2 * 1000, arg1.id, arg1.priorityLevel})
	end
end
function module_upvr.markTaskCompleted(arg1, arg2) -- Line 98
	--[[ Upvalues[3]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: logEvent_upvr (readonly)
	]]
	if enableProfiling_upvr and var7_upvw ~= nil then
		logEvent_upvr({2, arg2 * 1000, arg1.id})
	end
end
function module_upvr.markTaskCanceled(arg1, arg2) -- Line 109
	--[[ Upvalues[3]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: logEvent_upvr (readonly)
	]]
	if enableProfiling_upvr and var7_upvw ~= nil then
		logEvent_upvr({4, arg2 * 1000, arg1.id})
	end
end
function module_upvr.markTaskErrored(arg1, arg2) -- Line 117
	--[[ Upvalues[3]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: logEvent_upvr (readonly)
	]]
	if enableProfiling_upvr and var7_upvw ~= nil then
		logEvent_upvr({3, arg2 * 1000, arg1.id})
	end
end
function module_upvr.markTaskRun(arg1, arg2) -- Line 125
	--[[ Upvalues[4]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: logEvent_upvr (readonly)
	]]
	if enableProfiling_upvr then
		var3_upvw += 1
		if var7_upvw ~= nil then
			logEvent_upvr({5, arg2 * 1000, arg1.id, var3_upvw})
		end
	end
end
function module_upvr.markTaskYield(arg1, arg2) -- Line 135
	--[[ Upvalues[4]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: logEvent_upvr (readonly)
		[4]: var3_upvw (read and write)
	]]
	if enableProfiling_upvr then
		if var7_upvw ~= nil then
			logEvent_upvr({6, arg2 * 1000, arg1.id, var3_upvw})
		end
	end
end
function module_upvr.markSchedulerSuspended(arg1) -- Line 143
	--[[ Upvalues[4]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: logEvent_upvr (readonly)
	]]
	if enableProfiling_upvr then
		var4_upvw += 1
		if var7_upvw ~= nil then
			logEvent_upvr({7, arg1 * 1000, var4_upvw})
		end
	end
end
function module_upvr.markSchedulerUnsuspended(arg1) -- Line 153
	--[[ Upvalues[4]:
		[1]: enableProfiling_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: logEvent_upvr (readonly)
		[4]: var4_upvw (read and write)
	]]
	if enableProfiling_upvr then
		if var7_upvw ~= nil then
			logEvent_upvr({8, arg1 * 1000, var4_upvw})
		end
	end
end
return module_upvr