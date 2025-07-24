-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:15
-- Luau version 6, Types version 3
-- Time taken: 0.000418 seconds

local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local CloseOpenPrompt_upvr = require(script.Parent.Parent.Actions.CloseOpenPrompt)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: AvatarEditorService_upvr (readonly)
		[2]: CloseOpenPrompt_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[3]:
			[1]: AvatarEditorService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CloseOpenPrompt_upvr (copied, readonly)
		]]
		AvatarEditorService_upvr:SetAllowInventoryReadAccess(arg1)
		arg1_2:dispatch(CloseOpenPrompt_upvr())
	end
end