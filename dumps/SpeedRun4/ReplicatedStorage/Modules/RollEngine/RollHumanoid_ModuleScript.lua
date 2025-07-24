-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:28
-- Luau version 6, Types version 3
-- Time taken: 0.006139 seconds

local module_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage_upvr:WaitForChild("CommonData"))
local Modules = ReplicatedStorage_upvr:WaitForChild("Modules")
local module_upvr_6 = require(Modules:WaitForChild("Utility"))
local module_upvr_3 = require(script:FindFirstAncestor("RollEngine"):WaitForChild("RollProperties"))
local tbl_upvr = {
	RollCharacter_ByCharacterState = {};
}
local DotTolerance_upvr = module_upvr_6.DotTolerance
local var11_upvw
var11_upvw = workspace.Gravity * Vector3.new(0, 1, 0)
workspace:GetPropertyChangedSignal("Gravity"):Connect(function() -- Line 197, Named "UpdateWorkspaceGravity"
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	var11_upvw = workspace.Gravity * Vector3.new(0, 1, 0)
end)
local function _(arg1, arg2, arg3) -- Line 210, Named "GetGroundPlaneXZ"
	--[[ Upvalues[1]:
		[1]: DotTolerance_upvr (readonly)
	]]
	local var12
	if arg1:Dot(arg2) < DotTolerance_upvr then
		var12 = arg2:Cross(arg1).Unit
	else
		var12 = arg1:Cross(arg3).Unit
	end
	return arg1:Cross(var12).Unit, var12
end
local function _(arg1, arg2) -- Line 230, Named "CanTouch"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local CanCollide = arg2.CanCollide
	if CanCollide then
		CanCollide = not arg2:HasTag(module_upvr_2.Tags.HumanoidIgnoreTag)
		if CanCollide then
			CanCollide = not arg2:IsDescendantOf(arg1.CharacterState.Character)
		end
	end
	return CanCollide
end
local function _(arg1, arg2, arg3) -- Line 240, Named "UpdatePendingTouch"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var15
	if var15 then
		var15 = not arg2:HasTag(module_upvr_2.Tags.HumanoidIgnoreTag)
		if var15 then
			var15 = not arg2:IsDescendantOf(arg1.CharacterState.Character)
		end
	end
	if not var15 then
	else
		if arg3 then
			var15 = 1
		else
			var15 = -1
		end
		arg1._PendingTouches[arg2] = (arg1._PendingTouches[arg2] or 0) + var15
	end
end
local var16_upvw
local module_upvr_4 = require(Modules:WaitForChild("Raycast"))
function module_upvr.RollCharacterCreate(arg1) -- Line 264
	--[[ Upvalues[7]:
		[1]: tbl_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: module_upvr_6 (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
		[5]: module_upvr_4 (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr_2 (readonly)
	]]
	if tbl_upvr.RollCharacter_ByCharacterState[arg1] then
		return tbl_upvr.RollCharacter_ByCharacterState[arg1]
	end
	local Attachment_upvr = Instance.new("Attachment")
	Attachment_upvr.Name = "RollAttachment"
	local VectorForce = Instance.new("VectorForce")
	VectorForce.ApplyAtCenterOfMass = true
	VectorForce.Attachment0 = Attachment_upvr
	VectorForce.Force = Vector3.new(0, 0, 0)
	VectorForce.RelativeTo = Enum.ActuatorRelativeTo.World
	VectorForce.Parent = Attachment_upvr
	if not var16_upvw then
		var16_upvw = module_upvr_6.I("Folder", {
			Name = "RaycastFilterWorldModels";
			Parent = ReplicatedStorage_upvr;
		})
	end
	local module_upvr_5 = {
		_Connections = {};
		_ExpiringTouches = {};
		_PendingTouches = {};
		_RaycastFilter = {
			WorldModel = Instance.new("WorldModel", var16_upvw);
			Clones_ByPart = {};
			Params = module_upvr_4.ParamsClone(module_upvr_4.Params.WorldOnly);
		};
		_TouchConnections = {};
		_TouchingParts = {};
	}
	module_upvr_5.CharacterState = arg1
	module_upvr_5.BrakingEnabled = false
	module_upvr_5.DragEnabled = true
	module_upvr_5.Enabled = true
	module_upvr_5.EnhancedMobility = false
	module_upvr_5.JumpEnabled = true
	module_upvr_5.Grounded = false
	module_upvr_5.GroundNormal = Vector3.new(0, 1, 0)
	module_upvr_5.JumpDirectionAverage = Vector3.new(0, 1, 0)
	module_upvr_5.JumpHeightAverage = 0
	module_upvr_5.Jumping = false
	module_upvr_5.LastGroundedAt = 0
	module_upvr_5.LastLocalVelocity = Vector3.new(0, 0, 0)
	module_upvr_5.LastLookVector = Vector3.new(-0, -0, -1)
	module_upvr_5.Radius = module_upvr_3.BallRadius
	module_upvr_5.Attachment = Attachment_upvr
	module_upvr_5.VectorForce = VectorForce
	module_upvr_5.MotionDirection = Vector3.new(0, 0, 0)
	module_upvr_5.UprightVector = Vector3.new(0, 1, 0)
	local function AddPendingPart_upvr(arg1_2) -- Line 333, Named "AddPendingPart"
		--[[ Upvalues[2]:
			[1]: module_upvr_5 (readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		local var25 = module_upvr_5
		local CanCollide_3 = arg1_2.CanCollide
		if CanCollide_3 then
			CanCollide_3 = not arg1_2:HasTag(module_upvr_2.Tags.HumanoidIgnoreTag)
			if CanCollide_3 then
				CanCollide_3 = not arg1_2:IsDescendantOf(var25.CharacterState.Character)
			end
		end
		if not CanCollide_3 then
		else
			var25._PendingTouches[arg1_2] = (var25._PendingTouches[arg1_2] or 0) + 1
		end
	end
	local function RemovePendingPart_upvr(arg1_3) -- Line 337, Named "RemovePendingPart"
		--[[ Upvalues[2]:
			[1]: module_upvr_5 (readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		local var27 = module_upvr_5
		local CanCollide_2 = arg1_3.CanCollide
		if CanCollide_2 then
			CanCollide_2 = not arg1_3:HasTag(module_upvr_2.Tags.HumanoidIgnoreTag)
			if CanCollide_2 then
				CanCollide_2 = not arg1_3:IsDescendantOf(var27.CharacterState.Character)
			end
		end
		if not CanCollide_2 then
		else
			var27._PendingTouches[arg1_3] = (var27._PendingTouches[arg1_3] or 0) + -1
		end
	end
	local function UpdateRoot(arg1_4) -- Line 341
		--[[ Upvalues[4]:
			[1]: module_upvr_5 (readonly)
			[2]: AddPendingPart_upvr (readonly)
			[3]: RemovePendingPart_upvr (readonly)
			[4]: Attachment_upvr (readonly)
		]]
		if not arg1_4 then
		else
			table.clear(module_upvr_5._PendingTouches)
			table.clear(module_upvr_5._TouchingParts)
			for _, v_3 in module_upvr_5._TouchConnections do
				v_3:Disconnect()
			end
			table.clear(module_upvr_5._Connections)
			module_upvr_5._TouchConnections[#module_upvr_5._TouchConnections + 1] = arg1_4.Touched:Connect(AddPendingPart_upvr)
			module_upvr_5._TouchConnections[#module_upvr_5._TouchConnections + 1] = arg1_4.TouchEnded:Connect(RemovePendingPart_upvr)
			Attachment_upvr.Parent = arg1_4
		end
	end
	UpdateRoot(arg1.Root)
	module_upvr_5._Connections[#module_upvr_5._Connections + 1] = arg1.Signals.RootChanged:Connect(UpdateRoot)
	tbl_upvr.RollCharacter_ByCharacterState[arg1] = module_upvr_5
	return module_upvr_5
end
function module_upvr.RollCharacterDestroy(arg1) -- Line 373
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr.RollCharacter_ByCharacterState[arg1.CharacterState] = nil
	for _, v in arg1._Connections do
		v:Disconnect()
	end
	for _, v_2 in arg1._TouchConnections do
		v_2:Disconnect()
	end
	table.clear(arg1._PendingTouches)
	table.clear(arg1._TouchingParts)
	arg1._RaycastFilter.WorldModel:Destroy()
	table.clear(arg1._RaycastFilter.Clones_ByPart)
	arg1.Attachment:Destroy()
end
function module_upvr.CharacterRemoving(arg1) -- Line 399
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var35 = tbl_upvr.RollCharacter_ByCharacterState[arg1]
	if var35 then
		module_upvr.RollCharacterDestroy(var35)
	end
end
local Epsilon_upvr = module_upvr_6.Epsilon
local NumberSequence_new_result1_upvw = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(0.25, 1), NumberSequenceKeypoint.new(0.5, 1.5), NumberSequenceKeypoint.new(0.75, 1), NumberSequenceKeypoint.new(1, 0)})
local NumberSequence_new_result1_upvw_2 = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)})
local Debris_upvr = game:GetService("Debris")
function module_upvr.PreSimulation(arg1, arg2) -- Line 414
	--[[ Upvalues[10]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: DotTolerance_upvr (readonly)
		[5]: Epsilon_upvr (readonly)
		[6]: module_upvr_6 (readonly)
		[7]: NumberSequence_new_result1_upvw (read and write)
		[8]: NumberSequence_new_result1_upvw_2 (read and write)
		[9]: Debris_upvr (readonly)
		[10]: var11_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("CFS_RollHumanoid")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [999] 718. Error Block 131 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [999] 718. Error Block 131 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [999.8]
	-- KONSTANTERROR: [10] 9. Error Block 2 end (CF ANALYSIS FAILED)
end
return module_upvr