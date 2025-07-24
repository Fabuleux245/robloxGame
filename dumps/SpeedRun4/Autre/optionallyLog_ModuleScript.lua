-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:17
-- Luau version 6, Types version 3
-- Time taken: 0.000549 seconds

return function(arg1, arg2) -- Line 3
	return function(arg1_2) -- Line 4
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1 then
			arg1:info(arg2(arg1_2))
		end
		return arg1_2
	end
end