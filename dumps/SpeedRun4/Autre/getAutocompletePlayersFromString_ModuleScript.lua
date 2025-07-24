-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:01
-- Luau version 6, Types version 3
-- Time taken: 0.001379 seconds

local Parent = script:FindFirstAncestor("ExpChatShared").Parent
local Dictionary_upvr = require(Parent.llama).Dictionary
local List_upvr = require(Parent.llama).List
return function(arg1, arg2) -- Line 12, Named "getAutocompletePlayersFromString"
	--[[ Upvalues[2]:
		[1]: Dictionary_upvr (readonly)
		[2]: List_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local string_lower_result1 = string.lower(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 13. Error Block 15 start (CF ANALYSIS FAILED)
	local string_sub_result1_upvr = string.sub(string_lower_result1, 2)
	string_sub_result1_upvr = List_upvr.map
	string_sub_result1_upvr = string_sub_result1_upvr(Dictionary_upvr.values(Dictionary_upvr.filter(arg1.byUsername, function(arg1_2, arg2_2) -- Line 17
		--[[ Upvalues[1]:
			[1]: string_sub_result1_upvr (readonly)
		]]
		local var7
		if string.find(arg2_2, '^'..string_sub_result1_upvr) == nil then
			var7 = false
		else
			var7 = true
		end
		return var7
	end)), function(arg1_3) -- Line 33
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.byUserId[tostring(arg1_3)]
	end)
	do
		return string_sub_result1_upvr
	end
	-- KONSTANTERROR: [17] 13. Error Block 15 end (CF ANALYSIS FAILED)
end