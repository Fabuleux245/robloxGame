-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:15
-- Luau version 6, Types version 3
-- Time taken: 0.000618 seconds

return function(arg1) -- Line 3
	return function(arg1_2, arg2) -- Line 4
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var3 = arg1[arg1_2]
		assert(var3, "Invalid eventName used: "..tostring(arg1_2).." called")
		return var3, arg2
	end
end