-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:04
-- Luau version 6, Types version 3
-- Time taken: 0.000540 seconds

return function(arg1, arg2) -- Line 1
	for _, v in pairs(arg1) do
		local tostring_result1 = tostring(v)
		local var8 = arg2[tostring_result1]
		if var8 then
			({})[tostring_result1] = var8
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end