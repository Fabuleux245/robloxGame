-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:16
-- Luau version 6, Types version 3
-- Time taken: 0.001266 seconds

local function _(arg1) -- Line 11, Named "replaceLeadingQuote"
	local string_gsub_result1_3 = string.gsub(arg1, "\n\"", "\n`")
	if string_gsub_result1_3.sub(string_gsub_result1_3, 1, 1) == '"' then
		return '`'..string.sub(string_gsub_result1_3, 2)
	end
	return string_gsub_result1_3
end
local function _(arg1) -- Line 19, Named "replaceTrailingQuote"
	local string_gsub_result1_2 = string.gsub(arg1, "\"\n", "`\n")
	if string_gsub_result1_2.sub(string_gsub_result1_2, -1) == '"' then
		return string.sub(string_gsub_result1_2, 1, -2)..'`'
	end
	return string_gsub_result1_2
end
local HttpService_upvr = game:GetService("HttpService")
return {
	inspectStr = function(arg1) -- Line 30, Named "inspectStr"
		--[[ Upvalues[1]:
			[1]: HttpService_upvr (readonly)
		]]
		if arg1 == nil then
			return "nil"
		end
		local any_JSONEncode_result1 = HttpService_upvr:JSONEncode(arg1)
		local string_gsub_result1_4 = string.gsub(any_JSONEncode_result1, "\n\"", "\n`")
		if string_gsub_result1_4.sub(string_gsub_result1_4, 1, 1) == '"' then
			any_JSONEncode_result1 = '`'..string.sub(string_gsub_result1_4, 2)
		else
			any_JSONEncode_result1 = string_gsub_result1_4
		end
		local string_gsub_result1 = string.gsub(any_JSONEncode_result1, "\"\n", "`\n")
		if string_gsub_result1.sub(string_gsub_result1, -1) == '"' then
		else
		end
		return string.gsub(string.gsub(string_gsub_result1, "\\\"", '"'), "\\\\", '\\')
	end;
}