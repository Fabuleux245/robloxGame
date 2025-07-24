-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:36
-- Luau version 6, Types version 3
-- Time taken: 0.000407 seconds

return function(arg1, arg2) -- Line 1, Named "validateProps"
	if _G.__DEV__ or _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__ then
		local arg1_result1, arg1_result2 = arg1(arg2)
		if not arg1_result1 then
			error(`prop validation failed: {arg1_result2}`)
		end
	end
end