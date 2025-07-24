-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:19
-- Luau version 6, Types version 3
-- Time taken: 0.000379 seconds

local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local CloseOpenPrompt_upvr = require(script.Parent.Parent.Actions.CloseOpenPrompt)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: AvatarEditorService_upvr (readonly)
		[2]: CloseOpenPrompt_upvr (readonly)
	]]
	AvatarEditorService_upvr:SignalUpdateOutfitPermissionDenied()
	arg1:dispatch(CloseOpenPrompt_upvr())
end