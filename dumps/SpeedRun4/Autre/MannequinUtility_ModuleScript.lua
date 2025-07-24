-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:42
-- Luau version 6, Types version 3
-- Time taken: 0.005746 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_upvr = {}
local InsertService_upvr = game:GetService("InsertService")
local tbl_upvr = {
	R6 = true;
	R15 = true;
	R15ArtistIntent = true;
}
module_upvr.CharacterPartNames = {
	R6 = {
		HumanoidRootPart = true;
		Head = true;
		Torso = true;
		["Left Arm"] = true;
		["Left Leg"] = true;
		["Right Arm"] = true;
		["Right Leg"] = true;
		CharacterMesh = true;
	};
	R15 = {
		HumanoidRootPart = true;
		Head = true;
		UpperTorso = true;
		LowerTorso = true;
		LeftUpperLeg = true;
		LeftLowerLeg = true;
		LeftFoot = true;
		RightUpperLeg = true;
		RightLowerLeg = true;
		RightFoot = true;
		LeftUpperArm = true;
		LeftLowerArm = true;
		LeftHand = true;
		RightUpperArm = true;
		RightLowerArm = true;
		RightHand = true;
	};
}
module_upvr.R15PartNameToEnum = {
	Head = Enum.BodyPartR15.Head;
	UpperTorso = Enum.BodyPartR15.UpperTorso;
	LowerTorso = Enum.BodyPartR15.LowerTorso;
	LeftUpperLeg = Enum.BodyPartR15.LeftUpperLeg;
	LeftLowerLeg = Enum.BodyPartR15.LeftLowerLeg;
	LeftFoot = Enum.BodyPartR15.LeftFoot;
	RightUpperLeg = Enum.BodyPartR15.RightUpperLeg;
	RightLowerLeg = Enum.BodyPartR15.RightLowerLeg;
	RightFoot = Enum.BodyPartR15.RightFoot;
	LeftUpperArm = Enum.BodyPartR15.LeftUpperArm;
	LeftLowerArm = Enum.BodyPartR15.LeftLowerArm;
	LeftHand = Enum.BodyPartR15.LeftHand;
	RightUpperArm = Enum.BodyPartR15.RightUpperArm;
	RightLowerArm = Enum.BodyPartR15.RightLowerArm;
	RightHand = Enum.BodyPartR15.RightHand;
}
module_upvr.CharacterPartNames.All = {}
for i, _ in pairs(module_upvr.CharacterPartNames.R6) do
	module_upvr.CharacterPartNames.All[i] = true
end
for i_2, _ in pairs(module_upvr.CharacterPartNames.R15) do
	module_upvr.CharacterPartNames.All[i_2] = true
end
local function _(arg1, arg2) -- Line 94, Named "loadMannequin"
	--[[ Upvalues[1]:
		[1]: InsertService_upvr (readonly)
	]]
	if arg2 == nil then
	end
	local any_LoadLocalAsset_result1_3 = InsertService_upvr:LoadLocalAsset(arg1)
	local Humanoid_2 = any_LoadLocalAsset_result1_3:FindFirstChild("Humanoid")
	assert(Humanoid_2, "Assert Humanoid is not nil to silence type checker")
	Humanoid_2.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	if true then
		any_LoadLocalAsset_result1_3.Parent = workspace
	end
	return any_LoadLocalAsset_result1_3
end
function module_upvr.LoadR15Mannequin(arg1) -- Line 111
	--[[ Upvalues[1]:
		[1]: InsertService_upvr (readonly)
	]]
	local var32 = arg1
	if var32 == nil then
		var32 = true
	end
	local any_LoadLocalAsset_result1 = InsertService_upvr:LoadLocalAsset("rbxasset://models/Thumbnails/Mannequins/R15.rbxm")
	local Humanoid = any_LoadLocalAsset_result1:FindFirstChild("Humanoid")
	assert(Humanoid, "Assert Humanoid is not nil to silence type checker")
	Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	if var32 then
		any_LoadLocalAsset_result1.Parent = workspace
	end
	return any_LoadLocalAsset_result1
end
function module_upvr.LoadR6Mannequin(arg1) -- Line 115
	--[[ Upvalues[1]:
		[1]: InsertService_upvr (readonly)
	]]
	local var35 = arg1
	if var35 == nil then
		var35 = true
	end
	local any_LoadLocalAsset_result1_2 = InsertService_upvr:LoadLocalAsset("rbxasset://models/Thumbnails/Mannequins/R6.rbxm")
	local Humanoid_4 = any_LoadLocalAsset_result1_2:FindFirstChild("Humanoid")
	assert(Humanoid_4, "Assert Humanoid is not nil to silence type checker")
	Humanoid_4.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	if var35 then
		any_LoadLocalAsset_result1_2.Parent = workspace
	end
	return any_LoadLocalAsset_result1_2
end
function module_upvr.LoadRthroMannequin(arg1) -- Line 119
	--[[ Upvalues[1]:
		[1]: InsertService_upvr (readonly)
	]]
	local var38 = arg1
	if var38 == nil then
		var38 = true
	end
	local any_LoadLocalAsset_result1_4 = InsertService_upvr:LoadLocalAsset("rbxasset://models/Thumbnails/Mannequins/Rthro.rbxm")
	local Humanoid_3 = any_LoadLocalAsset_result1_4:FindFirstChild("Humanoid")
	assert(Humanoid_3, "Assert Humanoid is not nil to silence type checker")
	Humanoid_3.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	if var38 then
		any_LoadLocalAsset_result1_4.Parent = workspace
	end
	return any_LoadLocalAsset_result1_4
end
function module_upvr.LoadMannequinForScaleType(arg1, arg2) -- Line 123
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1 == "Classic" then
		return module_upvr.LoadR15Mannequin(arg2)
	end
	return module_upvr.LoadRthroMannequin(arg2)
end
function module_upvr.AssertObjectsFormat(arg1) -- Line 136
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var49
	for _, v_3 in arg1 do
		assert(v_3:IsA("Folder"), "object should always be a Folder")
		if tbl_upvr[v_3.Name] then
			for _, v_4 in v_3:GetChildren() do
				assert(module_upvr.CharacterPartNames.All[v_4.Name], string.format("Name of %s of Folder %s does not exist in CharacterParts", v_4.Name, v_3.Name))
			end
		end
	end
	assert(nil, "objects does not have at least one of R15ArtistIntent, R15, and R6 folders")
end
function module_upvr.CreateBodyPartMannequin(arg1, arg2) -- Line 167
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	module_upvr.AssertObjectsFormat(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 24. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 12. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.10]
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return nil == "R15ArtistIntent"
	end
	if nil == "R15" or INLINED() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [32] #25
		end
		-- KONSTANTWARNING: GOTO [32] #25
	end
	-- KONSTANTERROR: [12] 12. Error Block 39 end (CF ANALYSIS FAILED)
end
function module_upvr.SetupBodyPartMannequin(arg1, arg2, arg3, arg4, arg5) -- Line 249
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.AssertObjectsFormat(arg4)
	local var57_upvw = false
	if arg5 then
		game:GetObjects(arg5)[1].Parent = arg3
	end
	local var63
	if arg1 and arg2 then
		var63 = "R15ArtistIntent"
	end
	for i_6, v_6 in pairs(arg4) do
		if arg1 and v_6.Name == var63 or not arg1 and v_6.Name == "R6" then
			(function(arg1_2, arg2_2, arg3_2) -- Line 264, Named "addFolderChildren"
				--[[ Upvalues[3]:
					[1]: var57_upvw (read and write)
					[2]: arg3 (readonly)
					[3]: module_upvr (copied, readonly)
				]]
				for _, v_5 in pairs(arg1_2:GetChildren()) do
					assert(v_5:IsA("BasePart"), "Only BaseParts should be in Folders")
					if string.find(v_5.Name, "Right") then
						var57_upvw = true
					end
					arg3:FindFirstChild("Humanoid"):ReplaceBodyPartR15(module_upvr.R15PartNameToEnum[v_5.Name], v_5)
					table.insert(arg2_2, v_5.Name)
					table.insert(arg3_2, v_5)
				end
			end)(v_6, {}, {})
		elseif not string.find(v_6.Name, "R15") then
			v_6.Parent = arg3
		end
	end
	if arg1 then
		local HumanoidRootPart = arg3:FindFirstChild("HumanoidRootPart")
		arg3.PrimaryPart = HumanoidRootPart
		i_6 = Vector3.new(0, 5, 0)
		i_6 = CFrame.Angles
		v_6 = 0
		i_6 = i_6(v_6, math.pi, 0)
		HumanoidRootPart.CFrame = CFrame.new(i_6) * i_6
		HumanoidRootPart.Anchored = true
		i_6 = "Humanoid"
		arg3:FindFirstChildOfClass(i_6):BuildRigFromAttachments()
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var57_upvw, {}
end
function module_upvr.CreateHeadModel(arg1) -- Line 314
	local Model = Instance.new("Model")
	arg1.Name = "Head"
	arg1.Parent = Model
	local Humanoid_5 = Instance.new("Humanoid")
	Humanoid_5.RigType = Enum.HumanoidRigType.R15
	Humanoid_5.Parent = Model
	Humanoid_5.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	return Model
end
return module_upvr