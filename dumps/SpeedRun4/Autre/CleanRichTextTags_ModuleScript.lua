-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:23
-- Luau version 6, Types version 3
-- Time taken: 0.001039 seconds

return function(arg1) -- Line 4, Named "cleanRichTextTags"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5
	for i = 1, #arg1 do
		local string_sub_result1 = string.sub(arg1, i, i)
		if string_sub_result1 == '<' then
			var5 += 1
		elseif string_sub_result1 == '>' and 0 < var5 then
			var5 -= 1
		elseif var5 == 0 then
		end
	end
	if var5 ~= 0 then
		return arg1
	end
	return ""..string_sub_result1
end