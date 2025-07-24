-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:26
-- Luau version 6, Types version 3
-- Time taken: 0.000541 seconds

return function(arg1, arg2) -- Line 7, Named "filterMap"
	for i = 1, #arg1 do
		local arg2_result1 = arg2(arg1[i], i)
		if arg2_result1 ~= nil then
			({})[1] = arg2_result1
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end