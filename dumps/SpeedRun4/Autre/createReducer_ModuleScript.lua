-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:41
-- Luau version 6, Types version 3
-- Time taken: 0.000427 seconds

return function(arg1, arg2) -- Line 1
	return function(arg1_2, arg2_2) -- Line 2
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1_2 == nil then
			local var3 = arg1
		end
		local var4 = arg2[arg2_2.type]
		if var4 then
			return var4(var3, arg2_2)
		end
		return var3
	end
end