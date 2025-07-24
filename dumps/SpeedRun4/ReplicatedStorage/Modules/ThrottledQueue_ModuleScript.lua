-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:16
-- Luau version 6, Types version 3
-- Time taken: 0.004125 seconds

local module_upvr = {
	ThrottleMode = table.freeze({
		PerPeriod = 1;
		PerFrame = 2;
	});
	OverflowBehavior = table.freeze({
		DropRequest = 1;
		ClearOldest = 2;
	});
	RequestStatus = table.freeze({
		InQueue = 1;
		Running = 2;
		Complete = 3;
		Canceled = 4;
	});
}
function module_upvr.new(arg1) -- Line 69
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return {
		_Queue = {};
		_OperationsThisCall = 0;
		_LastProcessedAt = 0;
		Dirty = false;
		Locked = false;
		MaxSize = math.huge;
		OverflowBehavior = module_upvr.OverflowBehavior.DropRequest;
		Throttle = arg1 or 0;
		ThrottleMode = module_upvr.ThrottleMode.PerPeriod;
	}
end
function module_upvr.ContainsArgument(arg1, arg2, arg3) -- Line 86
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local var10 = false
	if arg3 then
		for _, v in ipairs(arg1._Queue) do
			if v.Arguments[arg3] == arg2 then
				var10 = true
				return var10
			end
		end
		return var10
	end
	local _, _, _ = ipairs(arg1._Queue)
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 8 end (CF ANALYSIS FAILED)
end
function module_upvr.Queue(arg1, arg2, ...) -- Line 117
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var19
	local _Queue = arg1._Queue
	local var21
	if not var21 then
		if #_Queue >= arg1.MaxSize then
			var21 = false
		else
			var21 = true
		end
		if not var21 and arg1.OverflowBehavior == module_upvr.OverflowBehavior.ClearOldest then
			local len = #_Queue
			table.move(_Queue, len - arg1.MaxSize + 1 + 1, len, 1)
			for i_2 = len, arg1.MaxSize, -1 do
				_Queue[i_2] = nil
			end
			var21 = true
		end
		if var21 then
			local tbl = {
				Arguments = table.pack(...);
				Returns = {
					n = 0;
				};
			}
			tbl.Callback = arg2
			tbl.Status = module_upvr.RequestStatus.InQueue
			var19 = tbl
			_Queue[#_Queue + 1] = var19
			arg1.Dirty = true
		end
	end
	return var19
end
function module_upvr.Remove(arg1, arg2) -- Line 160
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local table_find_result1 = table.find(arg1._Queue, arg2)
	local var26
	if arg2 and table_find_result1 then
		var26 = true
		table.remove(arg1._Queue, table_find_result1)
		arg2.Status = module_upvr.RequestStatus.Canceled
	end
	return var26
end
function module_upvr.Destroy(arg1) -- Line 182
	table.clear(arg1._Queue)
	arg1._OperationsThisCall = 0
	arg1._LastProcessedAt = 0
end
local var27_upvw
local function _(arg1) -- Line 194, Named "PerformRequest"
	--[[ Upvalues[2]:
		[1]: var27_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	var27_upvw = nil
	arg1.Status = module_upvr.RequestStatus.Running
	arg1.Returns = table.pack(arg1.Callback(table.unpack(arg1.Arguments, 1, arg1.Arguments.n)))
	arg1.Status = module_upvr.RequestStatus.Complete
	var27_upvw = var27_upvw
end
local function FreeThreadHandler_upvr() -- Line 207, Named "FreeThreadHandler"
	--[[ Upvalues[2]:
		[1]: var27_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	while true do
		local coroutine_yield_result1 = coroutine.yield()
		var27_upvw = nil
		coroutine_yield_result1.Status = module_upvr.RequestStatus.Running
		coroutine_yield_result1.Returns = table.pack(coroutine_yield_result1.Callback(table.unpack(coroutine_yield_result1.Arguments, 1, coroutine_yield_result1.Arguments.n)))
		coroutine_yield_result1.Status = module_upvr.RequestStatus.Complete
		var27_upvw = var27_upvw
	end
end
local function _(arg1, arg2) -- Line 213, Named "ProcessRequest"
	--[[ Upvalues[2]:
		[1]: var27_upvw (read and write)
		[2]: FreeThreadHandler_upvr (readonly)
	]]
	local var29 = false
	local popped_2 = table.remove(arg1._Queue, 1)
	if popped_2 then
		var29 = true
		arg1._LastProcessedAt = arg2
		arg1._OperationsThisCall += 1
		local var31 = var27_upvw
		if not var31 then
			var31 = task.spawn(FreeThreadHandler_upvr)
		end
		task.spawn(var31, popped_2)
	end
	return var29
end
local tbl_2_upvr = {
	[module_upvr.ThrottleMode.PerPeriod] = function(arg1, arg2) -- Line 240
		--[[ Upvalues[2]:
			[1]: var27_upvw (read and write)
			[2]: FreeThreadHandler_upvr (readonly)
		]]
		if arg1._LastProcessedAt + arg1.Throttle <= arg2 and table.remove(arg1._Queue, 1) then
			arg1._LastProcessedAt = arg2
			arg1._OperationsThisCall += 1
			local var34 = var27_upvw
			if not var34 then
				var34 = task.spawn(FreeThreadHandler_upvr)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			task.spawn(var34, table.remove(arg1._Queue, 1))
		end
	end;
	[module_upvr.ThrottleMode.PerFrame] = function(arg1, arg2) -- Line 247
		--[[ Upvalues[2]:
			[1]: var27_upvw (read and write)
			[2]: FreeThreadHandler_upvr (readonly)
		]]
		repeat
			local var36 = false
			local popped = table.remove(arg1._Queue, 1)
			if popped then
				var36 = true
				arg1._LastProcessedAt = arg2
				arg1._OperationsThisCall += 1
				local var38 = var27_upvw
				if not var38 then
					var38 = task.spawn(FreeThreadHandler_upvr)
				end
				task.spawn(var38, popped)
			end
		until not var36 and arg1.Throttle <= arg1._OperationsThisCall
	end;
}
function module_upvr.Update(arg1, arg2) -- Line 256
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	arg1._OperationsThisCall = 0
	arg1.Dirty = false
	assert(tbl_2_upvr[arg1.ThrottleMode], "Invalid ThrottleMode")(arg1, arg2)
end
return module_upvr