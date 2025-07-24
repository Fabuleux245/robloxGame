-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:41
-- Luau version 6, Types version 3
-- Time taken: 0.001239 seconds

return function(arg1) -- Line 7, Named "littleTraceback"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local call_stack = debug.traceback()
	local var6
	for _ = 1, 1 + (arg1 or 5) do
		local _, any_find_result2 = call_stack:find('\n', 1, true)
		if not any_find_result2 then
			return call_stack:sub(var6 or 1)
		end
		if not var6 then
			var6 = any_find_result2 + 1
		end
	end
	return call_stack:sub(var6 or 1, any_find_result2 + 1 - 1)
end