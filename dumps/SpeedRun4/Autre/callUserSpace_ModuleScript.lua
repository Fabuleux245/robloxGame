-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:44
-- Luau version 6, Types version 3
-- Time taken: 0.000855 seconds

local __SIGNALS_VALIDATION_ENABLED__ = _G.__SIGNALS_VALIDATION_ENABLED__
if not __SIGNALS_VALIDATION_ENABLED__ then
	__SIGNALS_VALIDATION_ENABLED__ = _G.__DEV__
end
local function handleNoYieldValidation_upvr(arg1, arg2, ...) -- Line 3, Named "handleNoYieldValidation"
	if not arg2 then
		local var2 = ...
		if typeof(var2) == "string" then
			error(debug.traceback(arg1, var2), 2)
		else
			error(tostring(var2), 2)
		end
	end
	if coroutine.status(arg1) ~= "dead" then
		error(debug.traceback(arg1, "Attempted to yield!"), 2)
	end
	return ...
end
if __SIGNALS_VALIDATION_ENABLED__ then
	return function(arg1, ...) -- Line 20, Named "callWithValidation"
		--[[ Upvalues[1]:
			[1]: handleNoYieldValidation_upvr (readonly)
		]]
		local coroutine_create_result1 = coroutine.create(arg1)
		return handleNoYieldValidation_upvr(coroutine_create_result1, coroutine.resume(coroutine_create_result1, ...))
	end
end
return function(arg1, ...) -- Line 25, Named "callWithoutValidation"
	return arg1(...)
end