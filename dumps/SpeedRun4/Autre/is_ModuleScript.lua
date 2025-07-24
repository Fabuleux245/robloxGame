-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:32
-- Luau version 6, Types version 3
-- Time taken: 0.000778 seconds

return function(arg1, arg2) -- Line 3
	if arg1 == arg2 then
		local var2 = true
		if arg1 == 0 then
			if 1 / arg1 ~= 1 / arg2 then
				var2 = false
			else
				var2 = true
			end
		end
		return var2
	end
	var2 = false
	local var3 = var2
	if arg1 ~= arg1 then
		if arg2 == arg2 then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end