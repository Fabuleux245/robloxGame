-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:00
-- Luau version 6, Types version 3
-- Time taken: 0.001420 seconds

local Parent = script.Parent
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local OpenSaveAvatarPrompt_upvr = require(Parent.Thunks.OpenSaveAvatarPrompt)
local OpenPrompt_upvr = require(Parent.Actions.OpenPrompt)
local PromptType_upvr = require(Parent.PromptType)
local OpenSetFavoritePrompt_upvr = require(Parent.Thunks.OpenSetFavoritePrompt)
local OpenDeleteOutfitPrompt_upvr = require(Parent.Thunks.OpenDeleteOutfitPrompt)
local OpenRenameOutfitPrompt_upvr = require(Parent.Thunks.OpenRenameOutfitPrompt)
local OpenUpdateOutfitPrompt_upvr = require(Parent.Thunks.OpenUpdateOutfitPrompt)
return function(arg1) -- Line 14, Named "ConnectAvatarEditorServiceEvents"
	--[[ Upvalues[8]:
		[1]: AvatarEditorService_upvr (readonly)
		[2]: OpenSaveAvatarPrompt_upvr (readonly)
		[3]: OpenPrompt_upvr (readonly)
		[4]: PromptType_upvr (readonly)
		[5]: OpenSetFavoritePrompt_upvr (readonly)
		[6]: OpenDeleteOutfitPrompt_upvr (readonly)
		[7]: OpenRenameOutfitPrompt_upvr (readonly)
		[8]: OpenUpdateOutfitPrompt_upvr (readonly)
	]]
	local module = {}
	table.insert(module, AvatarEditorService_upvr.OpenPromptSaveAvatar:Connect(function(arg1_2, arg2) -- Line 17
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OpenSaveAvatarPrompt_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenSaveAvatarPrompt_upvr(arg1_2, arg2))
	end))
	table.insert(module, AvatarEditorService_upvr.OpenAllowInventoryReadAccess:Connect(function() -- Line 21
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: OpenPrompt_upvr (copied, readonly)
			[3]: PromptType_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenPrompt_upvr(PromptType_upvr.AllowInventoryReadAccess, {}))
	end))
	table.insert(module, AvatarEditorService_upvr.OpenPromptCreateOufit:Connect(function(arg1_3, arg2) -- Line 25
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: OpenPrompt_upvr (copied, readonly)
			[3]: PromptType_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.humanoidDescription = arg1_3
		tbl.rigType = arg2
		arg1:dispatch(OpenPrompt_upvr(PromptType_upvr.CreateOutfit, tbl))
	end))
	table.insert(module, AvatarEditorService_upvr.OpenPromptSetFavorite:Connect(function(arg1_4, arg2, arg3) -- Line 32
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OpenSetFavoritePrompt_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenSetFavoritePrompt_upvr(arg1_4, arg2, arg3))
	end))
	table.insert(module, AvatarEditorService_upvr.OpenPromptDeleteOutfit:Connect(function(arg1_5) -- Line 36
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OpenDeleteOutfitPrompt_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenDeleteOutfitPrompt_upvr(arg1_5))
	end))
	table.insert(module, AvatarEditorService_upvr.OpenPromptRenameOutfit:Connect(function(arg1_6) -- Line 40
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OpenRenameOutfitPrompt_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenRenameOutfitPrompt_upvr(arg1_6))
	end))
	table.insert(module, AvatarEditorService_upvr.OpenPromptUpdateOutfit:Connect(function(arg1_7, arg2, arg3) -- Line 44
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OpenUpdateOutfitPrompt_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenUpdateOutfitPrompt_upvr(arg1_7, arg2, arg3))
	end))
	return module
end