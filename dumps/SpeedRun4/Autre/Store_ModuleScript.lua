-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:45
-- Luau version 6, Types version 3
-- Time taken: 0.009009 seconds

local tbl_2_upvr = {
	reportReducerError = function(arg1, arg2, arg3) -- Line 9, Named "reportReducerError"
		error(string.format("Received error: %s\n\n%s", arg3.message, arg3.thrownValue))
	end;
	reportUpdateError = function(arg1, arg2, arg3, arg4) -- Line 12, Named "reportUpdateError"
		error(string.format("Received error: %s\n\n%s", arg4.message, arg4.thrownValue))
	end;
}
local function tracebackReporter_upvr(arg1) -- Line 17, Named "tracebackReporter"
	return debug.traceback(tostring(arg1))
end
local module_upvr_3 = {
	_flushEvent = game:GetService("RunService").Heartbeat;
}
module_upvr_3.__index = module_upvr_3
local Signal_upvr = require(script.Parent.Signal)
function module_upvr_3.new(arg1, arg2, arg3, arg4, arg5) -- Line 41
	--[[ Upvalues[4]:
		[1]: tbl_2_upvr (readonly)
		[2]: Signal_upvr (readonly)
		[3]: tracebackReporter_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38_upvr
	if typeof(arg1) ~= "function" then
		var38_upvr = false
	else
		var38_upvr = true
	end
	assert(var38_upvr, "Bad argument #1 to Store.new, expected function.")
	var38_upvr = true
	if arg3 ~= nil then
		if typeof(arg3) ~= "table" then
			var38_upvr = false
		else
			var38_upvr = true
		end
	end
	assert(var38_upvr, "Bad argument #3 to Store.new, expected nil or table.")
	var38_upvr = true
	if arg5 ~= nil then
		var38_upvr = false
		if typeof(arg5) == "table" then
			if arg5.__className ~= "Devtools" then
				var38_upvr = false
			else
				var38_upvr = true
			end
		end
	end
	assert(var38_upvr, "Bad argument #5 to Store.new, expected nil or Devtools object.")
	if arg3 ~= nil then
		var38_upvr = 1
		for i = 1, #arg3, var38_upvr do
			local var36
			if typeof(arg3[i]) ~= "function" then
				var36 = false
			else
				var36 = true
			end
			assert(var36, "Expected the middleware ('%s') at index %d to be a function.":format(tostring(arg3[i]), i))
		end
	end
	local module_upvr_2 = {}
	var38_upvr = string.match(debug.traceback(), "^.-\n(.-)\n")
	module_upvr_2._source = var38_upvr
	var38_upvr = arg4
	if not var38_upvr then
		var38_upvr = tbl_2_upvr
	end
	module_upvr_2._errorReporter = var38_upvr
	var38_upvr = false
	module_upvr_2._isDispatching = var38_upvr
	var38_upvr = nil
	module_upvr_2._lastState = var38_upvr
	var38_upvr = Signal_upvr.new(module_upvr_2)
	module_upvr_2.changed = var38_upvr
	module_upvr_2._reducer = arg1
	function var38_upvr(arg1_4) -- Line 66
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2.changed:fire(arg1_4, module_upvr_2._lastState)
	end
	module_upvr_2._flushHandler = var38_upvr
	if arg5 then
		module_upvr_2._devtools = arg5
		var38_upvr = arg5:_hookIntoStore
		var38_upvr(module_upvr_2)
	end
	var38_upvr = {}
	var38_upvr.type = "@@INIT"
	module_upvr_2._actionLog = {var38_upvr}
	local xpcall_result1_3, xpcall_result2_2 = xpcall(function() -- Line 82
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: arg2 (readonly)
			[3]: var38_upvr (readonly)
		]]
		module_upvr_2._state = module_upvr_2._reducer(arg2, var38_upvr)
	end, tracebackReporter_upvr)
	if not xpcall_result1_3 then
		module_upvr_2._errorReporter.reportReducerError(arg2, var38_upvr, {
			message = "Caught error in reducer with init";
			thrownValue = xpcall_result2_2;
		})
		module_upvr_2._state = arg2
	end
	module_upvr_2._lastState = module_upvr_2._state
	module_upvr_2._mutatedSinceFlush = false
	module_upvr_2._connections = {}
	setmetatable(module_upvr_2, module_upvr_3)
	table.insert(module_upvr_2._connections, module_upvr_2._flushEvent:Connect(function() -- Line 99
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:flush()
	end))
	local var46_upvw
	if arg3 then
		local dispatch_2_upvr = module_upvr_2.dispatch
		function var46_upvw(...) -- Line 106
			--[[ Upvalues[2]:
				[1]: dispatch_2_upvr (readonly)
				[2]: module_upvr_2 (readonly)
			]]
			return dispatch_2_upvr(module_upvr_2, ...)
		end
		for i_2 = #arg3, 1, -1 do
			var46_upvw = arg3[i_2](var46_upvw, module_upvr_2)
		end
		function module_upvr_2.dispatch(arg1_5, ...) -- Line 115
			--[[ Upvalues[1]:
				[1]: var46_upvw (read and write)
			]]
			return var46_upvw(...)
		end
	end
	return module_upvr_2
end
function module_upvr_3.getState(arg1) -- Line 126
	if arg1._isDispatching then
		error("You may not call store:getState() while the reducer is executing. ".."The reducer (%s) has already received the state as an argument. ".."Pass it down from the top reducer instead of reading it from the store.":format(tostring(arg1._reducer)))
	end
	return arg1._state
end
function module_upvr_3.dispatch(arg1, arg2) -- Line 143
	if typeof(arg2) ~= "table" then
		error("Actions must be tables. ".."Use custom middleware for %q actions.":format(typeof(arg2)), 2)
	end
	if arg2.type == nil then
		error("Actions may not have an undefined 'type' property. ".."Have you misspelled a constant? \n"..tostring(arg2), 2)
	end
	if arg1._isDispatching then
		error("Reducers may not dispatch actions.")
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 161
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1._isDispatching = true
		arg1._state = arg1._reducer(arg1._state, arg2)
		arg1._mutatedSinceFlush = true
	end)
	arg1._isDispatching = false
	if not pcall_result1 then
		arg1._errorReporter.reportReducerError(arg1._state, arg2, {
			message = "Caught error in reducer";
			thrownValue = pcall_result2;
		})
	end
	if #arg1._actionLog == 3 then
		table.remove(arg1._actionLog, 1)
	end
	table.insert(arg1._actionLog, arg2)
end
function module_upvr_3.destruct(arg1) -- Line 189
	for _, v in ipairs(arg1._connections) do
		v:Disconnect()
	end
	arg1._connections = nil
end
local NoYield_upvr = require(script.Parent.NoYield)
function module_upvr_3.flush(arg1) -- Line 200
	--[[ Upvalues[2]:
		[1]: NoYield_upvr (readonly)
		[2]: tracebackReporter_upvr (readonly)
	]]
	if not arg1._mutatedSinceFlush then
	else
		arg1._mutatedSinceFlush = false
		local _state_upvr = arg1._state
		local xpcall_result1_2, xpcall_result2 = xpcall(function() -- Line 212
			--[[ Upvalues[3]:
				[1]: NoYield_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: _state_upvr (readonly)
			]]
			NoYield_upvr(arg1._flushHandler, _state_upvr)
		end, tracebackReporter_upvr)
		if not xpcall_result1_2 then
			arg1._errorReporter.reportUpdateError(arg1._lastState, _state_upvr, arg1._actionLog, {
				message = "Caught error flushing store updates";
				thrownValue = xpcall_result2;
			})
		end
		arg1._lastState = _state_upvr
	end
end
return module_upvr_3