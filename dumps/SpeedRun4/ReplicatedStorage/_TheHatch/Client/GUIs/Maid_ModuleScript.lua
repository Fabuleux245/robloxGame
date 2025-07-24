-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:08
-- Luau version 6, Types version 3
-- Time taken: 0.003462 seconds

local module_upvr = {
	ClassName = "Maid";
}
function module_upvr.new() -- Line 39
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		_tasks = {};
	}, module_upvr)
end
function module_upvr.isMaid(arg1) -- Line 56
	local var3 = false
	if type(arg1) == "table" then
		if arg1.ClassName ~= "Maid" then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end
function module_upvr.__index(arg1, arg2) -- Line 75
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr[arg2] then
		return module_upvr[arg2]
	end
	return arg1._tasks[arg2]
end
function module_upvr.__newindex(arg1, arg2, arg3) -- Line 102
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	error("Cannot use '%s' as a Maid key":format(tostring(arg2)), 2)
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.Add(arg1, arg2) -- Line 146
	if not arg2 then
		error("Task cannot be false or nil", 2)
	end
	arg1[#arg1._tasks + 1] = arg2
	if type(arg2) == "table" and not arg2.Destroy then
		warn("[Maid.GiveTask] - Gave table task without .Destroy\n\n"..debug.traceback())
	end
	return arg2
end
function module_upvr.GiveTask(arg1, arg2) -- Line 166
	if not arg2 then
		error("Task cannot be false or nil", 2)
	end
	local var4 = #arg1._tasks + 1
	arg1[var4] = arg2
	if type(arg2) == "table" and not arg2.Destroy then
		warn("[Maid.GiveTask] - Gave table task without .Destroy\n\n"..debug.traceback())
	end
	return var4
end
function module_upvr.GivePromise(arg1, arg2) -- Line 187
	if not arg2:IsPending() then
		return arg2
	end
	local any_resolved_result1 = arg2.resolved(arg2)
	local any_GiveTask_result1_upvr = arg1:GiveTask(any_resolved_result1)
	any_resolved_result1:Finally(function() -- Line 196
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_GiveTask_result1_upvr (readonly)
		]]
		arg1[any_GiveTask_result1_upvr] = nil
	end)
	return any_resolved_result1
end
function module_upvr.DoCleaning(arg1) -- Line 219
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local _tasks = arg1._tasks
	for i, v in pairs(_tasks) do
		if typeof(v) == "RBXScriptConnection" then
			_tasks[i] = nil
			v:Disconnect()
		end
	end
	local _, _ = next(_tasks)
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 63. Error Block 21 start (CF ANALYSIS FAILED)
	local _, next_result2 = next(_tasks)
	-- KONSTANTERROR: [83] 63. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 6 end (CF ANALYSIS FAILED)
end
module_upvr.Destroy = module_upvr.DoCleaning
return module_upvr