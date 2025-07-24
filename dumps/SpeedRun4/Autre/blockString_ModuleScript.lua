-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:38
-- Luau version 6, Types version 3
-- Time taken: 0.009392 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local String_upvr = LuauPolyfill.String
local getBlockStringIndentation_upvw
local Array_upvr = LuauPolyfill.Array
function isBlank(arg1) -- Line 51
	for i_2 = 1, #arg1 do
		local string_sub_result1 = string.sub(arg1, i_2, i_2)
		if string_sub_result1 ~= ' ' and string_sub_result1 ~= '\t' then
			return false
		end
	end
	return true
end
function getBlockStringIndentation_upvw(arg1) -- Line 62, Named "getBlockStringIndentation"
	--[[ Upvalues[1]:
		[1]: String_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local const_number = 1
	local var18
	while const_number <= string.len(arg1) do
		local any_charCodeAt_result1 = String_upvr.charCodeAt(arg1, const_number)
		local var20
		if any_charCodeAt_result1 == 13 and String_upvr.charCodeAt(arg1, var20 + 1) == 10 then
			var20 += 1
		end
		if any_charCodeAt_result1 == 10 then
		elseif any_charCodeAt_result1 == 9 or any_charCodeAt_result1 == 32 then
		elseif true and false ~= true and (var18 == nil or 0 + 1 < var18) then
			var18 = 0 + 1
		end
		var20 += 1
	end
	if not var18 or not var18 then
	end
	return 0
end
return {
	getBlockStringIndentation = getBlockStringIndentation_upvw;
	dedentBlockStringValue = function(arg1) -- Line 22, Named "dedentBlockStringValue"
		--[[ Upvalues[3]:
			[1]: String_upvr (readonly)
			[2]: getBlockStringIndentation_upvw (read and write)
			[3]: Array_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_split_result1 = String_upvr.split(arg1, {"\r\n", '\n', '\r'})
		local getBlockStringIndentation_upvw_result1 = getBlockStringIndentation_upvw(arg1)
		if getBlockStringIndentation_upvw_result1 ~= 0 then
			for i = 2, #any_split_result1 do
				any_split_result1[i] = String_upvr.slice(any_split_result1[i], getBlockStringIndentation_upvw_result1 + 1)
			end
		end
		local const_number_2 = 0
		while const_number_2 < #any_split_result1 and isBlank(any_split_result1[const_number_2 + 1]) do
			local var13 = const_number_2 + 1
		end
		local len = #any_split_result1
		repeat
		until var13 >= len and not isBlank(any_split_result1[len - 1 + 1])
		return Array_upvr.join(Array_upvr.slice(any_split_result1, var13 + 1, len - 1 + 1), '\n')
	end;
	printBlockString = function(arg1, arg2, arg3) -- Line 102, Named "printBlockString"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
		local var26 = arg2 or ""
		local var27
		if arg3 == nil then
		else
		end
		if string.find(arg1, '\n') ~= nil then
			var27 = false
		else
			var27 = true
		end
		if string.sub(arg1, 1, 1) ~= ' ' then
			if string.sub(arg1, 1, 1) ~= '\t' then
			else
			end
		end
		if string.sub(arg1, #arg1, #arg1) ~= '"' then
			-- KONSTANTWARNING: GOTO [50] #39
		end
		-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [49] 38. Error Block 57 start (CF ANALYSIS FAILED)
		if string.sub(arg1, #arg1, #arg1) ~= '\\' then
		else
		end
		if var27 == true then
			if not true then
				if not true then
					local var28 = arg3
				end
			end
		end
		local var29
		if var28 and (var27 and true) ~= true then
			var29 = var29..'\n'..var26
		end
		if var26 == "" or not string.gsub(arg1, '\n', '\n'..var26) then
		end
		var29 = var29..arg1
		if var28 then
			var29 = var29..'\n'
		end
		do
			return "\"\"\""..string.gsub(var29, "\"\"\"", "\\\"\"\"").."\"\"\""
		end
		-- KONSTANTERROR: [49] 38. Error Block 57 end (CF ANALYSIS FAILED)
	end;
}