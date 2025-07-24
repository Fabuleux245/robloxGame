-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:34
-- Luau version 6, Types version 3
-- Time taken: 0.008751 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local function _(arg1, arg2) -- Line 9, Named "validateStateTableItem"
	local typeof_result1_5 = typeof(arg1)
	local var3 = true
	if typeof_result1_5 ~= "string" then
		if typeof_result1_5 ~= "userdata" then
			var3 = false
		else
			var3 = true
		end
	end
	assert(var3, string.format("%s '%s' must be a string or userdata but is a %s", arg2, tostring(arg1), typeof_result1_5))
end
function module_upvr.new(arg1, arg2, arg3, arg4) -- Line 72
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20
	if typeof(arg1) ~= "string" then
		var20 = false
	else
		var20 = true
	end
	assert(var20, "name must be a string")
	if 0 >= #arg1 then
		var20 = false
	else
		var20 = true
	end
	assert(var20, "name must not be an empty string")
	var20 = arg2
	local typeof_result1 = typeof(var20)
	var20 = true
	if typeof_result1 ~= "string" then
		if typeof_result1 ~= "userdata" then
			var20 = false
		else
			var20 = true
		end
	end
	assert(var20, string.format("%s '%s' must be a string or userdata but is a %s", "initialState", tostring(arg2), typeof_result1))
	var20 = true
	if arg3 ~= nil then
		if typeof(arg3) ~= "table" then
			var20 = false
		else
			var20 = true
		end
	end
	assert(var20, "initialContext must be a table or nil")
	if typeof(arg4) ~= "table" then
		var20 = false
		-- KONSTANTWARNING: GOTO [82] #63
	end
	var20 = true
	assert(var20, "transitionTable must be a table")
	if typeof(arg4[arg2]) ~= "table" then
		var20 = false
	else
		var20 = true
	end
	assert(var20, "initialState must be present in transitionTable")
	local module_upvr_2 = {}
	var20 = setmetatable
	var20(module_upvr_2, module_upvr)
	module_upvr_2.name = arg1
	module_upvr_2.currentState = arg2
	var20 = arg3
	if not var20 then
		var20 = {}
	end
	module_upvr_2.currentContext = var20
	module_upvr_2.transitionTable = {}
	module_upvr_2.events = {}
	for i, v in pairs(arg4) do
		local typeof_result1_6 = typeof(i)
		if typeof_result1_6 ~= "string" then
			if typeof_result1_6 ~= "userdata" then
			else
			end
		end
		assert(true, string.format("%s '%s' must be a string or userdata but is a %s", "state", tostring(i), typeof_result1_6))
		if typeof(v) ~= "table" then
		else
		end
		assert(true, string.format("state '%s' must map to a table", tostring(i)))
		local tbl = {}
		for i_2_upvr, v_2 in pairs(v) do
			local typeof_result1_3 = typeof(i_2_upvr)
			if typeof_result1_3 ~= "string" then
				if typeof_result1_3 ~= "userdata" then
				else
				end
			end
			local var32
			assert(var32, string.format("%s '%s' must be a string or userdata but is a %s", "event", tostring(i_2_upvr), typeof_result1_3))
			var32 = v_2
			if typeof(var32) ~= "table" then
			else
			end
			var32 = "event '%s' must map to a table"
			assert(true, string.format(var32, tostring(i_2_upvr)))
			local nextState = v_2.nextState
			local action_2 = v_2.action
			if nextState ~= nil then
				var32 = nextState
				local typeof_result1_2 = typeof(var32)
				var32 = true
				local var36 = var32
				if typeof_result1_2 ~= "string" then
					if typeof_result1_2 ~= "userdata" then
						var36 = false
					else
						var36 = true
					end
				end
				assert(var36, string.format("%s '%s' must be a string or userdata but is a %s", "nextState", tostring(nextState), typeof_result1_2))
				if arg4[nextState] == nil then
				else
				end
				assert(true, string.format("nextState '%s' does not exist in transitionTable", tostring(nextState)))
			end
			local var37 = true
			if action_2 ~= nil then
				if typeof(action_2) ~= "function" then
					var37 = false
				else
					var37 = true
				end
			end
			assert(var37, "action must be a function")
			tbl[i_2_upvr] = v_2
			if module_upvr_2.events[i_2_upvr] == nil then
				module_upvr_2.events[i_2_upvr] = function(arg1_2) -- Line 119
					--[[ Upvalues[2]:
						[1]: module_upvr_2 (readonly)
						[2]: i_2_upvr (readonly)
					]]
					return module_upvr_2:handleEvent(i_2_upvr, arg1_2)
				end
			end
		end
		module_upvr_2.transitionTable[i] = tbl
	end
	setmetatable(module_upvr_2.events, {
		__index = function(arg1_3, arg2_2) -- Line 130, Named "__index"
			--[[ Upvalues[1]:
				[1]: module_upvr_2 (readonly)
			]]
			error(string.format("'%s' is not a valid event in StateTable '%s'", tostring(arg2_2), module_upvr_2.name), 2)
		end;
	})
	return module_upvr_2
end
local Cryo_upvr = require(script.Parent.Parent.Parent.Cryo)
function module_upvr.handleEvent(arg1, arg2, arg3) -- Line 150
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local typeof_result1_4 = typeof(arg2)
	local var42
	if typeof_result1_4 ~= "string" then
		if typeof_result1_4 ~= "userdata" then
		else
		end
	end
	var42 = true
	assert(var42, string.format("%s '%s' must be a string or userdata but is a %s", "event", tostring(arg2), typeof_result1_4))
	if arg3 ~= nil then
		var42 = arg3
		if typeof(var42) ~= "table" then
		else
		end
	end
	assert(true, "args must be nil or valid table")
	local currentState = arg1.currentState
	local var44 = arg1.transitionTable[currentState]
	if var44 == nil then
		var42 = false
	else
		var42 = true
	end
	local var45
	assert(var42, "no transition events for current state")
	if var44[arg2] ~= nil then
		local var46 = var44[arg2]
		var42 = var46.nextState or currentState
		local action = var46.action
		var45 = arg1.currentContext
		if action ~= nil then
			local action_result1 = action(currentState, var42, arg3, arg1.currentContext)
			if not action_result1 then
				action_result1 = {}
			end
			var45 = Cryo_upvr.Dictionary.join(arg1.currentContext, action_result1)
			arg1.currentContext = var45
		end
		arg1.currentState = var42
		if arg1.stateChangeHandler ~= nil then
			arg1.stateChangeHandler(currentState, var42, var45)
		end
	end
end
function module_upvr.onStateChange(arg1, arg2) -- Line 191
	local var49 = true
	if arg2 ~= nil then
		if typeof(arg2) ~= "function" then
			var49 = false
		else
			var49 = true
		end
	end
	assert(var49, "stateChangeHandler must be nil or a function")
	arg1.stateChangeHandler = arg2
end
return module_upvr