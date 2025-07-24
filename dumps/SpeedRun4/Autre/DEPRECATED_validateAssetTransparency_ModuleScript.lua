-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:52
-- Luau version 6, Types version 3
-- Time taken: 0.007443 seconds

local Parent = script.Parent.Parent
local getEngineFeatureEngineUGCValidationGetImageTransparency_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidationGetImageTransparency)
local game_DefineFastInt_result1 = game:DefineFastInt("UGCValidationHeadThreshold", 30)
local Constants_upvr = require(Parent.Constants)
local tbl_upvr = {Vector3.new(0, 0, -1), Vector3.new(0, 0, 1), Vector3.new(1, 0, 0)}
local var6_upvw
if getEngineFeatureEngineUGCValidationGetImageTransparency_upvr() then
	var6_upvw = {
		[tbl_upvr[1]] = "front";
		[tbl_upvr[2]] = "back";
		[tbl_upvr[3]] = "side";
	}
end
local tbl_upvr_2 = {
	[Enum.AssetType.DynamicHead] = {
		[tbl_upvr[1]] = game_DefineFastInt_result1 / 100;
		[tbl_upvr[2]] = game_DefineFastInt_result1 / 100;
		[tbl_upvr[3]] = game_DefineFastInt_result1 / 100;
	};
	[Enum.AssetType.Torso] = {
		[tbl_upvr[1]] = game:DefineFastInt("UGCValidationTorsoThresholdFront", 50) / 100;
		[tbl_upvr[2]] = game:DefineFastInt("UGCValidationTorsoThresholdBack", 48) / 100;
		[tbl_upvr[3]] = game:DefineFastInt("UGCValidationTorsoThresholdSide", 46) / 100;
	};
	[Enum.AssetType.LeftArm] = {
		[tbl_upvr[1]] = game:DefineFastInt("UGCValidationLeftArmThresholdFront", 35) / 100;
		[tbl_upvr[2]] = game:DefineFastInt("UGCValidationLeftArmThresholdBack", 33) / 100;
		[tbl_upvr[3]] = game:DefineFastInt("UGCValidationLeftArmThresholdSide", 50) / 100;
	};
	[Enum.AssetType.RightArm] = {
		[tbl_upvr[1]] = game:DefineFastInt("UGCValidationRightArmThresholdFront", 35) / 100;
		[tbl_upvr[2]] = game:DefineFastInt("UGCValidationRightArmThresholdBack", 33) / 100;
		[tbl_upvr[3]] = game:DefineFastInt("UGCValidationRightArmThresholdSide", 50) / 100;
	};
	[Enum.AssetType.LeftLeg] = {
		[tbl_upvr[1]] = game:DefineFastInt("UGCValidationLeftLegThresholdFront", 50) / 100;
		[tbl_upvr[2]] = game:DefineFastInt("UGCValidationLeftLegThresholdBack", 50) / 100;
		[tbl_upvr[3]] = game:DefineFastInt("UGCValidationLeftLegThresholdSide", 46) / 100;
	};
	[Enum.AssetType.RightLeg] = {
		[tbl_upvr[1]] = game:DefineFastInt("UGCValidationRightLegThresholdFront", 50) / 100;
		[tbl_upvr[2]] = game:DefineFastInt("UGCValidationRightLegThresholdBack", 50) / 100;
		[tbl_upvr[3]] = game:DefineFastInt("UGCValidationRightLegThresholdSide", 48) / 100;
	};
}
local var15_upvw
if getEngineFeatureEngineUGCValidationGetImageTransparency_upvr() then
	var15_upvw = "%s is difficult to see from the %s. %d%% of the bounding box is visible, but over %d%% is required. Please expand the body part to fill in more room."
end
local function flattenParts_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 92, Named "flattenParts"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var18 = Constants_upvr.ASSET_TYPE_INFO[arg2]
	assert(var18)
	local function flattenIndividualPart(arg1_2) -- Line 102
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: arg4 (readonly)
			[3]: arg5 (readonly)
		]]
		local Position = arg3[arg1_2].Position
		local Size = arg3[arg1_2].Size
		if math.abs(arg4.X) < math.abs(arg4.Z) then
			arg1_2.Size = Vector3.new(Size.X, Size.Y, 0.01)
			arg1_2.Position = Vector3.new(Position.X, Position.Y, arg5.Z)
		else
			arg1_2.Size = Vector3.new(0.01, Size.Y, Size.Z)
			arg1_2.Position = Vector3.new(arg5.X, Position.Y, Position.Z)
		end
	end
	if Enum.AssetType.DynamicHead == arg2 then
		flattenIndividualPart(arg1)
	else
		for i_3 in pairs(var18.subParts) do
			local SOME_2 = arg1:FindFirstChild(i_3)
			assert(SOME_2)
			flattenIndividualPart(SOME_2)
		end
	end
end
local function getInitialSizePosition_upvr(arg1, arg2) -- Line 126, Named "getInitialSizePosition"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var27 = Constants_upvr.ASSET_TYPE_INFO[arg2]
	assert(var27)
	local module_2 = {}
	if Enum.AssetType.DynamicHead == arg2 then
		module_2[arg1] = {
			Position = arg1.Position;
			Size = arg1.Size;
		}
		return module_2
	end
	for i in pairs(var27.subParts) do
		local SOME = arg1:FindFirstChild(i)
		assert(SOME)
		module_2[SOME] = {
			Position = SOME.Position;
			Size = SOME.Size;
		}
	end
	return module_2
end
local function calculateMaxAspectRatio_upvr(arg1) -- Line 147, Named "calculateMaxAspectRatio"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local Classic = Constants_upvr.ASSET_TYPE_INFO[arg1].bounds.Classic
	local ProportionsSlender = Constants_upvr.ASSET_TYPE_INFO[arg1].bounds.ProportionsSlender
	local ProportionsNormal = Constants_upvr.ASSET_TYPE_INFO[arg1].bounds.ProportionsNormal
	return math.max(math.max(Classic.maxSize.X, ProportionsSlender.maxSize.X, ProportionsNormal.maxSize.X), math.max(Classic.maxSize.Z, ProportionsSlender.maxSize.Z, ProportionsNormal.maxSize.Z)) / math.min(Classic.minSize.Y, ProportionsSlender.minSize.Y, ProportionsNormal.minSize.Y)
end
local getEngineFeatureEngineUGCValidateTransparency_upvr = require(Parent.flags.getEngineFeatureEngineUGCValidateTransparency)
local getEngineFeatureViewportFrameSnapshotEngineFeature_upvr = require(Parent.flags.getEngineFeatureViewportFrameSnapshotEngineFeature)
local setupTransparentPartSize_upvr = require(Parent.util.setupTransparentPartSize)
local Thumbnailer_upvr = require(Parent.util.Thumbnailer)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2, arg3, arg4) -- Line 160
	--[[ Upvalues[13]:
		[1]: getEngineFeatureEngineUGCValidateTransparency_upvr (readonly)
		[2]: getEngineFeatureViewportFrameSnapshotEngineFeature_upvr (readonly)
		[3]: setupTransparentPartSize_upvr (readonly)
		[4]: Thumbnailer_upvr (readonly)
		[5]: getInitialSizePosition_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: flattenParts_upvr (readonly)
		[8]: calculateMaxAspectRatio_upvr (readonly)
		[9]: getEngineFeatureEngineUGCValidationGetImageTransparency_upvr (readonly)
		[10]: UGCValidationService_upvr (readonly)
		[11]: tbl_upvr_2 (readonly)
		[12]: var15_upvw (read and write)
		[13]: var6_upvw (read and write)
	]]
	if not arg1 then
		return true
	end
	if not getEngineFeatureEngineUGCValidateTransparency_upvr() then
		return true
	end
	if arg3 then
		local _ = true
	else
	end
	if not false and not getEngineFeatureViewportFrameSnapshotEngineFeature_upvr() then
		return true
	end
	local clone = arg1:Clone()
	local MeshPart = Instance.new("MeshPart")
	if not setupTransparentPartSize_upvr(MeshPart, clone, arg1, arg2, arg4) then
		return false, {"Error getting part sizes "}
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_new_result1 = Thumbnailer_upvr.new(false, 70, Vector2.new(100, 100))
	any_new_result1:init(clone)
	for _, v_upvr in tbl_upvr do
		local var53
		if math.abs(v_upvr.X) < math.abs(v_upvr.Z) then
			var53 = MeshPart.Size.X
		else
			var53 = MeshPart.Size.Z
		end
		flattenParts_upvr(clone, arg2, getInitialSizePosition_upvr(clone, arg2), v_upvr, MeshPart.Position)
		local var54 = var53 / MeshPart.Size.Y
		if 10 * calculateMaxAspectRatio_upvr(arg2) < var54 then
			any_new_result1:cleanup()
			return false, {"Transparency validation failed as image would be too large to test"}
		end
		local var56 = var54 * 100
		if var56 < 1 then
			any_new_result1:cleanup()
			return false, {"Transparency validation failed as image would be too small to test"}
		end
		any_new_result1:setImgSize(Vector2.new(var56, 100))
		any_new_result1:setCameraTransform(CFrame.lookAt(MeshPart.CFrame.Position + (v_upvr) * (MeshPart.Size.Y / 2 / 0.7002075382097097), MeshPart.CFrame.Position))
		local any_takeSnapshot_result1, any_takeSnapshot_result2_upvr = any_new_result1:takeSnapshot()
		if not any_takeSnapshot_result1 then
			any_new_result1:cleanup()
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if false then
				error(string.format("Unable to capture snapshot of %s", arg2.Name))
			else
				local module = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module[1] = string.format("Unable to capture snapshot of %s", arg2.Name)
				return false, module
			end
		end
		local var61
		local var62
		local var63
		if getEngineFeatureEngineUGCValidationGetImageTransparency_upvr() then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if false then
				local pcall_result1, pcall_result2_2 = pcall(function() -- Line 237
					--[[ Upvalues[2]:
						[1]: UGCValidationService_upvr (copied, readonly)
						[2]: any_takeSnapshot_result2_upvr (readonly)
					]]
					return UGCValidationService_upvr:GetImageTransparencyWithByteString(any_takeSnapshot_result2_upvr)
				end)
				var61 = pcall_result1
				var63 = pcall_result2_2
			else
				local pcall_result1_4, pcall_result2_3 = pcall(function() -- Line 241
					--[[ Upvalues[2]:
						[1]: UGCValidationService_upvr (copied, readonly)
						[2]: any_takeSnapshot_result2_upvr (readonly)
					]]
					return UGCValidationService_upvr:GetImageTransparencyWithTextureID(any_takeSnapshot_result2_upvr)
				end)
				var61 = pcall_result1_4
				var63 = pcall_result2_3
			end
			if var61 then
				if tbl_upvr_2[arg2][v_upvr] >= var63 then
					var62 = false
				else
					var62 = true
				end
				-- KONSTANTWARNING: GOTO [243] #195
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if false then
				local pcall_result1_3, pcall_result2 = pcall(function() -- Line 252
					--[[ Upvalues[5]:
						[1]: UGCValidationService_upvr (copied, readonly)
						[2]: any_takeSnapshot_result2_upvr (readonly)
						[3]: tbl_upvr_2 (copied, readonly)
						[4]: arg2 (readonly)
						[5]: v_upvr (readonly)
					]]
					return UGCValidationService_upvr:ValidateImageTransparencyThresholdByteString_V2(any_takeSnapshot_result2_upvr, tbl_upvr_2[arg2][v_upvr])
				end)
				var61 = pcall_result1_3
				var62 = pcall_result2
			else
				local pcall_result1_2, pcall_result2_4 = pcall(function() -- Line 259
					--[[ Upvalues[5]:
						[1]: UGCValidationService_upvr (copied, readonly)
						[2]: any_takeSnapshot_result2_upvr (readonly)
						[3]: tbl_upvr_2 (copied, readonly)
						[4]: arg2 (readonly)
						[5]: v_upvr (readonly)
					]]
					return UGCValidationService_upvr:ValidateImageTransparencyThresholdTextureID_V2(any_takeSnapshot_result2_upvr, tbl_upvr_2[arg2][v_upvr])
				end)
				var61 = pcall_result1_2
				var62 = pcall_result2_4
			end
		end
		if not var61 then
			any_new_result1:cleanup()
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if false then
				error(string.format("Failed to read data from snapshot of (%s)", arg2.Name))
			else
				local module_3 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module_3[1] = string.format("Failed to read data from snapshot of (%s)", arg2.Name)
				return false, module_3
			end
		end
		if not var62 then
			any_new_result1:cleanup()
			if getEngineFeatureEngineUGCValidationGetImageTransparency_upvr() then
				return false, {string.format(var15_upvw, arg2.Name, var6_upvw[v_upvr], math.floor(var63 * 100), math.floor(tbl_upvr_2[arg2][v_upvr] * 100))}
			end
			return false, {string.format("%s is too transparent. Please fill in more of the mesh.", arg2.Name)}
		end
	end
	any_new_result1:cleanup()
	return true
end