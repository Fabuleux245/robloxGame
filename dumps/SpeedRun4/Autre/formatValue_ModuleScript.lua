-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:21
-- Luau version 6, Types version 3
-- Time taken: 0.001640 seconds

local Parent_upvr = script.Parent
return function(arg1, arg2) -- Line 12, Named "formatValue"
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	local var2 = arg2 or ""
	local any_find_result1, any_find_result2 = var2:find("[A-Za-z#?]+")
	if any_find_result1 then
		local any_sub_result1 = var2:sub(any_find_result1, any_find_result2)
		local var6 = '%'..var2:sub(1, any_find_result1 - 1)..var2:sub(any_find_result2 + 1)..'s'
		local pretty = require(Parent_upvr.pretty)
		if any_sub_result1 == "#?" then
			return var6:format(pretty(arg1, {
				multiline = true;
			}))
		end
		if any_sub_result1 == '?' then
			return var6:format(pretty(arg1))
		end
		return '%'..var2:format(arg1)
	end
	any_sub_result1 = 's'
	local var9 = any_sub_result1
	local var10
	if type(arg1) == "number" then
		local math_modf_result1, math_modf_result2 = math.modf(arg1)
		if math_modf_result2 == 0 then
			var10 = 'd'
		else
			var10 = 'f'
		end
		var9 = var10
	end
	return '%'..var2..var9:format(tostring(arg1))
end