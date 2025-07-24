-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:38
-- Luau version 6, Types version 3
-- Time taken: 0.005521 seconds

local module_upvr = {}
local CFrameUtility_upvr = require(script.Parent.CFrameUtility)
local CharacterUtility_upvr = require(script.Parent.CharacterUtility)
module_upvr.DefaultHeadMarginScale = 1.1
module_upvr.DefaultBodyMarginScale = 1.1
module_upvr.DefaultBodyPartMarginScale = 1.2
module_upvr.XRotForFullBody = 15
module_upvr.XRotForCloseup = 0
module_upvr.DistanceScaleForFullBody = 1
local cframe_upvr = CFrame.Angles(0.4363323129985824, 0.4363323129985824, 0)
local cframe_upvr_5 = CFrame.Angles(0, (math.pi/2), 0)
local cframe_upvr_3 = CFrame.Angles(0, (-math.pi/2), 0)
function module_upvr.GetCameraCFrame(arg1, arg2) -- Line 59
	return CFrame.lookAt(arg1 * arg2, arg1.Position)
end
function module_upvr.CreateThumbnailCamera() -- Line 71
	local Camera = Instance.new("Camera")
	Camera.Name = "ThumbnailCamera"
	Camera.CameraType = Enum.CameraType.Scriptable
	Camera.Parent = workspace:GetChildren()[1]
	return Camera
end
function module_upvr.CalculateBaseDistanceToCamera(arg1, arg2, arg3, arg4) -- Line 87
	return math.max((arg3.X - arg2.X) / 2, (arg3.Y - arg2.Y) / 2) * arg4 / math.tan(arg1 / 2)
end
local VectorUtility_upvr = require(script.Parent.VectorUtility)
function module_upvr.SetupCamera(arg1, arg2) -- Line 118
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: CFrameUtility_upvr (readonly)
		[3]: VectorUtility_upvr (readonly)
	]]
	if arg2.optFieldOfView then
		arg1.FieldOfView = arg2.optFieldOfView
	end
	local optFieldOfViewForDistanceScale = arg2.optFieldOfViewForDistanceScale
	if not optFieldOfViewForDistanceScale then
		optFieldOfViewForDistanceScale = arg1.FieldOfView
	end
	local any_CalculateBaseDistanceToCamera_result1 = module_upvr.CalculateBaseDistanceToCamera(math.rad(optFieldOfViewForDistanceScale), arg2.minExtent, arg2.maxExtent, arg2.extentScale)
	if arg2.optCameraDistanceScale then
		any_CalculateBaseDistanceToCamera_result1 *= arg2.optCameraDistanceScale
	end
	arg1.CFrame = module_upvr.GetCameraCFrame(CFrameUtility_upvr.AdjustTargetCFrameWithExtents(arg2.targetCFrame, arg2.minExtent, arg2.maxExtent), VectorUtility_upvr.Vector3FromXYRotPlusDistance(arg2.optCameraXRot or 0, arg2.optCameraYRot or 0, any_CalculateBaseDistanceToCamera_result1))
end
local cframe_upvr_2 = CFrame.fromEulerAnglesYXZ(-0.3490658503988659, -0.3490658503988659, 0)
local cframe_upvr_4 = CFrame.fromEulerAnglesYXZ(-0.3490658503988659, 0.3490658503988659, 0)
function module_upvr.SetupBodyPartCamera(arg1, arg2, arg3, arg4) -- Line 157
	--[[ Upvalues[4]:
		[1]: cframe_upvr_2 (readonly)
		[2]: cframe_upvr_4 (readonly)
		[3]: CharacterUtility_upvr (readonly)
		[4]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if 0 < #arg3 then
		local pairs_result1, pairs_result2, pairs_result3 = pairs(arg3)
		for _, v in pairs_result1, pairs_result2, pairs_result3 do
			local SOME = arg1:FindFirstChild(v, true)
			if SOME then
				table.insert({}, SOME)
			end
		end
	end
	pairs_result3 = "HumanoidRootPart"
	local var30 = pairs_result3
	if arg2 then
	else
	end
	local var31 = cframe_upvr_4 * arg1:FindFirstChild(var30).CFrame
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_CalculateBodyPartsExtents_result1, any_CalculateBodyPartsExtents_result2 = CharacterUtility_upvr.CalculateBodyPartsExtents(var31, {})
	module_upvr.SetupCamera(arg4, {
		optFieldOfView = 30;
		targetCFrame = var31;
		minExtent = any_CalculateBodyPartsExtents_result1;
		maxExtent = any_CalculateBodyPartsExtents_result2;
		extentScale = module_upvr.DefaultBodyPartMarginScale;
	})
end
function module_upvr.SetupHeadCamera(arg1, arg2) -- Line 195
	--[[ Upvalues[3]:
		[1]: CFrameUtility_upvr (readonly)
		[2]: CharacterUtility_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local var36 = CFrame.fromEulerAnglesYXZ(0.2617993877991494, 0.5235987755982988, 0) * CFrameUtility_upvr.CalculateTargetCFrame(arg1:FindFirstChild("Head").CFrame)
	local any_CalculateHeadExtents_result1, any_CalculateHeadExtents_result2 = CharacterUtility_upvr.CalculateHeadExtents(arg1, var36)
	module_upvr.SetupCamera(arg2, {
		optFieldOfView = 30;
		targetCFrame = var36;
		minExtent = any_CalculateHeadExtents_result1;
		maxExtent = any_CalculateHeadExtents_result2;
		extentScale = 1.1;
	})
end
local function _(arg1) -- Line 224, Named "isLeftShoe"
	local class_MeshPart_3 = arg1:FindFirstChildWhichIsA("MeshPart")
	if not class_MeshPart_3 then
		return false
	end
	local assert_2 = assert
	assert_2(class_MeshPart_3, "Assert handle is not nil to silence type checker")
	if class_MeshPart_3:FindFirstChild("LeftFootAttachment") == nil then
		assert_2 = false
	else
		assert_2 = true
	end
	return assert_2
end
local function _(arg1) -- Line 233, Named "isRightShoe"
	local class_MeshPart_4 = arg1:FindFirstChildWhichIsA("MeshPart")
	if not class_MeshPart_4 then
		return false
	end
	local assert = assert
	assert(class_MeshPart_4, "Assert handle is not nil to silence type checker")
	if class_MeshPart_4:FindFirstChild("RightFootAttachment") == nil then
		assert = false
	else
		assert = true
	end
	return assert
end
local function _(arg1) -- Line 242, Named "getAccessoryAngle"
	--[[ Upvalues[3]:
		[1]: cframe_upvr_5 (readonly)
		[2]: cframe_upvr_3 (readonly)
		[3]: cframe_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local class_MeshPart = arg1:FindFirstChildWhichIsA("MeshPart")
	if not class_MeshPart then
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 22 start (CF ANALYSIS FAILED)
	assert(class_MeshPart, "Assert handle is not nil to silence type checker")
	if class_MeshPart:FindFirstChild("LeftFootAttachment") == nil then
		-- KONSTANTWARNING: GOTO [22] #18
	end
	-- KONSTANTERROR: [7] 7. Error Block 22 end (CF ANALYSIS FAILED)
end
function module_upvr.SetupAccessoryCamera(arg1, arg2) -- Line 251
	--[[ Upvalues[5]:
		[1]: cframe_upvr_5 (readonly)
		[2]: cframe_upvr_3 (readonly)
		[3]: cframe_upvr (readonly)
		[4]: CharacterUtility_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	local children = arg1:GetChildren()
	local var47
	if #children ~= 1 then
		var47 = false
	else
		var47 = true
	end
	assert(var47, "Assert SetupMeshPartAccessoryCamera accessoryModel only has accessory as a child.")
	var47 = children[1]:FindFirstChild("Handle")
	assert(var47, "Assert Accessory has handle for camera setup.")
	var47.CFrame = CFrame.new()
	local class_MeshPart_2 = children[1]:FindFirstChildWhichIsA("MeshPart")
	if not class_MeshPart_2 then
		-- KONSTANTWARNING: GOTO [55] #41
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 30. Error Block 39 start (CF ANALYSIS FAILED)
	assert(class_MeshPart_2, "Assert handle is not nil to silence type checker")
	if class_MeshPart_2:FindFirstChild("LeftFootAttachment") == nil then
	else
	end
	if true then
		-- KONSTANTWARNING: GOTO [84] #65
	end
	-- KONSTANTERROR: [40] 30. Error Block 39 end (CF ANALYSIS FAILED)
end
return module_upvr