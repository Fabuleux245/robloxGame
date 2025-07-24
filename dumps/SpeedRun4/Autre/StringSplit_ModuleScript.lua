-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:33
-- Luau version 6, Types version 3
-- Time taken: 0.004146 seconds

local function StringSplit_upvr(arg1, arg2, arg3) -- Line 7, Named "StringSplit"
	--[[ Upvalues[1]:
		[1]: StringSplit_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	if #arg1 == 0 then
		if string.find(arg1, arg2) then
			return {}
		end
		return {""}
	end
	if not var14 then
		var14 = -1
	end
	if var14 == 1 then
		local module_2 = {}
		module_2[1] = arg1
		return module_2
	end
	if not arg2 then
		local const_string_2 = "%s+"
	end
	local string_find_result1_4, string_find_result2_2 = string.find(arg1, const_string_2)
	if not string_find_result1_4 then
		local module_3 = {}
		module_3[1] = arg1
		return module_3
	end
	if string_find_result2_2 < 1 then
		local string_find_result1_2, string_find_result2 = string.find(string.sub(arg1, 2), const_string_2)
	end
	local string_sub_result1_3 = string.sub(arg1, string_find_result2 + 1 + 1)
	if #string_sub_result1_3 == 0 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if string_find_result1_2 + 1 <= string_find_result2 + 1 then
			return {string.sub(arg1, 1, string_find_result1_2 + 1 - 1), string_sub_result1_3}
		end
	end
	local StringSplit_upvr_result1_2 = StringSplit_upvr(string_sub_result1_3, const_string_2, var14 - 1)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	table.insert(StringSplit_upvr_result1_2, 1, string.sub(arg1, 1, string_find_result1_2 + 1 - 1))
	return StringSplit_upvr_result1_2
end
return StringSplit_upvr