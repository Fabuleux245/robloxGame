-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:02
-- Luau version 6, Types version 3
-- Time taken: 0.001483 seconds

return function(arg1, arg2, arg3) -- Line 11
	if _G.__DEV__ then
		if typeof(arg1) ~= "table" then
			error(string.format("Array.every called on %s", typeof(arg1)))
		end
		if typeof(arg2) ~= "function" then
			error("callback is not a function")
		end
	end
	local const_number = 1
	while const_number <= #arg1 do
		local var3 = arg1[const_number]
		local var4
		if var3 ~= nil then
			if arg3 ~= nil then
				var4 = arg2(arg3, var3, const_number, arg1)
			else
				var4 = arg2(var3, const_number, arg1)
			end
			if not var4 then
				return false
			end
		end
	end
	return true
end