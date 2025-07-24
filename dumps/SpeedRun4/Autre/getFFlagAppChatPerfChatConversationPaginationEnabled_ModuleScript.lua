-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:44
-- Luau version 6, Types version 3
-- Time taken: 0.000650 seconds

game:DefineFastFlag("AppChatPerfChatConversationPaginationEnabled", false)
local AppChatPerfExperimentation_upvr = require(script:FindFirstAncestor("AppChat").Parent.SocialExperiments).AppChatPerfExperimentation
local FFlagAppChatBetterListPerformance_upvr = require(script.Parent.FFlagAppChatBetterListPerformance)
return function() -- Line 9
	--[[ Upvalues[2]:
		[1]: AppChatPerfExperimentation_upvr (readonly)
		[2]: FFlagAppChatBetterListPerformance_upvr (readonly)
	]]
	local game_GetFastFlag_result1 = game:GetFastFlag("AppChatPerfChatConversationPaginationEnabled")
	if game_GetFastFlag_result1 then
		game_GetFastFlag_result1 = AppChatPerfExperimentation_upvr.getChatConversationPaginationEnabled()
		if not game_GetFastFlag_result1 then
			game_GetFastFlag_result1 = FFlagAppChatBetterListPerformance_upvr
		end
	end
	return game_GetFastFlag_result1
end