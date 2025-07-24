-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:27
-- Luau version 6, Types version 3
-- Time taken: 0.000902 seconds

return function(arg1, arg2, arg3) -- Line 2, Named "find"
	local type_result1 = type(arg1)
	local var4
	if type_result1 ~= "table" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "expected a table for first argument, got "..type_result1)
	local var5 = arg3
	if not var5 then
		var5 = #arg1
	end
	var4 = -1
	for i = var5, 1, var4 do
		if arg1[i] == arg2 then
			return i
		end
	end
	return nil
end