-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:04
-- Luau version 6, Types version 3
-- Time taken: 0.001069 seconds

return function(arg1, arg2, arg3) -- Line 11
	if _G.__DEV__ then
		if typeof(arg1) ~= "table" then
			error(string.format("Array.forEach called on %s", typeof(arg1)))
		end
		if typeof(arg2) ~= "function" then
			error("callback is not a function")
		end
	end
	local len = #arg1
	local const_number = 1
	while const_number <= len do
		if arg3 ~= nil then
			arg2(arg3, arg1[const_number], const_number, arg1)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg2(arg1[const_number], const_number, arg1)
		end
		if #arg1 < len then
		end
	end
end