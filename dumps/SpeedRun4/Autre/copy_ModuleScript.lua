-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:22
-- Luau version 6, Types version 3
-- Time taken: 0.000755 seconds

return function(arg1) -- Line 2, Named "copy"
	local type_result1 = type(arg1)
	local var4
	if type_result1 ~= "table" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "expected a table for first argument, got "..type_result1)
	var4 = #arg1
	for i = 1, var4 do
		({})[i] = arg1[i]
		local var6
	end
	return var6
end