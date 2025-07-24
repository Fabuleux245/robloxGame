-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:24
-- Luau version 6, Types version 3
-- Time taken: 0.042603 seconds

local module_8_upvr = {}
local Players_upvr = game:GetService("Players")
local tbl_5_upvr = {
	RecycleArray = setmetatable({}, {
		__mode = 'v';
	});
}
local function _() -- Line 17, Named "GetRecycleArray"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local _, next_result2 = next(tbl_5_upvr.RecycleArray)
	if not next_result2 then
		next_result2 = {}
		tbl_5_upvr.RecycleArray[1] = next_result2
	end
	table.clear(next_result2)
	return next_result2
end
module_8_upvr.NilToken = newproxy()
module_8_upvr.Epsilon = 0.000244140625
module_8_upvr.FlatVector = Vector3.new(1, 0, 1)
module_8_upvr.DotTolerance = 1 - module_8_upvr.Epsilon
module_8_upvr.NearPlaneTolerance = 0.25
module_8_upvr.HiddenPosition = Vector3.new(-100000, -100000, -100000)
module_8_upvr.Terrain = workspace:FindFirstChildOfClass("Terrain")
if not module_8_upvr.Terrain then
	local var12_upvw
	var12_upvw = workspace.ChildAdded:Connect(function(arg1) -- Line 42
		--[[ Upvalues[2]:
			[1]: var12_upvw (read and write)
			[2]: module_8_upvr (readonly)
		]]
		if var12_upvw and arg1:IsA("Terrain") then
			var12_upvw:Disconnect()
			var12_upvw = nil
			module_8_upvr.Terrain = arg1
		end
	end)
end
function module_8_upvr.PropsMerge(arg1, ...) -- Line 59
	local clone = table.clone(arg1)
	for _, v in {...} do
		for i_2, v_2 in v do
			clone[i_2] = v_2
		end
	end
	return clone
end
function module_8_upvr.PropsApply(arg1, arg2, ...) -- Line 74
	local var35 = arg2
	local args_list_3 = {...}
	if args_list_3[1] then
		var35 = table.clone(var35)
		for _, v_3 in args_list_3 do
			for i_4, v_4 in v_3 do
				var35[i_4] = v_4
			end
		end
	end
	for i_5, v_5 in var35 do
		if i_5 ~= "Parent" then
			arg1[i_5] = v_5
		end
	end
	if var35.Parent ~= nil then
		arg1.Parent = var35.Parent
	end
end
function module_8_upvr.I(arg1, arg2, ...) -- Line 103
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local any = Instance.new(arg1)
	module_8_upvr.PropsApply(any, arg2, ...)
	return any
end
function module_8_upvr.C(arg1, arg2, ...) -- Line 109
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local clone_2 = arg1:Clone()
	module_8_upvr.PropsApply(clone_2, arg2, ...)
	return clone_2
end
function module_8_upvr.FindFirstDescendantMatchingCondition(arg1, arg2) -- Line 115
	local tbl_17 = {}
	local var40
	while var40 do
		if arg2(var40) then
			return var40
		end
		local children_4 = var40:GetChildren()
		table.move(children_4, 1, #children_4, #tbl_17 + 1, tbl_17)
		var40 = tbl_17[#tbl_17]
		tbl_17[#tbl_17] = nil
	end
	return var40
end
local function ReparentObject_upvr(arg1, arg2) -- Line 139, Named "ReparentObject"
	arg1.Parent = arg2
end
function module_8_upvr.DeferredReparent(arg1, arg2) -- Line 147
	--[[ Upvalues[1]:
		[1]: ReparentObject_upvr (readonly)
	]]
	return task.defer(ReparentObject_upvr, arg1, arg2)
end
function module_8_upvr.ProtectedReparent(arg1, arg2) -- Line 155
	--[[ Upvalues[1]:
		[1]: ReparentObject_upvr (readonly)
	]]
	pcall(ReparentObject_upvr, arg1, arg2)
end
function module_8_upvr.ProtectedDeferredReparent(arg1, arg2) -- Line 163
	--[[ Upvalues[1]:
		[1]: ReparentObject_upvr (readonly)
	]]
	return task.defer(pcall, ReparentObject_upvr, arg1, arg2)
end
function module_8_upvr.InstanceIsAJoint(arg1) -- Line 171
	local children_2 = arg1:IsA("Constraint")
	if not children_2 then
		children_2 = arg1:IsA("JointInstance")
		if not children_2 then
			children_2 = arg1:IsA("WeldConstraint")
		end
	end
	return children_2
end
local function CameraPlanesCreate_upvr(arg1, arg2) -- Line 187, Named "AABB_FromCFrame_Internal"
	local X = arg2.X
	local Y_3 = arg2.Y
	local Z_2 = arg2.Z
	local any_GetComponents_result1_2, any_GetComponents_result2, any_GetComponents_result3_2, any_GetComponents_result4_2, any_GetComponents_result5_2, any_GetComponents_result6_2, any_GetComponents_result7_2, any_GetComponents_result8, any_GetComponents_result9_2, any_GetComponents_result10_2, any_GetComponents_result11_2, any_GetComponents_result12_2 = arg1:GetComponents()
	local var59 = (math.abs(any_GetComponents_result4_2) * X + math.abs(any_GetComponents_result5_2) * Y_3 + math.abs(any_GetComponents_result6_2) * Z_2) * 0.5
	local var60 = (math.abs(any_GetComponents_result7_2) * X + math.abs(any_GetComponents_result8) * Y_3 + math.abs(any_GetComponents_result9_2) * Z_2) * 0.5
	local var61 = (math.abs(any_GetComponents_result10_2) * X + math.abs(any_GetComponents_result11_2) * Y_3 + math.abs(any_GetComponents_result12_2) * Z_2) * 0.5
	return any_GetComponents_result1_2 - var59, any_GetComponents_result2 - var60, any_GetComponents_result3_2 - var61, any_GetComponents_result1_2 + var59, any_GetComponents_result2 + var60, any_GetComponents_result3_2 + var61
end
function module_8_upvr.AABB_FromCFrame(arg1, arg2) -- Line 205
	--[[ Upvalues[1]:
		[1]: CameraPlanesCreate_upvr (readonly)
	]]
	return {CameraPlanesCreate_upvr(arg1, arg2)}
end
function module_8_upvr.AABB_FromPosition(arg1, arg2) -- Line 213
	local X_2 = arg2.X
	local Y = arg2.Y
	local Z_5 = arg2.Z
	local X_5 = arg1.X
	local Y_2 = arg1.Y
	local Z_6 = arg1.Z
	return {X_5 - X_2 * 0.5, Y_2 - Y * 0.5, Z_6 - Z_5 * 0.5, X_5 + X_2 * 0.5, Y_2 + Y * 0.5, Z_6 + Z_5 * 0.5}
end
function module_8_upvr.AABBGetSize(arg1) -- Line 224
	return Vector3.new(arg1[4] - arg1[1], arg1[5] - arg1[2], arg1[6] - arg1[3])
end
function module_8_upvr.AABBIntersects(arg1, arg2) -- Line 234
	local var71 = false
	if arg1[1] <= arg2[4] then
		var71 = false
		if arg2[1] <= arg1[4] then
			var71 = false
			if arg1[2] <= arg2[5] then
				var71 = false
				if arg2[2] <= arg1[5] then
					var71 = false
					if arg1[3] <= arg2[6] then
						if arg2[3] > arg1[6] then
							var71 = false
						else
							var71 = true
						end
					end
				end
			end
		end
	end
	return var71
end
function module_8_upvr.AABBTranslate(arg1, arg2) -- Line 247
	local X_6 = arg2.X
	local Y_4 = arg2.Y
	local Z_4 = arg2.Z
	return {arg1[1] + X_6, arg1[2] + Y_4, arg1[3] + Z_4, arg1[4] + X_6, arg1[5] + Y_4, arg1[6] + Z_4}
end
function module_8_upvr.OABB_FromParts(arg1, arg2) -- Line 273
	--[[ Upvalues[1]:
		[1]: CameraPlanesCreate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var84
	if var84 == 0 then
		var84 = {}
		var84[1] = 0
		var84[2] = 0
		var84[3] = 0
		var84[4] = 0
		var84[5] = 0
		var84[6] = 0
		return var84
	end
	var84 = math.huge
	for _, v_6 in arg1 do
		local CameraPlanesCreate_upvr_result1, CameraPlanesCreate_upvr_result2, CameraPlanesCreate_result3, CameraPlanesCreate_result4, CameraPlanesCreate_result5, CameraPlanesCreate_result6 = CameraPlanesCreate_upvr(arg2:ToObjectSpace(v_6.CFrame), v_6.Size)
		if CameraPlanesCreate_upvr_result1 < var84 then
			var84 = CameraPlanesCreate_upvr_result1
		end
		if CameraPlanesCreate_upvr_result2 < math.huge then
		end
		if CameraPlanesCreate_result3 < math.huge then
		end
		if (-math.huge) < CameraPlanesCreate_result4 then
		end
		if (-math.huge) < CameraPlanesCreate_result5 then
		end
		if (-math.huge) < CameraPlanesCreate_result6 then
		end
	end
	return {var84, CameraPlanesCreate_upvr_result2, CameraPlanesCreate_result3, CameraPlanesCreate_result4, CameraPlanesCreate_result5, CameraPlanesCreate_result6}
end
function module_8_upvr.OABB_FromInstance(arg1, arg2) -- Line 315
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local descendants = arg1:GetDescendants()
	descendants[#descendants + 1] = arg1
	local module = {}
	for _, v_7 in descendants do
		if v_7:IsA("BasePart") then
			module[#module + 1] = v_7
		end
	end
	return module_8_upvr.OABB_FromParts(module, arg2)
end
function CameraPlanesCreate_upvr(arg1) -- Line 342, Named "AnimationFromId"
	local Animation = Instance.new("Animation")
	Animation.AnimationId = arg1
	return Animation
end
module_8_upvr.AnimationFromId = CameraPlanesCreate_upvr
function CameraPlanesCreate_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 350, Named "AnimationTrackPlay"
	if not arg1[arg2] then
		local var98_upvw
		var98_upvw = arg2.Stopped:Connect(function() -- Line 362
			--[[ Upvalues[3]:
				[1]: var98_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			if var98_upvw.Connected then
				var98_upvw:Disconnect()
				arg1[arg2] = nil
			end
		end)
		arg1[arg2] = var98_upvw
	end
	arg2:Play(arg3, arg4, arg5)
end
module_8_upvr.AnimationTrackPlay = CameraPlanesCreate_upvr
function CameraPlanesCreate_upvr(arg1, arg2) -- Line 375, Named "AnimationTracksStop"
	for i_8, v_8 in arg1 do
		v_8:Disconnect()
		i_8:Stop(arg2)
	end
	table.clear(arg1)
end
module_8_upvr.AnimationTracksStop = CameraPlanesCreate_upvr
function CameraPlanesCreate_upvr(arg1) -- Line 407, Named "CameraFOVCreate"
	local var101 = arg1
	if not var101 then
		var101 = assert(workspace.CurrentCamera)
	end
	local ViewportSize = var101.ViewportSize
	local radians = math.rad(var101.FieldOfView)
	local var104 = radians * 0.5
	local var105 = math.atan((math.tan(var104)) * (ViewportSize.X / ViewportSize.Y)) * 2
	return {
		Origin = var101.CFrame;
		HalfHorizontal = var105 * 0.5;
		HalfVertical = var104;
		Horizontal = var105;
		Vertical = radians;
	}
end
module_8_upvr.CameraFOVCreate = CameraPlanesCreate_upvr
function CameraPlanesCreate_upvr(arg1, arg2, arg3) -- Line 435, Named "CameraFOVEquals"
	local var107 = arg3 or 0
	local var108 = false
	if math.abs(arg1.Horizontal - arg2.Horizontal) <= var107 then
		if math.abs(arg1.Vertical - arg2.Vertical) > var107 then
			var108 = false
		else
			var108 = true
		end
	end
	return var108
end
module_8_upvr.CameraFOVEquals = CameraPlanesCreate_upvr
function CameraPlanesCreate_upvr(arg1) -- Line 455, Named "CameraPlanesCreate"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local var109 = arg1
	if not var109 then
		var109 = assert(workspace.CurrentCamera)
	end
	local any_CameraFOVCreate_result1 = module_8_upvr.CameraFOVCreate(var109)
	return {
		Planes = {(any_CameraFOVCreate_result1.Origin * CFrame.Angles(0, any_CameraFOVCreate_result1.HalfHorizontal, 0)).RightVector, -(any_CameraFOVCreate_result1.Origin * CFrame.Angles(0, -any_CameraFOVCreate_result1.HalfHorizontal, 0)).RightVector, -(any_CameraFOVCreate_result1.Origin * CFrame.Angles(any_CameraFOVCreate_result1.HalfVertical, 0, 0)).UpVector, (any_CameraFOVCreate_result1.Origin * CFrame.Angles(-any_CameraFOVCreate_result1.HalfVertical, 0, 0)).UpVector, any_CameraFOVCreate_result1.Origin.LookVector};
		Position = any_CameraFOVCreate_result1.Origin.Position;
	}
end
module_8_upvr.CameraPlanesCreate = CameraPlanesCreate_upvr
CameraPlanesCreate_upvr = {}
local GuiObjectMakeZIndexGlobal_upvr = CameraPlanesCreate_upvr
GuiObjectMakeZIndexGlobal_upvr[1] = Vector3.new(0.5, 0.5, 0.5)
GuiObjectMakeZIndexGlobal_upvr[2] = Vector3.new(-0.5, 0.5, 0.5)
GuiObjectMakeZIndexGlobal_upvr[3] = Vector3.new(0.5, -0.5, 0.5)
GuiObjectMakeZIndexGlobal_upvr[4] = Vector3.new(0.5, 0.5, -0.5)
GuiObjectMakeZIndexGlobal_upvr[5] = Vector3.new(-0.5, -0.5, 0.5)
GuiObjectMakeZIndexGlobal_upvr[6] = Vector3.new(-0.5, 0.5, -0.5)
GuiObjectMakeZIndexGlobal_upvr[7] = Vector3.new(0.5, -0.5, -0.5)
GuiObjectMakeZIndexGlobal_upvr[8] = Vector3.new(-0.5, -0.5, -0.5)
local function PointInFrame_upvr(arg1, arg2, arg3) -- Line 493, Named "PointInFrame"
	local var122 = arg2 - arg1.Position
	local var123 = arg3 * -1
	local Planes_2 = arg1.Planes
	local var125 = false
	if var123 <= var122:Dot(Planes_2[1]) then
		var125 = false
		if var123 <= var122:Dot(Planes_2[2]) then
			var125 = false
			if var123 <= var122:Dot(Planes_2[3]) then
				if var123 > var122:Dot(Planes_2[4]) then
					var125 = false
				else
					var125 = true
				end
			end
		end
	end
	return var125
end
module_8_upvr.CameraSphereInFrame = PointInFrame_upvr
function module_8_upvr.CameraPointInFrame(arg1, arg2) -- Line 515
	--[[ Upvalues[1]:
		[1]: PointInFrame_upvr (readonly)
	]]
	return PointInFrame_upvr(arg1, arg2, 0)
end
function module_8_upvr.CameraBoxInFrame(arg1, arg2, arg3) -- Line 522
	--[[ Upvalues[2]:
		[1]: GuiObjectMakeZIndexGlobal_upvr (readonly)
		[2]: PointInFrame_upvr (readonly)
	]]
	local var137 = (arg2) * (arg3 * GuiObjectMakeZIndexGlobal_upvr[1])
	if PointInFrame_upvr(arg1, var137, 0) then
		return true
	end
	local var138 = (arg2) * (arg3 * GuiObjectMakeZIndexGlobal_upvr[8])
	if PointInFrame_upvr(arg1, var138, 0) then
		return true
	end
	local var139 = var138 - var137
	for i_9, v_9 in arg1.Planes do
		local any_Dot_result1 = var139:Dot(v_9)
		if any_Dot_result1 ~= 0 then
			local var141 = arg1.Position - var137:Dot(v_9) / any_Dot_result1
			if 0 <= var141 and 0 <= var137 + var139 * var141:Dot(arg1.Planes[5]) then
				return true
			end
		end
	end
	for i_10 = 2, 7 do
		i_9 = GuiObjectMakeZIndexGlobal_upvr
		if PointInFrame_upvr(arg1, (arg2) * (arg3 * i_9[i_10]), 0) then
			return true
		end
	end
	return false
end
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2) -- Line 583, Named "CFrameMirror"
	local any_GetComponents_result1, any_GetComponents_result2_2, any_GetComponents_result3, any_GetComponents_result4, any_GetComponents_result5, any_GetComponents_result6, any_GetComponents_result7, any_GetComponents_result8_2, any_GetComponents_result9, any_GetComponents_result10, any_GetComponents_result11, any_GetComponents_result12 = arg2:ToObjectSpace(arg1):GetComponents()
	return arg2 * CFrame.new(-any_GetComponents_result1, any_GetComponents_result2_2, any_GetComponents_result3, any_GetComponents_result4, -any_GetComponents_result5, -any_GetComponents_result6, -any_GetComponents_result7, any_GetComponents_result8_2, any_GetComponents_result9, -any_GetComponents_result10, any_GetComponents_result11, any_GetComponents_result12)
end
module_8_upvr.CFrameMirror = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1) -- Line 604, Named "HumanoidIsAlive"
	local var154 = false
	if arg1:GetState() ~= Enum.HumanoidStateType.Dead then
		if 0 >= arg1.Health then
			var154 = false
		else
			var154 = true
		end
	end
	return var154
end
module_8_upvr.HumanoidIsAlive = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2) -- Line 608, Named "HumanoidTakeDamage"
	arg1:TakeDamage(arg2)
	if arg1.Health <= 0 then
		arg1:ChangeState(Enum.HumanoidStateType.Dead)
	end
end
module_8_upvr.HumanoidTakeDamage = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2) -- Line 619, Named "PlayerGetFromPart"
	--[[ Upvalues[2]:
		[1]: module_8_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	local Parent = arg1.Parent
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local class_Humanoid = Parent:FindFirstChildOfClass("Humanoid")
		return class_Humanoid
	end
	if Parent and INLINED() and (not arg2 or module_8_upvr.HumanoidIsAlive(class_Humanoid)) then
		local any_GetPlayerFromCharacter_result1 = Players_upvr:GetPlayerFromCharacter(Parent)
		if any_GetPlayerFromCharacter_result1 then
			return any_GetPlayerFromCharacter_result1, Parent, class_Humanoid
		end
	end
	return nil, nil, nil
end
module_8_upvr.PlayerGetFromPart = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2) -- Line 643, Named "CollisionGroupSet"
	local module_9 = {}
	local tbl_16 = {}
	tbl_16[1] = arg1
	while 0 < #tbl_16 do
		local var160 = tbl_16[#tbl_16]
		tbl_16[#tbl_16] = nil
		if var160:IsA("BasePart") then
			var160.CollisionGroup = arg2
			module_9[#module_9 + 1] = var160
		end
		local children_6 = var160:GetChildren()
		table.move(children_6, 1, #children_6, #tbl_16 + 1, tbl_16)
	end
	return module_9
end
module_8_upvr.CollisionGroupSet = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2, arg3) -- Line 668, Named "ConnectTouched"
	local var162
	if not var162 then
		var162 = {}
	end
	local tbl_9 = {}
	tbl_9[1] = arg1
	while 0 < #tbl_9 do
		local var164 = tbl_9[#tbl_9]
		tbl_9[#tbl_9] = nil
		if var164:IsA("BasePart") then
			var162[#var162 + 1] = var164.Touched:Connect(arg2)
		else
			local children_5 = var164:GetChildren()
			table.move(children_5, 1, #children_5, #tbl_9 + 1, tbl_9)
		end
	end
	return var162
end
module_8_upvr.ConnectTouched = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2, arg3, arg4) -- Line 693, Named "ConnectTouchedPVInstance"
	local var166
	if not var166 then
		var166 = {}
	end
	local var167
	if arg1:IsA("BasePart") then
		var167 = arg1
	elseif arg1:IsA("Model") then
		var167 = arg1.PrimaryPart
	end
	if var167 then
		var166[#var166 + 1] = var167.Touched:Connect(arg2)
		return var166
	end
	local formatted = string.format("Unable to connect .Touched for %s. ClassName: %s", arg1:GetFullName(), arg1.ClassName)
	if arg1:IsA("Model") then
		formatted = formatted.." - PrimaryPart: "..tostring(arg1.PrimaryPart)
	end
	if arg4 then
		error(formatted, 2)
		return var166
	end
	warn(formatted)
	return var166
end
module_8_upvr.ConnectTouchedPVInstance = GuiObjectMakeZIndexGlobal_upvr
function GuiObjectMakeZIndexGlobal_upvr(arg1, arg2) -- Line 730, Named "GuiObjectMakeZIndexGlobal"
	local tbl_4 = {}
	tbl_4[1] = arg1
	local tbl_11 = {arg2 or 0}
	while 0 < #tbl_4 do
		local var177 = tbl_4[#tbl_4]
		local var178 = tbl_11[#tbl_11]
		tbl_4[#tbl_4] = nil
		tbl_11[#tbl_11] = nil
		if var177:IsA("GuiObject") then
			var177.ZIndex += var178
		end
		local children_3 = var177:GetChildren()
		local var180
		if 0 < var180 then
			var180 = table.move
			var180(children_3, 1, #children_3, #tbl_4 + 1, tbl_4)
			var180 = nil
			for _, v_10 in children_3 do
				local var181
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var181 = v_10.ZIndex
					return var180
				end
				if var181 and (not INLINED_2() or var181 < var180) then
					var180 = var181
				end
			end
			for i_12 = #tbl_11 + 1, #tbl_4 do
				tbl_11[i_12] = (var178) + (math.max(var178 - (var180 or var178), 0) + 1)
				local _
			end
		end
	end
end
module_8_upvr.GuiObjectMakeZIndexGlobal = GuiObjectMakeZIndexGlobal_upvr
GuiObjectMakeZIndexGlobal_upvr = {}
local FormatArray_OxfordComma_upvr = GuiObjectMakeZIndexGlobal_upvr
PointInFrame_upvr = {}
local var184 = PointInFrame_upvr
var184[1] = "ParticleEmitter"
FormatArray_OxfordComma_upvr.EmissionDirection = var184
var184 = {}
local InstanceNormalIdSet = var184
InstanceNormalIdSet[1] = "FaceInstance"
InstanceNormalIdSet[2] = "SpotLight"
InstanceNormalIdSet[3] = "SurfaceLight"
InstanceNormalIdSet[4] = "SurfaceGuiBase"
FormatArray_OxfordComma_upvr.Face = InstanceNormalIdSet
function InstanceNormalIdSet(arg1) -- Line 786, Named "InstanceNormalIdGet"
	--[[ Upvalues[1]:
		[1]: FormatArray_OxfordComma_upvr (readonly)
	]]
	for i_13, v_11 in FormatArray_OxfordComma_upvr do
		for _, v_12 in v_11 do
			if arg1:IsA(v_12) then
				return arg1[i_13]
			end
		end
	end
	return nil
end
module_8_upvr.InstanceNormalIdGet = InstanceNormalIdSet
function InstanceNormalIdSet(arg1, arg2) -- Line 801
	--[[ Upvalues[1]:
		[1]: FormatArray_OxfordComma_upvr (readonly)
	]]
	for i_15, v_13 in FormatArray_OxfordComma_upvr do
		for _, v_14 in v_13 do
			if arg1:IsA(v_14) then
				arg1[i_15] = arg2
				return true
			end
		end
	end
	return false
end
module_8_upvr.InstanceNormalIdSet = InstanceNormalIdSet
function FormatArray_OxfordComma_upvr(arg1) -- Line 818, Named "ModelFromPVInstance"
	if arg1:IsA("Model") then
		return arg1
	end
	if arg1:IsA("BasePart") then
		local Model = Instance.new("Model")
		Model.Name = arg1.Name
		arg1.Parent = Model
		Model.PrimaryPart = arg1
		return Model
	end
	error(string.format("Unsupported PVInstance type '%s'", arg1.ClassName), 2)
	return Model
end
module_8_upvr.ModelFromPVInstance = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 839, Named "ParticleEmitterGetAppliedLifetime"
	local Lifetime = arg1.Lifetime
	local TimeScale = arg1.TimeScale
	return Lifetime.Min / TimeScale, Lifetime.Max / TimeScale
end
module_8_upvr.ParticleEmitterGetAppliedLifetime = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 849, Named "PVInstanceGetSize"
	local var197
	if arg1:IsA("BasePart") then
		var197 = arg1.Size
		return var197
	end
	if arg1:IsA("Model") then
		var197 = select(2, arg1:GetBoundingBox())
		return var197
	end
	error(string.format("Unsupported PVInstance type '%s'", arg1.ClassName), 2)
	return var197
end
module_8_upvr.PVInstanceGetSize = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 866, Named "TextureWrapPart"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local Enum_NormalId_GetEnumItems_result1 = Enum.NormalId:GetEnumItems()
	local len_4 = #Enum_NormalId_GetEnumItems_result1
	local table_create_result1 = table.create(len_4)
	local any_I_result1 = module_8_upvr.I("Texture", arg2)
	for i_17, _ in Enum_NormalId_GetEnumItems_result1 do
		any_I_result1.Face = Enum_NormalId_GetEnumItems_result1[i_17]
		any_I_result1.Parent = arg1
		table_create_result1[i_17] = any_I_result1
		if i_17 ~= len_4 then
		end
	end
	return table_create_result1
end
module_8_upvr.TextureWrapPart = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2, arg3, arg4) -- Line 897, Named "Color3ApplyHSVShift"
	local any_ToHSV_result1_3, any_ToHSV_result2_2, any_ToHSV_result3_3 = arg1:ToHSV()
	return Color3.fromHSV(math.clamp(any_ToHSV_result1_3 + arg2 % 1, 0, 1), math.clamp(any_ToHSV_result2_2 + arg3, 0, 1), math.clamp(any_ToHSV_result3_3 + arg4, 0, 1))
end
module_8_upvr.Color3ApplyHSVShift = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 913, Named "Color3ApplyHSVShift_FromVector3"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	return module_8_upvr.Color3ApplyHSVShift(arg1, arg2.X, arg2.Y, arg2.Z)
end
module_8_upvr.Color3ApplyHSVShift_FromVector3 = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2, arg3) -- Line 920, Named "Color3HSVComponentLerp"
	local Y_10 = arg3.Y
	local Z_3 = arg3.Z
	local any_ToHSV_result1, any_ToHSV_result2, any_ToHSV_result3 = arg1:ToHSV()
	local any_ToHSV_result1_2, any_ToHSV_result2_3, any_ToHSV_result3_2 = arg2:ToHSV()
	if any_ToHSV_result2 == 0 then
		any_ToHSV_result1 = any_ToHSV_result1_2
	elseif any_ToHSV_result2_3 == 0 then
		any_ToHSV_result1_2 = any_ToHSV_result1
	end
	local var215 = any_ToHSV_result1_2 - any_ToHSV_result1
	local absolute = math.abs(var215)
	if 0.5 < absolute then
		var215 = -(1 - absolute) * math.sign(var215)
	end
	return Color3.fromHSV((any_ToHSV_result1 + var215 * arg3.X) % 1, any_ToHSV_result2 * (1 - Y_10) + any_ToHSV_result2_3 * Y_10, any_ToHSV_result3 * (1 - Z_3) + any_ToHSV_result3_2 * Z_3)
end
module_8_upvr.Color3HSVComponentLerp = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 950, Named "Color3Invert"
	return Color3.new(math.clamp(1 - arg1.R, 0, 1), math.clamp(1 - arg1.G, 0, 1), math.clamp(1 - arg1.B, 0, 1))
end
module_8_upvr.Color3Invert = FormatArray_OxfordComma_upvr
FormatArray_OxfordComma_upvr = table.freeze
InstanceNormalIdSet = {}
local SortWeightedListElementsDescending_upvw = InstanceNormalIdSet
SortWeightedListElementsDescending_upvw[Enum.NormalId.Back] = Enum.NormalId.Front
SortWeightedListElementsDescending_upvw[Enum.NormalId.Bottom] = Enum.NormalId.Top
SortWeightedListElementsDescending_upvw[Enum.NormalId.Front] = Enum.NormalId.Back
SortWeightedListElementsDescending_upvw[Enum.NormalId.Left] = Enum.NormalId.Right
SortWeightedListElementsDescending_upvw[Enum.NormalId.Right] = Enum.NormalId.Left
SortWeightedListElementsDescending_upvw[Enum.NormalId.Top] = Enum.NormalId.Bottom
FormatArray_OxfordComma_upvr = FormatArray_OxfordComma_upvr(SortWeightedListElementsDescending_upvw)
module_8_upvr.OppositeNormalId_ByNormalId = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 973, Named "NormalId_FromBroadestFace"
	local X_8 = arg1.X
	local Y_8 = arg1.Y
	local Z = arg1.Z
	local var221 = X_8 + Y_8
	local var222 = X_8 + Z
	local maximum = math.max(var221, var222, Y_8 + Z)
	if var221 == maximum then
		return Enum.NormalId.Front
	end
	if var222 == maximum then
		return Enum.NormalId.Top
	end
	return Enum.NormalId.Right
end
module_8_upvr.NormalId_FromBroadestFace = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2, arg3, arg4) -- Line 1003, Named "BeautifyNumber"
	local var224 = 10 ^ math.max(math.ceil(math.log10(arg1 + 1)) - arg2, 1) * arg3
	if arg4 then
		return math.ceil(arg1 / var224) * var224
	end
	return arg1 // var224 * var224
end
module_8_upvr.BeautifyNumber = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 1026, Named "GetNumber"
	local var225
	if arg1 then
		if type(arg1) == "number" then
			var225 = arg1
			return var225
		end
		if typeof(arg1) == "NumberRange" then
			local var226 = arg2
			if not var226 then
				var226 = math.random()
			end
			var225 = arg1.Min * (1 - var226) + arg1.Max * var226
		end
	end
	return var225
end
module_8_upvr.GetNumber = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 1049, Named "NumberRangeScale"
	return NumberRange.new(arg1.Min * arg2, arg1.Max * arg2)
end
module_8_upvr.NumberRangeScale = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 1061, Named "NumberSequenceNormalize"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var243
	for _, v_16 in arg1.Keypoints do
		local Value = v_16.Value
		if var243 < Value then
			var243 = Value
		end
	end
	if var243 ~= 0 then
		local any_NumberSequenceScale_result1 = module_8_upvr.NumberSequenceScale(arg1, 1 / var243)
		return any_NumberSequenceScale_result1
	end
	for i_19, v_17 in any_NumberSequenceScale_result1.Keypoints do
		local var246
		if v_17.Envelope ~= 0 then
			var246 = 1
		else
			var246 = 0
		end
		table.create(#any_NumberSequenceScale_result1.Keypoints)[i_19] = NumberSequenceKeypoint.new(v_17.Time, 1, var246)
	end
	return any_NumberSequenceScale_result1
end
module_8_upvr.NumberSequenceNormalize = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2, arg3) -- Line 1095, Named "NumberSequenceScale"
	local var251 = arg3 or arg2
	local table_create_result1_3 = table.create(#arg1.Keypoints)
	for i_20, v_18 in arg1.Keypoints do
		table_create_result1_3[i_20] = NumberSequenceKeypoint.new(v_18.Time, v_18.Value * arg2, v_18.Envelope * var251)
	end
	return NumberSequence.new(table_create_result1_3)
end
module_8_upvr.NumberSequenceScale = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 1137, Named "WeightedListResolve"
	local var261 = 0
	for _, v_19 in arg1.Elements do
		var261 += v_19.Weight
	end
	for _, v_20 in arg1.Elements do
		v_20.Chance = v_20.Weight / var261
	end
	arg1.Weight = var261
end
module_8_upvr.WeightedListResolve = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 1154, Named "WeightedListCreate"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local module_4 = {}
	module_4.Elements = arg1
	module_4.Weight = 0
	module_8_upvr.WeightedListResolve(module_4)
	return module_4
end
module_8_upvr.WeightedListCreate = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 1168, Named "WeightedListClone"
	local table_create_result1_2 = table.create(#arg1.Elements)
	for i_23, v_21 in arg1.Elements do
		table_create_result1_2[i_23] = table.clone(v_21)
	end
	return {
		Elements = table_create_result1_2;
		Weight = arg1.Weight;
	}
end
module_8_upvr.WeightedListClone = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, ...) -- Line 1186, Named "WeightedListFromExpectedValue"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local args_list_4 = {...}
	local var278 = 0
	for _, v_22 in args_list_4 do
		var278 += v_22
	end
	local module_5 = {}
	for i_25, v_23 in args_list_4 do
		local var280
		if 0 < v_23 then
			var280 = (arg1 / #args_list_4) / (v_23 / var278)
		else
			var280 = 0
		end
		module_5[i_25] = {
			Value = var280;
			Weight = v_23;
		}
	end
	return module_8_upvr.WeightedListCreate(module_5)
end
module_8_upvr.WeightedListFromExpectedValue = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 1217, Named "WeightedListAppend"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	table.move(arg2, 1, #arg2, #arg1.Elements + 1, arg1.Elements)
	module_8_upvr.WeightedListResolve(arg1)
end
module_8_upvr.WeightedListAppend = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 1229, Named "WeightedListRemove"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	local var286
	for _, v_24 in arg2 do
		local table_find_result1 = table.find(arg1.Elements, v_24)
		if table_find_result1 then
			table.remove(arg1.Elements, table_find_result1)
		end
	end
	if nil then
		module_8_upvr.WeightedListResolve(arg1)
	end
end
module_8_upvr.WeightedListRemove = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 1252, Named "SortWeightedListElementsAscending"
	local var288
	if arg1.Weight >= arg2.Weight then
		var288 = false
	else
		var288 = true
	end
	return var288
end
function SortWeightedListElementsDescending_upvw(arg1, arg2) -- Line 1260, Named "SortWeightedListElementsDescending"
	local var289
	if arg2.Weight >= arg1.Weight then
		var289 = false
	else
		var289 = true
	end
	return var289
end
function module_8_upvr.WeightedListSort(arg1, arg2) -- Line 1268
	--[[ Upvalues[2]:
		[1]: SortWeightedListElementsDescending_upvw (readonly)
		[2]: FormatArray_OxfordComma_upvr (readonly)
	]]
	local var290
	if arg2 then
		var290 = SortWeightedListElementsDescending_upvw
	else
		var290 = FormatArray_OxfordComma_upvr
	end
	table.sort(arg1.Elements, var290)
end
function FormatArray_OxfordComma_upvr(arg1, arg2) -- Line 1280, Named "WeightedListDetermineExpectedValue"
	local var299 = 0
	if type(arg2) == "string" then
		for _, v_25 in arg1.Elements do
			var299 += v_25[arg2] * v_25.Chance
		end
		return var299
	end
	for _, v_26 in arg1.Elements do
		var299 += arg2(v_26) * v_26.Chance
	end
	return var299
end
module_8_upvr.WeightedListDetermineExpectedValue = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 1312, Named "WeightedListGetRandom"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var308
	if arg1.Random then
		var308 = arg1.Random:NextNumber(0, arg1.Weight)
	else
		var308 = math.random() * arg1.Weight
	end
	for _, v_27 in arg1.Elements do
		if v_27.Weight < var308 then
			var308 -= v_27.Weight
		else
			return v_27
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return v_27
end
module_8_upvr.WeightedListGetRandom = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(...) -- Line 1342, Named "CoordinatesGetOverlap"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local args_list = {...}
	local var314
	if 4 <= #args_list then
		var314 = args_list[1]
		local _2 = args_list[2]
		local _3 = args_list[3]
		local _4 = args_list[4]
		for i_30 = 2, #args_list // 4 do
			local var318 = i_30 * 4
			local var319 = args_list[var318 - 3]
			local var320 = args_list[var318 - 2]
			local var321 = args_list[var318 - 1]
			local var322 = args_list[var318]
			if var321 < var314 or var322 < _2 or _3 < var319 or _4 < var320 then
				return nil, nil, nil, nil
			end
			var314 = math.max(var314, var319)
		end
		return var314, math.max(_2, var320), math.min(_3, var321), math.min(_4, var322)
	end
	return nil, nil, nil, nil
end
module_8_upvr.CoordinatesGetOverlap = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(...) -- Line 1386, Named "RectGetOverlap"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local args_list_2 = {...}
	local var328
	if #args_list_2 < var328 then
		return args_list_2[1]
	end
	local _1_2 = args_list_2[1]
	var328 = _1_2.Min.X
	local Y_6 = _1_2.Min.Y
	local X_4 = _1_2.Max.X
	local Y_9 = _1_2.Max.Y
	for i_31 = 2, #args_list_2 do
		local var333 = args_list_2[i_31]
		local X_7 = var333.Min.X
		local Y_5 = var333.Min.Y
		local X_3 = var333.Max.X
		local Y_7 = var333.Max.Y
		if X_3 < var328 or Y_7 < Y_6 or X_4 < X_7 or Y_9 < Y_5 then
			return nil
		end
		var328 = math.max(var328, X_7)
	end
	return Rect.new(var328, math.max(Y_6, Y_5), math.min(X_4, X_3), math.min(Y_9, Y_7))
end
module_8_upvr.RectGetOverlap = FormatArray_OxfordComma_upvr
function FormatArray_OxfordComma_upvr(arg1) -- Line 1436, Named "FormatArray_OxfordComma"
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local len_5 = #arg1
	if len_5 == 1 then
		local _ = {tostring(arg1[1])}
		-- KONSTANTWARNING: GOTO [67] #53
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 18 start (CF ANALYSIS FAILED)
	if len_5 == 2 then
		local _ = {tostring(arg1[1]), " and ", tostring(arg1[2])}
		-- KONSTANTWARNING: GOTO [67] #53
	end
	-- KONSTANTERROR: [15] 12. Error Block 18 end (CF ANALYSIS FAILED)
end
module_8_upvr.FormatArray_OxfordComma = FormatArray_OxfordComma_upvr
FormatArray_OxfordComma_upvr = {}
local var341 = FormatArray_OxfordComma_upvr
SortWeightedListElementsDescending_upvw = true
var341.Commas = SortWeightedListElementsDescending_upvw
module_8_upvr.FormatNumberOptions_AddCommas = var341
var341 = {}
local var342 = var341
SortWeightedListElementsDescending_upvw = true
var342.Commas = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 1000
var342.AbbreviateAt = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 1
var342.AbbreviationDecimals = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 2
var342.Decimals = SortWeightedListElementsDescending_upvw
module_8_upvr.FormatNumberOptions_BoostAbbreviation = var342
var342 = {}
local var343 = var342
SortWeightedListElementsDescending_upvw = true
var343.Commas = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 100000
var343.AbbreviateAt = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = true
var343.AbbreviationAddSpace = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 2
var343.AbbreviationDecimals = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = true
var343.AbbreviationForceDecimals = SortWeightedListElementsDescending_upvw
module_8_upvr.FormatNumberOptions_PriceAbbreviation = var343
var343 = {}
local var344 = var343
SortWeightedListElementsDescending_upvw = true
var344.Commas = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 1000000
var344.AbbreviateAt = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = true
var344.AbbreviationAddSpace = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 1
var344.AbbreviationDecimals = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = true
var344.AbbreviationForceDecimals = SortWeightedListElementsDescending_upvw
module_8_upvr.FormatNumberOptions_StandardAbbreviation = var344
var344 = {}
local var345_upvw = var344
SortWeightedListElementsDescending_upvw = true
var345_upvw.Commas = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = 2
var345_upvw.Decimals = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = true
var345_upvw.RoundDecimal = SortWeightedListElementsDescending_upvw
SortWeightedListElementsDescending_upvw = '%'
var345_upvw.TrailingCharacter = SortWeightedListElementsDescending_upvw
module_8_upvr.FormatNumberOptions_Percentage = var345_upvw
var345_upvw = nil
SortWeightedListElementsDescending_upvw = nil
local tbl_10_upvr = {{'k', "Thousand"}, {'M', "Million"}, {'B', "Billion"}, {'T', "Trillion"}, {"Qd", "Quadrillion"}, {"Qn", "Quintillion"}, {"Sx", "Sextillion"}, {"Sp", "Septillion"}, {'O', "Octillion"}, {'N', "Nonillion"}, {"De", "Decillion"}, {"Ud", "Undecillion"}, {"DD", "Duodecillion"}, {"Ud", "Tredecillion"}, {"tdD", "Quattuordecillion"}, {"QnD", "Quindecillion"}, {"SxD", "Sexdecillion"}, {"SpD", "Septendecillion"}, {"OcD", "Octodecillion"}, {"NvD", "Novemdecillion"}, {"VgN", "Vigintillion"}}
local len_2_upvr = #tbl_10_upvr
local var369_upvw
function module_8_upvr.FormatNumber(arg1, arg2) -- Line 1563
	--[[ Upvalues[6]:
		[1]: module_8_upvr (readonly)
		[2]: len_2_upvr (readonly)
		[3]: tbl_10_upvr (readonly)
		[4]: SortWeightedListElementsDescending_upvw (read and write)
		[5]: var369_upvw (read and write)
		[6]: var345_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var374
	if not var374 then
		var374 = module_8_upvr.FormatNumberOptions_AddCommas
	end
	arg1 = math.abs(arg1)
	local var375 = arg1
	local var376
	if var374.AbbreviateAt and var374.AbbreviateAt <= var375 and 1000 < var375 then
		local minimum = math.min(math.log10(var375) // 3, len_2_upvr)
		var375 /= 1000 ^ minimum
		local var378 = tbl_10_upvr
		if var374.AbbreviationFullNames then
			var378 = 2
		else
			var378 = 1
		end
		local var379 = var378[minimum][var378]
		local AbbreviationDecimals = var374.AbbreviationDecimals
	end
	local tostring_result1 = tostring(var375 // 1)
	local tbl = {}
	if math.sign(arg1) < 0 then
		tbl[1] = '-'
	end
	local len = #tostring_result1
	if len % 3 == 0 then
		var376 = len - len // 3 * 3
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var376 = len - (len // 3 + 1) * 3
	end
	tbl[#tbl + 1] = string.sub(tostring_result1, 1, var376 + 3)
	for i_32 = var376 + 3, len - 1, 3 do
		tbl[#tbl + 1] = ','..string.sub(tostring_result1, i_32 + 1, i_32 + 3)
		local var384
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		local var385
		return 0 < AbbreviationDecimals
	end
	if AbbreviationDecimals and INLINED_3() and (var375 % 1 ~= 0 or var374.AbbreviationForceDecimals) then
		var385 = SortWeightedListElementsDescending_upvw
		if AbbreviationDecimals ~= var385 then
			SortWeightedListElementsDescending_upvw = AbbreviationDecimals
			i_32 = 10
			var385 = i_32 ^ math.ceil(AbbreviationDecimals)
			var369_upvw = var385
			i_32 = "%."
			var385 = i_32..AbbreviationDecimals..'i'
			var345_upvw = var385
		end
		i_32 = var369_upvw
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var385 = var375 % 1 * i_32
		i_32 = var374.RoundDecimal
		if i_32 then
			i_32 = math.round(var385)
			var385 = i_32
		end
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return var374.AbbreviationForceDecimals
		end
		if var385 ~= 0 or INLINED_4() then
			i_32 = #var384 + 1
			var384[i_32] = '.'..string.format(var345_upvw, var385)
		end
	end
	if var379 then
		if var374.AbbreviationAddSpace then
			var384[#var384 + 1] = ' '
		end
		var384[#var384 + 1] = var379
	end
	if var374.TrailingCharacter then
		var384[#var384 + 1] = var374.TrailingCharacter
	end
	return table.concat(var384)
end
local tbl_18_upvr = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"}
local tbl_3_upvr = {-- : First try: K:0: attempt to index nil with 't'

for i_33, v_28 in tbl_10_upvr do
	table.create(len_2_upvr)[i_33] = string.lower(v_28[2])
	local var389_upvr
end
function module_8_upvr.FormatNumber_ToWords(arg1) -- Line 1697
	--[[ Upvalues[4]:
		[1]: len_2_upvr (readonly)
		[2]: tbl_18_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: var389_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	if math.max(arg1 // 1, 0) == 0 then
		return "zero"
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [127] 106. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [127] 106. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 22. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [128.1311908]
	-- KONSTANTERROR: [28] 22. Error Block 4 end (CF ANALYSIS FAILED)
end
local var391_upvw
local var392_upvw
local var393_upvw
function module_8_upvr.FormatNumber_Timer(arg1, arg2, arg3) -- Line 1792
	--[[ Upvalues[3]:
		[1]: var391_upvw (read and write)
		[2]: var392_upvw (read and write)
		[3]: var393_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var394 = arg2 or 2
	local var395 = arg3 or 2
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 8 start (CF ANALYSIS FAILED)
	if var395 ~= var392_upvw then
		-- KONSTANTERROR: [8] 7. Error Block 6 start (CF ANALYSIS FAILED)
		var393_upvw = "%0"..var395.."i:%0"..(var394 + 3)..'.'..var394..'f'
		var391_upvw = var394
		var392_upvw = var395
		-- KONSTANTERROR: [8] 7. Error Block 6 end (CF ANALYSIS FAILED)
	end
	do
		return string.format(var393_upvw, arg1 // 60, arg1 % 60)
	end
	-- KONSTANTERROR: [5] 5. Error Block 8 end (CF ANALYSIS FAILED)
end
local var396_upvw
local var397_upvw
local var398_upvw
local var399_upvw
function module_8_upvr.FormatNumber_TimerPlaceholder(arg1, arg2, arg3) -- Line 1825
	--[[ Upvalues[4]:
		[1]: var396_upvw (read and write)
		[2]: var397_upvw (read and write)
		[3]: var398_upvw (read and write)
		[4]: var399_upvw (read and write)
	]]
	local var400 = arg1 or 2
	local var401 = arg3 or '-'
	local var402 = arg2 or 2
	if var400 ~= var396_upvw or var401 ~= var397_upvw or var402 ~= var398_upvw then
		var399_upvw = string.rep(var401, var402)..':'..string.rep(var401, 2)..'.'..string.rep(var401, var400)
		var396_upvw = var400
		var397_upvw = var401
		var398_upvw = var402
	end
	return var399_upvw
end
local tbl_8_upvr = {
	Minutes = "%s Min";
	Hours = "%s Hour";
	Days = "%s Day";
}
local tbl_13_upvr = {
	Commas = true;
}
function module_8_upvr.FormatNumber_TimeSpan(arg1) -- Line 1865
	--[[ Upvalues[3]:
		[1]: tbl_8_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
		[3]: module_8_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
	local var405
	if arg1 < 3600 then
		var405 = arg1 / 60
		-- KONSTANTWARNING: GOTO [24] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 17 start (CF ANALYSIS FAILED)
	local var406 = 1
	if arg1 < 86400 then
		var405 = arg1 / 3600
	else
		var405 = arg1 / 86400
	end
	local var407 = 10 ^ var406
	local var408 = var405 * var407 // 1 / var407
	tbl_13_upvr.Decimals = var406
	local formatted_2 = string.format(tbl_8_upvr.Days, module_8_upvr.FormatNumber(var408, tbl_13_upvr))
	if var408 % 10 ~= 1 then
		formatted_2 = formatted_2..'s'
	end
	do
		return formatted_2
	end
	-- KONSTANTERROR: [11] 10. Error Block 17 end (CF ANALYSIS FAILED)
end
function tbl_8_upvr(arg1, arg2) -- Line 1923, Named "CapitalizeFirst"
	return string.upper(arg1)..arg2
end
function tbl_13_upvr(arg1) -- Line 1931, Named "FormatString_MakeProper"
	--[[ Upvalues[1]:
		[1]: tbl_8_upvr (readonly)
	]]
	return string.gsub(arg1, "(%a)([%w']+)", tbl_8_upvr)
end
module_8_upvr.FormatString_MakeProper = tbl_13_upvr
function tbl_8_upvr(arg1) -- Line 1943, Named "TableBuildFlipped"
	local module_3 = {}
	for i_34, v_29 in arg1 do
		module_3[v_29] = i_34
	end
	return module_3
end
module_8_upvr.TableBuildFlipped = tbl_8_upvr
function tbl_8_upvr(arg1, arg2) -- Line 1954, Named "TableBuildSub"
	local var415 = arg1[arg2]
	if not var415 then
		var415 = {}
		arg1[arg2] = var415
	end
	return var415
end
module_8_upvr.TableBuildSub = tbl_8_upvr
function tbl_8_upvr(arg1) -- Line 1963, Named "TableCount"
	local var418 = 0
	for _ in arg1 do
		var418 += 1
	end
	return var418
end
module_8_upvr.TableCount = tbl_8_upvr
function tbl_8_upvr(arg1) -- Line 1971, Named "TableDeepCopy"
	local tbl_7 = {}
	local tbl_15 = {}
	local tbl_12 = {}
	local module_7 = {}
	if type(arg1) == "table" then
		tbl_7[1] = arg1
		tbl_15[1] = module_7
	end
	while 0 < #tbl_7 do
		local var425 = tbl_7[#tbl_7]
		local var426 = tbl_15[#tbl_15]
		tbl_7[#tbl_7] = nil
		tbl_15[#tbl_15] = nil
		tbl_12[var425] = var426
		for i_36, v_30 in var425 do
			if type(i_36) == "table" then
				if tbl_12[i_36] then
					i_36 = tbl_12[i_36]
				else
					tbl_7[#tbl_7 + 1] = i_36
					i_36 = table.clone(i_36)
					tbl_15[#tbl_15 + 1] = i_36
				end
			end
			if type(v_30) == "table" then
				if tbl_12[v_30] then
					v_30 = tbl_12[v_30]
				else
					tbl_7[#tbl_7 + 1] = v_30
					v_30 = table.clone(v_30)
					tbl_15[#tbl_15 + 1] = v_30
				end
			end
			var426[i_36] = v_30
		end
	end
	return module_7
end
module_8_upvr.TableDeepCopy = tbl_8_upvr
function tbl_8_upvr(arg1) -- Line 2018, Named "TableFreezeAll"
	local tbl_6 = {}
	local tbl_14 = {}
	if type(arg1) == "table" then
		tbl_6[1] = arg1
	end
	while 0 < #tbl_6 do
		local var431 = tbl_6[#tbl_6]
		tbl_6[#tbl_6] = nil
		tbl_14[var431] = true
		if not table.isfrozen(var431) then
			table.freeze(var431)
		end
		for i_37, v_31 in var431 do
			if type(i_37) == "table" and not tbl_14[i_37] then
				tbl_6[#tbl_6 + 1] = i_37
			end
			if type(v_31) == "table" and not tbl_14[v_31] then
				tbl_6[#tbl_6 + 1] = v_31
			end
		end
	end
	return arg1
end
module_8_upvr.TableFreezeAll = tbl_8_upvr
function tbl_8_upvr(arg1, arg2) -- Line 2048, Named "TableGetKeyFromValue"
	local var436
	for i_38, v_32 in arg1 do
		if v_32 == arg2 then
			var436 = i_38
			return var436
		end
	end
	return var436
end
module_8_upvr.TableGetKeyFromValue = tbl_8_upvr
function tbl_8_upvr(arg1, arg2) -- Line 2062, Named "TableMerge"
	for i_39, v_33 in arg1 do
		arg2[i_39] = v_33
	end
	return arg2
end
module_8_upvr.TableMerge = tbl_8_upvr
function tbl_8_upvr(arg1, ...) -- Line 2069, Named "TableSortMultiStep"
	local tbl_2 = {1, #arg1}
	local var443 = 2
	while 0 < var443 do
		local var444 = tbl_2[var443 - 1]
		local var445 = tbl_2[var443]
		tbl_2[var443 - 1] = nil
		tbl_2[var443] = nil
		local var446 = var443 - 2
		if var444 < var445 then
			local var447 = arg1[var445]
			for i_40 = var444, var445 - 1 do
				repeat
					local var449 = true
					local var450 = ({...})[1]
					if var450 then
						if var450(arg1[i_40], var447) then
							local var451 = var444 - 1 + 1
							arg1[var451] = arg1[i_40]
							arg1[i_40] = arg1[var451]
						elseif not var450(var447, arg1[i_40]) then
							var449 = false
						end
					end
				until var449
			end
			local var452 = var451 + 1
			arg1[var452] = arg1[var445]
			arg1[var445] = arg1[var452]
			tbl_2[var446 + 1] = var444
			tbl_2[var446 + 2] = var452 - 1
			tbl_2[var446 + 3] = var452 + 1
			tbl_2[var446 + 4] = var445
		end
	end
end
module_8_upvr.TableSortMultiStep = tbl_8_upvr
tbl_8_upvr = {}
local TableClearIndexes_upvr = tbl_8_upvr
function tbl_13_upvr(arg1) -- Line 2121, Named "GetCachedValue"
	--[[ Upvalues[1]:
		[1]: TableClearIndexes_upvr (readonly)
	]]
	local var454 = TableClearIndexes_upvr[arg1]
	if var454 == nil then
		var454 = tonumber(string.match(arg1.Name, "^%d+"))
		if var454 then
			TableClearIndexes_upvr[arg1] = var454
			return var454
		end
		TableClearIndexes_upvr[arg1] = false
		var454 = nil
	end
	return var454
end
local function InstanceHierarchyValidate_upvr(arg1, arg2) -- Line 2137, Named "SortInstances"
	--[[ Upvalues[1]:
		[1]: TableClearIndexes_upvr (readonly)
	]]
	local var455 = TableClearIndexes_upvr[arg1]
	if var455 == nil then
		var455 = tonumber(string.match(arg1.Name, "^%d+"))
		if var455 then
			TableClearIndexes_upvr[arg1] = var455
		else
			TableClearIndexes_upvr[arg1] = false
			var455 = nil
		end
	end
	local var456 = var455 or math.huge
	local var457 = TableClearIndexes_upvr[arg2]
	if var457 == nil then
		var457 = tonumber(string.match(arg2.Name, "^%d+"))
		if var457 then
			TableClearIndexes_upvr[arg2] = var457
		else
			TableClearIndexes_upvr[arg2] = false
			var457 = nil
		end
	end
	var455 = var457
	local var458 = var455
	local var459 = var458 or math.huge
	if var456 ~= var459 then
		if var456 >= var459 then
			var458 = false
		else
			var458 = true
		end
		return var458
	end
	if string.lower(arg1.Name) >= string.lower(arg2.Name) then
		var458 = false
	else
		var458 = true
	end
	return var458
end
function module_8_upvr.TableSortInstanceArray(arg1) -- Line 2148
	--[[ Upvalues[2]:
		[1]: InstanceHierarchyValidate_upvr (readonly)
		[2]: TableClearIndexes_upvr (readonly)
	]]
	table.sort(arg1, InstanceHierarchyValidate_upvr)
	table.clear(TableClearIndexes_upvr)
end
function TableClearIndexes_upvr(arg1, arg2, arg3) -- Line 2154, Named "TableClearIndexes"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	local var460 = arg3 - arg2 + 1
	if 0 < var460 then
		local _, next_result2_2 = next(tbl_5_upvr.RecycleArray)
		if not next_result2_2 then
			next_result2_2 = {}
			tbl_5_upvr.RecycleArray[1] = next_result2_2
		end
		table.clear(next_result2_2)
		local var463 = next_result2_2
		local len_3 = #arg1
		table.move(arg1, 1, arg2 - 1, 1, var463)
		table.move(arg1, arg3 + 1, len_3, arg2, var463)
		table.clear(arg1)
		table.move(var463, 1, len_3 - var460, 1, arg1)
	end
	return arg1
end
module_8_upvr.TableClearIndexes = TableClearIndexes_upvr
TableClearIndexes_upvr = {}
local ByteCounterRead_upvr = TableClearIndexes_upvr
tbl_13_upvr = 1
ByteCounterRead_upvr.InvalidPath = tbl_13_upvr
tbl_13_upvr = 2
ByteCounterRead_upvr.InvalidClass = tbl_13_upvr
tbl_13_upvr = {}
local var466_upvr = tbl_13_upvr
InstanceHierarchyValidate_upvr = ByteCounterRead_upvr.InvalidPath
var466_upvr[InstanceHierarchyValidate_upvr] = function(arg1, arg2) -- Line 2209
	return string.format("Unable to find object %s.%s.", arg1.Name, table.concat(arg2, '.'))
end
InstanceHierarchyValidate_upvr = ByteCounterRead_upvr.InvalidClass
var466_upvr[InstanceHierarchyValidate_upvr] = function(arg1, arg2, arg3, arg4) -- Line 2215
	return string.format("Object %s.%s not valid. Expected %s, received %s.", arg1.Name, table.concat(arg4, '.'), arg3, arg2)
end
function InstanceHierarchyValidate_upvr(arg1, arg2, arg3, arg4) -- Line 2226, Named "InstanceHierarchyValidate"
	--[[ Upvalues[2]:
		[1]: ByteCounterRead_upvr (readonly)
		[2]: var466_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	table.clear({})
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.11]
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
end
module_8_upvr.InstanceHierarchyValidate = InstanceHierarchyValidate_upvr
function ByteCounterRead_upvr(arg1, ...) -- Line 2354, Named "RunFunction"
	local var469 = arg1
	if coroutine.status(task.spawn(var469, ...)) ~= "suspended" then
		var469 = false
	else
		var469 = true
	end
	return var469
end
module_8_upvr.RunFunction = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1, ...) -- Line 2362, Named "RunFunctionsBlocking"
	for _, v_34 in arg1 do
		v_34(...)
	end
end
module_8_upvr.RunFunctionsBlocking = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1, arg2, arg3, arg4) -- Line 2376, Named "GetPlaneLineIntersection"
	local any_Dot_result1_2 = arg1 - arg3:Dot(arg2)
	if arg4:Dot(arg2) == 0 then
		if any_Dot_result1_2 == 0 then
			return arg4, 0
		end
		return nil, nil
	end
	local var473 = any_Dot_result1_2 / arg4:Dot(arg2)
	return arg3 + arg4 * var473, var473
end
module_8_upvr.GetPlaneLineIntersection = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1, arg2, arg3) -- Line 2414, Named "Vector3Rotate"
	local cosine = math.cos(arg3)
	return cosine * arg1 + math.sin(arg3) * arg2:Cross(arg1) + (1 - cosine) * arg2:Dot(arg1) * arg2
end
module_8_upvr.Vector3Rotate = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1) -- Line 2442, Named "HierarchyCreate"
	local module_6 = {}
	for _, v_35 in arg1 do
		local _1 = v_35[1]
		local var481
		if module_6[_1] ~= nil then
			var481 = false
		else
			var481 = true
		end
		assert(var481, "Duplicate node")
		local var482 = module_6[v_35[2]]
		var481 = {}
		var481.Data = _1
		var481.Parent = var482
		var481.Children_ByData = {}
		var481.ChildrenArray = {}
		module_6[_1] = var481
		if var482 then
			var482.Children_ByData[_1] = var481
			var482.ChildrenArray[#var482.ChildrenArray + 1] = var481
		end
	end
	return module_6
end
module_8_upvr.HierarchyCreate = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1, arg2) -- Line 2474, Named "HierarchySortNodesNumeric"
	local var483
	if arg1.Data >= arg2.Data then
		var483 = false
	else
		var483 = true
	end
	return var483
end
module_8_upvr.HierarchySortNodesNumeric = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1, arg2) -- Line 2481, Named "HierarchySortChildren"
	for _, v_36 in arg1 do
		table.sort(v_36.ChildrenArray, arg2)
	end
end
module_8_upvr.HierarchySortChildren = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1, arg2) -- Line 2503, Named "ByteCounterCreate"
	local module_2 = {}
	module_2.MaxBytes = arg2
	module_2[1] = 0
	if arg1 then
		local var487 = arg1 // 1
		while 0 < var487 do
			module_2[0 + 1] = var487 % 256
		end
	end
	return module_2
end
module_8_upvr.ByteCounterCreate = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1) -- Line 2527, Named "ByteCounterClear"
	for i_44 = #arg1, 2, -1 do
		arg1[i_44] = nil
	end
	arg1[1] = 0
	return arg1
end
module_8_upvr.ByteCounterClear = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1) -- Line 2538, Named "ByteCounterIncrement"
	--[[ Upvalues[1]:
		[1]: module_8_upvr (readonly)
	]]
	for i_45 = #arg1, 1, -1 do
		arg1[i_45] += 1
		if arg1[i_45] < 256 then break end
		arg1[i_45] = 0
	end
	if arg1[#arg1] == 0 then
		if #arg1 == arg1.MaxBytes then
			module_8_upvr.ByteCounterClear(arg1)
			return
		end
		arg1[#arg1 + 1] = 1
	end
end
module_8_upvr.ByteCounterIncrement = ByteCounterRead_upvr
function ByteCounterRead_upvr(arg1) -- Line 2560, Named "ByteCounterRead"
	return string.char(table.unpack(arg1))
end
module_8_upvr.ByteCounterRead = ByteCounterRead_upvr
return module_8_upvr