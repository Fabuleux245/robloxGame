-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:09
-- Luau version 6, Types version 3
-- Time taken: 0.013744 seconds

local tbl_upvr_2 = {
	LIMBS = 2;
	MOVEMENT = 3;
	CORNERS = 4;
	CIRCLE1 = 5;
	CIRCLE2 = 6;
	LIMBMOVE = 7;
	SMART_CIRCLE = 8;
	CHAR_OUTLINE = 9;
}
local tbl_upvr_3 = {
	Head = true;
	["Left Arm"] = true;
	["Right Arm"] = true;
	["Left Leg"] = true;
	["Right Leg"] = true;
	LeftLowerArm = true;
	RightLowerArm = true;
	LeftUpperLeg = true;
	RightUpperLeg = true;
}
local tbl_4_upvr = {Vector3.new(1, 1, -1), Vector3.new(1, -1, -1), Vector3.new(-1, -1, -1), Vector3.new(-1, 1, -1)}
local function AssertTypes_upvr(arg1, ...) -- Line 59, Named "AssertTypes"
	local tbl_2 = {}
	local var13
	for _, v in pairs({...}) do
		tbl_2[v] = true
		local var14
		if var13 == "" then
			var14 = ""
		else
			var14 = " or "
		end
		var13 = var13..var14..v
	end
	local type_result1 = type(arg1)
	assert(tbl_2[type_result1], var13.." type expected, got: "..type_result1)
end
local function _(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 71, Named "Det3x3"
	return arg1 * (arg5 * arg9 - arg6 * arg8) - arg2 * (arg4 * arg9 - arg6 * arg7) + arg3 * (arg4 * arg8 - arg5 * arg7)
end
local function RayIntersection_upvr(arg1, arg2, arg3, arg4) -- Line 79, Named "RayIntersection"
	local any_Cross_result1 = arg2:Cross(arg4)
	local var17 = arg3.X - arg1.X
	local var18 = arg3.Y - arg1.Y
	local var19 = arg3.Z - arg1.Z
	local Y_2 = arg2.Y
	local var21 = -arg4.Y
	local Y = any_Cross_result1.Y
	local Z = arg2.Z
	local var24 = -arg4.Z
	local Z_3 = any_Cross_result1.Z
	local var26 = arg2.X * (var21 * Z_3 - Y * var24) - -arg4.X * (Y_2 * Z_3 - Y * Z) + any_Cross_result1.X * (Y_2 * var24 - var21 * Z)
	if var26 == 0 then
		return Vector3.new(0, 0, 0)
	end
	local var27 = -arg4.Y
	local Y_4 = any_Cross_result1.Y
	local var29 = -arg4.Z
	local Z_5 = any_Cross_result1.Z
	local Y_3 = arg2.Y
	local Y_5 = any_Cross_result1.Y
	local Z_2 = arg2.Z
	local Z_4 = any_Cross_result1.Z
	local var35 = arg1 + (var17 * (var27 * Z_5 - Y_4 * var29) - -arg4.X * (var18 * Z_5 - Y_4 * var19) + any_Cross_result1.X * (var18 * var29 - var27 * var19)) / var26 * arg2
	local var36 = arg3 + (arg2.X * (var18 * Z_4 - Y_5 * var19) - var17 * (Y_3 * Z_4 - Y_5 * Z_2) + any_Cross_result1.X * (Y_3 * var19 - var18 * Z_2)) / var26 * arg4
	if (var36 - var35).Magnitude < 0.25 then
		return var35 + 0.5 * (var36 - var35)
	end
	return Vector3.new(0, 0, 0)
end
local module_upvr = require(script.Parent:WaitForChild("BaseOcclusion"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new() -- Line 112
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr.new(), setmetatable_result1_upvr)
	setmetatable_result1.char = nil
	setmetatable_result1.humanoidRootPart = nil
	setmetatable_result1.torsoPart = nil
	setmetatable_result1.headPart = nil
	setmetatable_result1.childAddedConn = nil
	setmetatable_result1.childRemovedConn = nil
	setmetatable_result1.behaviors = {}
	setmetatable_result1.behaviors[tbl_upvr_2.LIMBS] = setmetatable_result1.LimbBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.MOVEMENT] = setmetatable_result1.MoveBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.CORNERS] = setmetatable_result1.CornerBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.CIRCLE1] = setmetatable_result1.CircleBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.CIRCLE2] = setmetatable_result1.CircleBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.LIMBMOVE] = setmetatable_result1.LimbMoveBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.SMART_CIRCLE] = setmetatable_result1.SmartCircleBehavior
	setmetatable_result1.behaviors[tbl_upvr_2.CHAR_OUTLINE] = setmetatable_result1.CharacterOutlineBehavior
	setmetatable_result1.mode = tbl_upvr_2.SMART_CIRCLE
	setmetatable_result1.behaviorFunction = setmetatable_result1.SmartCircleBehavior
	setmetatable_result1.savedHits = {}
	setmetatable_result1.trackedLimbs = {}
	setmetatable_result1.camera = game.Workspace.CurrentCamera
	setmetatable_result1.enabled = false
	return setmetatable_result1
end
function setmetatable_result1_upvr.Enable(arg1, arg2) -- Line 145
	arg1.enabled = arg2
	if not arg2 then
		arg1:Cleanup()
	end
end
function setmetatable_result1_upvr.GetOcclusionMode(arg1) -- Line 153
	return Enum.DevCameraOcclusionMode.Invisicam
end
function setmetatable_result1_upvr.LimbBehavior(arg1, arg2) -- Line 158
	for i_2, _ in pairs(arg1.trackedLimbs) do
		arg2[#arg2 + 1] = i_2.Position
	end
end
function setmetatable_result1_upvr.MoveBehavior(arg1, arg2) -- Line 164
	for i_3 = 1, 3 do
		local Velocity = arg1.humanoidRootPart.Velocity
		arg2[#arg2 + 1] = arg1.humanoidRootPart.Position + ((i_3 - 1) * arg1.humanoidRootPart.CFrame.lookVector) * (Vector3.new(Velocity.X, 0, Velocity.Z).Magnitude / 2)
	end
end
function setmetatable_result1_upvr.CornerBehavior(arg1, arg2) -- Line 173
	--[[ Upvalues[1]:
		[1]: tbl_4_upvr (readonly)
	]]
	local CFrame = arg1.humanoidRootPart.CFrame
	local Position = CFrame.Position
	local var51 = CFrame - Position
	local var52 = arg1.char:GetExtentsSize() / 2
	arg2[#arg2 + 1] = Position
	for i_4 = 1, #tbl_4_upvr do
		arg2[#arg2 + 1] = Position + (var51) * (var52 * tbl_4_upvr[i_4])
	end
end
function setmetatable_result1_upvr.CircleBehavior(arg1, arg2) -- Line 184
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var55
	if arg1.mode == tbl_upvr_2.CIRCLE1 then
		var55 = arg1.humanoidRootPart.CFrame
	else
		local CoordinateFrame = arg1.camera.CoordinateFrame
		var55 = CoordinateFrame - CoordinateFrame.Position + arg1.humanoidRootPart.Position
	end
	arg2[#arg2 + 1] = var55.Position
	for i_5 = 0, 9 do
		local var57 = 0.6283185307179586 * i_5
		arg2[#arg2 + 1] = (var55) * (3 * Vector3.new(math.cos(var57), math.sin(var57), 0))
	end
end
function setmetatable_result1_upvr.LimbMoveBehavior(arg1, arg2) -- Line 200
	arg1:LimbBehavior(arg2)
	arg1:MoveBehavior(arg2)
end
function setmetatable_result1_upvr.CharacterOutlineBehavior(arg1, arg2) -- Line 205
	local unit = arg1.torsoPart.CFrame.upVector.unit
	local unit_2 = arg1.torsoPart.CFrame.rightVector.unit
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p + unit
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p - unit
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p + unit_2
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p - unit_2
	local var62
	if arg1.headPart then
		var62 = #arg2
		var62 = arg1.headPart.CFrame.p
		arg2[var62 + 1] = var62
	end
	var62 = Vector3.new(0, 0, 0)
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var62 = arg1.torsoPart.Position
		return var62
	end
	if not arg1.torsoPart or not INLINED() then
		var62 = arg1.humanoidRootPart.Position
	end
	local tbl_3 = {arg1.torsoPart}
	if arg1.headPart then
		tbl_3[#tbl_3 + 1] = arg1.headPart
	end
	for i_6 = 1, 24 do
		local var64 = (-math.pi*2) * i_6 / 24
		local var65 = (CFrame.new(var62, Vector3.new(arg1.camera.CoordinateFrame.lookVector.X, 0, arg1.camera.CoordinateFrame.lookVector.Z))) * (3 * Vector3.new(math.cos(var64), math.sin(var64), 0))
		local vector3 = Vector3.new(var65.X, math.max(var65.Y, -2.25), var65.Z)
		local any_FindPartOnRayWithWhitelist_result1, any_FindPartOnRayWithWhitelist_result2 = game.Workspace:FindPartOnRayWithWhitelist(Ray.new(var62 + vector3, -3 * vector3), tbl_3, false)
		if any_FindPartOnRayWithWhitelist_result1 then
			arg2[#arg2 + 1] = any_FindPartOnRayWithWhitelist_result2 + 0.2 * (var62 - any_FindPartOnRayWithWhitelist_result2).unit
		end
	end
end
function setmetatable_result1_upvr.SmartCircleBehavior(arg1, arg2) -- Line 244
	--[[ Upvalues[1]:
		[1]: RayIntersection_upvr (readonly)
	]]
	local unit_5 = arg1.torsoPart.CFrame.upVector.unit
	local unit_3 = arg1.torsoPart.CFrame.rightVector.unit
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p + unit_5
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p - unit_5
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p + unit_3
	arg2[#arg2 + 1] = arg1.torsoPart.CFrame.p - unit_3
	local var73
	if arg1.headPart then
		var73 = arg1.headPart
		arg2[#arg2 + 1] = var73.CFrame.p
	end
	var73 = arg1.camera.CFrame
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var73 = arg1.torsoPart.Position
		return var73
	end
	if not arg1.torsoPart or not INLINED_2() then
		var73 = arg1.humanoidRootPart.Position
	end
	local var74 = Vector3.new(0, 0.5, 0) + var73
	var73 = 1
	for i_7 = 1, 24, var73 do
		local var75 = 0.2617993877991494 * i_7 - (math.pi/2)
		local var76 = var74 + (arg1.camera.CFrame - var73.p) * (2.5 * Vector3.new(math.cos(var75), math.sin(var75), 0))
		local var77 = var76 - arg1.camera.CFrame.p
		local tbl_9 = {arg1.char}
		local any_FindPartOnRayWithIgnoreList_result1_3, any_FindPartOnRayWithIgnoreList_result2_2, any_FindPartOnRayWithIgnoreList_result3_2 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(var74, var76 - var74), tbl_9, false, false)
		tbl_9 = var76
		local var82 = tbl_9
		if any_FindPartOnRayWithIgnoreList_result1_3 then
			local var83 = any_FindPartOnRayWithIgnoreList_result2_2 + 0.1 * any_FindPartOnRayWithIgnoreList_result3_2.unit
			local var84 = var83 - var74
			local unit_4 = var84:Cross(var77).unit:Cross(any_FindPartOnRayWithIgnoreList_result3_2).unit
			if var84.unit:Dot(-unit_4) < var84.unit:Dot((var83 - arg1.camera.CFrame.p).unit) then
				var82 = RayIntersection_upvr(var83, unit_4, var76, var77)
				if 0 < var82.Magnitude then
					local any_FindPartOnRayWithIgnoreList_result1, any_FindPartOnRayWithIgnoreList_result2_3, any_FindPartOnRayWithIgnoreList_result3 = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(var83, var82 - var83), {arg1.char}, false, false)
					if any_FindPartOnRayWithIgnoreList_result1 then
						var82 = any_FindPartOnRayWithIgnoreList_result2_3 + 0.1 * any_FindPartOnRayWithIgnoreList_result3.unit
						-- KONSTANTWARNING: GOTO [243] #170
					end
				else
					var82 = var83
				end
			else
				var82 = var83
			end
			local any_FindPartOnRayWithIgnoreList_result1_2, any_FindPartOnRayWithIgnoreList_result2, _ = game.Workspace:FindPartOnRayWithIgnoreList(Ray.new(var74, var82 - var74), {arg1.char}, false, false)
			if any_FindPartOnRayWithIgnoreList_result1_2 then
				var82 = any_FindPartOnRayWithIgnoreList_result2 - 0.1 * (var82 - var74).unit
			end
		end
		arg2[#arg2 + 1] = var82
	end
end
function setmetatable_result1_upvr.CheckTorsoReference(arg1) -- Line 329
	if arg1.char then
		arg1.torsoPart = arg1.char:FindFirstChild("Torso")
		if not arg1.torsoPart then
			arg1.torsoPart = arg1.char:FindFirstChild("UpperTorso")
			if not arg1.torsoPart then
				arg1.torsoPart = arg1.char:FindFirstChild("HumanoidRootPart")
			end
		end
		arg1.headPart = arg1.char:FindFirstChild("Head")
	end
end
local Players_upvr = game:GetService("Players")
function setmetatable_result1_upvr.CharacterAdded(arg1, arg2, arg3) -- Line 343
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	if arg3 ~= Players_upvr.LocalPlayer then
	else
		if arg1.childAddedConn then
			arg1.childAddedConn:Disconnect()
			arg1.childAddedConn = nil
		end
		if arg1.childRemovedConn then
			arg1.childRemovedConn:Disconnect()
			arg1.childRemovedConn = nil
		end
		arg1.char = arg2
		arg1.trackedLimbs = {}
		arg1.childAddedConn = arg2.ChildAdded:Connect(function(arg1_2) -- Line 359, Named "childAdded"
			--[[ Upvalues[2]:
				[1]: tbl_upvr_3 (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if arg1_2:IsA("BasePart") then
				if tbl_upvr_3[arg1_2.Name] then
					arg1.trackedLimbs[arg1_2] = true
				end
				if arg1_2.Name == "Torso" or arg1_2.Name == "UpperTorso" then
					arg1.torsoPart = arg1_2
				end
				if arg1_2.Name == "Head" then
					arg1.headPart = arg1_2
				end
			end
		end)
		arg1.childRemovedConn = arg2.ChildRemoved:Connect(function(arg1_3) -- Line 375, Named "childRemoved"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.trackedLimbs[arg1_3] = nil
			arg1:CheckTorsoReference()
		end)
		for _, v_5 in pairs(arg1.char:GetChildren()) do
			if v_5:IsA("BasePart") then
				if tbl_upvr_3[v_5.Name] then
					arg1.trackedLimbs[v_5] = true
				end
				if v_5.Name == "Torso" or v_5.Name == "UpperTorso" then
					arg1.torsoPart = v_5
				end
				if v_5.Name == "Head" then
					arg1.headPart = v_5
				end
			end
		end
	end
end
function setmetatable_result1_upvr.SetMode(arg1, arg2) -- Line 389
	--[[ Upvalues[2]:
		[1]: AssertTypes_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	AssertTypes_upvr(arg2, "number")
	for _, v_3 in pairs(tbl_upvr_2) do
		if v_3 == arg2 then
			arg1.mode = arg2
			arg1.behaviorFunction = arg1.behaviors[arg1.mode]
			return
		end
	end
	error("Invalid mode number")
end
function setmetatable_result1_upvr.GetObscuredParts(arg1) -- Line 401
	return arg1.savedHits
end
function setmetatable_result1_upvr.Cleanup(arg1) -- Line 406
	for i_9, v_4 in pairs(arg1.savedHits) do
		i_9.LocalTransparencyModifier = v_4
	end
end
function setmetatable_result1_upvr.Update(arg1, arg2, arg3, arg4) -- Line 412
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 100 start (CF ANALYSIS FAILED)
	local var124
	if not arg1.enabled or not arg1.char then
		return arg3, arg4
	end
	arg1.camera = game.Workspace.CurrentCamera
	if not arg1.humanoidRootPart then
		local class_Humanoid = arg1.char:FindFirstChildOfClass("Humanoid")
		if class_Humanoid and class_Humanoid.RootPart then
			arg1.humanoidRootPart = class_Humanoid.RootPart
		else
			arg1.humanoidRootPart = arg1.char:FindFirstChild("HumanoidRootPart")
			if not arg1.humanoidRootPart then
				return arg3, arg4
			end
		end
		local var127_upvw
		var127_upvw = arg1.humanoidRootPart.AncestryChanged:Connect(function(arg1_6, arg2_3) -- Line 437
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var127_upvw (read and write)
			]]
			if arg1_6 == arg1.humanoidRootPart and not arg2_3 then
				arg1.humanoidRootPart = nil
				if var127_upvw then
					if var127_upvw.Connected then
						var127_upvw:Disconnect()
						var127_upvw = nil
					end
				end
			end
		end)
	end
	if not arg1.torsoPart then
		arg1:CheckTorsoReference()
		if not arg1.torsoPart then
			return arg3, arg4
		end
	end
	local tbl_5 = {}
	arg1.behaviorFunction(arg1, tbl_5)
	local tbl_8_upvr = {}
	local function _(arg1_7) -- Line 463, Named "add"
		--[[ Upvalues[2]:
			[1]: tbl_8_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		tbl_8_upvr[arg1_7] = true
		if not arg1.savedHits[arg1_7] then
			arg1.savedHits[arg1_7] = arg1_7.LocalTransparencyModifier
		end
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var124 = arg1.headPart.CFrame.p
		return var124
	end
	if not arg1.headPart or not INLINED_4() then
		var124 = tbl_5[1]
	end
	if not arg1.torsoPart or not arg1.torsoPart.CFrame.p then
	end
	-- KONSTANTERROR: [0] 1. Error Block 100 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [131] 91. Error Block 25 start (CF ANALYSIS FAILED)
	local var134 = arg1.camera:GetPartsObscuringTarget({var124, tbl_5[2]}, {arg1.char})[1]
	;({})[var134] = true
	local _, _, _ = pairs(var134:GetChildren())
	-- KONSTANTERROR: [131] 91. Error Block 25 end (CF ANALYSIS FAILED)
end
return setmetatable_result1_upvr