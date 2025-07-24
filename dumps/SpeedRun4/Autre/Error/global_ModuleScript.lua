-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:56
-- Luau version 6, Types version 3
-- Time taken: 0.003284 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.__tostring(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return getmetatable(module_upvr).__tostring(arg1)
end
local function _(arg1) -- Line 35, Named "__createError"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({
		name = "Error";
		message = arg1 or "";
	}, module_upvr)
	module_upvr.__captureStackTrace(setmetatable_result1, 4)
	return setmetatable_result1
end
function module_upvr.new(arg1) -- Line 44
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1_3 = setmetatable({
		name = "Error";
		message = arg1 or "";
	}, module_upvr)
	module_upvr.__captureStackTrace(setmetatable_result1_3, 4)
	return setmetatable_result1_3
end
function module_upvr.captureStackTrace(arg1, arg2) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.__captureStackTrace(arg1, 3, arg2)
end
function module_upvr.__captureStackTrace(arg1, arg2, arg3) -- Line 52
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if typeof(arg3) == "function" then
		local call_stack = debug.traceback(nil, arg2)
		var7 = "%%%1"
		var7 = ":%d* function "
		var7 = call_stack
		local string_find_result1_2 = string.find(var7, string.gsub(debug.info(arg3, 's'), "([%(%)%.%%%+%-%*%?%[%^%$])", var7)..var7..debug.info(arg3, 'n'))
		var7 = nil
		if string_find_result1_2 ~= nil then
			local string_find_result1, string_find_result2 = string.find(call_stack, '\n', string_find_result1_2 + 1)
			var7 = string_find_result2
		end
		if var7 ~= nil then
		end
		arg1.__stack = string.sub(call_stack, var7 + 1)
	else
		arg1.__stack = debug.traceback(nil, arg2)
	end
	module_upvr.__recalculateStacktrace(arg1)
end
function module_upvr.__recalculateStacktrace(arg1) -- Line 76
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local message = arg1.message
	local var13
	if message ~= nil and message ~= "" then
		var13 = ": "..message
	else
		var13 = ""
	end
	var13 = arg1.__stack
	if var13 then
	else
	end
	var13 = (arg1.name or "Error")..var13..'\n'..""
	arg1.stack = var13
end
return setmetatable(module_upvr, {
	__call = function(arg1, ...) -- Line 88, Named "__call"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local setmetatable_result1_2 = setmetatable({
			name = "Error";
			message = ... or "";
		}, module_upvr)
		module_upvr.__captureStackTrace(setmetatable_result1_2, 4)
		return setmetatable_result1_2
	end;
	__tostring = function(arg1) -- Line 91, Named "__tostring"
		if arg1.name ~= nil then
			if arg1.message and arg1.message ~= "" then
				return string.format("%s: %s", tostring(arg1.name), tostring(arg1.message))
			end
			return tostring(arg1.name)
		end
		return tostring("Error")
	end;
})