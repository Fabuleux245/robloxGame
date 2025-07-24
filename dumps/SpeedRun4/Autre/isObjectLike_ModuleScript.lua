-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:27
-- Luau version 6, Types version 3
-- Time taken: 0.000342 seconds

return {
	isObjectLike = function(arg1) -- Line 12, Named "isObjectLike"
		local var1
		if typeof(arg1) ~= "table" then
			var1 = false
		else
			var1 = true
		end
		return var1
	end;
}