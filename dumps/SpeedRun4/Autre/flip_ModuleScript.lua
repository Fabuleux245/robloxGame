-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:12
-- Luau version 6, Types version 3
-- Time taken: 0.000547 seconds

return function(arg1) -- Line 2, Named "flip"
	local type_result1 = type(arg1)
	local var6
	if type_result1 ~= "table" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "expected a table for first argument, got "..type_result1)
	var6 = pairs(arg1)
	for i, v in pairs(arg1) do
		({})[v] = i
		local var11
	end
	return var11
end