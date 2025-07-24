-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:37
-- Luau version 6, Types version 3
-- Time taken: 0.004139 seconds

local module_2_upvr = {
	GOLDEN_RATIO = game:DefineFastInt("AvatarGoldenRatio", 618) / 1000;
	UPVECTOR_ORENTATION_TRESHOLD = game:DefineFastInt("UpVectorOrentationThreshold1", -60) / 100;
	AVATAR_ROTATION_DEGREE = game:DefineFastInt("LookAvatarRotationDegree1", 23);
}
local function _(arg1) -- Line 19, Named "getTorsoOrUpperTorso"
	local Torso_3 = arg1:FindFirstChild("Torso")
	if not Torso_3 then
		Torso_3 = arg1:FindFirstChild("UpperTorso")
	end
	return Torso_3
end
local MannequinUtility_upvr = require(script.Parent.MannequinUtility)
local function getMannequinBodyParts_upvr(arg1, arg2) -- Line 23, Named "getMannequinBodyParts"
	--[[ Upvalues[1]:
		[1]: MannequinUtility_upvr (readonly)
	]]
	local module = {}
	if arg2.RigType == Enum.HumanoidRigType.R6 then
		for i, _ in MannequinUtility_upvr.CharacterPartNames.R6 do
			if i ~= "CharacterMesh" and i ~= "HumanoidRootPart" then
				table.insert(module, arg1:FindFirstChild(i))
			end
		end
		return module
	end
	if arg2.RigType == Enum.HumanoidRigType.R15 then
		for i_2, _ in MannequinUtility_upvr.CharacterPartNames.R15 do
			if i_2 ~= "HumanoidRootPart" then
				table.insert(module, arg1:FindFirstChild(i_2))
			end
		end
	end
	return module
end
function module_2_upvr.GetCharacterTorsoCFrame(arg1) -- Line 44
	local Torso = arg1:FindFirstChild("Torso")
	if not Torso then
		Torso = arg1:FindFirstChild("UpperTorso")
	end
	return Torso.CFrame
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseFaceFrontRotationForEmote", false)
local CharacterUtility_upvr = require(script.Parent.CharacterUtility)
local CameraUtility_upvr = require(script.Parent.CameraUtility)
function module_2_upvr.GetCameraCFrame_ForAvatarR15Action_LookAtGoldenRatioOfTheHumanoid(arg1, arg2, arg3, arg4, arg5) -- Line 61
	--[[ Upvalues[5]:
		[1]: module_2_upvr (readonly)
		[2]: getMannequinBodyParts_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: CharacterUtility_upvr (readonly)
		[5]: CameraUtility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var15 = arg5
	if not var15 then
		var15 = module_2_upvr.GetCharacterTorsoCFrame(arg1)
	end
	if type(arg2) == "function" then
		arg2()
	end
	local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid then return end
	local Torso_2 = arg1:FindFirstChild("Torso")
	if not Torso_2 then
		Torso_2 = arg1:FindFirstChild("UpperTorso")
	end
	local CFrame = Torso_2.CFrame
	local UpVector = CFrame.UpVector
	if game_DefineFastFlag_result1_upvr then
		local any_ToEulerAnglesXYZ_result1, any_ToEulerAnglesXYZ_result2, any_ToEulerAnglesXYZ_result3 = arg1:FindFirstChild("Head").CFrame:ToEulerAnglesXYZ()
	end
	if arg3 then
		arg1:PivotTo(var15 * CFrame.Angles(0, math.rad(module_2_upvr.AVATAR_ROTATION_DEGREE * -1), 0))
	end
	local any_CalculateBodyPartsExtents_result1, any_CalculateBodyPartsExtents_result2 = CharacterUtility_upvr.CalculateBodyPartsExtents(CFrame, getMannequinBodyParts_upvr(arg1, class_Humanoid))
	local tangent = math.tan(math.rad((arg4 or 56) / 2))
	local any_Lerp_result1 = any_CalculateBodyPartsExtents_result1:Lerp(any_CalculateBodyPartsExtents_result2, 0.5)
	local vector3 = Vector3.new(any_Lerp_result1.X, any_CalculateBodyPartsExtents_result1:Lerp(any_CalculateBodyPartsExtents_result2, module_2_upvr.GOLDEN_RATIO).Y, any_Lerp_result1.Z)
	local var29
	if game_DefineFastFlag_result1_upvr and not arg3 then
		local cframe = CFrame.fromEulerAnglesXYZ(any_ToEulerAnglesXYZ_result1, any_ToEulerAnglesXYZ_result2, any_ToEulerAnglesXYZ_result3)
	end
	var29 = CameraUtility_upvr
	local DefaultBodyMarginScale = var29.DefaultBodyMarginScale
	var29 = UpVector.Y
	if var29 >= module_2_upvr.UPVECTOR_ORENTATION_TRESHOLD then
		DefaultBodyMarginScale = false
	else
		DefaultBodyMarginScale = true
	end
	if UpVector.X >= module_2_upvr.UPVECTOR_ORENTATION_TRESHOLD then
		var29 = false
	else
		var29 = true
	end
	if DefaultBodyMarginScale or var29 then
	end
	return CameraUtility_upvr.GetCameraCFrame(cframe - cframe.Position + CFrame:PointToWorldSpace(vector3), math.max(math.max(vector3.X - any_CalculateBodyPartsExtents_result1.X, vector3.Y - any_CalculateBodyPartsExtents_result1.Y) * CameraUtility_upvr.DefaultBodyMarginScale / tangent, math.max(any_CalculateBodyPartsExtents_result2.X - vector3.X, any_CalculateBodyPartsExtents_result2.Y - vector3.Y) * DefaultBodyMarginScale / tangent) * CameraUtility_upvr.DistanceScaleForFullBody * var15.LookVector)
end
return module_2_upvr