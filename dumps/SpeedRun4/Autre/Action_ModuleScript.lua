-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:40
-- Luau version 6, Types version 3
-- Time taken: 0.001336 seconds

return function(arg1, arg2) -- Line 51
	local var2
	if type(arg1) ~= "string" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "A name must be provided to create an Action")
	if type(arg2) ~= "function" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "A function must be provided to create an Action")
	var2 = {}
	var2.name = arg1
	return setmetatable(var2, {
		__call = function(arg1_2, ...) -- Line 58, Named "__call"
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			local arg2_result1 = arg2(...)
			local var5
			if type(arg2_result1) ~= "table" then
				var5 = false
			else
				var5 = true
			end
			assert(var5, "An action must return a table")
			arg2_result1.type = arg1
			return arg2_result1
		end;
	})
end