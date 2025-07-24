-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:34
-- Luau version 6, Types version 3
-- Time taken: 0.001472 seconds

return function(arg1, ...) -- Line 2, Named "push"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local type_result1 = type(arg1)
	local var10
	if type_result1 ~= "table" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "expected a table for first argument, got "..type_result1)
	var10 = #arg1
	for i = 1, var10 do
		({})[i] = arg1[i]
		local var12
	end
	for i_2 = 1, select('#', ...) do
		var12[var10 + i_2] = select(i_2, ...)
	end
	return var12
end