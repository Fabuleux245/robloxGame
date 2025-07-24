-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:35
-- Luau version 6, Types version 3
-- Time taken: 0.001730 seconds

return function(arg1, arg2, arg3) -- Line 2, Named "reduceRight"
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
	var6 = #arg1
	if arg3 == nil then
	end
	if arg3 ~= nil or not (var6 - 1) then
	end
	for i = var6, 1, -1 do
	end
	return arg2(arg1[var6], arg1[i], i)
end