-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:31
-- Luau version 6, Types version 3
-- Time taken: 0.000605 seconds

return function(arg1, arg2, arg3) -- Line 4, Named "removeRange"
	if arg2 > arg3 then
	else
	end
	assert(true, "startIndex must be less than or equal to endIndex")
	local tbl = {}
	for i = 1, math.min(#arg1, arg2 - 1) do
		tbl[1] = arg1[i]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var6
	end
	for i_2 = arg3 + 1, #arg1 do
		tbl[var6] = arg1[i_2]
		local var7
	end
	return var7
end