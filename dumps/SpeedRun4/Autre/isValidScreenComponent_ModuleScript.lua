-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:09
-- Luau version 6, Types version 3
-- Time taken: 0.000654 seconds

return function(arg1) -- Line 2
	local type_result1 = type(arg1)
	local var5 = true
	if type_result1 ~= "function" then
		var5 = false
		if type_result1 == "table" then
			if type(arg1.render) ~= "function" then
				var5 = false
			else
				var5 = true
			end
		end
	end
	return var5
end