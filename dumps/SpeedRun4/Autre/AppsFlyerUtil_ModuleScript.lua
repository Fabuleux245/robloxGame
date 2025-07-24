-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:00
-- Luau version 6, Types version 3
-- Time taken: 0.001244 seconds

local module_upvr = {
	replaceNewlines = function(arg1, arg2) -- Line 18, Named "replaceNewlines"
		local var2 = arg2 or ' '
		return arg1:gsub("\r\n", var2):gsub('\r', var2):gsub('\n', var2)
	end;
	truncateLength = function(arg1, arg2) -- Line 33, Named "truncateLength"
		-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
		local var3 = arg2 or 140
		if arg1:len() <= var3 then
			return arg1
		end
		local utf8_graphemes_result1, utf8_graphemes_result2, utf8_graphemes_result3 = utf8.graphemes(arg1)
		-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 26. Error Block 17 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [34.9]
		-- KONSTANTERROR: [33] 26. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 14. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 14. Error Block 4 end (CF ANALYSIS FAILED)
	end;
}
function module_upvr.sanitizeDescription(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.truncateLength(module_upvr.replaceNewlines(arg1))
end
return module_upvr