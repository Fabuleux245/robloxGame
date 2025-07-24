-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:14
-- Luau version 6, Types version 3
-- Time taken: 0.000811 seconds

local Parent = script.Parent.Parent
local GetConformedHumanoidDescription_upvr = require(Parent.GetConformedHumanoidDescription)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local CloseOpenPrompt_upvr = require(Parent.Actions.CloseOpenPrompt)
return function(arg1) -- Line 8
	--[[ Upvalues[3]:
		[1]: GetConformedHumanoidDescription_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
		[3]: CloseOpenPrompt_upvr (readonly)
	]]
	local addedAssets_upvr = arg1:getState().analyticsInfo.addedAssets
	if not addedAssets_upvr then
		addedAssets_upvr = {}
	end
	local removedAssets_upvr = arg1:getState().analyticsInfo.removedAssets
	if not removedAssets_upvr then
		removedAssets_upvr = {}
	end
	GetConformedHumanoidDescription_upvr(arg1:getState().promptInfo.humanoidDescription, false):andThen(function(arg1_2) -- Line 15
		--[[ Upvalues[3]:
			[1]: AvatarEditorService_upvr (copied, readonly)
			[2]: addedAssets_upvr (readonly)
			[3]: removedAssets_upvr (readonly)
		]]
		AvatarEditorService_upvr:PerformSaveAvatarWithDescription(arg1_2, addedAssets_upvr, removedAssets_upvr)
	end, function(arg1_3) -- Line 17
		--[[ Upvalues[1]:
			[1]: AvatarEditorService_upvr (copied, readonly)
		]]
		AvatarEditorService_upvr:SignalSaveAvatarFailed()
	end)
	arg1:dispatch(CloseOpenPrompt_upvr())
end