-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:43
-- Luau version 6, Types version 3
-- Time taken: 0.000469 seconds

return function(arg1) -- Line 9, Named "isCallable"
	local var1
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var1 = true
		return getmetatable(arg1).__call == nil
	end
	if type(arg1) ~= "function" and (type(arg1) ~= "table" or not getmetatable(arg1) or INLINED()) then
		var1 = false
	end
	return var1
end