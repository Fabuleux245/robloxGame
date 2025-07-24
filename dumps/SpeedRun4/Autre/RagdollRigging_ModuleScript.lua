-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:20
-- Luau version 6, Types version 3
-- Time taken: 0.016008 seconds

local RunService_upvr = game:GetService("RunService")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("AvatarJointUpgradeFeature")
local module_2 = {}
local tbl_14 = {
	UpperAngle = 10;
	TwistLowerAngle = -10;
	TwistUpperAngle = 10;
	StrengthTorque = 400;
	ReferenceMass = 0.43671694397926;
}
local tbl_8 = {
	UpperAngle = 20;
	TwistLowerAngle = 5;
	TwistUpperAngle = 120;
	StrengthTorque = 1200;
	ReferenceMass = 0.70196455717087;
}
local tbl_7 = {
	UpperAngle = 30;
	TwistLowerAngle = -10;
	TwistUpperAngle = 10;
	StrengthTorque = 400;
	ReferenceMass = 0.69132566452026;
}
local tbl_9 = {
	UpperAngle = 5;
	TwistLowerAngle = -120;
	TwistUpperAngle = -5;
	StrengthTorque = 2000;
	ReferenceMass = 0.65389388799667;
}
local tbl_6 = {
	UpperAngle = 110;
	TwistLowerAngle = -85;
	TwistUpperAngle = 85;
	FrictionTorque = 600;
	StrengthTorque = 4000;
	ReferenceMass = 0.90918225049973;
}
local tbl_4 = {
	UpperAngle = 40;
	TwistLowerAngle = -5;
	TwistUpperAngle = 80;
	FrictionTorque = 600;
	StrengthTorque = 4000;
	ReferenceMass = 1.9175016880035;
}
local tbl = {
	UpperAngle = 110;
	TwistLowerAngle = -85;
	TwistUpperAngle = 85;
}
local tbl_5 = {
	UpperAngle = 40;
	TwistLowerAngle = -5;
	TwistUpperAngle = 80;
}
local zero_vector3 = Vector3.new()
local tbl_10_upvr = {{"UpperTorso", "RightShoulderRagdollAttachment", CFrame.fromMatrix(zero_vector3, Vector3.new(1, 0, 0), Vector3.new(0, 1, 0)), "RightShoulderRigAttachment"}, {"RightUpperArm", "RightShoulderRagdollAttachment", CFrame.fromMatrix(zero_vector3, Vector3.new(0, -1, 0), Vector3.new(1, 0, 0)), "RightShoulderRigAttachment"}, {"UpperTorso", "LeftShoulderRagdollAttachment", CFrame.fromMatrix(zero_vector3, Vector3.new(-1, 0, 0), Vector3.new(0, 1, 0)), "LeftShoulderRigAttachment"}, {"LeftUpperArm", "LeftShoulderRagdollAttachment", CFrame.fromMatrix(zero_vector3, Vector3.new(0, -1, 0), Vector3.new(-1, 0, 0)), "LeftShoulderRigAttachment"}}
local tbl_3_upvr = {{"UpperTorso", "Head", "NeckRigAttachment", {
	UpperAngle = 45;
	TwistLowerAngle = -40;
	TwistUpperAngle = 40;
	FrictionTorque = 400;
	StrengthTorque = 400;
	ReferenceMass = 1.0249234437943;
}}, {"LowerTorso", "UpperTorso", "WaistRigAttachment", {
	UpperAngle = 20;
	TwistLowerAngle = -40;
	TwistUpperAngle = 20;
	FrictionTorque = 750;
	StrengthTorque = 5000;
	ReferenceMass = 2.861558675766;
}}, {"UpperTorso", "LeftUpperArm", "LeftShoulderRagdollAttachment", tbl_6}, {"LeftUpperArm", "LeftLowerArm", "LeftElbowRigAttachment", tbl_8}, {"LeftLowerArm", "LeftHand", "LeftWristRigAttachment", tbl_7}, {"UpperTorso", "RightUpperArm", "RightShoulderRagdollAttachment", tbl_6}, {"RightUpperArm", "RightLowerArm", "RightElbowRigAttachment", tbl_8}, {"RightLowerArm", "RightHand", "RightWristRigAttachment", tbl_7}, {"LowerTorso", "LeftUpperLeg", "LeftHipRigAttachment", tbl_4}, {"LeftUpperLeg", "LeftLowerLeg", "LeftKneeRigAttachment", tbl_9}, {"LeftLowerLeg", "LeftFoot", "LeftAnkleRigAttachment", tbl_14}, {"LowerTorso", "RightUpperLeg", "RightHipRigAttachment", tbl_4}, {"RightUpperLeg", "RightLowerLeg", "RightKneeRigAttachment", tbl_9}, {"RightLowerLeg", "RightFoot", "RightAnkleRigAttachment", tbl_14}}
local tbl_upvr_2 = {{"LowerTorso", "LeftUpperArm"}, {"LeftUpperArm", "LeftHand"}, {"LowerTorso", "RightUpperArm"}, {"RightUpperArm", "RightHand"}, {"LeftUpperLeg", "RightUpperLeg"}, {"UpperTorso", "RightUpperLeg"}, {"RightUpperLeg", "RightFoot"}, {"UpperTorso", "LeftUpperLeg"}, {"LeftUpperLeg", "LeftFoot"}, {"UpperTorso", "LeftLowerLeg"}, {"UpperTorso", "RightLowerLeg"}, {"LowerTorso", "LeftLowerLeg"}, {"LowerTorso", "RightLowerLeg"}, {"UpperTorso", "LeftLowerArm"}, {"UpperTorso", "RightLowerArm"}, {"Head", "LeftUpperArm"}, {"Head", "RightUpperArm"}}
local tbl_upvr = {{"Waist", "UpperTorso"}, {"Neck", "Head"}, {"LeftShoulder", "LeftUpperArm"}, {"LeftElbow", "LeftLowerArm"}, {"LeftWrist", "LeftHand"}, {"RightShoulder", "RightUpperArm"}, {"RightElbow", "RightLowerArm"}, {"RightWrist", "RightHand"}, {"LeftHip", "LeftUpperLeg"}, {"LeftKnee", "LeftLowerLeg"}, {"LeftAnkle", "LeftFoot"}, {"RightHip", "RightUpperLeg"}, {"RightKnee", "RightLowerLeg"}, {"RightAnkle", "RightFoot"}}
local tbl_13_upvr = {{"Head", "NeckAttachment", CFrame.new(0, -0.5, 0)}, {"Torso", "RightShoulderRagdollAttachment", CFrame.fromMatrix(Vector3.new(1, 0.5, 0), Vector3.new(1, 0, 0), Vector3.new(0, 1, 0))}, {"Right Arm", "RightShoulderRagdollAttachment", CFrame.fromMatrix(Vector3.new(-0.5, 0.5, 0), Vector3.new(0, -1, 0), Vector3.new(1, 0, 0))}, {"Torso", "LeftShoulderRagdollAttachment", CFrame.fromMatrix(Vector3.new(-1, 0.5, 0), Vector3.new(-1, 0, 0), Vector3.new(0, 1, 0))}, {"Left Arm", "LeftShoulderRagdollAttachment", CFrame.fromMatrix(Vector3.new(0.5, 0.5, 0), Vector3.new(0, -1, 0), Vector3.new(-1, 0, 0))}, {"Torso", "RightHipAttachment", CFrame.new(0.5, -1, 0)}, {"Right Leg", "RightHipAttachment", CFrame.new(0, 1, 0)}, {"Torso", "LeftHipAttachment", CFrame.new(-0.5, -1, 0)}, {"Left Leg", "LeftHipAttachment", CFrame.new(0, 1, 0)}}
local tbl_2_upvr = {{"Torso", "Head", "NeckAttachment", {
	UpperAngle = 30;
	TwistLowerAngle = -40;
	TwistUpperAngle = 40;
}}, {"Torso", "Left Leg", "LeftHipAttachment", tbl_5}, {"Torso", "Right Leg", "RightHipAttachment", tbl_5}, {"Torso", "Left Arm", "LeftShoulderRagdollAttachment", tbl}, {"Torso", "Right Arm", "RightShoulderRagdollAttachment", tbl}}
local tbl_16_upvr = {{"Left Leg", "Right Leg"}, {"Head", "Right Arm"}, {"Head", "Left Arm"}}
local tbl_12_upvr = {{"Neck", "Torso"}, {"Left Shoulder", "Torso"}, {"Right Shoulder", "Torso"}, {"Left Hip", "Torso"}, {"Right Hip", "Torso"}}
local function indexParts_upvr(arg1) -- Line 238, Named "indexParts"
	local module = {}
	for _, v in ipairs(arg1:GetChildren()) do
		if v:IsA("BasePart") then
			local name = v.name
			if not module[name] then
				module[name] = v
			end
		end
	end
	return module
end
local function createRigJoints_upvr(arg1, arg2, arg3) -- Line 252, Named "createRigJoints"
	if arg3 then
		local AnimationConstraint = Instance.new("AnimationConstraint")
		AnimationConstraint.Name = "Root"
		AnimationConstraint.Attachment0 = arg1.HumanoidRootPart.RootRigAttachment
		AnimationConstraint.Attachment1 = arg1.LowerTorso.RootRigAttachment
		AnimationConstraint.IsKinematic = true
		arg1.LowerTorso.Root:Destroy()
		AnimationConstraint.Parent = arg1.LowerTorso
	end
	for _, v_2 in ipairs(arg2) do
		local unpack_result1_6, unpack_result2, unpack_result3, unpack_result4_2 = unpack(v_2)
		local var143 = arg1[unpack_result1_6]
		local var144 = arg1[unpack_result2]
		if var143 and var144 then
			local SOME_8 = var143:FindFirstChild(unpack_result3)
			local SOME_7 = var144:FindFirstChild(unpack_result3)
			if SOME_8 and SOME_7 and SOME_8:IsA("Attachment") then
				local var147
				if SOME_7:IsA("Attachment") then
					local RagdollBallSocket_2 = var144:FindFirstChild("RagdollBallSocket")
					if not RagdollBallSocket_2 then
						RagdollBallSocket_2 = Instance.new("BallSocketConstraint")
						RagdollBallSocket_2.Name = "RagdollBallSocket"
					end
					RagdollBallSocket_2.Attachment0 = SOME_8
					RagdollBallSocket_2.Attachment1 = SOME_7
					RagdollBallSocket_2.LimitsEnabled = true
					RagdollBallSocket_2.UpperAngle = unpack_result4_2.UpperAngle
					RagdollBallSocket_2.TwistLimitsEnabled = true
					RagdollBallSocket_2.TwistLowerAngle = unpack_result4_2.TwistLowerAngle
					RagdollBallSocket_2.TwistUpperAngle = unpack_result4_2.TwistUpperAngle
					var147 = workspace
					local var149 = var147.Gravity / 196.2
					if arg3 then
						var147 = var149
						var149 = math.max(var147, 0.2)
					end
					local ReferenceMass = unpack_result4_2.ReferenceMass
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var147 = var144:GetMass() / ReferenceMass
						return var147
					end
					if not ReferenceMass or not INLINED_2() then
						var147 = 1
					end
					RagdollBallSocket_2.MaxFrictionTorque = (unpack_result4_2.FrictionTorque or 500) * var147 * var149
					if arg3 then
						RagdollBallSocket_2.MaxFrictionTorque /= 100
					end
					RagdollBallSocket_2.Parent = var144
					if arg3 then
						local class_Motor6D = var144:FindFirstChildWhichIsA("Motor6D")
						assert(class_Motor6D)
						local AnimationConstraint_2 = Instance.new("AnimationConstraint")
						AnimationConstraint_2.Name = class_Motor6D.Name
						AnimationConstraint_2.Attachment0 = class_Motor6D.Part0:FindFirstChild(class_Motor6D.Name.."RigAttachment")
						AnimationConstraint_2.Attachment1 = class_Motor6D.Part1:FindFirstChild(class_Motor6D.Name.."RigAttachment")
						AnimationConstraint_2.IsKinematic = true
						AnimationConstraint_2.MaxTorque = (unpack_result4_2.StrengthTorque or 500) * var147 * var149
						AnimationConstraint_2.MaxForce = 0
						AnimationConstraint_2.Parent = class_Motor6D.parent
						class_Motor6D:Destroy()
					end
				end
			end
		end
	end
end
local function createAdditionalAttachments_upvr(arg1, arg2) -- Line 320, Named "createAdditionalAttachments"
	for _, v_3 in ipairs(arg2) do
		local unpack_result1_7, unpack_result2_7, unpack_result3_5, unpack_result4_4 = unpack(v_3)
		local var184 = arg1[unpack_result1_7]
		if var184 then
			local SOME_9 = var184:FindFirstChild(unpack_result2_7)
			if not SOME_9 or SOME_9:IsA("Attachment") then
				if unpack_result4_4 then
					local SOME_3 = var184:FindFirstChild(unpack_result4_4)
					if SOME_3 and SOME_3:IsA("Attachment") then
						unpack_result3_5 = SOME_3.CFrame * unpack_result3_5
					end
				end
				if not SOME_9 then
					local Attachment = Instance.new("Attachment")
					Attachment.Name = unpack_result2_7
					Attachment.CFrame = unpack_result3_5
					Attachment.Parent = var184
				else
					Attachment.CFrame = unpack_result3_5
				end
			end
		end
	end
end
local function createNoCollides_upvr(arg1, arg2) -- Line 348, Named "createNoCollides"
	local tbl_15 = {}
	for _, v_4 in ipairs(arg2) do
		local unpack_result1_5, unpack_result2_4 = unpack(v_4)
		local var214 = arg1[unpack_result1_5]
		local var215 = arg1[unpack_result2_4]
		if var214 and var215 then
			local var216 = tbl_15[var215]
			if not var216 then
				var216 = {}
				tbl_15[var215] = var216
			end
			var216[var214] = true
		end
	end
	local tbl_11 = {}
	for i_5, v_5 in pairs(tbl_15) do
		for _, v_6 in ipairs(i_5:GetChildren()) do
			if v_6:IsA("NoCollisionConstraint") and v_6.Name == "RagdollNoCollision" then
				local Part0 = v_6.Part0
				if v_6.Part1 == i_5 and v_5[Part0] then
					v_5[Part0] = nil
				else
					table.insert({}, v_6)
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_11[i_5] = {}
	end
	for i_7, v_7 in pairs(tbl_15) do
		for i_8, _ in pairs(v_7) do
			local popped = table.remove(tbl_11[i_7])
			if not popped then
				popped = Instance.new("NoCollisionConstraint")
			end
			popped.Name = "RagdollNoCollision"
			popped.Part0 = i_8
			popped.Part1 = i_7
			popped.Parent = i_7
		end
	end
end
local function _(arg1, arg2) -- Line 407, Named "isAttachmetInPart"
	if not arg1 or arg1.Parent ~= arg2 then
	end
	return false
end
local function _(arg1, arg2, arg3, arg4) -- Line 411, Named "checkValidAttachment"
	if not arg3 or arg3.Parent ~= arg1 then
		local var232
	end
	if var232 then
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var232 = true
			return arg4.Parent ~= arg2
		end
		if not arg4 or INLINED_4() then
			var232 = false
		end
		if var232 then
			var232 = true
			return var232
		end
	end
	if not arg3 or arg3.Parent ~= arg2 then
		local var233
	end
	if var233 then
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var233 = true
			return arg4.Parent ~= arg1
		end
		if not arg4 or INLINED_5() then
			var233 = false
		end
		if var233 then
			var233 = true
			return var233
		end
	end
	return false
end
local function hasValidConstraint_upvr(arg1, arg2) -- Line 423, Named "hasValidConstraint"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3_2 = ipairs(arg2:GetChildren())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 44. Error Block 24 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 44. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [56.7]
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
local function hasRagdollJoint_upvr(arg1) -- Line 438, Named "hasRagdollJoint"
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: hasValidConstraint_upvr (readonly)
	]]
	if game_GetEngineFeature_result1_upvr and not arg1:IsA("Motor6D") and not arg1:IsA("AnimationConstraint") then
		return false
	end
	local var237
	local var238
	if arg1:IsA("Motor6D") then
		var237 = arg1.Part0
		var238 = arg1.Part1
	elseif game_GetEngineFeature_result1_upvr and arg1:IsA("AnimationConstraint") then
		local Attachment0 = arg1.Attachment0
		local Attachment1 = arg1.Attachment1
		local var241 = Attachment0
		if var241 then
			var241 = Attachment0.Parent
		end
		var237 = var241
		var241 = Attachment1
		local var242 = var241
		if var242 then
			var242 = Attachment1.Parent
		end
		var238 = var242
	end
	if not var237 or not var238 then
		return false
	end
	if hasValidConstraint_upvr(var237, var238) then
		return true
	end
	if hasValidConstraint_upvr(var238, var237) then
		return true
	end
	return false
end
local function disableMotorSet_upvr(arg1, arg2) -- Line 470, Named "disableMotorSet"
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: hasRagdollJoint_upvr (readonly)
	]]
	for _, v_9 in ipairs(arg2) do
		local SOME_5 = arg1:FindFirstChild(v_9[2])
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			local SOME_2 = SOME_5:FindFirstChild(v_9[1])
			return SOME_2
		end
		if SOME_5 and INLINED_6() and (game_GetEngineFeature_result1_upvr or SOME_2:IsA("Motor6D")) then
			if hasRagdollJoint_upvr(SOME_2) then
				table.insert({}, SOME_2)
				SOME_2.Enabled = false
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function module_2.createRagdollJoints(arg1, arg2, arg3) -- Line 486
	--[[ Upvalues[10]:
		[1]: indexParts_upvr (readonly)
		[2]: createAdditionalAttachments_upvr (readonly)
		[3]: tbl_13_upvr (readonly)
		[4]: createRigJoints_upvr (readonly)
		[5]: tbl_2_upvr (readonly)
		[6]: createNoCollides_upvr (readonly)
		[7]: tbl_16_upvr (readonly)
		[8]: tbl_10_upvr (readonly)
		[9]: tbl_3_upvr (readonly)
		[10]: tbl_upvr_2 (readonly)
	]]
	local indexParts_result1 = indexParts_upvr(arg1)
	if arg2 == Enum.HumanoidRigType.R6 then
		createAdditionalAttachments_upvr(indexParts_result1, tbl_13_upvr)
		createRigJoints_upvr(indexParts_result1, tbl_2_upvr, false)
		createNoCollides_upvr(indexParts_result1, tbl_16_upvr)
	else
		if arg2 == Enum.HumanoidRigType.R15 then
			createAdditionalAttachments_upvr(indexParts_result1, tbl_10_upvr)
			createRigJoints_upvr(indexParts_result1, tbl_3_upvr, arg3)
			createNoCollides_upvr(indexParts_result1, tbl_upvr_2)
			return
		end
		error("unknown rig type", 2)
	end
end
function module_2.disableMotors(arg1, arg2) -- Line 501
	--[[ Upvalues[3]:
		[1]: disableMotorSet_upvr (readonly)
		[2]: tbl_12_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var251
	if arg2 == var251 then
		var251 = disableMotorSet_upvr(arg1, tbl_12_upvr)
	else
		var251 = Enum.HumanoidRigType.R15
		if arg2 == var251 then
			var251 = disableMotorSet_upvr(arg1, tbl_upvr)
		else
			var251 = error
			var251("unknown rig type", 2)
		end
	end
	var251 = arg1.PrimaryPart
	if not var251 then
		var251 = arg1:FindFirstChild("HumanoidRootPart")
	end
	if var251 and var251:IsA("BasePart") then
		var251.CanCollide = false
	end
	local Head = arg1:FindFirstChild("Head")
	if Head and Head:IsA("BasePart") then
		Head.CanCollide = true
	end
	return var251
end
function module_2.disableParticleEmittersAndFadeOut(arg1, arg2) -- Line 530
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	if RunService_upvr:IsServer() then
		error("disableParticleEmittersAndFadeOut should not be called on the server.", 2)
	end
	local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(arg1:GetDescendants())
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [21.8]
	if not nil:IsA("BasePart") then
		if nil:IsA("Decal") then
			-- KONSTANTERROR: [30] 24. Error Block 25 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[nil] = nil.Transparency
			-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
		elseif nil:IsA("ParticleEmitter") then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.Enabled = false
		end
		-- KONSTANTWARNING: GOTO [20] #16
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 25 end (CF ANALYSIS FAILED)
end
function module_2.easeNongraphicJointFriction(arg1, arg2) -- Line 558
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	for i_10, v_10 in pairs(arg1:GetDescendants()) do
		if v_10:IsA("BallSocketConstraint") and v_10.Name == "RagdollBallSocket" then
			v_10.MaxFrictionTorque *= 100
			local MaxFrictionTorque = v_10.MaxFrictionTorque
			local Parent = v_10.Parent
			local Name_2 = Parent.Name
			if Name_2 == "UpperTorso" or Name_2 == "Head" then
				Parent = 0.5
			else
				Parent = 0.05
			end
			;({})[v_10] = {v_10, MaxFrictionTorque, MaxFrictionTorque * Parent}
		end
	end
	local const_number_2 = 0
	while const_number_2 < arg2 do
		local _, any_Wait_result2_2 = RunService_upvr.Stepped:Wait()
		v_10 = (const_number_2 + any_Wait_result2_2) / arg2
		i_10 = math.min(v_10, 1)
		v_10 = pairs
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		v_10 = v_10({})
		for _, v_11 in v_10({}) do
			local unpack_result1_4, unpack_result2_2, unpack_result3_2 = unpack(v_11)
			unpack_result1_4.MaxFrictionTorque = (1 - i_10) * unpack_result2_2 + i_10 * unpack_result3_2
		end
	end
end
function module_2.easeJointFriction_OLD(arg1, arg2) -- Line 587
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	for i_12, v_12 in pairs(arg1:GetDescendants()) do
		if v_12:IsA("BallSocketConstraint") and v_12.Name == "RagdollBallSocket" then
			local MaxFrictionTorque_2 = v_12.MaxFrictionTorque
			local Parent_2 = v_12.Parent
			local Name = Parent_2.Name
			if Name == "UpperTorso" or Name == "Head" then
				Parent_2 = 0.5
			else
				Parent_2 = 0.05
			end
			;({})[v_12] = {v_12, MaxFrictionTorque_2, MaxFrictionTorque_2 * Parent_2}
		end
	end
	local const_number = 0
	while const_number < arg2 do
		local _, any_Wait_result2 = RunService_upvr.Stepped:Wait()
		v_12 = (const_number + any_Wait_result2) / arg2
		i_12 = math.min(v_12, 1)
		v_12 = pairs
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		v_12 = v_12({})
		for _, v_13 in v_12({}) do
			local unpack_result1_3, unpack_result2_5, unpack_result3_3 = unpack(v_13)
			unpack_result1_3.MaxFrictionTorque = (1 - i_12) * unpack_result2_5 + i_12 * unpack_result3_3
		end
	end
end
return module_2