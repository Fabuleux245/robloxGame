-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:08
-- Luau version 6, Types version 3
-- Time taken: 0.001608 seconds

local Parent = script.Parent.Parent
local PromptType_upvr = require(Parent.PromptType)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local CloseOpenPrompt_upvr = require(Parent.Actions.CloseOpenPrompt)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: PromptType_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
		[3]: CloseOpenPrompt_upvr (readonly)
	]]
	local promptType = arg1:getState().promptInfo.promptType
	if promptType == PromptType_upvr.AllowInventoryReadAccess then
		AvatarEditorService_upvr:SetAllowInventoryReadAccess(false)
	elseif promptType == PromptType_upvr.SaveAvatar then
		AvatarEditorService_upvr:SignalSaveAvatarPermissionDenied()
	elseif promptType == PromptType_upvr.CreateOutfit then
		AvatarEditorService_upvr:SignalCreateOutfitPermissionDenied()
	elseif promptType == PromptType_upvr.EnterOutfitName then
		AvatarEditorService_upvr:SignalCreateOutfitPermissionDenied()
	elseif promptType == PromptType_upvr.SetFavorite then
		AvatarEditorService_upvr:SignalSetFavoritePermissionDenied()
	elseif promptType == PromptType_upvr.DeleteOutfit then
		AvatarEditorService_upvr:SignalDeleteOutfitPermissionDenied()
	elseif promptType == PromptType_upvr.RenameOutfit then
		AvatarEditorService_upvr:SignalRenameOutfitPermissionDenied()
	elseif promptType == PromptType_upvr.UpdateOutfit then
		AvatarEditorService_upvr:SignalUpdateOutfitPermissionDenied()
	elseif promptType ~= nil then
		error("CloseOpenPrompt for unhandled prompt type "..tostring(promptType))
	end
	arg1:dispatch(CloseOpenPrompt_upvr())
end