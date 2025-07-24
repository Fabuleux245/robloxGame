-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:11
-- Luau version 6, Types version 3
-- Time taken: 0.000615 seconds

return {
	isNonNullObject = function(arg1) -- Line 9, Named "isNonNullObject"
		local var1 = false
		if arg1 ~= nil then
			if type(arg1) ~= "table" then
				var1 = false
			else
				var1 = true
			end
		end
		return var1
	end;
}