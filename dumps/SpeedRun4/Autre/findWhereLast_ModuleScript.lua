-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:28
-- Luau version 6, Types version 3
-- Time taken: 0.001047 seconds

return function(arg1, arg2, arg3) -- Line 2, Named "find"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1 = type(arg1)
	local var6
	if type_result1 ~= "table" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "expected a table for first argument, got "..type_result1)
	var6 = arg2
	local type_result1_2 = type(var6)
	if type_result1_2 ~= "function" then
	else
	end
	var6 = assert
	var6(true, "expected a function for second argument, got "..type_result1_2)
	local var8 = arg3
	if not var8 then
		var8 = #arg1
	end
	var6 = 1
	for i = var8, var6, -1 do
		if arg2(arg1[i], i) then
			return i
		end
	end
	var6 = nil
	return var6
end