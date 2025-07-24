-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:57
-- Luau version 6, Types version 3
-- Time taken: 0.003965 seconds

local function splitStringWithMarks_upvr(arg1, arg2) -- Line 19, Named "splitStringWithMarks"
	if type(arg1) ~= "string" or type(arg2) ~= "table" then
		return arg1, ""
	end
	for _, v in ipairs(arg2) do
		local any_find_result1, any_find_result2 = arg1.find(arg1, v, nil, true)
		if any_find_result1 ~= nil then
			return arg1.sub(arg1, 1, any_find_result1 - 1), arg1.sub(arg1, any_find_result2 + 1)
		end
	end
	return arg1, ""
end
local function _(arg1) -- Line 37, Named "findFileNameFromPath"
	if type(arg1) ~= "string" then
		return ""
	end
	return string.match(arg1, "([^.]*)$")
end
return function(arg1, arg2) -- Line 45, Named "ProcessErrorStack"
	--[[ Upvalues[1]:
		[1]: splitStringWithMarks_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl = {}
	local var22
	if not var22 then
		var22 = 0
	end
	if type(arg1) ~= "string" then
		return module, tbl
	end
	for i_2 in arg1:gmatch("[^\r\n]+") do
		local _, splitStringWithMarks_result2_2 = splitStringWithMarks_upvr(i_2, {", line ", ", Line ", ':'})
		local splitStringWithMarks_result1, splitStringWithMarks_result2 = splitStringWithMarks_upvr(splitStringWithMarks_result2_2, {" - "})
		local var32 = splitStringWithMarks_result1
		local var33
		if var32 ~= "" and var33 ~= "" then
			local _, _, string_find_result3 = string.find(var33, "Script '(.*)'")
			if string_find_result3 ~= nil then
				var33 = string_find_result3
			end
			local var37 = tbl[var33]
			if var37 == nil then
				var22 += 1
				var37 = var22
				tbl[var33] = var37
			end
			if splitStringWithMarks_result2 == "" then
				local var38 = var33
				if type(var38) ~= "string" then
				else
				end
			end
			table.insert(module, {
				line = var32;
				funcName = string.match(var38, "([^.]*)$");
				sourceCode = tostring(var37);
			})
		end
	end
	for i_3, v_2 in pairs(tbl) do
		({})[tostring(v_2)] = {
			path = i_3;
		}
		local var45
	end
	return module, var45, var22
end