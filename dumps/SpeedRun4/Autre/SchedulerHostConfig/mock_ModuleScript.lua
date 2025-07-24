-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:10
-- Luau version 6, Types version 3
-- Time taken: 0.004824 seconds

local module_upvr = {}
local var2_upvw = 0
local var3_upvw
local var4_upvw
local var5_upvw = -1
local var6_upvw
local var7_upvw = -1
local var8_upvw = false
local var9_upvw = false
local var10_upvw = false
local var11_upvw = false
local Parent = script.Parent.Parent.Parent
local console_upvr = require(Parent.Shared).console
local disabledLog_upvr = require(Parent.Shared).ConsolePatchingDev.disabledLog
function module_upvr.requestHostCallback(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = arg1
end
function module_upvr.cancelHostCallback() -- Line 32
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	var3_upvw = nil
end
function module_upvr.requestHostTimeout(arg1, arg2) -- Line 36
	--[[ Upvalues[3]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: var2_upvw (read and write)
	]]
	var4_upvw = arg1
	var5_upvw = var2_upvw + arg2
end
function module_upvr.cancelHostTimeout() -- Line 41
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: var5_upvw (read and write)
	]]
	var4_upvw = nil
	var5_upvw = -1
end
function module_upvr.shouldYieldToHost() -- Line 46
	--[[ Upvalues[5]:
		[1]: var6_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var11_upvw (read and write)
		[4]: var10_upvw (read and write)
		[5]: var8_upvw (read and write)
	]]
	local var20 = var6_upvw
	if var7_upvw ~= -1 and var20 ~= nil and var7_upvw <= #var20 or var11_upvw and var10_upvw then
		var8_upvw = true
		return true
	end
	return false
end
function module_upvr.getCurrentTime() -- Line 65
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	return var2_upvw
end
function module_upvr.forceFrameRate() -- Line 69
end
function module_upvr.reset() -- Line 73
	--[[ Upvalues[9]:
		[1]: var9_upvw (read and write)
		[2]: var2_upvw (read and write)
		[3]: var3_upvw (read and write)
		[4]: var4_upvw (read and write)
		[5]: var5_upvw (read and write)
		[6]: var6_upvw (read and write)
		[7]: var7_upvw (read and write)
		[8]: var8_upvw (read and write)
		[9]: var10_upvw (read and write)
	]]
	if var9_upvw then
		error("Cannot reset while already flushing work.")
	end
	var2_upvw = 0
	var3_upvw = nil
	var4_upvw = nil
	var5_upvw = -1
	var6_upvw = nil
	var7_upvw = -1
	var8_upvw = false
	var9_upvw = false
	var10_upvw = false
end
function module_upvr.unstable_flushNumberOfYields(arg1) -- Line 90
	--[[ Upvalues[5]:
		[1]: var9_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var2_upvw (read and write)
		[5]: var8_upvw (read and write)
	]]
	if var9_upvw then
		error("Already flushing work.")
	end
	if var3_upvw ~= nil then
		var7_upvw = arg1
		var9_upvw = true
		local pcall_result1_5, pcall_result2_5 = pcall(function() -- Line 100
			--[[ Upvalues[4]:
				[1]: var3_upvw (readonly)
				[2]: var2_upvw (copied, read and write)
				[3]: var8_upvw (copied, read and write)
				[4]: var3_upvw (copied, read and write)
			]]
			local var30
			repeat
				var30 = var3_upvw(true, var2_upvw)
			until not var30 and var8_upvw
			if not var30 then
				var3_upvw = nil
			end
		end)
		var7_upvw = -1
		var8_upvw = false
		var9_upvw = false
		if not pcall_result1_5 then
			error(pcall_result2_5)
		end
	end
end
function module_upvr.unstable_flushUntilNextPaint() -- Line 121
	--[[ Upvalues[6]:
		[1]: var9_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var11_upvw (read and write)
		[4]: var10_upvw (read and write)
		[5]: var2_upvw (read and write)
		[6]: var8_upvw (read and write)
	]]
	if var9_upvw then
		error("Already flushing work.")
	end
	if var3_upvw ~= nil then
		var11_upvw = true
		var10_upvw = false
		var9_upvw = true
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 132
			--[[ Upvalues[4]:
				[1]: var3_upvw (readonly)
				[2]: var2_upvw (copied, read and write)
				[3]: var8_upvw (copied, read and write)
				[4]: var3_upvw (copied, read and write)
			]]
			local var35
			repeat
				var35 = var3_upvw(true, var2_upvw)
			until not var35 and var8_upvw
			if not var35 then
				var3_upvw = nil
			end
		end)
		var11_upvw = false
		var8_upvw = false
		var9_upvw = false
		if not pcall_result1_2 then
			error(pcall_result2)
		end
	end
end
function module_upvr.unstable_flushExpired() -- Line 154
	--[[ Upvalues[3]:
		[1]: var9_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var2_upvw (read and write)
	]]
	if var9_upvw then
		error("Already flushing work.")
	end
	if var3_upvw ~= nil then
		var9_upvw = true
		local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 160
			--[[ Upvalues[2]:
				[1]: var3_upvw (copied, read and write)
				[2]: var2_upvw (copied, read and write)
			]]
			if not var3_upvw(false, var2_upvw) then
				var3_upvw = nil
			end
		end)
		var9_upvw = false
		if not pcall_result1_3 then
			error(pcall_result2_2)
		end
	end
end
function module_upvr.unstable_flushAllWithoutAsserting() -- Line 178
	--[[ Upvalues[3]:
		[1]: var9_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var2_upvw (read and write)
	]]
	if var9_upvw then
		error("Already flushing work.")
	end
	if var3_upvw ~= nil then
		var9_upvw = true
		local pcall_result1_4, pcall_result2_3 = pcall(function() -- Line 186
			--[[ Upvalues[3]:
				[1]: var3_upvw (readonly)
				[2]: var2_upvw (copied, read and write)
				[3]: var3_upvw (copied, read and write)
			]]
			local var44
			repeat
				var44 = var3_upvw(true, var2_upvw)
			until not var44
			if not var44 then
				var3_upvw = nil
			end
		end)
		var9_upvw = false
		if not pcall_result1_4 then
			error(pcall_result2_3)
		end
		return true
	end
	return false
end
function module_upvr.unstable_clearYields() -- Line 209
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	if var6_upvw == nil then
		return {}
	end
	var6_upvw = nil
	return var6_upvw
end
function module_upvr.unstable_flushAll() -- Line 218
	--[[ Upvalues[2]:
		[1]: var6_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if var6_upvw ~= nil then
		error("Log is not empty. Assert on the log of yielded values before ".."flushing additional work.")
	end
	module_upvr.unstable_flushAllWithoutAsserting()
	if var6_upvw ~= nil then
		error("While flushing work, something yielded a value. Use an ".."assertion helper to assert on the log of yielded values, e.g. ".."expect(Scheduler).toFlushAndYield([...])")
	end
end
function module_upvr.unstable_yieldValue(arg1) -- Line 235
	--[[ Upvalues[3]:
		[1]: console_upvr (readonly)
		[2]: disabledLog_upvr (readonly)
		[3]: var6_upvw (read and write)
	]]
	if console_upvr.log == disabledLog_upvr then
	else
		if var6_upvw == nil then
			local tbl = {}
			tbl[1] = arg1
			var6_upvw = tbl
			return
		end
		table.insert(var6_upvw, arg1)
	end
end
function module_upvr.unstable_advanceTime(arg1) -- Line 252
	--[[ Upvalues[5]:
		[1]: console_upvr (readonly)
		[2]: disabledLog_upvr (readonly)
		[3]: var2_upvw (read and write)
		[4]: var4_upvw (read and write)
		[5]: var5_upvw (read and write)
	]]
	if console_upvr.log == disabledLog_upvr then
	else
		var2_upvw += arg1
		if var4_upvw ~= nil and var5_upvw <= var2_upvw then
			var4_upvw(var2_upvw)
			var5_upvw = -1
			var4_upvw = nil
		end
	end
end
function module_upvr.requestPaint() -- Line 271
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw = true
end
return module_upvr