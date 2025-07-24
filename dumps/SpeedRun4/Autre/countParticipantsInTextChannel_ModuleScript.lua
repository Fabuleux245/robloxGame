-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:10
-- Luau version 6, Types version 3
-- Time taken: 0.000564 seconds

local List_upvr = require(script:FindFirstAncestor("ExpChatShared").Parent.llama).List
return function(arg1) -- Line 5, Named "getNumberOfParticipants"
	--[[ Upvalues[1]:
		[1]: List_upvr (readonly)
	]]
	return List_upvr.count(arg1:GetChildren(), function(arg1_2) -- Line 6
		return arg1_2:IsA("TextSource")
	end)
end