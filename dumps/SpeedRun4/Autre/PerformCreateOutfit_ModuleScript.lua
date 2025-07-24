-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:12
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

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
	return function(arg1_2) -- Line 9
		--[[ Upvalues[4]:
			[1]: GetConformedHumanoidDescription_upvr (copied, readonly)
			[2]: AvatarEditorService_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: CloseOpenPrompt_upvr (copied, readonly)
		]]
		GetConformedHumanoidDescription_upvr(arg1_2:getState().promptInfo.humanoidDescription, false):andThen(function(arg1_3) -- Line 13
			--[[ Upvalues[2]:
				[1]: AvatarEditorService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			AvatarEditorService_upvr:PerformCreateOutfitWithDescription(arg1_3, arg1)
		end, function(arg1_4) -- Line 15
			--[[ Upvalues[1]:
				[1]: AvatarEditorService_upvr (copied, readonly)
			]]
			AvatarEditorService_upvr:SignalCreateOutfitFailed()
		end)
		arg1_2:dispatch(CloseOpenPrompt_upvr())
	end
end