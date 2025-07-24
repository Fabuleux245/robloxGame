-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:12
-- Luau version 6, Types version 3
-- Time taken: 0.006378 seconds

-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
local CollectionService_upvr = game:GetService("CollectionService")
local game_DefineFastFlag_result1 = game:DefineFastFlag("SelfViewAvatarJointUpgrade", false)
local GetFFlagSelfieViewFixMigration_upvr = require(script.Parent.Parent.Flags.GetFFlagSelfieViewFixMigration)
local GetFFlagSelfieViewMoreFixMigration_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).GetFFlagSelfieViewMoreFixMigration
local tbl_2_upvr = {
	Accessory = "Accessory";
	CharacterMesh = "CharacterMesh";
	Decal = "Decal";
	MeshPart = "MeshPart";
	Pants = "Pants";
	Part = "Part";
	Shirt = "Shirt";
	ShirtGraphic = "ShirtGraphic";
	SpecialMesh = "SpecialMesh";
	SurfaceAppearance = "SurfaceAppearance";
}
local function _(arg1) -- Line 29, Named "getFaceControls"
	if arg1 == nil then return end
	return arg1:FindFirstChildWhichIsA("FaceControls", true)
end
local function _(arg1, arg2) -- Line 36, Named "getNeck"
	if arg1 == nil or arg2 == nil then
		return nil
	end
	local descendants = arg1:GetDescendants()
	for _, v in descendants do
		if v:IsA("Motor6D") and (v.Part1 == arg2 or v.Name == "Neck") then
			return v
		end
	end
	for _, v_2 in descendants do
		if v_2:IsA("AnimationConstraint") and v_2.Parent == arg2 and (v_2.Attachment0.Name == "NeckRigAttachment" or v_2.Name == "Neck") then
			return v_2
		end
	end
	return nil
end
local function findObjectOfNameAndTypeName_upvr(arg1, arg2, arg3) -- Line 61, Named "findObjectOfNameAndTypeName"
	--[[ Upvalues[1]:
		[1]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	if GetFFlagSelfieViewMoreFixMigration_upvr() and arg3 == nil then
		return nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 31. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 31. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 13. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [38.9]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil and nil == arg1 then
			-- KONSTANTWARNING: GOTO [38] #31
		end
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if nil == arg1 and nil then
		end
	end
	-- KONSTANTERROR: [14] 13. Error Block 20 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 80, Named "getHead"
	--[[ Upvalues[2]:
		[1]: GetFFlagSelfieViewFixMigration_upvr (readonly)
		[2]: findObjectOfNameAndTypeName_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	if arg1 == nil then
		local _
	else
	end
	if arg1:FindFirstChildWhichIsA("FaceControls", true) ~= nil then
		if GetFFlagSelfieViewFixMigration_upvr() then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
			if arg1:FindFirstChildWhichIsA("FaceControls", true).Parent and (arg1:FindFirstChildWhichIsA("FaceControls", true).Parent.ClassName == "MeshPart" or arg1:FindFirstChildWhichIsA("FaceControls", true).Parent.ClassName == "Part") then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: GOTO [38] #27
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	if not arg1:FindFirstChildWhichIsA("FaceControls", true).Parent then
	end
	if not findObjectOfNameAndTypeName_upvr("Head", "MeshPart", arg1) then
	end
	return findObjectOfNameAndTypeName_upvr("Head", "Part", arg1)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SelfViewLookUpHumanoidByType", false)
local function _(arg1, arg2) -- Line 117, Named "getAnimator"
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13
	if 0 < arg2 then
		if game_DefineFastFlag_result1_upvr then
			if GetFFlagSelfieViewMoreFixMigration_upvr() then
				local Humanoid = arg1:WaitForChild("Humanoid", arg2)
				if Humanoid then
					if Humanoid:IsA("Humanoid") then
						var13 = Humanoid
					else
						var13 = arg1:FindFirstChildWhichIsA("Humanoid")
					end
				else
					var13 = arg1:FindFirstChildWhichIsA("Humanoid")
				end
			else
				local Humanoid_2 = arg1:WaitForChild("Humanoid", arg2)
				if Humanoid_2:IsA("Humanoid") then
					var13 = Humanoid_2
				else
					var13 = arg1:FindFirstChildWhichIsA("Humanoid")
				end
			end
		else
			var13 = arg1:WaitForChild("Humanoid", arg2)
		end
	elseif game_DefineFastFlag_result1_upvr then
		var13 = arg1:FindFirstChildWhichIsA("Humanoid")
	else
		var13 = arg1:FindFirstChild("Humanoid")
	end
	if var13 ~= nil then
		if 0 < arg2 then
		else
		end
	end
	if var13:FindFirstChild("Animator") == nil then
	end
	return arg1:FindFirstChildWhichIsA("Animator", true)
end
local tbl_upvr = {"Head", "UpperTorso", "LowerTorso", "Torso", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "RightUpperLeg", "LeftHand", "LeftLowerArm", "LeftUpperArm", "RightHand", "RightLowerArm", "RightUpperArm"}
local function _(arg1, arg2) -- Line 188, Named "updateTransparency"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: GetFFlagSelfieViewMoreFixMigration_upvr (readonly)
		[3]: CollectionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_2, ipairs_result2_2, ipairs_result3_2 = ipairs(arg1:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 71. Error Block 26 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [95] 71. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [95.7]
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 217, Named "shouldMarkCloneDirtyForDescendant"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	if arg1:IsA("MeshPart") or arg1:IsA("Part") or arg1:IsA("Decal") then
		if arg1.Transparency < 1 then
			do
				return true
			end
			-- KONSTANTWARNING: GOTO [30] #25
		end
	elseif tbl_2_upvr[arg1.ClassName] then
		return true
	end
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 25. Error Block 10 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [30] 25. Error Block 10 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 230, Named "resetPartOrientation"
	for _, v_3 in ipairs(arg1:GetDescendants()) do
		if v_3:IsA("Motor6D") then
			v_3.C0 = CFrame.new(v_3.C0.Position)
			v_3.C1 = CFrame.new(v_3.C1.Position)
		end
	end
end
local function _(arg1, arg2) -- Line 239, Named "removeChild"
	local SOME = arg1:FindFirstChild(arg2)
	if SOME then
		SOME:Destroy()
	end
end
local function _(arg1) -- Line 245, Named "removeScripts"
	local Animate = arg1:FindFirstChild("Animate")
	if Animate then
		Animate:Destroy()
	end
	local Health = arg1:FindFirstChild("Health")
	if Health then
		Health:Destroy()
	end
	for _, v_4 in pairs(arg1:GetDescendants()) do
		if v_4:IsA("BaseScript") then
			v_4:Destroy()
		end
	end
end
local function _(arg1) -- Line 256, Named "removeTags"
	--[[ Upvalues[2]:
		[1]: CollectionService_upvr (readonly)
		[2]: GetFFlagSelfieViewFixMigration_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(CollectionService_upvr:GetTags(arg1))
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 24. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 24. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 23 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.7]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [28.6]
		if nil ~= "NoFace" then
			-- KONSTANTWARNING: GOTO [28] #24
		end
	else
	end
	-- KONSTANTERROR: [10] 9. Error Block 23 end (CF ANALYSIS FAILED)
end
local tbl = {
	Accessory = "Accessory";
	Animator = "Animator";
}
local var37 = "Attachment"
tbl.Attachment = var37
if game_DefineFastFlag_result1 then
	var37 = "AnimationConstraint"
else
	var37 = nil
end
tbl.AnimationConstraint = var37
if game_DefineFastFlag_result1 then
	-- KONSTANTWARNING: GOTO [144] #110
end
-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [143] 109. Error Block 29 start (CF ANALYSIS FAILED)
tbl.BallSocketConstraint = nil
tbl.BodyColors = "BodyColors"
tbl.CharacterMesh = "CharacterMesh"
tbl.Decal = "Decal"
tbl.FaceControls = "FaceControls"
tbl.Humanoid = "Humanoid"
tbl.HumanoidDescription = "HumanoidDescription"
tbl.MeshPart = "MeshPart"
tbl.Motor6D = "Motor6D"
tbl.NumberValue = "NumberValue"
tbl.Pants = "Pants"
tbl.Part = "Part"
tbl.Shirt = "Shirt"
tbl.ShirtGraphic = "ShirtGraphic"
tbl.SpecialMesh = "SpecialMesh"
tbl.StringValue = "StringValue"
tbl.SurfaceAppearance = "SurfaceAppearance"
tbl.Vector3Value = "Vector3Value"
tbl.WrapTarget = "WrapTarget"
tbl.Weld = "Weld"
tbl.WrapLayer = "WrapLayer"
tbl.WeldConstraint = "WeldConstraint"
tbl.AccessoryWeld = "AccessoryWeld"
tbl.PackageLink = "PackageLink"
if GetFFlagSelfieViewFixMigration_upvr() then
	-- KONSTANTWARNING: GOTO [221] #163
end
-- KONSTANTERROR: [143] 109. Error Block 29 end (CF ANALYSIS FAILED)