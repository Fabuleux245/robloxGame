-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:08
-- Luau version 6, Types version 3
-- Time taken: 0.005277 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local getEngineFeatureEngineEditableMeshAvatarPublish_upvr = require(Parent.flags.getEngineFeatureEngineEditableMeshAvatarPublish)
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local getMeshIdForSkinningValidation_upvr = require(Parent.util.getMeshIdForSkinningValidation)
local getEditableMeshFromContext_upvr = require(Parent.util.getEditableMeshFromContext)
local tbl_upvr = {"LipsTogether", "Pucker", "LeftLipStretcher", "RightLipStretcher", "LeftLipCornerPuller", "RightLipCornerPuller", "LeftUpperLipRaiser", "RightUpperLipRaiser", "LeftLowerLipDepressor", "RightLowerLipDepressor", "JawDrop", "LeftEyeClosed", "RightEyeClosed", "EyesLookRight", "EyesLookLeft", "EyesLookUp", "EyesLookDown"}
local function downloadFailure_upvr(arg1, arg2, arg3) -- Line 61, Named "downloadFailure"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	local formatted = string.format("Failed to load model for dynamic head '%s'. Make sure model exists and try again.", arg2)
	if arg1 then
		error(formatted)
	end
	Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateDynamicHeadMeshPartFormat_FailedToLoadMesh, nil, arg3)
	return false, {formatted}
end
local getEngineFeatureViewportFrameSnapshotEngineFeature_upvr = require(Parent.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local setupDynamicHead_upvr = require(Parent.util.setupDynamicHead)
local Thumbnailer_upvr = require(Parent.util.Thumbnailer)
local var15_upvr = game:DefineFastInt("UGCValidateFacsDataOperationalThreshold", 200) * 0.001
local function checkFACSDataOperational_upvr(arg1, arg2) -- Line 97, Named "checkFACSDataOperational"
	--[[ Upvalues[6]:
		[1]: getEngineFeatureViewportFrameSnapshotEngineFeature_upvr (readonly)
		[2]: setupDynamicHead_upvr (readonly)
		[3]: Thumbnailer_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: UGCValidationService_upvr (readonly)
		[6]: var15_upvr (readonly)
	]]
	if not arg2 and not getEngineFeatureViewportFrameSnapshotEngineFeature_upvr() then
		return true
	end
	local clone = arg1:Clone()
	if not setupDynamicHead_upvr(clone) then
		return false, {string.format("Unable to setup body for DynamicHead (%s)", arg1.MeshId)}
	end
	local any_new_result1 = Thumbnailer_upvr.new(arg2, 1, Vector2.new(100, 100))
	any_new_result1:init(clone)
	any_new_result1:setCamera(1, math.max(clone.Size.X, clone.Size.Y), Vector3.new(0, 0, -1))
	local any_takeSnapshot_result1, any_takeSnapshot_result2_upvr_2 = any_new_result1:takeSnapshot()
	if not clone:FindFirstChild("FaceControls") then
		any_new_result1:cleanup()
		return false, {"No FaceControls founds"}
	end
	for _, v in tbl_upvr do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		clone:FindFirstChild("FaceControls")[v] = 1
		local _
	end
	local any_takeSnapshot_result1_2, any_takeSnapshot_result2_upvr = any_new_result1:takeSnapshot()
	if not any_takeSnapshot_result1 or not any_takeSnapshot_result1_2 then
		local formatted_4 = string.format("Unable to capture snapshot of DynamicHead (%s)", arg1.MeshId)
		if arg2 then
			error(formatted_4)
		end
		return false, {formatted_4}
	end
	formatted_4 = nil
	local var31 = formatted_4
	local var32
	if arg2 then
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 137
			--[[ Upvalues[3]:
				[1]: UGCValidationService_upvr (copied, readonly)
				[2]: any_takeSnapshot_result2_upvr_2 (readonly)
				[3]: any_takeSnapshot_result2_upvr (readonly)
			]]
			return UGCValidationService_upvr:CompareTextureOverlapByteString(any_takeSnapshot_result2_upvr_2, any_takeSnapshot_result2_upvr)
		end)
		var31 = pcall_result1_2
		var32 = pcall_result2
	else
		local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 141
			--[[ Upvalues[3]:
				[1]: UGCValidationService_upvr (copied, readonly)
				[2]: any_takeSnapshot_result2_upvr_2 (readonly)
				[3]: any_takeSnapshot_result2_upvr (readonly)
			]]
			return UGCValidationService_upvr:CompareTextureOverlapTextureId(any_takeSnapshot_result2_upvr_2, any_takeSnapshot_result2_upvr)
		end)
		var31 = pcall_result1_3
		var32 = pcall_result2_2
	end
	any_new_result1:cleanup()
	if not var31 or #var32 < 2 then
		if arg2 then
			error(string.format("Failed to read data from snapshot of DynamicHead (%s)", arg1.MeshId))
		else
			local module = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module[1] = string.format("Failed to read data from snapshot of DynamicHead (%s)", arg1.MeshId)
			return false, module
		end
	end
	local var40 = var32[1] / var32[2]
	if var40 < var15_upvr then
		return false, {string.format("DynamicHead (%s) did not pass threshold (%f < %f) for percent change when emoting", arg1.MeshId, var40, var15_upvr)}
	end
	return true
end
local var42_upvr = game:DefineFastInt("UGCValidateFacialBoundsScale", 120) / 100
local function validateFacialBounds_upvr(arg1, arg2) -- Line 163, Named "validateFacialBounds"
	--[[ Upvalues[7]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: getExpectedPartSize_upvr (readonly)
		[3]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (readonly)
		[4]: getEditableMeshFromContext_upvr (readonly)
		[5]: UGCValidationService_upvr (readonly)
		[6]: var42_upvr (readonly)
		[7]: getMeshIdForSkinningValidation_upvr (readonly)
	]]
	local isServer = arg2.isServer
	local allowEditableInstances_upvr_2 = arg2.allowEditableInstances
	local var6_result1_2, var6_result2_2 = pcallDeferred_upvr(function() -- Line 170
		--[[ Upvalues[9]:
			[1]: getExpectedPartSize_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (copied, readonly)
			[5]: getEditableMeshFromContext_upvr (copied, readonly)
			[6]: UGCValidationService_upvr (copied, readonly)
			[7]: var42_upvr (copied, readonly)
			[8]: getMeshIdForSkinningValidation_upvr (copied, readonly)
			[9]: allowEditableInstances_upvr_2 (readonly)
		]]
		local getExpectedPartSize_upvr_result1 = getExpectedPartSize_upvr(arg1, arg2)
		if getEngineFeatureEngineEditableMeshAvatarPublish_upvr() then
			local var8_result1_2, var8_result2 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
			if not var8_result1_2 then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService_upvr:ValidateEditableMeshFacialBounds(var8_result2, var42_upvr, getExpectedPartSize_upvr_result1)
		end
		return UGCValidationService_upvr:ValidateFacialBounds(getMeshIdForSkinningValidation_upvr(arg1, allowEditableInstances_upvr_2), var42_upvr, getExpectedPartSize_upvr_result1)
	end, arg2)
	if not var6_result1_2 then
		local formatted_2 = string.format("Failed to load mesh data for '%s'. Make sure the mesh exists and try again.", arg1:GetFullName())
		if isServer ~= nil and isServer then
			error(formatted_2)
		end
		return false, {formatted_2}
	end
	if not var6_result2_2 then
		return false, {string.format("DynamicHead (%s) when emoting surpasses the expected bounding box", arg1:GetFullName())}
	end
	return true
end
local var54_upvr = game:DefineFastInt("UGCValidateFacialExpressivenessMinVertDelta", 2) / 100
local var55_upvr = game:DefineFastInt("UGCValidateFacialExpressivenessThreshold", 10) / 100
local function validateFacialExpressiveness_upvr(arg1, arg2) -- Line 209, Named "validateFacialExpressiveness"
	--[[ Upvalues[8]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: getExpectedPartSize_upvr (readonly)
		[3]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (readonly)
		[4]: getEditableMeshFromContext_upvr (readonly)
		[5]: UGCValidationService_upvr (readonly)
		[6]: var54_upvr (readonly)
		[7]: getMeshIdForSkinningValidation_upvr (readonly)
		[8]: var55_upvr (readonly)
	]]
	local isServer_2 = arg2.isServer
	local allowEditableInstances_upvr = arg2.allowEditableInstances
	local var6_result1, var6_result2 = pcallDeferred_upvr(function() -- Line 216
		--[[ Upvalues[9]:
			[1]: getExpectedPartSize_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (copied, readonly)
			[5]: getEditableMeshFromContext_upvr (copied, readonly)
			[6]: UGCValidationService_upvr (copied, readonly)
			[7]: var54_upvr (copied, readonly)
			[8]: getMeshIdForSkinningValidation_upvr (copied, readonly)
			[9]: allowEditableInstances_upvr (readonly)
		]]
		local var5_result1 = getExpectedPartSize_upvr(arg1, arg2)
		if getEngineFeatureEngineEditableMeshAvatarPublish_upvr() then
			local var8_result1, var8_result2_3 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
			if not var8_result1 then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService_upvr:ValidateEditableMeshFacialExpressiveness(var8_result2_3, var54_upvr, var5_result1)
		end
		return UGCValidationService_upvr:ValidateFacialExpressiveness(getMeshIdForSkinningValidation_upvr(arg1, allowEditableInstances_upvr), var54_upvr, var5_result1)
	end, arg2)
	if not var6_result1 then
		local formatted_3 = string.format("Failed to load mesh data for '%s'. Make sure the mesh exists and try again.", arg1:GetFullName())
		if isServer_2 ~= nil and isServer_2 then
			error(formatted_3)
		end
		return false, {formatted_3}
	end
	if var6_result2 < var55_upvr then
		return false, {string.format("DynamicHead (%s) did not pass threshold (%f < %f) for percent change when emoting", arg1:GetFullName(), var6_result2, var55_upvr)}
	end
	return true
end
local getEngineFeatureEngineUGCValidateBodyParts_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateBodyParts)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local getEngineFeatureUGCValidateGetInactiveControls_upvr = require(Parent.flags.getEngineFeatureUGCValidateGetInactiveControls)
local getFFlagValidateFacialExpressiveness_upvr = require(Parent.flags.getFFlagValidateFacialExpressiveness)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("UGCValidateCompareTextureOverlap")
local getFFlagValidateFacialBounds_upvr = require(Parent.flags.getFFlagValidateFacialBounds)
return function(arg1, arg2) -- Line 261, Named "validateDynamicHeadData"
	--[[ Upvalues[16]:
		[1]: getEngineFeatureEngineUGCValidateBodyParts_upvr (readonly)
		[2]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (readonly)
		[3]: getEditableMeshFromContext_upvr (readonly)
		[4]: UGCValidationService_upvr (readonly)
		[5]: getMeshIdForSkinningValidation_upvr (readonly)
		[6]: downloadFailure_upvr (readonly)
		[7]: Analytics_upvr (readonly)
		[8]: FailureReasonsAccumulator_upvr (readonly)
		[9]: getEngineFeatureUGCValidateGetInactiveControls_upvr (readonly)
		[10]: tbl_upvr (readonly)
		[11]: getFFlagValidateFacialExpressiveness_upvr (readonly)
		[12]: validateFacialExpressiveness_upvr (readonly)
		[13]: game_GetEngineFeature_result1_upvr (readonly)
		[14]: checkFACSDataOperational_upvr (readonly)
		[15]: getFFlagValidateFacialBounds_upvr (readonly)
		[16]: validateFacialBounds_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	if not getEngineFeatureEngineUGCValidateBodyParts_upvr() then
		return true
	end
	if arg2.bypassFlags then
	else
	end
	local allowEditableInstances_upvr_3 = arg2.allowEditableInstances
	local pcall_result1, pcall_result2_3 = pcall(function() -- Line 275
		--[[ Upvalues[7]:
			[1]: getEngineFeatureEngineEditableMeshAvatarPublish_upvr (copied, readonly)
			[2]: getEditableMeshFromContext_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: UGCValidationService_upvr (copied, readonly)
			[6]: getMeshIdForSkinningValidation_upvr (copied, readonly)
			[7]: allowEditableInstances_upvr_3 (readonly)
		]]
		if getEngineFeatureEngineEditableMeshAvatarPublish_upvr() then
			local getEditableMeshFromContext_upvr_result1, var8_result2_2 = getEditableMeshFromContext_upvr(arg1, "MeshId", arg2)
			if not getEditableMeshFromContext_upvr_result1 then
				error("Failed to retrieve MeshContent")
			end
			return UGCValidationService_upvr:ValidateDynamicHeadEditableMesh(var8_result2_2)
		end
		return UGCValidationService_upvr:ValidateDynamicHeadMesh(getMeshIdForSkinningValidation_upvr(arg1, allowEditableInstances_upvr_3))
	end)
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 27. Error Block 8 start (CF ANALYSIS FAILED)
	do
		return downloadFailure_upvr(arg2.isServer, arg1.Name, arg2)
	end
	-- KONSTANTERROR: [33] 27. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 33. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 33. Error Block 9 end (CF ANALYSIS FAILED)
end