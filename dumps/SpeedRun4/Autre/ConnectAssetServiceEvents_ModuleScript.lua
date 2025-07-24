-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:21
-- Luau version 6, Types version 3
-- Time taken: 0.002846 seconds

local Parent = script.Parent
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local function updateModelAttachmentsWithWrapDeformers_upvr(arg1) -- Line 24, Named "updateModelAttachmentsWithWrapDeformers"
	--[[ Upvalues[1]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
	]]
	arg1.Parent = RobloxReplicatedStorage_upvr
	for _, v in arg1:GetChildren() do
		if v:IsA("MeshPart") then
			local class_WrapDeformer_2 = v:FindFirstChildWhichIsA("WrapDeformer")
			if class_WrapDeformer_2 then
				for _, v_2 in v:GetChildren() do
					if v_2:IsA("Attachment") then
						v_2.CFrame = class_WrapDeformer_2:GetDeformedCFrameAsync(v_2.CFrame)
					end
				end
			end
		end
	end
end
local ExperienceAuthService_upvr = game:GetService("ExperienceAuthService")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("PromptImportAnimationClipFromVideoAsyncEnabled")
local OpenPublishAssetPrompt_upvr = require(Parent.Thunks.OpenPublishAssetPrompt)
local AssetService_upvr = game:GetService("AssetService")
local OpenPublishAvatarPrompt_upvr = require(Parent.Thunks.OpenPublishAvatarPrompt)
local OpenResultModal_upvr = require(Parent.Thunks.OpenResultModal)
local AvatarCreationService_upvr = game:GetService("AvatarCreationService")
local SetHumanoidModel_upvr = require(Parent.Actions.SetHumanoidModel)
local SetPriceInRobux_upvr = require(Parent.Actions.SetPriceInRobux)
local OpenValidationErrorModal_upvr = require(Parent.Actions.OpenValidationErrorModal)
return function(arg1) -- Line 48, Named "ConnectAssetServiceEvents"
	--[[ Upvalues[11]:
		[1]: ExperienceAuthService_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: OpenPublishAssetPrompt_upvr (readonly)
		[4]: AssetService_upvr (readonly)
		[5]: OpenPublishAvatarPrompt_upvr (readonly)
		[6]: OpenResultModal_upvr (readonly)
		[7]: AvatarCreationService_upvr (readonly)
		[8]: updateModelAttachmentsWithWrapDeformers_upvr (readonly)
		[9]: SetHumanoidModel_upvr (readonly)
		[10]: SetPriceInRobux_upvr (readonly)
		[11]: OpenValidationErrorModal_upvr (readonly)
	]]
	local module = {}
	table.insert(module, ExperienceAuthService_upvr.OpenAuthPrompt:Connect(function(arg1_2, arg2, arg3) -- Line 54
		--[[ Upvalues[5]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: OpenPublishAssetPrompt_upvr (copied, readonly)
			[4]: AssetService_upvr (copied, readonly)
			[5]: OpenPublishAvatarPrompt_upvr (copied, readonly)
		]]
		local var37
		if var37 then
			var37 = arg3.isVideoToAnimationFlow
		end
		if #arg2 == 1 and arg2[1] == Enum.ExperienceAuthScope.CreatorAssetsCreate and not var37 then
			if arg3.instanceToPublish then
				arg1:dispatch(OpenPublishAssetPrompt_upvr(arg3.instanceToPublish, arg3.assetType, arg1_2, arg2))
				return
			end
			if arg3.serializedInstance then
				arg1:dispatch(OpenPublishAssetPrompt_upvr(AssetService_upvr:DeserializeInstance(arg3.serializedInstance), arg3.assetType, arg1_2, arg2))
				return
			end
			if arg3.outfitToPublish then
				arg1:dispatch(OpenPublishAvatarPrompt_upvr(arg1_2, arg2))
			end
		end
	end))
	table.insert(module, AssetService_upvr.OpenPublishResultModal:Connect(function(arg1_3) -- Line 81
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OpenResultModal_upvr (copied, readonly)
		]]
		arg1:dispatch(OpenResultModal_upvr(arg1_3))
	end))
	local function checkNewEventsExist() -- Line 85
		--[[ Upvalues[1]:
			[1]: AvatarCreationService_upvr (copied, readonly)
		]]
		local UgcValidationSuccess = AvatarCreationService_upvr.UgcValidationSuccess
		if UgcValidationSuccess then
			UgcValidationSuccess = AvatarCreationService_upvr.UgcValidationFailure
		end
		return UgcValidationSuccess
	end
	if pcall(checkNewEventsExist) then
		table.insert(module, AvatarCreationService_upvr.UgcValidationSuccess:Connect(function(arg1_4, arg2, arg3) -- Line 93
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: AvatarCreationService_upvr (copied, readonly)
				[3]: updateModelAttachmentsWithWrapDeformers_upvr (copied, readonly)
				[4]: SetHumanoidModel_upvr (copied, readonly)
				[5]: SetPriceInRobux_upvr (copied, readonly)
			]]
			local any_getState_result1_2 = arg1:getState()
			if any_getState_result1_2 and any_getState_result1_2.promptRequest.promptInfo.guid == arg1_4 then
				local any_DeserializeAvatarModel_result1 = AvatarCreationService_upvr:DeserializeAvatarModel(arg2)
				updateModelAttachmentsWithWrapDeformers_upvr(any_DeserializeAvatarModel_result1)
				arg1:dispatch(SetHumanoidModel_upvr(any_DeserializeAvatarModel_result1))
				arg1:dispatch(SetPriceInRobux_upvr(arg3))
			end
		end))
	end
	if pcall(checkNewEventsExist) then
		table.insert(module, AvatarCreationService_upvr.UgcValidationFailure:Connect(function(arg1_5, arg2) -- Line 113
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenValidationErrorModal_upvr (copied, readonly)
			]]
			local any_getState_result1 = arg1:getState()
			if any_getState_result1 and any_getState_result1.promptRequest.promptInfo.guid == arg1_5 then
				arg1:dispatch(OpenValidationErrorModal_upvr(arg2))
			end
		end))
	end
	return module
end