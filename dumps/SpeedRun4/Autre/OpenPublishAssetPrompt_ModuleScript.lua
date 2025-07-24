-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:26
-- Luau version 6, Types version 3
-- Time taken: 0.001052 seconds

local Parent = script.Parent.Parent
local OpenPublishAssetPrompt_upvr = require(Parent.Actions.OpenPublishAssetPrompt)
local PromptType_upvr = require(Parent.PromptType)
return function(arg1, arg2, arg3, arg4) -- Line 12
	--[[ Upvalues[2]:
		[1]: OpenPublishAssetPrompt_upvr (readonly)
		[2]: PromptType_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[6]:
			[1]: arg1 (read and write)
			[2]: OpenPublishAssetPrompt_upvr (copied, readonly)
			[3]: PromptType_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: arg4 (readonly)
		]]
		if arg1:IsA("Accessory") then
			local Model = Instance.new("Model")
			Model.Parent = arg1.Parent
			arg1.Parent = Model
			local class_BasePart = arg1:FindFirstChildWhichIsA("BasePart", true)
			if class_BasePart == nil then
				print("Error: accessory to be published does not contain a BasePart")
			else
				Model.PrimaryPart = class_BasePart
				arg1 = Model
			end
		end
		arg1_2:dispatch(OpenPublishAssetPrompt_upvr(PromptType_upvr.PublishAssetSingleStep, arg1, arg2, arg3, arg4))
	end
end