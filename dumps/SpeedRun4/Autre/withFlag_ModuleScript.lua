-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:21
-- Luau version 6, Types version 3
-- Time taken: 0.000302 seconds

return function(arg1, arg2) -- Line 18, Named "withFlag"
	local pcall_result1, pcall_result2 = pcall(arg2)
	game:SetFastFlagForTesting(arg1, game:SetFastFlagForTesting(arg1, true))
	assert(pcall_result1, tostring(pcall_result2))
end