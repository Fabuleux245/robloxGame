-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:45:29
-- Luau version 6, Types version 3
-- Time taken: 0.000836 seconds

return function(arg1, arg2, arg3) -- Line 5, Named "getRange"
	if arg2 > arg3 then
	else
	end
	assert(true, "startIndex must be less than or equal to endIndex")
	local module = {}
	for i = math.max(1, arg2), math.min(#arg1, arg3) do
		module[1] = arg1[i]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var4
	end
	return module
end