-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:43
-- Luau version 6, Types version 3
-- Time taken: 0.000761 seconds

local function resultHandler_upvr(arg1, arg2, ...) -- Line 12, Named "resultHandler"
	if not arg2 then
		error(debug.traceback(arg1, ...), 2)
	end
	if coroutine.status(arg1) ~= "dead" then
		error(debug.traceback(arg1, "Attempted to yield inside changed event!"), 2)
	end
	return ...
end
return function(arg1, ...) -- Line 25, Named "NoYield"
	--[[ Upvalues[1]:
		[1]: resultHandler_upvr (readonly)
	]]
	local coroutine_create_result1 = coroutine.create(arg1)
	return resultHandler_upvr(coroutine_create_result1, coroutine.resume(coroutine_create_result1, ...))
end