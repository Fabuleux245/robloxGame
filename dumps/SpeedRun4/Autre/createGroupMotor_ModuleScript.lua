-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:48
-- Luau version 6, Types version 3
-- Time taken: 0.002659 seconds

local Parent = script.Parent.Parent
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local createSignal_upvr = require(Parent.Signal).createSignal
local AnimationStepSignal_upvr = require(script.Parent.AnimationStepSignal)
function tbl_upvr.start(arg1) -- Line 82
	--[[ Upvalues[1]:
		[1]: AnimationStepSignal_upvr (readonly)
	]]
	if arg1.__running then
	else
		arg1.__connection = AnimationStepSignal_upvr:Connect(function(arg1_2) -- Line 87
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:step(arg1_2)
		end)
		arg1.__running = true
	end
end
function tbl_upvr.stop(arg1) -- Line 94
	if arg1.__connection ~= nil then
		arg1.__connection:Disconnect()
		arg1.__running = false
	end
end
function tbl_upvr.step(arg1, arg2) -- Line 101
	local var24
	if var24 then
	else
		var24 = true
		local tbl_2 = {}
		for i_3, v_2 in pairs(arg1.__states) do
			if not v_2.complete then
				local var29 = arg1.__goals[i_3]
				if var29 ~= nil then
					local any_step_result1 = var29.step(v_2, arg2)
					if any_step_result1 ~= nil then
						v_2 = any_step_result1
						arg1.__states[i_3] = any_step_result1
						-- KONSTANTWARNING: GOTO [36] #26
					end
				else
					v_2.complete = true
				end
				if not v_2.complete then
					var24 = false
				end
			end
			tbl_2[i_3] = v_2.value
		end
		arg1.__allComplete = var24
		arg1.__fireOnStep(tbl_2)
		if arg1.__allComplete and not arg1.__allComplete and arg1.__running then
			arg1:stop()
			arg1.__fireOnComplete(tbl_2)
		end
	end
end
local Object_upvr = require(Parent.Collections).Object
function tbl_upvr.setGoal(arg1, arg2) -- Line 146
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	arg1.__goals = Object_upvr.assign({}, arg1.__goals, arg2)
	for i_2 in pairs(arg2) do
		local var36 = arg1.__states[i_2]
		if var36 == nil then
			error("Cannot set goal for the value %s because it doesn't exist":format(tostring(i_2)), 2)
		end
		var36.complete = false
	end
	arg1.__allComplete = false
	arg1:start()
end
function tbl_upvr.onStep(arg1, arg2) -- Line 163
	local any_subscribe_result1_upvr_2 = arg1.__onStep:subscribe(arg2)
	return function() -- Line 166
		--[[ Upvalues[1]:
			[1]: any_subscribe_result1_upvr_2 (readonly)
		]]
		any_subscribe_result1_upvr_2:unsubscribe()
	end
end
function tbl_upvr.onComplete(arg1, arg2) -- Line 171
	local any_subscribe_result1_upvr = arg1.__onComplete:subscribe(arg2)
	return function() -- Line 174
		--[[ Upvalues[1]:
			[1]: any_subscribe_result1_upvr (readonly)
		]]
		any_subscribe_result1_upvr:unsubscribe()
	end
end
function tbl_upvr.destroy(arg1) -- Line 179
	arg1:stop()
end
return function(arg1) -- Line 53, Named "createGroupMotor"
	--[[ Upvalues[2]:
		[1]: createSignal_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local tbl = {}
	for i, v in pairs(arg1) do
		tbl[i] = {
			value = v;
			complete = true;
		}
	end
	local createSignal_upvr_result1_2, createSignal_upvr_result2 = createSignal_upvr()
	local createSignal_upvr_result1, _ = createSignal_upvr()
	local module = {
		__goals = {};
		__states = tbl;
		__allComplete = true;
		__onComplete = createSignal_upvr_result1_2;
		__fireOnComplete = createSignal_upvr_result2;
		__onStep = createSignal_upvr_result1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.__fireOnStep = i
	module.__running = false
	setmetatable(module, tbl_upvr)
	return module
end