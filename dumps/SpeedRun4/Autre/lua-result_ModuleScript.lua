-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:48
-- Luau version 6, Types version 3
-- Time taken: 0.003720 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local newproxy_result1_upvr = newproxy(true)
function module_2_upvr.new(arg1, arg2) -- Line 6
	--[[ Upvalues[2]:
		[1]: newproxy_result1_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local var3
	if typeof(arg1) ~= "boolean" then
		var3 = false
	else
		var3 = true
	end
	assert(var3)
	local module = {}
	var3 = debug.traceback()
	module._source = var3
	var3 = newproxy_result1_upvr
	module[var3] = true
	module._status = arg1
	module._value = arg2
	var3 = setmetatable
	var3(module, module_2_upvr)
	return module
end
function module_2_upvr.success(arg1) -- Line 27
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.new(true, arg1)
end
function module_2_upvr.error(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.new(false, arg1)
end
function module_2_upvr.is(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	if typeof(arg1) ~= "table" then
		return false
	end
	return arg1[newproxy_result1_upvr]
end
function module_2_upvr.match(arg1, arg2, arg3) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5 = true
	if typeof(arg2) ~= "function" then
		if typeof(arg2) ~= "nil" then
			var5 = false
		else
			var5 = true
		end
	end
	assert(var5, string.format("Result:match expects successHandler to be a function or nil, got %s", typeof(arg2)))
	var5 = true
	if typeof(arg3) ~= "function" then
		if typeof(arg3) ~= "nil" then
			var5 = false
		else
			var5 = true
		end
	end
	assert(var5, string.format("Result:match expects errorHandler to be a function or nil, got %s", typeof(arg3)))
	var5 = arg1._status
	if var5 then
		if arg2 ~= nil then
			var5 = arg2(arg1._value)
			local _ = var5
		else
			return arg1
		end
	elseif arg3 ~= nil then
		var5 = arg3(arg1._value)
	else
		return arg1
	end
	var5 = module_2_upvr.is(var5)
	if var5 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var5
	end
	var5 = module_2_upvr.success
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var5 = var5(var5)
	return var5
end
function module_2_upvr.matchSuccess(arg1, arg2) -- Line 83
	return arg1:match(arg2, nil)
end
function module_2_upvr.matchError(arg1, arg2) -- Line 92
	return arg1:match(nil, arg2)
end
function module_2_upvr.unwrap(arg1) -- Line 96
	return arg1._status, arg1._value
end
return module_2_upvr