-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:36
-- Luau version 6, Types version 3
-- Time taken: 0.000894 seconds

return function(arg1) -- Line 1, Named "parseBooleanString"
	if arg1 == nil then
		return nil
	end
	local var2 = true
	if arg1 ~= "true" then
		var2 = true
		if arg1 ~= "True" then
			if arg1 ~= '1' then
				var2 = false
			else
				var2 = true
			end
		end
	end
	return var2
end