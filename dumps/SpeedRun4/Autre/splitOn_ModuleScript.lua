-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:41
-- Luau version 6, Types version 3
-- Time taken: 0.001320 seconds

local insert_upvr = table.insert
return function(arg1, arg2) -- Line 7, Named "splitOn"
	--[[ Upvalues[1]:
		[1]: insert_upvr (readonly)
	]]
	local module = {}
	local module_2 = {}
	local var6
	if not arg2 then
		for i = 1, #arg1 do
			insert_upvr(module, arg1:sub(i, i))
		end
		return module
	end
	local any_find_result1, any_find_result2 = arg1:find(arg2, var6)
	while any_find_result1 do
		insert_upvr(module_2, arg1:sub(any_find_result1, any_find_result2))
		insert_upvr(module, arg1:sub(var6, any_find_result1 - 1))
		var6 = any_find_result2 + 1
		local any_find_result1_2, _ = arg1:find(arg2, var6)
	end
	insert_upvr(module, arg1:sub(var6))
	return module, module_2
end