-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:06
-- Luau version 6, Types version 3
-- Time taken: 0.013244 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local util = Parent.util
local FailureReasonsAccumulator_upvr = require(util.FailureReasonsAccumulator)
local AssetCalculator_upvr = require(util.AssetCalculator)
local flags = Parent.flags
local module_4_upvr = {}
local function reportFailure_upvr(arg1, arg2, arg3) -- Line 28, Named "reportFailure"
	--[[ Upvalues[1]:
		[1]: Analytics_upvr (readonly)
	]]
	Analytics_upvr.reportFailure(arg2, nil, arg3)
	local module_3 = {}
	module_3[1] = arg1
	return false, module_3
end
local var9_upvw
local function _() -- Line 41, Named "getBodyPartToParentMap"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: AssetCalculator_upvr (readonly)
	]]
	if not var9_upvw then
		var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
	end
	return var9_upvw
end
local function _(arg1) -- Line 49, Named "isBodyPartFolderNameValid"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: AssetCalculator_upvr (readonly)
	]]
	local var10
	if not var9_upvw then
		var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
	end
	if var9_upvw[arg1] == nil then
		if arg1 ~= "HumanoidRootPart" then
			var10 = false
		else
			var10 = true
		end
	end
	return var10
end
local function _(arg1) -- Line 56, Named "validateCurveAnimationBodyPartFolder"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: AssetCalculator_upvr (readonly)
	]]
	local function validateBodyPartFolderInternal_upvr(arg1_2) -- Line 57, Named "validateBodyPartFolderInternal"
		--[[ Upvalues[3]:
			[1]: var9_upvw (copied, read and write)
			[2]: AssetCalculator_upvr (copied, readonly)
			[3]: validateBodyPartFolderInternal_upvr (readonly)
		]]
		for _, v in arg1_2:GetChildren() do
			if v:IsA("Folder") then
				if v.Name == "HumanoidRootPart" then
					return false
				end
				if not var9_upvw then
					var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
				end
				local var16 = var9_upvw[v.Name]
				if var16 then
					if var16 ~= arg1_2.Name then
						return false
					end
					return validateBodyPartFolderInternal_upvr(v)
				end
			end
		end
		return true
	end
	local Name = arg1.Name
	local var18
	if not var9_upvw then
		var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
	end
	if var9_upvw[Name] == nil then
		if Name ~= "HumanoidRootPart" then
			var18 = false
		else
			var18 = true
		end
	end
	if not var18 then
		var18 = true
		return var18
	end
	var18 = validateBodyPartFolderInternal_upvr(arg1)
	return var18
end
local function validateSingleBodyRoot_upvr(arg1, arg2) -- Line 83, Named "validateSingleBodyRoot"
	--[[ Upvalues[4]:
		[1]: var9_upvw (read and write)
		[2]: AssetCalculator_upvr (readonly)
		[3]: reportFailure_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	for _, v_2 in arg1:GetChildren() do
		local var35
		if var35 then
			local Name_2 = v_2.Name
			var35 = true
			if not var9_upvw then
				var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
			end
			if var9_upvw[Name_2] == nil then
				if Name_2 ~= "HumanoidRootPart" then
					var35 = false
				else
					var35 = true
				end
			end
			if var35 then
				var35 = 1
				if var35 < 0 + 1 then
					var35 = reportFailure_upvr("CurveAnimation contains more than one body part or HumanoidRootPart Folder children. Please ensure there is only one child Folder named after a body part or HumanoidRootPart.", Analytics_upvr.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect, arg2)
					return var35
				end
			end
		end
	end
	return true
end
local function validateAnimationHierarchy_upvr(arg1, arg2) -- Line 105, Named "validateAnimationHierarchy"
	--[[ Upvalues[5]:
		[1]: Analytics_upvr (readonly)
		[2]: validateSingleBodyRoot_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: AssetCalculator_upvr (readonly)
		[5]: reportFailure_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	if not arg1:IsA("CurveAnimation") then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect, nil, arg2)
		return false, {"Referenced Animation is not a CurveAnimation. Please ensure the animation is uploaded correctly."}
	end
	local validateSingleBodyRoot_result1, validateSingleBodyRoot_upvr_result2 = validateSingleBodyRoot_upvr(arg1, arg2)
	if not validateSingleBodyRoot_result1 then
		return false, validateSingleBodyRoot_upvr_result2
	end
	local children, NONE_6, NONE = arg1:GetChildren()
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [116] 94. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [116] 94. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 29. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.9]
	if not nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.15]
				if not nil then
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.13]
				if nil == nil then
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.12]
					if nil ~= "HumanoidRootPart" then
					else
					end
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [116.11]
				if not nil then
				else
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not nil then
					-- KONSTANTWARNING: GOTO [116] #94
				end
			else
			end
		end
	end
	-- KONSTANTERROR: [35] 29. Error Block 39 end (CF ANALYSIS FAILED)
end
local function createDefaultCharacter_upvr(arg1) -- Line 152, Named "createDefaultCharacter"
	local any_CreateHumanoidModelFromDescription_result1 = game.Players:CreateHumanoidModelFromDescription(Instance.new("HumanoidDescription"), Enum.HumanoidRigType.R15)
	for _, v_3 in any_CreateHumanoidModelFromDescription_result1:GetDescendants() do
		if v_3:IsA("Decal") then
			v_3.Transparency = 1
		elseif v_3:IsA("MeshPart") then
			v_3.Transparency = 1
			v_3.CanCollide = false
		elseif v_3:IsA("Motor6D") and arg1 then
			v_3:Destroy()
		end
	end
	return any_CreateHumanoidModelFromDescription_result1
end
local ContentProvider_upvr = game:GetService("ContentProvider")
local function calculateAnimFramesAtOriginAccurate_upvr(arg1) -- Line 174, Named "calculateAnimFramesAtOriginAccurate"
	--[[ Upvalues[4]:
		[1]: ContentProvider_upvr (readonly)
		[2]: createDefaultCharacter_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: AssetCalculator_upvr (readonly)
	]]
	local Animation = Instance.new("Animation")
	Animation.AnimationId = arg1
	ContentProvider_upvr:PreloadAsync({Animation})
	local createDefaultCharacter_upvr_result1_2 = createDefaultCharacter_upvr(false)
	createDefaultCharacter_upvr_result1_2.Parent = workspace
	createDefaultCharacter_upvr_result1_2:PivotTo(CFrame.new())
	local Animator = createDefaultCharacter_upvr_result1_2:FindFirstChild("Humanoid"):FindFirstChild("Animator")
	local any_LoadAnimation_result1 = Animator:LoadAnimation(Animation)
	any_LoadAnimation_result1:Play(0)
	any_LoadAnimation_result1.TimePosition = 0
	local tbl_2 = {}
	if not var9_upvw then
		var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
	end
	for i_4 in var9_upvw do
		tbl_2[i_4] = createDefaultCharacter_upvr_result1_2:FindFirstChild(i_4)
	end
	while 0 < any_LoadAnimation_result1.Length do
		Animator:StepAnimations(0.03333333333333333)
		i_4 = tbl_2
		for i_5, v_4 in i_4 do
			({})[i_5] = v_4.CFrame
			local var74
		end
		i_4 = table.insert
		i_4({}, var74)
	end
	for _, v_5 in pairs(Animator:GetPlayingAnimationTracks()) do
		v_5:Stop(0)
		v_5.TimePosition = 0
		v_5:Play(0)
		v_5:Stop(0)
		v_5:Destroy()
	end
	createDefaultCharacter_upvr_result1_2:Destroy()
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return {}, any_LoadAnimation_result1.Length
end
local function calculateAnimFramesAtOriginManual_upvr(arg1) -- Line 224, Named "calculateAnimFramesAtOriginManual"
	--[[ Upvalues[3]:
		[1]: var9_upvw (read and write)
		[2]: AssetCalculator_upvr (readonly)
		[3]: createDefaultCharacter_upvr (readonly)
	]]
	local createDefaultCharacter_upvr_result1 = createDefaultCharacter_upvr(false)
	for _, v_9 in createDefaultCharacter_upvr_result1:GetChildren() do
		local Name_3 = v_9.Name
		local var129
		if not var9_upvw then
			var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
		end
		if var9_upvw[Name_3] == nil then
			if Name_3 ~= "HumanoidRootPart" then
				var129 = false
			else
				var129 = true
			end
		end
		if var129 then
			var129 = v_9.Name
			;({})[var129] = v_9
		end
	end
	local getCurveTracks_result1 = (function() -- Line 225, Named "getCurveTracks"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var9_upvw (copied, read and write)
			[3]: AssetCalculator_upvr (copied, readonly)
		]]
		for _, v_6 in arg1:GetDescendants() do
			if v_6:IsA("Folder") then
				if not var9_upvw then
					var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
				end
				if var9_upvw[v_6.Name] then
					local Position = v_6:FindFirstChild("Position")
					local Rotation_4 = v_6:FindFirstChild("Rotation")
					if Position and Position:IsA("Vector3Curve") and Rotation_4 then
						local var102 = "EulerRotationCurve"
						if Rotation_4:IsA(var102) then
							local tbl_3 = {
								pos = Position;
								rot = Rotation_4;
							}
							if v_6.Name == "Head" then
								var102 = v_6:FindFirstChild("FaceControls")
							else
								var102 = nil
							end
							tbl_3.faceControls = var102
							;({})[v_6.Name] = tbl_3
						end
					end
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end)()
	local calculateCurveAnimLength_result1 = (function(arg1_3) -- Line 243, Named "calculateCurveAnimLength"
		local var108_upvw = -1
		local function getMaxTimeFromFloatCurveChildren(arg1_4) -- Line 246
			--[[ Upvalues[1]:
				[1]: var108_upvw (read and write)
			]]
			if not arg1_4 then
			else
				for _, v_15 in arg1_4:GetChildren() do
					if v_15:IsA("FloatCurve") then
						for _, v_16 in v_15:GetKeys() do
							var108_upvw = math.max(var108_upvw, v_16.Time)
						end
					end
				end
			end
		end
		for _, v_7 in arg1_3 do
			getMaxTimeFromFloatCurveChildren(v_7.pos)
			getMaxTimeFromFloatCurveChildren(v_7.rot)
			getMaxTimeFromFloatCurveChildren(v_7.faceControls)
		end
		return var108_upvw
	end)(getCurveTracks_result1)
	local module_5 = {}
	while 0 <= calculateCurveAnimLength_result1 do
		var129 = 0
		var129 = AssetCalculator_upvr.calculateAllTransformsForFullBody
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var129 = var129({}, (function(arg1_5, arg2) -- Line 269, Named "calculateTransformsAtTime"
			local module = {}
			for i_9, v_8 in arg2 do
				module[i_9] = v_8.rot:GetRotationAtTime(arg1_5) + Vector3.new(unpack(v_8.pos:GetValueAtTime(arg1_5)))
			end
			return module
		end)(var129, getCurveTracks_result1))
		table.insert(module_5, var129)
	end
	createDefaultCharacter_upvr_result1:Destroy()
	return module_5, calculateCurveAnimLength_result1
end
local GetFStringUGCValidationMaxAnimationLength_upvr = require(flags.GetFStringUGCValidationMaxAnimationLength)
function module_4_upvr.validateAnimationLength(arg1, arg2) -- Line 304
	--[[ Upvalues[3]:
		[1]: GetFStringUGCValidationMaxAnimationLength_upvr (readonly)
		[2]: reportFailure_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	if arg1 <= 0 or GetFStringUGCValidationMaxAnimationLength_upvr.asNumber() < arg1 then
		return reportFailure_upvr(`CurveAnimation must be between 0 and {GetFStringUGCValidationMaxAnimationLength_upvr.asString()} seconds long. Please fix the animation.`, Analytics_upvr.ErrorType.validateCurveAnimation_UnacceptableLength, arg2)
	end
	return true
end
local GetFStringUGCValidationMaxAnimationBounds_upvr = require(flags.GetFStringUGCValidationMaxAnimationBounds)
function module_4_upvr.validateBounds(arg1, arg2) -- Line 319
	--[[ Upvalues[3]:
		[1]: GetFStringUGCValidationMaxAnimationBounds_upvr (readonly)
		[2]: reportFailure_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	local var144 = 0
	for i_11, v_10 in arg1 do
		for _, v_11 in v_10 do
			var144 = math.max(var144, v_11.Position.Magnitude)
		end
	end
	if GetFStringUGCValidationMaxAnimationBounds_upvr.asNumber() < var144 then
		v_10 = GetFStringUGCValidationMaxAnimationBounds_upvr.asString()
		v_10 = Analytics_upvr
		i_11 = v_10.ErrorType
		i_11 = arg2
		return reportFailure_upvr(`Body parts in a CurveAnimation cannot get more than {v_10} studs from the HumanoidRootPart. Please fix the animation.`, i_11.validateCurveAnimation_UnacceptableSizeBounds, i_11)
	end
	return true
end
local GetFStringUGCValidationMaxAnimationDeltas_upvr = require(flags.GetFStringUGCValidationMaxAnimationDeltas)
function module_4_upvr.validateFrameDeltas(arg1, arg2) -- Line 340
	--[[ Upvalues[3]:
		[1]: GetFStringUGCValidationMaxAnimationDeltas_upvr (readonly)
		[2]: reportFailure_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	for _, v_12 in arg1 do
		for i_14, v_13 in v_12 do
			local var150 = ({})[i_14]
			if var150 and GetFStringUGCValidationMaxAnimationDeltas_upvr.asNumber() < (v_13.Position - var150.Position).Magnitude then
				return reportFailure_upvr(`Body part {i_14} in CurveAnimation moves more than {GetFStringUGCValidationMaxAnimationDeltas_upvr.asString()} studs between frames. Please fix the animation.`, Analytics_upvr.ErrorType.validateCurveAnimation_UnacceptableFrameDelta, arg2)
			end
		end
	end
	return true
end
function module_4_upvr.validateContainsJointManipulation(arg1, arg2) -- Line 368
	--[[ Upvalues[4]:
		[1]: var9_upvw (read and write)
		[2]: AssetCalculator_upvr (readonly)
		[3]: reportFailure_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	for _, v_14 in arg1:GetDescendants() do
		if v_14:IsA("Folder") then
			if not var9_upvw then
				var9_upvw = AssetCalculator_upvr.getBodyPartsToParents()
			end
			if var9_upvw[v_14.Name] then
				local Position_2 = v_14:FindFirstChild("Position")
				local Rotation_2 = v_14:FindFirstChild("Rotation")
				if Position_2 then
					if Position_2:IsA("Vector3Curve") and Rotation_2 and Rotation_2:IsA("EulerRotationCurve") then
						return true
					end
				end
			end
		end
	end
	return reportFailure_upvr("CurveAnimation does not contain any joint manipulation.", Analytics_upvr.ErrorType.validateCurveAnimation_AnimationContainsNoJointManipulation, arg2)
end
function module_4_upvr.validateStructure(arg1, arg2) -- Line 390
	--[[ Upvalues[1]:
		[1]: validateAnimationHierarchy_upvr (readonly)
	]]
	return validateAnimationHierarchy_upvr(arg1, arg2)
end
local getFFlagUGCValidateAccurateCurveFrames_upvr = require(flags.getFFlagUGCValidateAccurateCurveFrames)
function module_4_upvr.calculateAnimFramesAtOrigin(arg1, arg2) -- Line 397
	--[[ Upvalues[3]:
		[1]: getFFlagUGCValidateAccurateCurveFrames_upvr (readonly)
		[2]: calculateAnimFramesAtOriginAccurate_upvr (readonly)
		[3]: calculateAnimFramesAtOriginManual_upvr (readonly)
	]]
	if getFFlagUGCValidateAccurateCurveFrames_upvr() then
		local calculateAnimFramesAtOriginAccurate_result1, calculateAnimFramesAtOriginAccurate_result2 = calculateAnimFramesAtOriginAccurate_upvr(arg2)
		return calculateAnimFramesAtOriginAccurate_result1, calculateAnimFramesAtOriginAccurate_result2
	end
	local calculateAnimFramesAtOriginManual_result1, calculateAnimFramesAtOriginManual_result2 = calculateAnimFramesAtOriginManual_upvr(arg1)
	return calculateAnimFramesAtOriginManual_result1, calculateAnimFramesAtOriginManual_result2
end
function module_4_upvr.validateFrames(arg1, arg2, arg3) -- Line 410
	--[[ Upvalues[2]:
		[1]: module_4_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
	]]
	local any_calculateAnimFramesAtOrigin_result1, any_calculateAnimFramesAtOrigin_result2 = module_4_upvr.calculateAnimFramesAtOrigin(arg1, arg2)
	local any_new_result1_2 = FailureReasonsAccumulator_upvr.new()
	any_new_result1_2:updateReasons(module_4_upvr.validateAnimationLength(any_calculateAnimFramesAtOrigin_result2, arg3))
	any_new_result1_2:updateReasons(module_4_upvr.validateBounds(any_calculateAnimFramesAtOrigin_result1, arg3))
	any_new_result1_2:updateReasons(module_4_upvr.validateFrameDeltas(any_calculateAnimFramesAtOrigin_result1, arg3))
	return any_new_result1_2:getFinalResults()
end
local validateAttributes_upvr = require(Parent.validation.validateAttributes)
function module_4_upvr.validate(arg1, arg2, arg3) -- Line 424
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: validateAttributes_upvr (readonly)
	]]
	local any_validateStructure_result1, any_validateStructure_result2 = module_4_upvr.validateStructure(arg1, arg3)
	if not any_validateStructure_result1 then
		return any_validateStructure_result1, any_validateStructure_result2
	end
	local any_new_result1 = FailureReasonsAccumulator_upvr.new()
	any_new_result1:updateReasons(validateAttributes_upvr(arg1, arg3))
	any_new_result1:updateReasons(module_4_upvr.validateContainsJointManipulation(arg1, arg3))
	any_new_result1:updateReasons(module_4_upvr.validateFrames(arg1, arg2, arg3))
	return any_new_result1:getFinalResults()
end
return module_4_upvr