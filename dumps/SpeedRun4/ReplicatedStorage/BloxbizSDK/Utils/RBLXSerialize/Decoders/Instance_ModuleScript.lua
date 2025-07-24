-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:53
-- Luau version 6, Types version 3
-- Time taken: 0.001287 seconds

local function var1_upvr(arg1, arg2) -- Line 1
	local var18
	for _, v in ipairs(string.split(arg1, string.char(28))) do
		if v ~= "" then
			local SOME_2 = var18:FindFirstChild(v)
			if SOME_2 then
				var18 = SOME_2
			end
		end
	end
	return var18
end
local Convertors_upvr = require(script.Parent.Parent.Convertors)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 20
	--[[ Upvalues[2]:
		[1]: var1_upvr (readonly)
		[2]: Convertors_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	if arg5 == 1 then
	end
	local pairs_result1, pairs_result2, pairs_result3 = pairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [144] 110. Error Block 34 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [144] 110. Error Block 34 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [144.13]
	-- KONSTANTERROR: [13] 10. Error Block 4 end (CF ANALYSIS FAILED)
end