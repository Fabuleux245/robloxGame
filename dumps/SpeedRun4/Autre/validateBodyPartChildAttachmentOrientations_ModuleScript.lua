-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:58
-- Luau version 6, Types version 3
-- Time taken: 0.005267 seconds

local Parent = script.Parent.Parent
local module_upvr = {
	expectedGripAttCFrame = function(arg1, arg2) -- Line 27, Named "expectedGripAttCFrame"
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local var3 = true
		local var4
		if arg2 ~= Enum.AssetType.RightArm then
			if arg2 ~= Enum.AssetType.LeftArm then
				var3 = false
			else
				var3 = true
			end
		end
		assert(var3)
		if arg2 == Enum.AssetType.RightArm then
			-- KONSTANTWARNING: GOTO [22] #16
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 15. Error Block 22 start (CF ANALYSIS FAILED)
		local const_string = "Left"
		local SOME = arg1:FindFirstChild(const_string.."LowerArm")
		local SOME_4 = arg1:FindFirstChild(const_string.."Hand")
		assert(SOME)
		assert(SOME_4)
		local SOME_3 = SOME:FindFirstChild(const_string.."ElbowRigAttachment")
		local SOME_2 = SOME:FindFirstChild(const_string.."WristRigAttachment")
		local SOME_6 = SOME_4:FindFirstChild(const_string.."WristRigAttachment")
		local SOME_5 = SOME_4:FindFirstChild(const_string.."GripAttachment")
		assert(SOME_3)
		assert(SOME_2)
		assert(SOME_6)
		assert(SOME_5)
		local var12 = CFrame.new(SOME_4.CFrame.Position) * SOME_6.CFrame
		var4 = var12.Position
		local var13 = var4 - (var12 * SOME_2.CFrame:Inverse() * SOME_3.CFrame).Position
		if arg2 == Enum.AssetType.RightArm then
			var4 = 1
		else
			var4 = -1
		end
		do
			return SOME_5, (CFrame.new(SOME_5.CFrame.Position)) * (CFrame.new(Vector3.new(0, 0, 0), Vector3.new(math.max(0, var13.X * var4) * var4, var13.Y, 0)).Rotation * CFrame.fromEulerAnglesXYZ(0, 0, (math.pi/2) * var4))
		end
		-- KONSTANTERROR: [21] 15. Error Block 22 end (CF ANALYSIS FAILED)
	end;
}
local getFFlagRefactorBodyAttachmentOrientationsCheck_upvr = require(Parent.flags.getFFlagRefactorBodyAttachmentOrientationsCheck)
local FailureReasonsAccumulator_upvr = require(Parent.util.FailureReasonsAccumulator)
local floatEquals_upvr = require(Parent.util.floatEquals)
local Analytics_upvr = require(Parent.Analytics)
local getDiffBetweenOrientations_upvr = require(Parent.util.getDiffBetweenOrientations)
local getFIntUGCValidationGripAttOrientationThreshold_upvr = require(Parent.flags.getFIntUGCValidationGripAttOrientationThreshold)
local valueToString_upvr = require(Parent.util.valueToString)
function module_upvr.runValidation(arg1, arg2) -- Line 74
	--[[ Upvalues[8]:
		[1]: getFFlagRefactorBodyAttachmentOrientationsCheck_upvr (readonly)
		[2]: FailureReasonsAccumulator_upvr (readonly)
		[3]: floatEquals_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: getDiffBetweenOrientations_upvr (readonly)
		[7]: getFIntUGCValidationGripAttOrientationThreshold_upvr (readonly)
		[8]: valueToString_upvr (readonly)
	]]
	assert(getFFlagRefactorBodyAttachmentOrientationsCheck_upvr())
	for i, v in arg1:GetDescendants() do
		local var28 = false
		if v.ClassName == "Attachment" then
			if string.sub(v.Name, -13) ~= "RigAttachment" then
				var28 = false
			else
				var28 = true
			end
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local any_ToOrientation_result1, any_ToOrientation_result2, any_ToOrientation_result3 = v.CFrame:ToOrientation()
			return floatEquals_upvr(any_ToOrientation_result1, 0)
		end
		if var28 and (not INLINED() or not floatEquals_upvr(any_ToOrientation_result2, 0) or not floatEquals_upvr(any_ToOrientation_result3, 0)) then
			Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateBodyPartChildAttachmentOrientations_RotatedRig, nil, arg2)
			FailureReasonsAccumulator_upvr.new():updateReasons(false, {string.format("Rig attachments cannot be rotated, please set %s's orientation to (0,0,0)", v:GetFullName())})
		end
	end
	if arg2.assetTypeEnum == Enum.AssetType.RightArm or arg2.assetTypeEnum == Enum.AssetType.LeftArm then
		assert(arg2.assetTypeEnum)
		local any_expectedGripAttCFrame_result1, any_expectedGripAttCFrame_result2 = module_upvr.expectedGripAttCFrame(arg1, arg2.assetTypeEnum)
		i = any_expectedGripAttCFrame_result2
		v = any_expectedGripAttCFrame_result1.CFrame
		i = getFIntUGCValidationGripAttOrientationThreshold_upvr()
		if i < getDiffBetweenOrientations_upvr(i, v) then
			i = Analytics_upvr
			var28 = Analytics_upvr
			v = var28.ErrorType
			i = v.validateBodyPartChildAttachmentOrientations_RotatedGrip
			v = nil
			var28 = arg2
			i.reportFailure(i, v, var28)
			i = any_expectedGripAttCFrame_result2:ToOrientation()
			local vector3 = Vector3.new(i)
			var28 = vector3.X
			v = math.deg(var28)
			var28 = math.deg(vector3.Y)
			i = Vector3.new(v, var28, math.deg(vector3.Z))
			var28 = false
			i = FailureReasonsAccumulator_upvr.new():updateReasons
			i(var28, {string.format("Attachment %s's orientation deviates too far from how the arm is rotated, which will make tools look unaligned. Recommended orientation is %s", any_expectedGripAttCFrame_result1:GetFullName(), valueToString_upvr(i))})
		end
	end
	return FailureReasonsAccumulator_upvr.new():getFinalResults()
end
return module_upvr