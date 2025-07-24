-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:14
-- Luau version 6, Types version 3
-- Time taken: 0.006345 seconds

local Parent = script.Parent.Parent
local Set_upvr = require(Parent.LuauPolyfill).Set
local module = {}
local enableSchedulerTracing_upvr = require(Parent.Shared).ReactFeatureFlags.enableSchedulerTracing
local var5_upvw
local var6_upvw
if enableSchedulerTracing_upvr then
	var5_upvw = {
		current = Set_upvr.new();
	}
	var6_upvw = {
		current = nil;
	}
end
module.__interactionsRef = var5_upvw
module.__subscriberRef = var6_upvw
function module.unstable_clear(arg1) -- Line 92
	--[[ Upvalues[3]:
		[1]: enableSchedulerTracing_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: Set_upvr (readonly)
	]]
	if not enableSchedulerTracing_upvr then
		return arg1()
	end
	var5_upvw.current = Set_upvr.new()
	local pcall_result1_2, pcall_result2_6 = pcall(arg1)
	var5_upvw.current = var5_upvw.current
	if not pcall_result1_2 then
		error(pcall_result2_6)
	end
	return pcall_result2_6
end
function module.unstable_getCurrent() -- Line 112
	--[[ Upvalues[2]:
		[1]: enableSchedulerTracing_upvr (readonly)
		[2]: var5_upvw (read and write)
	]]
	if not enableSchedulerTracing_upvr then
		return nil
	end
	return var5_upvw.current
end
local var14_upvw = 0
function module.unstable_getThreadID() -- Line 120
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	var14_upvw += 1
	return var14_upvw
end
local var16_upvw = 0
function module.unstable_trace(arg1, arg2, arg3, arg4) -- Line 125
	--[[ Upvalues[5]:
		[1]: enableSchedulerTracing_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: var5_upvw (read and write)
		[4]: Set_upvr (readonly)
		[5]: var6_upvw (read and write)
	]]
	if arg4 ~= nil then
		local _ = arg4
	else
	end
	if not enableSchedulerTracing_upvr then
		return arg3()
	end
	local tbl_upvr = {
		__count = 1;
		id = var16_upvw;
	}
	tbl_upvr.name = arg1
	tbl_upvr.timestamp = arg2
	var16_upvw += 1
	local current = var5_upvw.current
	local any_new_result1_upvr = Set_upvr.new(current)
	any_new_result1_upvr:add(tbl_upvr)
	var5_upvw.current = any_new_result1_upvr
	local current_2_upvr = var6_upvw.current
	local var22_upvw
	local pcall_result1_8, pcall_result2_7 = pcall(function() -- Line 159
		--[[ Upvalues[2]:
			[1]: current_2_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		if current_2_upvr ~= nil then
			current_2_upvr.onInteractionTraced(tbl_upvr)
		end
	end)
	local const_number_upvr = 0
	local pcall_result1_6, pcall_result2_3 = pcall(function() -- Line 166
		--[[ Upvalues[3]:
			[1]: current_2_upvr (readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: const_number_upvr (readonly)
		]]
		if current_2_upvr ~= nil then
			current_2_upvr.onWorkStarted(any_new_result1_upvr, const_number_upvr)
		end
	end)
	local pcall_result1_5, pcall_result2_9 = pcall(function() -- Line 174
		--[[ Upvalues[2]:
			[1]: var22_upvw (read and write)
			[2]: arg3 (readonly)
		]]
		var22_upvw = arg3()
	end)
	var5_upvw.current = current
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 180
		--[[ Upvalues[3]:
			[1]: current_2_upvr (readonly)
			[2]: any_new_result1_upvr (readonly)
			[3]: const_number_upvr (readonly)
		]]
		if current_2_upvr ~= nil then
			current_2_upvr.onWorkStopped(any_new_result1_upvr, const_number_upvr)
		end
	end)
	tbl_upvr.__count -= 1
	if current_2_upvr ~= nil and tbl_upvr.__count == 0 then
		current_2_upvr.onInteractionScheduledWorkCompleted(tbl_upvr)
	end
	if not pcall_result1_3 then
		error(pcall_result2_2)
	end
	if not pcall_result1_5 then
		error(pcall_result2_9)
	end
	if not pcall_result1_6 then
		error(pcall_result2_3)
	end
	if not pcall_result1_8 then
		error(pcall_result2_7)
	end
	return var22_upvw
end
function module.unstable_wrap(arg1, arg2) -- Line 213
	--[[ Upvalues[3]:
		[1]: enableSchedulerTracing_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var6_upvw (read and write)
	]]
	if arg2 == nil then
		local const_number_upvw = 0
	end
	if not enableSchedulerTracing_upvr then
		return arg1
	end
	local current_4_upvr = var5_upvw.current
	local current_5_upvw = var6_upvw.current
	if current_5_upvw ~= nil then
		current_5_upvw.onWorkScheduled(current_4_upvr, const_number_upvw)
	end
	for _, v in current_4_upvr do
		v.__count += 1
	end
	local var44_upvw = false
	local module_2 = {}
	setmetatable(module_2, {
		__call = function(arg1_2, ...) -- Line 241, Named "_wrapped"
			--[[ Upvalues[7]:
				[1]: var5_upvw (copied, read and write)
				[2]: current_4_upvr (readonly)
				[3]: current_5_upvw (read and write)
				[4]: var6_upvw (copied, read and write)
				[5]: const_number_upvw (read and write)
				[6]: arg1 (readonly)
				[7]: var44_upvw (read and write)
			]]
			var5_upvw.current = current_4_upvr
			current_5_upvw = var6_upvw.current
			local current_3_upvr = var5_upvw.current
			local pcall_result1_9, pcall_result2_5 = pcall(function(...) -- Line 248
				--[[ Upvalues[6]:
					[1]: current_5_upvw (copied, read and write)
					[2]: current_4_upvr (copied, readonly)
					[3]: const_number_upvw (copied, read and write)
					[4]: arg1 (copied, readonly)
					[5]: var5_upvw (copied, read and write)
					[6]: current_3_upvr (readonly)
				]]
				local var49_upvw
				local pcall_result1_4, pcall_result2_4 = pcall(function() -- Line 252
					--[[ Upvalues[3]:
						[1]: current_5_upvw (copied, read and write)
						[2]: current_4_upvr (copied, readonly)
						[3]: const_number_upvw (copied, read and write)
					]]
					if current_5_upvw ~= nil then
						current_5_upvw.onWorkStarted(current_4_upvr, const_number_upvw)
					end
				end)
				local pcall_result1_7, pcall_result2_8 = pcall(function(...) -- Line 259
					--[[ Upvalues[2]:
						[1]: var49_upvw (read and write)
						[2]: arg1 (copied, readonly)
					]]
					var49_upvw = arg1(...)
				end, ...)
				var5_upvw.current = current_3_upvr
				if current_5_upvw ~= nil then
					current_5_upvw.onWorkStopped(current_4_upvr, const_number_upvw)
				end
				if not pcall_result1_7 then
					error(pcall_result2_8)
				end
				if not pcall_result1_4 then
					error(pcall_result2_4)
				end
				return var49_upvw
			end, ...)
			if not var44_upvw then
				var44_upvw = true
				for _, v_2 in current_4_upvr do
					v_2.__count -= 1
					if current_5_upvw ~= nil and v_2.__count == 0 then
						current_5_upvw.onInteractionScheduledWorkCompleted(v_2)
					end
				end
			end
			if not pcall_result1_9 then
				error(pcall_result2_5)
			end
			return pcall_result2_5
		end;
	})
	function module_2.cancel() -- Line 306
		--[[ Upvalues[4]:
			[1]: current_5_upvw (read and write)
			[2]: var6_upvw (copied, read and write)
			[3]: current_4_upvr (readonly)
			[4]: const_number_upvw (read and write)
		]]
		current_5_upvw = var6_upvw.current
		local pcall_result1, pcall_result2 = pcall(function() -- Line 309
			--[[ Upvalues[3]:
				[1]: current_5_upvw (copied, read and write)
				[2]: current_4_upvr (copied, readonly)
				[3]: const_number_upvw (copied, read and write)
			]]
			if current_5_upvw ~= nil then
				current_5_upvw.onWorkCanceled(current_4_upvr, const_number_upvw)
			end
		end)
		for _, v_3 in current_4_upvr do
			v_3.__count -= 1
			if current_5_upvw ~= nil and v_3.__count == 0 then
				current_5_upvw.onInteractionScheduledWorkCompleted(v_3)
			end
		end
		if not pcall_result1 then
			error(pcall_result2)
		end
	end
	return module_2
end
return module