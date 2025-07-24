-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:24
-- Luau version 6, Types version 3
-- Time taken: 0.000692 seconds

local NaN_upvr = require(script.Parent.Parent.Number).NaN
return function(arg1, arg2) -- Line 24
	--[[ Upvalues[1]:
		[1]: NaN_upvr (readonly)
	]]
	local var3
	if type(arg2) ~= "number" then
		var3 = 1
	end
	local string_len_result1 = string.len(arg1)
	if var3 < 1 or string_len_result1 < var3 then
		return NaN_upvr
	end
	local utf8_offset_result1 = utf8.offset(arg1, var3)
	if utf8_offset_result1 == nil or string_len_result1 < utf8_offset_result1 then
		return NaN_upvr
	end
	local utf8_codepoint_result1 = utf8.codepoint(arg1, utf8_offset_result1, utf8_offset_result1)
	if utf8_codepoint_result1 == nil then
		return NaN_upvr
	end
	return utf8_codepoint_result1
end