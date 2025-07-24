-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:10
-- Luau version 6, Types version 3
-- Time taken: 0.000694 seconds

local Parent = script.Parent.Parent
local GetOutfitName_upvr = require(Parent.Network.GetOutfitName)
local OpenPrompt_upvr = require(Parent.Actions.OpenPrompt)
local PromptType_upvr = require(Parent.PromptType)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
return function(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: GetOutfitName_upvr (readonly)
		[2]: OpenPrompt_upvr (readonly)
		[3]: PromptType_upvr (readonly)
		[4]: AvatarEditorService_upvr (readonly)
	]]
	return function(arg1_2) -- Line 11
		--[[ Upvalues[5]:
			[1]: GetOutfitName_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: OpenPrompt_upvr (copied, readonly)
			[4]: PromptType_upvr (copied, readonly)
			[5]: AvatarEditorService_upvr (copied, readonly)
		]]
		GetOutfitName_upvr(arg1):andThen(function(arg1_3) -- Line 12
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: OpenPrompt_upvr (copied, readonly)
				[3]: PromptType_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
			]]
			local tbl = {}
			tbl.outfitId = arg1
			tbl.outfitName = arg1_3
			arg1_2:dispatch(OpenPrompt_upvr(PromptType_upvr.RenameOutfit, tbl))
		end, function(arg1_4) -- Line 17
			--[[ Upvalues[1]:
				[1]: AvatarEditorService_upvr (copied, readonly)
			]]
			AvatarEditorService_upvr:SignalRenameOutfitFailed()
		end)
	end
end