-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:25
-- Luau version 6, Types version 3
-- Time taken: 0.002410 seconds

local var1_upvr = "([".."$%^()-[].?":gsub("(.)", "%%%1").."])"
return function(arg1, arg2, arg3) -- Line 20, Named "includes"
	--[[ Upvalues[1]:
		[1]: var1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local utf8_len_result1_2, utf8_len_result2 = utf8.len(arg1)
	local var11
	if utf8_len_result1_2 == nil then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "string `%s` has an invalid byte at position %s":format(arg1, tostring(utf8_len_result2)))
	if utf8_len_result1_2 == 0 then
		return false
	end
	if #arg2 == 0 then
		return true
	end
	if arg3 ~= nil then
		var11 = tonumber(arg3)
		local var12 = var11 or 1
		if utf8_len_result1_2 < var12 then
			var11 = false
			return var11
		end
	end
	var11 = 1
	if var12 < var11 then
	end
	var11 = utf8.offset(arg1, 1)
	local any_gsub_result1 = arg2:gsub(var1_upvr, "%%%1")
	local string_find_result1_2, string_find_result2 = string.find(arg1, any_gsub_result1, var11)
	if string_find_result1_2 == nil then
		any_gsub_result1 = false
	else
		any_gsub_result1 = true
	end
	return any_gsub_result1
end