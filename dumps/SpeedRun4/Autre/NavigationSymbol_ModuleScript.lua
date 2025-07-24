-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:53
-- Luau version 6, Types version 3
-- Time taken: 0.000505 seconds

return function(arg1) -- Line 4
	local var2
	if type(arg1) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Symbols must be created using a string name!")
	var2 = true
	local newproxy_result1 = newproxy(var2)
	var2 = getmetatable(newproxy_result1)
	function var2.__tostring() -- Line 10
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1
	end
	return newproxy_result1
end