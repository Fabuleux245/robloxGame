-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:27
-- Luau version 6, Types version 3
-- Time taken: 0.000441 seconds

return {
	isIteratableObject = function(arg1) -- Line 27, Named "isIteratableObject"
		if typeof(arg1) ~= "table" then
			return false
		end
		if next(arg1) == nil then
			return true
		end
		if #arg1 == 0 then
			return false
		end
		return true
	end;
}