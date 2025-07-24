-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:28
-- Luau version 6, Types version 3
-- Time taken: 0.001071 seconds

return function(arg1) -- Line 4, Named "bindingValidator"
	return function(arg1_2) -- Line 5
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if typeof(arg1_2) ~= "table" or not string.match(tostring(arg1_2), "RoactBinding") then
			warn(string.format("RoactBinding expected, got %s", typeof(arg1_2)))
			return false
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 13
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			return arg1_2:getValue()
		end)
		if not pcall_result1 then
			warn("getValue() not defined")
			return false
		end
		local arg1_result1, arg1_result2 = arg1(pcall_result2)
		if not arg1_result1 then
			warn(string.format("RoactBinding value: %s", arg1_result2))
			return false
		end
		return true
	end
end