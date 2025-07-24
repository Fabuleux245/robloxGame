-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:48
-- Luau version 6, Types version 3
-- Time taken: 0.001699 seconds

local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
local createSignal_upvr = require(script.Parent.Parent.Signal).createSignal
local AnimationStepSignal_upvr = require(script.Parent.AnimationStepSignal)
function tbl_2_upvr.start(arg1) -- Line 63
	--[[ Upvalues[1]:
		[1]: AnimationStepSignal_upvr (readonly)
	]]
	if arg1.__running then
	else
		arg1.__connection = AnimationStepSignal_upvr:Connect(function(arg1_2) -- Line 68
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:step(arg1_2)
		end)
		arg1.__running = true
	end
end
function tbl_2_upvr.stop(arg1) -- Line 75
	if arg1.__connection ~= nil then
		arg1.__connection:Disconnect()
	end
	arg1.__running = false
end
function tbl_2_upvr.step(arg1, arg2) -- Line 83
	if arg1.__state.complete then
	else
		if arg1.__goal == nil then return end
		local any_step_result1 = arg1.__goal.step(arg1.__state, arg2)
		if any_step_result1 ~= nil then
			arg1.__state = any_step_result1
		end
		arg1.__fireOnStep(arg1.__state.value)
		if arg1.__state.complete and arg1.__running then
			arg1:stop()
			arg1.__fireOnComplete(arg1.__state.value)
		end
	end
end
function tbl_2_upvr.setGoal(arg1, arg2) -- Line 106
	arg1.__goal = arg2
	arg1.__state.complete = false
	arg1:start()
end
function tbl_2_upvr.onStep(arg1, arg2) -- Line 112
	local any_subscribe_result1_upvr_2 = arg1.__onStep:subscribe(arg2)
	return function() -- Line 115
		--[[ Upvalues[1]:
			[1]: any_subscribe_result1_upvr_2 (readonly)
		]]
		any_subscribe_result1_upvr_2:unsubscribe()
	end
end
function tbl_2_upvr.onComplete(arg1, arg2) -- Line 120
	local any_subscribe_result1_upvr = arg1.__onComplete:subscribe(arg2)
	return function() -- Line 123
		--[[ Upvalues[1]:
			[1]: any_subscribe_result1_upvr (readonly)
		]]
		any_subscribe_result1_upvr:unsubscribe()
	end
end
function tbl_2_upvr.destroy(arg1) -- Line 128
	arg1:stop()
end
return function(arg1) -- Line 41, Named "createSingleMotor"
	--[[ Upvalues[2]:
		[1]: createSignal_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local createSignal_upvr_result1_2, var2_result2 = createSignal_upvr()
	local createSignal_upvr_result1, createSignal_upvr_result2 = createSignal_upvr()
	local module = {
		__goal = nil;
	}
	local tbl = {}
	tbl.value = arg1
	tbl.complete = true
	module.__state = tbl
	module.__onComplete = createSignal_upvr_result1_2
	module.__fireOnComplete = var2_result2
	module.__onStep = createSignal_upvr_result1
	module.__fireOnStep = createSignal_upvr_result2
	module.__running = false
	setmetatable(module, tbl_2_upvr)
	return module
end