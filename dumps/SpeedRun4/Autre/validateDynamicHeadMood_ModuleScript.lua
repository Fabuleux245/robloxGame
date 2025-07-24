-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:09
-- Luau version 6, Types version 3
-- Time taken: 0.003487 seconds

local Parent = script.Parent.Parent
local tbl_upvr_2 = {"ChinRaiser", "ChinRaiserUpperLip", "Corrugator", "EyesLookDown", "EyesLookLeft", "EyesLookRight", "EyesLookUp", "FlatPucker", "Funneler", "JawDrop", "JawLeft", "JawRight", "LeftBrowLowerer", "LeftCheekPuff", "LeftCheekRaiser", "LeftDimpler", "LeftEyeClosed", "LeftEyeUpperLidRaiser", "LeftInnerBrowRaiser", "LeftLipCornerDown", "LeftLipCornerPuller", "LeftLipStretcher", "LeftLowerLipDepressor", "LeftNoseWrinkler", "LeftOuterBrowRaiser", "LeftUpperLipRaiser", "LipPresser", "LipsTogether", "LowerLipSuck", "MouthLeft", "MouthRight", "Pucker", "RightBrowLowerer", "RightCheekPuff", "RightCheekRaiser", "RightDimpler", "RightEyeClosed", "RightEyeUpperLidRaiser", "RightInnerBrowRaiser", "RightLipCornerDown", "RightLipCornerPuller", "RightLipStretcher", "RightLowerLipDepressor", "RightNoseWrinkler", "RightOuterBrowRaiser", "RightUpperLipRaiser", "TongueDown", "TongueOut", "TongueUp", "UpperLipSuck"}
local tbl_upvr = {Vector3.new(0, 0, -1), Vector3.new(0, 1, 0), Vector3.new(1, 0, 0)}
assert(true)
local function _(arg1) -- Line 79, Named "applyMaxMood"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local Head_2 = arg1:FindFirstChild("Head")
	if not Head_2 then
		return false
	end
	if not Head_2:FindFirstChild("FaceControls") then
		return false
	end
	for _, v in tbl_upvr_2 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Head_2:FindFirstChild("FaceControls")[v] = 1
		local _
	end
	return true
end
local getEngineFeatureEngineUGCValidateBodyParts_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateBodyParts)
local getEngineFeatureEngineUGCValidateTextureBorder_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateTextureBorder)
local getEngineFeatureViewportFrameSnapshotEngineFeature_upvr = require(Parent.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local setupDynamicHead_upvr = require(Parent.util.setupDynamicHead)
local Thumbnailer_upvr = require(Parent.util.Thumbnailer)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local var17_upvr = require(Parent.flags.getFIntDynamicHeadBorderSize)()
return function(arg1, arg2) -- Line 98
	--[[ Upvalues[9]:
		[1]: getEngineFeatureEngineUGCValidateBodyParts_upvr (readonly)
		[2]: getEngineFeatureEngineUGCValidateTextureBorder_upvr (readonly)
		[3]: getEngineFeatureViewportFrameSnapshotEngineFeature_upvr (readonly)
		[4]: setupDynamicHead_upvr (readonly)
		[5]: tbl_upvr_2 (readonly)
		[6]: Thumbnailer_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: UGCValidationService_upvr (readonly)
		[9]: var17_upvr (readonly)
	]]
	local var26
	if not getEngineFeatureEngineUGCValidateBodyParts_upvr() or not getEngineFeatureEngineUGCValidateTextureBorder_upvr() or not arg2 and not getEngineFeatureViewportFrameSnapshotEngineFeature_upvr() then
		return true
	end
	local clone = arg1:Clone()
	var26 = clone
	local setupDynamicHead_upvr_result1 = setupDynamicHead_upvr(var26)
	if not setupDynamicHead_upvr_result1 then
		var26 = error
		var26("couldn't create character")
	end
	local Head = setupDynamicHead_upvr_result1:FindFirstChild("Head")
	if not Head then
		var26 = false
	elseif not Head:FindFirstChild("FaceControls") then
		var26 = false
	else
		for _, v_3 in tbl_upvr_2 do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			Head:FindFirstChild("FaceControls")[v_3] = 1
			local _
		end
		var26 = true
	end
	if not var26 then
		error("could not apply mood")
	end
	local any_new_result1 = Thumbnailer_upvr.new(arg2, 70, Vector2.new(100, 100))
	any_new_result1:init(clone)
	for _, v_2 in tbl_upvr do
		local var32 = clone.Size * (Vector3.new(1, 1, 1) - Vector3.new(math.abs(v_2.X), math.abs(v_2.Y), math.abs(v_2.Z)))
		any_new_result1:setCamera(0.5, math.max(var32.X, var32.Y, var32.Z), v_2)
		local any_takeSnapshot_result1, any_takeSnapshot_result2_upvr = any_new_result1:takeSnapshot()
		if not any_takeSnapshot_result1 then
			any_new_result1:cleanup()
			if arg2 then
				error(string.format("Unable to capture snapshot of DynamicHead (%s)", arg1.MeshId))
			else
				local module = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module[1] = string.format("Unable to capture snapshot of DynamicHead (%s)", arg1.MeshId)
				return false, module
			end
		end
		local var36
		local var37
		if arg2 then
			local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 144
				--[[ Upvalues[3]:
					[1]: UGCValidationService_upvr (copied, readonly)
					[2]: any_takeSnapshot_result2_upvr (readonly)
					[3]: var17_upvr (copied, readonly)
				]]
				return UGCValidationService_upvr:ValidateTextureAlphaByteString(any_takeSnapshot_result2_upvr, var17_upvr)
			end)
			var36 = pcall_result1_2
			var37 = pcall_result2_2
		else
			local pcall_result1, pcall_result2 = pcall(function() -- Line 148
				--[[ Upvalues[3]:
					[1]: UGCValidationService_upvr (copied, readonly)
					[2]: any_takeSnapshot_result2_upvr (readonly)
					[3]: var17_upvr (copied, readonly)
				]]
				return UGCValidationService_upvr:ValidateTextureAlpha(any_takeSnapshot_result2_upvr, var17_upvr)
			end)
			var36 = pcall_result1
			var37 = pcall_result2
		end
		if not var36 then
			any_new_result1:cleanup()
			if arg2 then
				error(string.format("Failed to read data from snapshot of DynamicHead (%s)", arg1.MeshId))
			else
				local module_2 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module_2[1] = string.format("Failed to read data from snapshot of DynamicHead (%s)", arg1.MeshId)
				return false, module_2
			end
		end
		if not var37 then
			any_new_result1:cleanup()
			return false, {string.format("DynamicHead (%s) when emoting surpasses the expected bounding box", arg1.MeshId)}
		end
	end
	any_new_result1:cleanup()
	return true
end