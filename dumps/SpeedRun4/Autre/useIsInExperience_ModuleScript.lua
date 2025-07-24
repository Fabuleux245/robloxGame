-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:08
-- Luau version 6, Types version 3
-- Time taken: 0.000305 seconds

local ChatPlacementContext = require(script:FindFirstAncestor("AppChat").Contexts.ChatPlacementContext)
local useChatPlacementContext_upvr = ChatPlacementContext.useChatPlacementContext
local isPlacementInExperience_upvr = ChatPlacementContext.isPlacementInExperience
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useChatPlacementContext_upvr (readonly)
		[2]: isPlacementInExperience_upvr (readonly)
	]]
	return isPlacementInExperience_upvr(useChatPlacementContext_upvr().chatPlacement)
end