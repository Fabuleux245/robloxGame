-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:01
-- Luau version 6, Types version 3
-- Time taken: 0.000642 seconds

local function _(arg1) -- Line 14, Named "TypeError"
	return arg1
end
return function(arg1, arg2) -- Line 18, Named "splitOnFirst"
	if type(arg1) ~= "string" or type(arg2) ~= "string" then
		error("Expected the arguments to be of type `string`")
	end
	if arg2 == "" then
		local module_2 = {}
		module_2[1] = arg1
		return module_2
	end
	local any_find_result1 = arg1:find(arg2, 1, true)
	if any_find_result1 == nil then
		local module = {}
		module[1] = arg1
		return module
	end
	return {arg1:sub(1, any_find_result1 - 1), arg1:sub(any_find_result1 + arg2:len())}
end