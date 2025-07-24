-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:41
-- Luau version 6, Types version 3
-- Time taken: 0.000898 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local TextChatService_upvr = game:GetService("TextChatService")
local getTextChatServiceTextChatCommandAutocompleteVisible_upvr = require(ExpChat.Flags.getTextChatServiceTextChatCommandAutocompleteVisible)
local function getCommandKeys_upvr() -- Line 9, Named "getCommandKeys"
	--[[ Upvalues[2]:
		[1]: TextChatService_upvr (readonly)
		[2]: getTextChatServiceTextChatCommandAutocompleteVisible_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(TextChatService_upvr:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 43. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 43. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [62.7]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		if nil == "TextChatCommand" and nil and nil == '/' then
			-- KONSTANTWARNING: GOTO [62] #43
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil == "TextChatCommand" and nil == '/' then
		end
	end
	-- KONSTANTERROR: [11] 9. Error Block 16 end (CF ANALYSIS FAILED)
end
local List_upvr = require(ExpChat.Parent.llama).List
return function(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: getCommandKeys_upvr (readonly)
		[2]: List_upvr (readonly)
	]]
	List_upvr.map(getCommandKeys_upvr(), function(arg1_2) -- Line 34
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.trie:insert(arg1_2)
	end)
	return arg1.trie
end