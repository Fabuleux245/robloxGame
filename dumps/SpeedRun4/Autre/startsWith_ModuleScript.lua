-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:28
-- Luau version 6, Types version 3
-- Time taken: 0.000971 seconds

return function(arg1, arg2, arg3) -- Line 16, Named "startsWith"
	local var1
	if string.len(arg2) == 0 then
		return true
	end
	local var2
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var1 = 1
		return arg3 < var1
	end
	if arg3 == nil or INLINED() then
		var2 = 1
	else
		var2 = arg3
	end
	var1 = string.len(arg1)
	if var1 < var2 then
		var1 = false
		return var1
	end
	if arg1:find(arg2, var2, true) ~= var2 then
		var1 = false
	else
		var1 = true
	end
	return var1
end