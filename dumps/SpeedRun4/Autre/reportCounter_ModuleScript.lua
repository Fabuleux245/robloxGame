-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:17
-- Luau version 6, Types version 3
-- Time taken: 0.000334 seconds

return function(arg1) -- Line 3
	return function(arg1_2) -- Line 4
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:reportCounter(arg1_2.name, arg1_2.count or 1)
		return arg1_2
	end
end