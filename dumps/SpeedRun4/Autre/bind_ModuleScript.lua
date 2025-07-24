-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:40
-- Luau version 6, Types version 3
-- Time taken: 0.000333 seconds

return function(arg1, arg2) -- Line 7
	return function(arg1_2, ...) -- Line 8
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 == arg2 then
			return arg1(arg2, ...)
		end
		return arg1(arg2, arg1_2, ...)
	end
end