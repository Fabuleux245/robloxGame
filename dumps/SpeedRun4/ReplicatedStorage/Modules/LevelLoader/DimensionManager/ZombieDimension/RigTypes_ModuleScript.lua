-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:01
-- Luau version 6, Types version 3
-- Time taken: 0.017273 seconds

local module_upvr = {}
local tbl_15_upvr = {
	UpperAngle = 60;
	TwistLowerAngle = -60;
	TwistUpperAngle = 60;
}
local tbl_24_upvr = {
	UpperAngle = 20;
	TwistLowerAngle = -30;
	TwistUpperAngle = 60;
}
local tbl_20_upvr = {
	UpperAngle = 10;
	TwistLowerAngle = -10;
	TwistUpperAngle = 10;
}
local tbl_31_upvr = {
	UpperAngle = 30;
	TwistLowerAngle = 0;
	TwistUpperAngle = 120;
}
local tbl_41_upvr = {
	UpperAngle = 30;
	TwistLowerAngle = -120;
	TwistUpperAngle = 0;
}
local tbl_18_upvr = {
	UpperAngle = 60;
	TwistLowerAngle = -60;
	TwistUpperAngle = 175;
}
local tbl_17_upvr = {
	UpperAngle = 40;
	TwistLowerAngle = -5;
	TwistUpperAngle = 150;
}
local tbl_12_upvr = {
	UpperAngle = 30;
	TwistLowerAngle = -60;
	TwistUpperAngle = 60;
}
local tbl_upvr = {
	UpperAngle = 90;
	TwistLowerAngle = -30;
	TwistUpperAngle = 175;
}
local tbl_36_upvr = {
	UpperAngle = 60;
	TwistLowerAngle = -5;
	TwistUpperAngle = 120;
}
local function createJointData_upvr(arg1, arg2, arg3) -- Line 63, Named "createJointData"
	assert(arg1)
	assert(arg2)
	local var12 = arg3
	assert(var12)
	if 0 > arg3.UpperAngle then
		var12 = false
	else
		var12 = true
	end
	assert(var12)
	if arg3.TwistLowerAngle > arg3.TwistUpperAngle then
		var12 = false
	else
		var12 = true
	end
	assert(var12)
	local module = {}
	module.attachment0 = arg1
	module.attachment1 = arg2
	module.limits = arg3
	return module
end
local function _(arg1) -- Line 77, Named "find"
	--[[ Upvalues[1]:
		[1]: createJointData_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3) -- Line 78
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: createJointData_upvr (copied, readonly)
		]]
		local SOME_12 = arg1:FindFirstChild(arg1_2[1])
		local SOME_37 = arg1:FindFirstChild(arg2[1])
		if SOME_12 and SOME_37 then
			local SOME_66 = SOME_12:FindFirstChild(arg1_2[2])
			local SOME_8 = SOME_37:FindFirstChild(arg2[2])
			if SOME_66 and SOME_8 and SOME_66:IsA("Attachment") and SOME_8:IsA("Attachment") then
				return createJointData_upvr(SOME_66, SOME_8, arg3)
			end
		end
	end
end
function module_upvr.getNoCollisions(arg1, arg2) -- Line 91
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg2 == Enum.HumanoidRigType.R6 then
		return module_upvr.getR6NoCollisions(arg1)
	end
	if arg2 == Enum.HumanoidRigType.R15 then
		return module_upvr.getR15NoCollisions(arg1)
	end
	return {}
end
function module_upvr.getAttachments(arg1, arg2) -- Line 102
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg2 == Enum.HumanoidRigType.R6 then
		return module_upvr.getR6Attachments(arg1)
	end
	if arg2 == Enum.HumanoidRigType.R15 then
		return module_upvr.getR15Attachments(arg1)
	end
	return {}
end
function module_upvr.getR6Attachments(arg1) -- Line 112
	--[[ Upvalues[4]:
		[1]: createJointData_upvr (readonly)
		[2]: tbl_12_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_36_upvr (readonly)
	]]
	local Attachment = Instance.new("Attachment")
	Attachment.Name = "RagdollRightLegAttachment"
	Attachment.Position = Vector3.new(0, 1, 0)
	Attachment.Parent = arg1:FindFirstChild("Right Leg")
	local Attachment_6 = Instance.new("Attachment")
	Attachment_6.Name = "RagdollLeftLegAttachment"
	Attachment_6.Position = Vector3.new(0, 1, 0)
	Attachment_6.Parent = arg1:FindFirstChild("Left Leg")
	local Attachment_4 = Instance.new("Attachment")
	Attachment_4.Name = "RagdollTorsoLeftAttachment"
	Attachment_4.Position = Vector3.new(-0.5, -1, 0)
	Attachment_4.Parent = arg1:FindFirstChild("Torso")
	local Attachment_3 = Instance.new("Attachment")
	Attachment_3.Name = "RagdollTorsoRightAttachment"
	Attachment_3.Position = Vector3.new(0.5, -1, 0)
	Attachment_3.Parent = arg1:FindFirstChild("Torso")
	local Attachment_7 = Instance.new("Attachment")
	Attachment_7.Name = "RagdollHeadAttachment"
	Attachment_7.Position = Vector3.new(0, -0.5, 0)
	Attachment_7.Parent = arg1:FindFirstChild("Head")
	local Attachment_5 = Instance.new("Attachment")
	Attachment_5.Name = "RagdollLeftArmAttachment"
	Attachment_5.Position = Vector3.new(0.5, 1, 0)
	Attachment_5.Parent = arg1:FindFirstChild("Left Arm")
	local Attachment_2 = Instance.new("Attachment")
	Attachment_2.Name = "RagdollRightArmAttachment"
	Attachment_2.Position = Vector3.new(-0.5, 1, 0)
	Attachment_2.Parent = arg1:FindFirstChild("Right Arm")
	local function var30(arg1_3, arg2, arg3) -- Line 78
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: createJointData_upvr (copied, readonly)
		]]
		local SOME_59 = arg1:FindFirstChild(arg1_3[1])
		local SOME_94 = arg1:FindFirstChild(arg2[1])
		if SOME_59 and SOME_94 then
			local SOME_20 = SOME_59:FindFirstChild(arg1_3[2])
			local SOME_53 = SOME_94:FindFirstChild(arg2[2])
			if SOME_20 and SOME_53 and SOME_20:IsA("Attachment") and SOME_53:IsA("Attachment") then
				return createJointData_upvr(SOME_20, SOME_53, arg3)
			end
		end
	end
	return {
		Head = var30({"Torso", "NeckAttachment"}, {"Head", "RagdollHeadAttachment"}, tbl_12_upvr);
		["Left Arm"] = var30({"Torso", "LeftCollarAttachment"}, {"Left Arm", "RagdollLeftArmAttachment"}, tbl_upvr);
		["Right Arm"] = var30({"Torso", "RightCollarAttachment"}, {"Right Arm", "RagdollRightArmAttachment"}, tbl_upvr);
		["Left Leg"] = createJointData_upvr(Attachment_4, Attachment_6, tbl_36_upvr);
		["Right Leg"] = createJointData_upvr(Attachment_3, Attachment, tbl_36_upvr);
	}
end
function module_upvr.getR15Attachments(arg1) -- Line 168
	--[[ Upvalues[8]:
		[1]: createJointData_upvr (readonly)
		[2]: tbl_15_upvr (readonly)
		[3]: tbl_24_upvr (readonly)
		[4]: tbl_18_upvr (readonly)
		[5]: tbl_31_upvr (readonly)
		[6]: tbl_20_upvr (readonly)
		[7]: tbl_17_upvr (readonly)
		[8]: tbl_41_upvr (readonly)
	]]
	local function var42(arg1_4, arg2, arg3) -- Line 78
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: createJointData_upvr (copied, readonly)
		]]
		local SOME_92 = arg1:FindFirstChild(arg1_4[1])
		local SOME_75 = arg1:FindFirstChild(arg2[1])
		if SOME_92 and SOME_75 then
			local SOME_57 = SOME_92:FindFirstChild(arg1_4[2])
			local SOME_14 = SOME_75:FindFirstChild(arg2[2])
			if SOME_57 and SOME_14 and SOME_57:IsA("Attachment") and SOME_14:IsA("Attachment") then
				return createJointData_upvr(SOME_57, SOME_14, arg3)
			end
		end
	end
	return {
		Head = var42({"UpperTorso", "NeckRigAttachment"}, {"Head", "NeckRigAttachment"}, tbl_15_upvr);
		LowerTorso = var42({"UpperTorso", "WaistRigAttachment"}, {"LowerTorso", "RootRigAttachment"}, tbl_24_upvr);
		LeftUpperArm = var42({"UpperTorso", "LeftShoulderRigAttachment"}, {"LeftUpperArm", "LeftShoulderRigAttachment"}, tbl_18_upvr);
		LeftLowerArm = var42({"LeftUpperArm", "LeftElbowRigAttachment"}, {"LeftLowerArm", "LeftElbowRigAttachment"}, tbl_31_upvr);
		LeftHand = var42({"LeftLowerArm", "LeftWristRigAttachment"}, {"LeftHand", "LeftWristRigAttachment"}, tbl_20_upvr);
		RightUpperArm = var42({"UpperTorso", "RightShoulderRigAttachment"}, {"RightUpperArm", "RightShoulderRigAttachment"}, tbl_18_upvr);
		RightLowerArm = var42({"RightUpperArm", "RightElbowRigAttachment"}, {"RightLowerArm", "RightElbowRigAttachment"}, tbl_31_upvr);
		RightHand = var42({"RightLowerArm", "RightWristRigAttachment"}, {"RightHand", "RightWristRigAttachment"}, tbl_20_upvr);
		LeftUpperLeg = var42({"LowerTorso", "LeftHipRigAttachment"}, {"LeftUpperLeg", "LeftHipRigAttachment"}, tbl_17_upvr);
		LeftLowerLeg = var42({"LeftUpperLeg", "LeftKneeRigAttachment"}, {"LeftLowerLeg", "LeftKneeRigAttachment"}, tbl_41_upvr);
		LeftFoot = var42({"LeftLowerLeg", "LeftAnkleRigAttachment"}, {"LeftFoot", "LeftAnkleRigAttachment"}, tbl_20_upvr);
		RightUpperLeg = var42({"LowerTorso", "RightHipRigAttachment"}, {"RightUpperLeg", "RightHipRigAttachment"}, tbl_17_upvr);
		RightLowerLeg = var42({"RightUpperLeg", "RightKneeRigAttachment"}, {"RightLowerLeg", "RightKneeRigAttachment"}, tbl_41_upvr);
		RightFoot = var42({"RightLowerLeg", "RightAnkleRigAttachment"}, {"RightFoot", "RightAnkleRigAttachment"}, tbl_20_upvr);
	}
end
function module_upvr.getR6NoCollisions(arg1) -- Line 236
	local module_3_upvr = {}
	local function addPair(arg1_5) -- Line 239
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_3_upvr (readonly)
		]]
		local SOME_52 = arg1:FindFirstChild(arg1_5[1])
		local SOME_93 = arg1:FindFirstChild(arg1_5[2])
		if SOME_52 and SOME_93 then
			table.insert(module_3_upvr, {SOME_52, SOME_93})
		end
	end
	local tbl_39 = {"Head", "Torso"}
	local SOME_86 = arg1:FindFirstChild(tbl_39[1])
	local SOME_29 = arg1:FindFirstChild(tbl_39[2])
	if SOME_86 and SOME_29 then
		table.insert(module_3_upvr, {SOME_86, SOME_29})
	end
	local tbl_10 = {"Left Arm", "Torso"}
	local SOME_77 = arg1:FindFirstChild(tbl_10[1])
	local SOME_48 = arg1:FindFirstChild(tbl_10[2])
	if SOME_77 and SOME_48 then
		table.insert(module_3_upvr, {SOME_77, SOME_48})
	end
	local tbl_43 = {"Right Arm", "Torso"}
	local SOME_63 = arg1:FindFirstChild(tbl_43[1])
	local SOME_46 = arg1:FindFirstChild(tbl_43[2])
	if SOME_63 and SOME_46 then
		table.insert(module_3_upvr, {SOME_63, SOME_46})
	end
	local tbl_14 = {"Left Leg", "Torso"}
	local SOME_64 = arg1:FindFirstChild(tbl_14[1])
	local SOME_9 = arg1:FindFirstChild(tbl_14[2])
	if SOME_64 and SOME_9 then
		table.insert(module_3_upvr, {SOME_64, SOME_9})
	end
	local tbl_45 = {"Right Leg", "Torso"}
	local SOME_89 = arg1:FindFirstChild(tbl_45[1])
	local SOME = arg1:FindFirstChild(tbl_45[2])
	if SOME_89 and SOME then
		table.insert(module_3_upvr, {SOME_89, SOME})
	end
	local tbl = {"Left Leg", "Right Leg"}
	local SOME_13 = arg1:FindFirstChild(tbl[1])
	local SOME_87 = arg1:FindFirstChild(tbl[2])
	if SOME_13 and SOME_87 then
		table.insert(module_3_upvr, {SOME_13, SOME_87})
	end
	return module_3_upvr
end
function module_upvr.getR15NoCollisions(arg1) -- Line 260
	local module_2_upvr = {}
	local function _(arg1_6) -- Line 263, Named "addPair"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_2_upvr (readonly)
		]]
		local SOME_85 = arg1:FindFirstChild(arg1_6[1])
		local SOME_73 = arg1:FindFirstChild(arg1_6[2])
		if SOME_85 and SOME_73 then
			table.insert(module_2_upvr, {SOME_85, SOME_73})
		end
	end
	local tbl_44 = {"Head", "UpperTorso"}
	local SOME_78 = arg1:FindFirstChild(tbl_44[1])
	local SOME_28 = arg1:FindFirstChild(tbl_44[2])
	if SOME_78 and SOME_28 then
		table.insert(module_2_upvr, {SOME_78, SOME_28})
	end
	local tbl_23 = {"UpperTorso", "LowerTorso"}
	local SOME_43 = arg1:FindFirstChild(tbl_23[1])
	local SOME_34 = arg1:FindFirstChild(tbl_23[2])
	if SOME_43 and SOME_34 then
		table.insert(module_2_upvr, {SOME_43, SOME_34})
	end
	local tbl_7 = {"UpperTorso", "LeftUpperArm"}
	local SOME_82 = arg1:FindFirstChild(tbl_7[1])
	local SOME_80 = arg1:FindFirstChild(tbl_7[2])
	if SOME_82 and SOME_80 then
		table.insert(module_2_upvr, {SOME_82, SOME_80})
	end
	local tbl_42 = {"LowerTorso", "LeftUpperArm"}
	local SOME_91 = arg1:FindFirstChild(tbl_42[1])
	local SOME_76 = arg1:FindFirstChild(tbl_42[2])
	if SOME_91 and SOME_76 then
		table.insert(module_2_upvr, {SOME_91, SOME_76})
	end
	local tbl_3 = {"LeftUpperArm", "LeftLowerArm"}
	local SOME_33 = arg1:FindFirstChild(tbl_3[1])
	local SOME_40 = arg1:FindFirstChild(tbl_3[2])
	if SOME_33 and SOME_40 then
		table.insert(module_2_upvr, {SOME_33, SOME_40})
	end
	local tbl_6 = {"LeftLowerArm", "LeftHand"}
	local SOME_6 = arg1:FindFirstChild(tbl_6[1])
	local SOME_88 = arg1:FindFirstChild(tbl_6[2])
	if SOME_6 and SOME_88 then
		table.insert(module_2_upvr, {SOME_6, SOME_88})
	end
	local tbl_38 = {"LeftUpperArm", "LeftHand"}
	local SOME_74 = arg1:FindFirstChild(tbl_38[1])
	local SOME_22 = arg1:FindFirstChild(tbl_38[2])
	if SOME_74 and SOME_22 then
		table.insert(module_2_upvr, {SOME_74, SOME_22})
	end
	local tbl_8 = {"UpperTorso", "RightUpperArm"}
	local SOME_70 = arg1:FindFirstChild(tbl_8[1])
	local SOME_3 = arg1:FindFirstChild(tbl_8[2])
	if SOME_70 and SOME_3 then
		table.insert(module_2_upvr, {SOME_70, SOME_3})
	end
	local tbl_34 = {"LowerTorso", "RightUpperArm"}
	local SOME_39 = arg1:FindFirstChild(tbl_34[1])
	local SOME_83 = arg1:FindFirstChild(tbl_34[2])
	if SOME_39 and SOME_83 then
		table.insert(module_2_upvr, {SOME_39, SOME_83})
	end
	local tbl_33 = {"RightUpperArm", "RightLowerArm"}
	local SOME_71 = arg1:FindFirstChild(tbl_33[1])
	local SOME_54 = arg1:FindFirstChild(tbl_33[2])
	if SOME_71 and SOME_54 then
		table.insert(module_2_upvr, {SOME_71, SOME_54})
	end
	local tbl_27 = {"RightLowerArm", "RightHand"}
	local SOME_31 = arg1:FindFirstChild(tbl_27[1])
	local SOME_16 = arg1:FindFirstChild(tbl_27[2])
	if SOME_31 and SOME_16 then
		table.insert(module_2_upvr, {SOME_31, SOME_16})
	end
	local tbl_37 = {"RightUpperArm", "RightHand"}
	local SOME_19 = arg1:FindFirstChild(tbl_37[1])
	local SOME_69 = arg1:FindFirstChild(tbl_37[2])
	if SOME_19 and SOME_69 then
		table.insert(module_2_upvr, {SOME_19, SOME_69})
	end
	local tbl_32 = {"LeftUpperLeg", "RightUpperLeg"}
	local SOME_79 = arg1:FindFirstChild(tbl_32[1])
	local SOME_67 = arg1:FindFirstChild(tbl_32[2])
	if SOME_79 and SOME_67 then
		table.insert(module_2_upvr, {SOME_79, SOME_67})
	end
	local tbl_46 = {"UpperTorso", "RightUpperLeg"}
	local SOME_24 = arg1:FindFirstChild(tbl_46[1])
	local SOME_65 = arg1:FindFirstChild(tbl_46[2])
	if SOME_24 and SOME_65 then
		table.insert(module_2_upvr, {SOME_24, SOME_65})
	end
	local tbl_30 = {"LowerTorso", "RightUpperLeg"}
	local SOME_36 = arg1:FindFirstChild(tbl_30[1])
	local SOME_62 = arg1:FindFirstChild(tbl_30[2])
	if SOME_36 and SOME_62 then
		table.insert(module_2_upvr, {SOME_36, SOME_62})
	end
	local tbl_29 = {"RightUpperLeg", "RightLowerLeg"}
	local SOME_61 = arg1:FindFirstChild(tbl_29[1])
	local SOME_60 = arg1:FindFirstChild(tbl_29[2])
	if SOME_61 and SOME_60 then
		table.insert(module_2_upvr, {SOME_61, SOME_60})
	end
	local tbl_28 = {"RightLowerLeg", "RightFoot"}
	local SOME_68 = arg1:FindFirstChild(tbl_28[1])
	local SOME_58 = arg1:FindFirstChild(tbl_28[2])
	if SOME_68 and SOME_58 then
		table.insert(module_2_upvr, {SOME_68, SOME_58})
	end
	local tbl_26 = {"RightUpperLeg", "RightFoot"}
	local SOME_90 = arg1:FindFirstChild(tbl_26[1])
	local SOME_56 = arg1:FindFirstChild(tbl_26[2])
	if SOME_90 and SOME_56 then
		table.insert(module_2_upvr, {SOME_90, SOME_56})
	end
	local tbl_25 = {"UpperTorso", "LeftUpperLeg"}
	local SOME_55 = arg1:FindFirstChild(tbl_25[1])
	local SOME_84 = arg1:FindFirstChild(tbl_25[2])
	if SOME_55 and SOME_84 then
		table.insert(module_2_upvr, {SOME_55, SOME_84})
	end
	local tbl_22 = {"LowerTorso", "LeftUpperLeg"}
	local SOME_51 = arg1:FindFirstChild(tbl_22[1])
	local SOME_50 = arg1:FindFirstChild(tbl_22[2])
	if SOME_51 and SOME_50 then
		table.insert(module_2_upvr, {SOME_51, SOME_50})
	end
	local tbl_21 = {"LeftUpperLeg", "LeftLowerLeg"}
	local SOME_49 = arg1:FindFirstChild(tbl_21[1])
	local SOME_47 = arg1:FindFirstChild(tbl_21[2])
	if SOME_49 and SOME_47 then
		table.insert(module_2_upvr, {SOME_49, SOME_47})
	end
	local tbl_9 = {"LeftLowerLeg", "LeftFoot"}
	local SOME_45 = arg1:FindFirstChild(tbl_9[1])
	local SOME_44 = arg1:FindFirstChild(tbl_9[2])
	if SOME_45 and SOME_44 then
		table.insert(module_2_upvr, {SOME_45, SOME_44})
	end
	local tbl_19 = {"LeftUpperLeg", "LeftFoot"}
	local SOME_72 = arg1:FindFirstChild(tbl_19[1])
	local SOME_42 = arg1:FindFirstChild(tbl_19[2])
	if SOME_72 and SOME_42 then
		table.insert(module_2_upvr, {SOME_72, SOME_42})
	end
	local tbl_5 = {"UpperTorso", "LeftLowerLeg"}
	local SOME_38 = arg1:FindFirstChild(tbl_5[1])
	local SOME_41 = arg1:FindFirstChild(tbl_5[2])
	if SOME_38 and SOME_41 then
		table.insert(module_2_upvr, {SOME_38, SOME_41})
	end
	local tbl_16 = {"UpperTorso", "RightLowerLeg"}
	local SOME_35 = arg1:FindFirstChild(tbl_16[1])
	local SOME_11 = arg1:FindFirstChild(tbl_16[2])
	if SOME_35 and SOME_11 then
		table.insert(module_2_upvr, {SOME_35, SOME_11})
	end
	local tbl_13 = {"LowerTorso", "LeftLowerLeg"}
	local SOME_26 = arg1:FindFirstChild(tbl_13[1])
	local SOME_25 = arg1:FindFirstChild(tbl_13[2])
	if SOME_26 and SOME_25 then
		table.insert(module_2_upvr, {SOME_26, SOME_25})
	end
	local tbl_11 = {"LowerTorso", "RightLowerLeg"}
	local SOME_21 = arg1:FindFirstChild(tbl_11[1])
	local SOME_2 = arg1:FindFirstChild(tbl_11[2])
	if SOME_21 and SOME_2 then
		table.insert(module_2_upvr, {SOME_21, SOME_2})
	end
	local tbl_40 = {"UpperTorso", "LeftLowerArm"}
	local SOME_18 = arg1:FindFirstChild(tbl_40[1])
	local SOME_17 = arg1:FindFirstChild(tbl_40[2])
	if SOME_18 and SOME_17 then
		table.insert(module_2_upvr, {SOME_18, SOME_17})
	end
	local tbl_35 = {"UpperTorso", "RightLowerArm"}
	local SOME_30 = arg1:FindFirstChild(tbl_35[1])
	local SOME_15 = arg1:FindFirstChild(tbl_35[2])
	if SOME_30 and SOME_15 then
		table.insert(module_2_upvr, {SOME_30, SOME_15})
	end
	local UpperTorso = arg1:FindFirstChild("UpperTorso")
	if UpperTorso and UpperTorso.Size.x <= 1.5 then
		local tbl_4 = {"Head", "LeftUpperArm"}
		local SOME_32 = arg1:FindFirstChild(tbl_4[1])
		local SOME_10 = arg1:FindFirstChild(tbl_4[2])
		if SOME_32 and SOME_10 then
			table.insert(module_2_upvr, {SOME_32, SOME_10})
		end
		local tbl_2 = {"Head", "RightUpperArm"}
		local SOME_7 = arg1:FindFirstChild(tbl_2[1])
		local SOME_5 = arg1:FindFirstChild(tbl_2[2])
		if SOME_7 and SOME_5 then
			table.insert(module_2_upvr, {SOME_7, SOME_5})
		end
	end
	return module_2_upvr
end
return module_upvr