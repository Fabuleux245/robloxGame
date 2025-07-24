-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:20
-- Luau version 6, Types version 3
-- Time taken: 0.000999 seconds

local Parent = script.Parent
local splitOn_upvr = require(Parent.splitOn)
local insert_upvr = table.insert
local startsWith_upvr = require(Parent.startsWith)
local formatValue_upvr = require(Parent.formatValue)
local concat_upvr = table.concat
return function(arg1, ...) -- Line 37, Named "format"
	--[[ Upvalues[5]:
		[1]: splitOn_upvr (readonly)
		[2]: insert_upvr (readonly)
		[3]: startsWith_upvr (readonly)
		[4]: formatValue_upvr (readonly)
		[5]: concat_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	({})[1] = ...
	local var2_result1, splitOn_upvr_result2 = splitOn_upvr(arg1, "{[^{}]*}")
	local pairs_result1, pairs_result2, pairs_result3 = pairs(var2_result1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [116] 101. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [116] 101. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.12]
	-- KONSTANTERROR: [18] 15. Error Block 2 end (CF ANALYSIS FAILED)
end