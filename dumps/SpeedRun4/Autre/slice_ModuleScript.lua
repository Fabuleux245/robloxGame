-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:27
-- Luau version 6, Types version 3
-- Time taken: 0.001393 seconds

return function(arg1, arg2, arg3) -- Line 16, Named "slice"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local utf8_len_result1, utf8_len_result2 = utf8.len(arg1)
	local var3
	if utf8_len_result1 == nil then
		var3 = false
	else
		var3 = true
	end
	assert(var3, "string `%s` has an invalid byte at position %s":format(arg1, tostring(utf8_len_result2)))
	var3 = arg2
	local tonumber_result1 = tonumber(var3)
	if typeof(tonumber_result1) ~= "number" then
	else
	end
	var3 = assert
	var3(true, "startIndexStr should be a number")
	var3 = tonumber_result1 + utf8_len_result1
	if var3 < 0 then
	end
	if utf8_len_result1 < 1 then
		var3 = ""
		return var3
	end
	var3 = utf8_len_result1 + 1
	if arg3 ~= nil then
		var3 = tonumber(arg3) or tonumber("nan")
	end
	if typeof(var3) ~= "number" then
	else
	end
	assert(true, "lastIndexStr should convert to number")
	if utf8_len_result1 < var3 then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return string.sub(arg1, utf8.offset(arg1, 1), utf8.offset(arg1, utf8_len_result1 + 1) - 1)
end