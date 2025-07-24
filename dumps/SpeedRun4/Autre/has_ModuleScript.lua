-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:45
-- Luau version 6, Types version 3
-- Time taken: 0.001128 seconds

return function(arg1, arg2) -- Line 2, Named "has"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local type_result1 = type(arg1)
	local var2
	if type_result1 ~= "table" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "expected a table for first argument, got "..type_result1)
	if arg2 == nil then
		var2 = false
		-- KONSTANTWARNING: GOTO [21] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 20 start (CF ANALYSIS FAILED)
	var2 = true
	assert(var2, "expected second argument to be anything but nil, got nil")
	var2 = arg1[arg2]
	if var2 ~= true then
	else
	end
	do
		return true
	end
	-- KONSTANTERROR: [20] 16. Error Block 20 end (CF ANALYSIS FAILED)
end