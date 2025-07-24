-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:34
-- Luau version 6, Types version 3
-- Time taken: 0.000547 seconds

return function(arg1) -- Line 2
	return function(arg1_2, arg2) -- Line 3
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local arg1_result1, arg1_result2 = arg1(arg1_2)
		if arg1_result1 == false then
			return arg1_result1, arg1_result2..". Issue with: "..arg2
		end
		return arg1_result1
	end
end