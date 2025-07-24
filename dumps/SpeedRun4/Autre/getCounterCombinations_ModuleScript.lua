-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:12
-- Luau version 6, Types version 3
-- Time taken: 0.000913 seconds

return function(arg1, arg2, arg3, arg4, arg5) -- Line 1
	local module = {}
	if arg4 ~= nil then
		table.insert(module, arg1..arg4..arg2..arg3)
	else
		table.insert(module, arg1..arg2..arg3)
	end
	if arg5 ~= nil then
		local tostring_result1 = tostring(arg5)
		if arg4 ~= nil then
			table.insert(module, arg1..arg4..arg2..tostring_result1..arg3)
			return module
		end
		table.insert(module, arg1..arg2..tostring_result1..arg3)
	end
	return module
end