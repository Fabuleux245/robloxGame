-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:15
-- Luau version 6, Types version 3
-- Time taken: 0.003694 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local String_upvr = LuauPolyfill.String
local Array_upvr = LuauPolyfill.Array
function dedent(arg1, ...) -- Line 18
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local args_list = {...}
	local var9 = ""
	local var10
	if Array_upvr.isArray(arg1) then
		var10 = 1
		for i = 1, #arg1, var10 do
			var9 = var9..arg1[i]
			if i <= #args_list then
				var9 = var9..args_list[i]
			end
		end
	else
		var9 = arg1
	end
	var10 = removeLeadingNewLines(var9)
	local removeTrailingSpacesAndTabs_result1 = removeTrailingSpacesAndTabs(var10)
	var10 = ""
	for i_2 = 1, string.len(removeTrailingSpacesAndTabs_result1) do
		local string_sub_result1 = string.sub(removeTrailingSpacesAndTabs_result1, i_2, i_2)
		if string_sub_result1 == ' ' or string_sub_result1 ~= '\t' then break end
		var10 = var10..string_sub_result1
	end
	return removeCommonIndent(removeTrailingSpacesAndTabs_result1, var10)
end
function removeLeadingNewLines(arg1) -- Line 50
	--[[ Upvalues[1]:
		[1]: String_upvr (readonly)
	]]
	local any_findOr_result1 = String_upvr.findOr(arg1, {"\n*"})
	local var15
	if any_findOr_result1 ~= nil and any_findOr_result1.index == 1 then
		var15 = string.sub(var15, string.len(any_findOr_result1.match) + 1)
	end
	return var15
end
function removeTrailingSpacesAndTabs(arg1) -- Line 59
	--[[ Upvalues[1]:
		[1]: String_upvr (readonly)
	]]
	local var16
	repeat
		local any_findOr_result1_2 = String_upvr.findOr(arg1, {" +", "\t+"}, 1)
		local var19
		if any_findOr_result1_2 ~= nil then
			if var16 ~= nil and var16.index + string.len(var16.match) == any_findOr_result1_2.index then
				var16 = {
					index = var16.index;
					match = var16.match..any_findOr_result1_2.match;
				}
			else
				var16 = any_findOr_result1_2
			end
			var19 = any_findOr_result1_2.index + string.len(any_findOr_result1_2.match)
		end
	until any_findOr_result1_2 == nil and string.len(arg1) < var19
	if var16 ~= nil and var16.index + string.len(var16.match) == string.len(arg1) + 1 then
		return string.sub(arg1, 1, var16.index - 1)
	end
	return arg1
end
function removeCommonIndent(arg1, arg2) -- Line 90
	return string.gsub(string.gsub(arg1, arg2, "", 1), '\n'..arg2, '\n')
end
return {
	dedent = dedent;
}