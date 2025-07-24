-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:06
-- Luau version 6, Types version 3
-- Time taken: 0.000755 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local useChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext).useChatPlacementContext
local isPageAvailable_upvr = require(AppChat.Utils.isPageAvailable)
return function(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: useChatPlacementContext_upvr (readonly)
		[2]: isPageAvailable_upvr (readonly)
	]]
	local chatPlacement = useChatPlacementContext_upvr().chatPlacement
	local module = {}
	for _, v in arg1 do
		module[v] = isPageAvailable_upvr(v, chatPlacement)
	end
	return module
end