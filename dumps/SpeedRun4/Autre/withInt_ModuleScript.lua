-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:32
-- Luau version 6, Types version 3
-- Time taken: 0.000310 seconds

return function(arg1, arg2, arg3) -- Line 4, Named "withInt"
	local pcall_result1, pcall_result2 = pcall(arg3)
	game:SetFastIntForTesting(arg1, game:SetFastIntForTesting(arg1, arg2))
	assert(pcall_result1, pcall_result2)
end