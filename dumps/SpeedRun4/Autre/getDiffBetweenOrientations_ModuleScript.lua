-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:31
-- Luau version 6, Types version 3
-- Time taken: 0.000267 seconds

return function(arg1, arg2) -- Line 3, Named "getDiffBetweenOrientations"
	local any_ToAxisAngle_result1, any_ToAxisAngle_result2 = arg1 * arg2:Inverse():ToAxisAngle()
	return math.deg(any_ToAxisAngle_result2)
end