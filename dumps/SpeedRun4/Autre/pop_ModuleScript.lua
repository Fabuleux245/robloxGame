-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:33
-- Luau version 6, Types version 3
-- Time taken: 0.000993 seconds

return function(arg1, arg2) -- Line 2, Named "pop"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1_2 = type(arg1)
	local var6
	if type_result1_2 ~= "table" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "expected a table for first argument, got "..type_result1_2)
	local var7 = arg2 or 1
	var6 = var7
	local type_result1 = type(var6)
	if type_result1 == "number" then
		if var7 % 1 ~= 0 then
		else
		end
	end
	var6 = assert
	var6(true, "expected an integer for second argument, got "..type_result1)
	var6 = {}
	for i = 1, #arg1 - var7 do
		var6[i] = arg1[i]
	end
	return var6
end