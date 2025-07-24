-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:06
-- Luau version 6, Types version 3
-- Time taken: 0.000596 seconds

return function(arg1, arg2) -- Line 2
	for i, v in pairs(arg1) do
		local var9
		if var9 then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var9 = arg2[i]
				return var9
			end
			if v >= arg2[i] or not INLINED() then
				var9 = v
			end
			;({})[i] = var9
		else
			var9 = error
			var9("tables did not have matching indices")
			return
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end