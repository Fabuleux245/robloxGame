-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:49
-- Luau version 6, Types version 3
-- Time taken: 0.045639 seconds

local module_2_upvr = require(game.ReplicatedStorage:WaitForChild("BUPShared"))
local module_3_upvr = require(game.ReplicatedStorage:WaitForChild("BUUI"))
local ContextActionService_upvr = game:GetService("ContextActionService")
local module_5_upvr = {
	NearPlaneTolerance = 0.25;
	ExternalPlaySoundEffect = function(arg1, arg2) -- Line 33, Named "ExternalPlaySoundEffect"
		local Sound_upvr = Instance.new("Sound")
		for i, v in arg1 do
			Sound_upvr[i] = v
		end
		if arg2 then
			v = 0.5 - math.random()
			i = arg2 * v
			Sound_upvr.PlaybackSpeed *= 1 + i
		end
		Sound_upvr.Parent = game:GetService("SoundService")
		Sound_upvr.Ended:Once(function() -- Line 48
			--[[ Upvalues[1]:
				[1]: Sound_upvr (readonly)
			]]
			Sound_upvr:Destroy()
		end)
		Sound_upvr:Play()
		return Sound_upvr
	end;
	GroupAutoRespawnDistance = 30;
	GroupBehavior = table.freeze({
		Follow = 1;
	});
	GroupAlwaysUpdateOnOriginChange = true;
	MoveState = table.freeze({
		Idle = 1;
		Walking = 2;
		Flying = 3;
	});
	Model_ById = {};
	ModelsDirty = false;
	PetAnimations = {};
	PetAnimationUpdateRateDistancePairs = {{120, 60}, {360, 45}, {720, 30}, {math.huge, 15}};
	PetGravity = workspace.Gravity;
	PetGroundBreakFactor = 2;
	PetJumpAirTime = 0.375;
	PetJumpAnimateChance = 0.5;
	PetJumpHeightFactorMax = 16;
	PetJumpHeightFactorMin = 8;
	PetJumpMaximumAcceleration = 10 * module_5_upvr.PetGravity;
	PetJumpMaximumVelocityFactor = 50;
	PetPhysicsStepRateDistancePairs = {{120, 240}, {180, 120}, {480, 60}, {960, 30}, {math.huge, 15}};
	PetMovingStartThresholdFactor = 0.0625;
	PetMovingStopThresholdFactor = 0.03125;
	PetTurningStartThresholdFactor = 1.5;
	PetTurningStopThresholdFactor = 1;
	PetTurningDeltaFactor = 4;
	PetTurningThresholdInfluence = 3;
	PetResponsivenessAngular = 5;
	PetResponsivenessLinear = 20;
	HighlightModels = {
		LocalPlayer = true;
		NonLocalPlayer = true;
	};
	RaycastBias = 0.5;
	RaycastConsiderGrounded = nil;
	RaycastDistance = 55;
	RaycastParams = RaycastParams.new();
	PetHatchActive = false;
	PetHatchContinueBindName = "BUP-CONTINUE_PROMPT";
	PetHatchDisableAutoHatchingBindName = "BUP-DISABLE_AUTO_HATCH";
	PetHatchBindPriority = nil;
	PetHatchContinueBindInputs = {Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch, Enum.KeyCode.ButtonB};
	PetHatchDisableAutoHatchingBind = Enum.KeyCode.ButtonB;
	PetHatchAutoHatching = false;
	PetHatchLightProperties = nil;
}
local tbl_3_upvr = {
	PetHatchUI = nil;
	InputBound = false;
	CameraCFrame = CFrame.identity;
	CameraSpecs = nil;
	NearPlaneDepth = 0;
	LastSteppedDelta = 0;
	LastSteppedTime = 0;
	LastAnimationPairs = nil;
	LastPhysicsPairs = nil;
	AnimationSteps = {};
	PhysicsSteps = {};
}
local tbl_20_upvr = {}
local class_Terrain_upvw = workspace:FindFirstChildOfClass("Terrain")
if not class_Terrain_upvw then
	local var30_upvw
	var30_upvw = workspace.ChildAdded:Connect(function(arg1) -- Line 489
		--[[ Upvalues[2]:
			[1]: var30_upvw (read and write)
			[2]: class_Terrain_upvw (read and write)
		]]
		if var30_upvw and arg1:IsA("Terrain") then
			var30_upvw:Disconnect()
			var30_upvw = nil
			class_Terrain_upvw = arg1
		end
	end)
end
local function CameraSpecsCreate_upvr(arg1) -- Line 517, Named "CameraSpecsCreate"
	local var31 = arg1
	if not var31 then
		var31 = assert(workspace.CurrentCamera)
	end
	local ViewportSize = var31.ViewportSize
	local radians = math.rad(var31.FieldOfView)
	local var34 = radians * 0.5
	local var35 = math.atan((math.tan(var34)) * (ViewportSize.X / ViewportSize.Y)) * 2
	local var36 = var35 * 0.5
	local CFrame = var31.CFrame
	return {
		Origin = CFrame;
		Position = CFrame.Position;
		Planes = {(CFrame * CFrame.Angles(0, var36, 0)).RightVector, -(CFrame * CFrame.Angles(0, -var36, 0)).RightVector, -(CFrame * CFrame.Angles(var34, 0, 0)).UpVector, (CFrame * CFrame.Angles(-var34, 0, 0)).UpVector};
		HalfHorizontal = var36;
		HalfVertical = var34;
		Horizontal = var35;
		Vertical = radians;
	}
end
local function _(arg1, arg2, arg3) -- Line 559, Named "CameraSpecsEquals"
	local var40 = arg3 or 0
	local var41 = false
	if math.abs(arg1.Horizontal - arg2.Horizontal) <= var40 then
		if math.abs(arg1.Vertical - arg2.Vertical) > var40 then
			var41 = false
		else
			var41 = true
		end
	end
	return var41
end
local function SphereInFrame_upvr(arg1, arg2, arg3) -- Line 579, Named "SphereInFrame"
	local var50 = arg2 - arg1.Position
	local var51 = arg3 * -1
	local Planes = arg1.Planes
	local var53 = false
	if var51 <= var50:Dot(Planes[1]) then
		var53 = false
		if var51 <= var50:Dot(Planes[2]) then
			var53 = false
			if var51 <= var50:Dot(Planes[3]) then
				if var51 > var50:Dot(Planes[4]) then
					var53 = false
				else
					var53 = true
				end
			end
		end
	end
	return var53
end
local function GetThrottleStep_upvr(arg1, arg2, arg3, arg4) -- Line 597, Named "GetThrottleStep"
	--[[ Upvalues[1]:
		[1]: SphereInFrame_upvr (readonly)
	]]
	local var58
	if arg1 and SphereInFrame_upvr(arg1, arg2, arg3) then
		for _, v_2 in arg4 do
			if (arg1.Position - arg2).Magnitude <= v_2.Distance then
				var58 = v_2
				return var58
			end
		end
	end
	return var58
end
function module_5_upvr.GetOriginFromHumanoid(arg1) -- Line 631
	local var59
	local RootPart = arg1.RootPart
	if RootPart then
		var59 = RootPart.CFrame * CFrame.new(0, -(RootPart.Size.Y * 0.5 + arg1.HipHeight), 0)
	end
	return var59
end
local function HighlightModelCreate_upvr(arg1, arg2) -- Line 651, Named "HighlightModelCreate"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local Model = Instance.new("Model")
	Model.Name = "HighlightModel"
	Model.PrimaryPart = module_3_upvr.I("Part", {
		Anchored = true;
		CastShadow = false;
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
		Position = Vector3.new(0, 1000000, 0);
		Size = Vector3.new(0, 0, 0);
		Parent = Model;
	})
	local _ = {
		EvaluateStateMachine = false;
		DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
		HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOff;
		Parent = Model;
	}
	Model.Parent = arg2
	return {
		Highlight = module_3_upvr.I("Highlight", arg1, {
			Adornee = Model;
			Enabled = true;
			Parent = Model;
		});
		Model = Model;
	}
end
function module_5_upvr.RequestModels(arg1) -- Line 699
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local table_create_result1_2 = table.create(#arg1)
	for _, v_3 in arg1 do
		if not module_5_upvr.Model_ById[v_3] then
			table_create_result1_2[#table_create_result1_2 + 1] = v_3
		end
	end
	if 0 < #table_create_result1_2 then
		module_2_upvr.Remotes.RequestModels:FireServer(arg1)
	end
end
tbl_20_upvr[module_2_upvr.Remotes.RequestModels] = function(arg1) -- Line 717
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	for i_4, v_4 in arg1 do
		module_5_upvr.Model_ById[i_4] = v_4:Clone()
	end
	module_5_upvr.ModelsDirty = true
end
function module_5_upvr.PetStateCreate(arg1) -- Line 732
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local module_7 = {}
	module_7.Id = arg1
	module_7.MoveStateChangedAt = 0
	module_7.UpdatedAt = 0
	module_7.PetAnimations = table.clone(module_5_upvr.PetAnimations)
	module_7.PetAnimationStates = {}
	module_7.MoveState = module_5_upvr.MoveState.Idle
	module_7.SpeedFactor = 0
	module_7.SpeedXZ = 0
	module_7.VelocityY = 0
	module_7.Grounded = true
	module_7.Moving = false
	module_7.Turning = false
	module_7.FeetOffset = CFrame.identity
	module_7.ModelOffset = CFrame.identity
	module_7.ModelRadius = 0
	module_7.Origin = CFrame.identity
	module_7.Radius = 1
	module_7.Target = CFrame.identity
	module_7.TargetGrounded = true
	module_7.Transform = CFrame.identity
	module_7.TransformOffset = CFrame.identity
	return module_7
end
function module_5_upvr.PetStateDestroy(arg1) -- Line 771
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	if arg1.Group then
		module_5_upvr.PetGroupManagePet(arg1.Group, arg1, false)
	end
	module_5_upvr.PetStateSetModel(arg1, nil)
end
function module_5_upvr.PetStateSetModel(arg1, arg2) -- Line 785
	if arg1.Model then
		arg1.Model:Destroy()
	end
	arg1.Model = arg2
	if arg2 then
		arg2:PivotTo(arg1.Transform)
		local any_GetBoundingBox_result1, any_GetBoundingBox_result2_2 = arg2:GetBoundingBox()
		arg1.ModelOffset = arg1.Transform:ToObjectSpace(any_GetBoundingBox_result1)
		arg1.ModelRadius = any_GetBoundingBox_result2_2.Magnitude * 0.5
	else
		arg1.ModelOffset = CFrame.identity
		arg1.ModelRadius = 0
	end
end
function module_5_upvr.PetGroupCreate() -- Line 814
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	return {
		Pets = {};
		Pet_ById = {};
		Dirty = false;
		GroupBehavior = module_5_upvr.GroupBehavior.Follow;
		Origin = CFrame.identity;
		Padding = 2.5;
		PetsPerRow = 5;
		Radius = 2.5;
		UpdatedAt = 0;
		CentroidOffset = CFrame.identity;
		CentroidRadius = 0;
	}
end
function module_5_upvr.PetGroupDestroy(arg1) -- Line 836
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	for i_5 = #arg1.Pets, 1, -1 do
		module_5_upvr.PetStateDestroy(arg1.Pets[i_5])
	end
end
function module_5_upvr.PetGroupManagePet(arg1, arg2, arg3) -- Line 848
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local var77 = false
	if arg3 then
		if arg2.Group ~= arg1 then
			if arg2.Group then
				module_5_upvr.PetGroupManagePet(arg2.Group, arg2, false)
			end
			var77 = true
			arg2.Group = arg1
			arg1.Pets[#arg1.Pets + 1] = arg2
			if arg2.Id ~= nil then
				arg1.Pet_ById[arg2.Id] = arg2
				-- KONSTANTWARNING: GOTO [75] #50
			end
			-- KONSTANTWARNING: GOTO [75] #50
		end
	elseif arg2.Group == arg1 then
		var77 = true
		arg2.Group = nil
		local table_find_result1 = table.find(arg1.Pets, arg2)
		if table_find_result1 then
			table.remove(arg1.Pets, table_find_result1)
		end
		if arg2.Id ~= nil and arg1.Pet_ById[arg2.Id] == arg2 then
			arg1.Pet_ById[arg2.Id] = nil
		end
	end
	if var77 then
		arg1.Dirty = true
	end
	return var77
end
local function _(arg1) -- Line 897, Named "PetStateRespawn"
	arg1.LastTarget = nil
	arg1.SpeedFactor = 0
	arg1.SpeedXZ = 0
	arg1.VelocityY = 0
end
function module_5_upvr.PetGroupRespawn(arg1) -- Line 910
	arg1.Dirty = true
	for _, v_5 in arg1.Pets do
		v_5.LastTarget = nil
		v_5.SpeedFactor = 0
		v_5.SpeedXZ = 0
		v_5.VelocityY = 0
	end
end
function module_5_upvr.PetGroupSetBehavior(arg1, arg2) -- Line 922
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	if arg1.GroupBehavior == arg2 then
	else
		for _, v_16 in module_5_upvr.GroupBehavior do
			if v_16 == arg2 then
				arg1.Dirty = true
				arg1.GroupBehavior = arg2
				return
			end
		end
		error(string.format("Invalid GroupBehavior '%*'", arg2), 2)
	end
end
function module_5_upvr.PetGroupSetPadding(arg1, arg2) -- Line 945
	if arg1.Padding ~= arg2 then
		arg1.Dirty = true
		arg1.Padding = arg2
	end
end
function module_5_upvr.PetGroupSetPetsPerRow(arg1, arg2) -- Line 957
	local maximum_3 = math.max(arg2 // 1, 1)
	if arg1.PetsPerRow ~= maximum_3 then
		arg1.Dirty = true
		arg1.PetsPerRow = maximum_3
	end
end
function module_5_upvr.PetGroupSetRadius(arg1, arg2) -- Line 971
	local maximum_2 = math.max(arg2, 0)
	if arg1.Radius ~= maximum_2 then
		arg1.Dirty = true
		arg1.Radius = maximum_2
	end
end
local function PlayAnimation_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 989, Named "PlayAnimation"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [15] 13. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.7]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.2868905549]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.6]
	if nil < nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.5]
		if not nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.8]
			-- KONSTANTWARNING: GOTO [9] #9
		end
	else
		local var85
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 34 start (CF ANALYSIS FAILED)
	if not arg1.PetAnimationStates[arg2] then
		var85 = nil
		if 0 < #arg2 then
			var85 = arg2[math.random(1, #arg2)]
		else
			var85 = arg2
		end
		if var85.RandomStart then
		else
		end
		if var85.LengthVariance then
		end
		local tbl_16 = {
			Length = var85.Length * (1 + 2 * var85.LengthVariance * (0.5 - math.random()));
			Playing = true;
			Time = 0;
			FadeTween = module_3_upvr.NumericTweenCreate(0, nil, nil, nil, true);
		}
		arg1.PetAnimationStates[var85] = tbl_16
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_16.Playing = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_16.FadeTween.Duration = arg4 or 0
	if arg5 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_3_upvr.NumericTweenBeginAbsolute(tbl_16.FadeTween, arg3, 0, 1)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_3_upvr.NumericTweenBegin(tbl_16.FadeTween, arg3, 1)
		-- KONSTANTERROR: [19] 16. Error Block 34 end (CF ANALYSIS FAILED)
	end
end
local function StopAnimation_upvr(arg1, arg2, arg3, arg4) -- Line 1060, Named "StopAnimation"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 17. Error Block 17 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 17. Error Block 17 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 1115, Named "GetRaycastVectors"
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	return arg1 * -module_5_upvr.RaycastDistance, (arg1) * (module_5_upvr.RaycastDistance * module_5_upvr.RaycastBias)
end
local function _() -- Line 1122, Named "RaycastBatchCreate"
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local RaycastParams_2 = module_5_upvr.RaycastParams
	return {
		AddedToFilter = false;
		OriginalFilter = RaycastParams_2.FilterDescendantsInstances;
		Params = RaycastParams_2;
	}
end
local function _(arg1) -- Line 1135, Named "RaycastBatchResolve"
	if arg1.AddedToFilter then
		arg1.Params.FilterDescendantsInstances = arg1.OriginalFilter
	end
end
local function RaycastBatchPerform_upvr(arg1, arg2, arg3) -- Line 1144, Named "RaycastBatchPerform"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = arg1.Params
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 31. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 31. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 17 start (CF ANALYSIS FAILED)
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [40.6]
		if not nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [40.7]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [40.132226]
			if nil < nil then
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
			-- KONSTANTWARNING: GOTO [40] #31
		end
		-- KONSTANTWARNING: GOTO [41] #32
	end
	-- KONSTANTERROR: [3] 3. Error Block 17 end (CF ANALYSIS FAILED)
end
local tbl_15_upvr = {
	[module_5_upvr.GroupBehavior.Follow] = function(arg1) -- Line 1192
		--[[ Upvalues[2]:
			[1]: module_5_upvr (readonly)
			[2]: RaycastBatchPerform_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local len = #arg1.Pets
		local PetsPerRow = arg1.PetsPerRow
		local Origin = arg1.Origin
		local Padding = arg1.Padding
		local Radius = arg1.Radius
		local ceiled = math.ceil(len / PetsPerRow)
		local table_create_result1 = table.create(ceiled)
		local maximum = math.max(Radius * 4, 20)
		local var116
		for i_7 = 1, ceiled do
			local var117 = PetsPerRow * (i_7 - 1) + 1
			local minimum_3 = math.min(PetsPerRow * i_7, len)
			local var119
			for i_8 = var117, minimum_3 do
				local var120 = arg1.Pets[i_8].Radius * 2
				local var121 = (minimum_3 - var117 + 1 - 1) * Padding + var120
				if var119 < var120 then
					var119 = var120
				end
			end
			table_create_result1[i_7] = var119
			if var116 < var121 then
				var116 = var121
			end
		end
		local var122 = var116 / maximum
		arg1.CentroidRadius = maximum * math.sin(var122 / 2)
		var116 = Radius
		local UpVector = Origin.UpVector
		local RaycastParams = module_5_upvr.RaycastParams
		local var126 = {
			AddedToFilter = false;
			OriginalFilter = RaycastParams.FilterDescendantsInstances;
			Params = RaycastParams;
		}
		for i_9 = 1, ceiled do
			local var127 = table_create_result1[i_9]
			local var128 = PetsPerRow * (i_9 - 1) + 1
			local minimum = math.min(PetsPerRow * i_9, len)
			local var130 = minimum - var128 + 1
			for i_10 = var128, minimum do
				local var131 = arg1.Pets[i_10]
				local var132 = (var122) * (var130 / math.min(PetsPerRow, len)) * (((i_10 - 1) % PetsPerRow + 0.5) / var130 - 0.5)
				local var133 = var126
				local RaycastBatchPerform_result1 = RaycastBatchPerform_upvr(var133, (Origin * CFrame.new(0, 0, var116 + 0.5 * var127 - maximum) * CFrame.Angles(0, var132, 0) * CFrame.new(0, 0, maximum)).Position + (UpVector) * (module_5_upvr.RaycastDistance * module_5_upvr.RaycastBias), UpVector * -module_5_upvr.RaycastDistance)
				local var135
				if RaycastBatchPerform_result1 == nil then
					var133 = false
				else
					var133 = true
				end
				if RaycastBatchPerform_result1 then
					var135 = RaycastBatchPerform_result1.Position
				end
				var131.Target = Origin.Rotation * CFrame.Angles(0, var132 * 0.5, 0) + var135
				var131.TargetGrounded = var133
			end
			var116 += var127 + Padding
		end
		arg1.CentroidOffset = CFrame.new(0, 0, Radius + (var116 - Radius) * 0.5)
		if var126.AddedToFilter then
			var126.Params.FilterDescendantsInstances = var126.OriginalFilter
		end
	end;
}
local any_IsStudio_result1_upvr = game:GetService("RunService"):IsStudio()
function module_5_upvr.PetGroupUpdate(arg1, arg2) -- Line 1321
	--[[ Upvalues[8]:
		[1]: any_IsStudio_result1_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: tbl_15_upvr (readonly)
		[5]: GetThrottleStep_upvr (readonly)
		[6]: module_3_upvr (readonly)
		[7]: PlayAnimation_upvr (readonly)
		[8]: StopAnimation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 217 start (CF ANALYSIS FAILED)
	debug.profilebegin("BUPC_PetGroupUpdate")
	if arg2 then
		if arg2 ~= arg2 then
			if any_IsStudio_result1_upvr then
				warn(debug.traceback("[BUPClient] - Received origin with NAN components."))
				-- KONSTANTWARNING: GOTO [51] #36
			end
		else
			if module_5_upvr.GroupAutoRespawnDistance <= (arg1.Origin.Position - arg2.Position).Magnitude then
				module_5_upvr.PetGroupRespawn(arg1)
			end
			if module_5_upvr.GroupAlwaysUpdateOnOriginChange or not arg2:FuzzyEq(arg1.Origin) then
				arg1.Dirty = true
			end
			arg1.Origin = arg2
		end
	end
	if arg1.Dirty and arg1.UpdatedAt ~= tbl_3_upvr.LastSteppedTime then
		if 0 < #arg1.Pets then
			tbl_15_upvr[arg1.GroupBehavior](arg1)
		end
		arg1.Dirty = false
		arg1.UpdatedAt = tbl_3_upvr.LastSteppedTime
	end
	-- KONSTANTERROR: [0] 1. Error Block 217 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [958] 685. Error Block 137 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [958] 685. Error Block 137 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 60. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [958.7]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [86] 60. Error Block 19 end (CF ANALYSIS FAILED)
end
local tbl_4 = {
	Length = 4;
	LengthVariance = 0.0625;
	Looped = true;
	Priority = 2000;
	SpeedIncreaseFactor = 0.00390625;
}
local function Update(arg1, arg2, arg3) -- Line 1887
	local var138 = (-math.pi*2) * arg2
	local sine = math.sin(var138)
	local var140 = arg1.Radius * 0.125 * arg3
	local var141 = 0.04908738521234052 * arg3
	return CFrame.Angles(var141 * math.cos(var138), 0, var141 * sine) + Vector3.new(var140 * math.cos(2 * var138), arg1.Radius * 0.25 * (math.min(arg1.SpeedFactor * 0.015625, 2) + 1) * sine * arg3, var140 * math.sin(2 * var138))
end
tbl_4.Update = Update
module_5_upvr.PetAnimations.Fly = tbl_4
local tbl_9_upvr = {
	Length = 0.5;
	LengthVariance = 0.125;
	Looped = false;
	Priority = 3000;
}
local function Update() -- Line 1924
	return CFrame.identity
end
tbl_9_upvr.Update = Update
local function _(arg1, arg2) -- Line 1929, Named "GetAngle"
	return ((-math.pi*2)) * (-(math.cos(math.pi * arg1) - 1) / 2 * arg2)
end
local function _(arg1) -- Line 1939, Named "CreateJumpAnimation"
	--[[ Upvalues[1]:
		[1]: tbl_9_upvr (readonly)
	]]
	local clone_4 = table.clone(tbl_9_upvr)
	clone_4.Update = arg1
	return clone_4
end
local tbl_21 = {}
local clone_5 = table.clone(tbl_9_upvr)
function clone_5.Update(arg1, arg2, arg3) -- Line 1950
	return CFrame.Angles(-(((-math.pi*2)) * (-(math.cos(math.pi * arg2) - 1) / 2 * arg3)), 0, 0)
end
local clone_2 = table.clone(tbl_9_upvr)
function clone_2.Update(arg1, arg2, arg3) -- Line 1960
	return CFrame.Angles(((-math.pi*2)) * (-(math.cos(math.pi * arg2) - 1) / 2 * arg3), 0, 0)
end
local clone = table.clone(tbl_9_upvr)
function clone.Update(arg1, arg2, arg3) -- Line 1970
	return CFrame.Angles(0, 0, -(((-math.pi*2)) * (-(math.cos(math.pi * arg2) - 1) / 2 * arg3)))
end
local clone_3 = table.clone(tbl_9_upvr)
function clone_3.Update(arg1, arg2, arg3) -- Line 1980
	return CFrame.Angles(0, 0, ((-math.pi*2)) * (-(math.cos(math.pi * arg2) - 1) / 2 * arg3))
end
tbl_21[1] = clone_5
tbl_21[2] = clone_2
tbl_21[3] = clone
tbl_21[4] = clone_3
module_5_upvr.PetAnimations.Jump = tbl_21
tbl_9_upvr = {}
local var153 = tbl_9_upvr
var153.Length = 1
var153.LengthVariance = 0.125
var153.Looped = true
var153.Priority = 2000
var153.SpeedIncreaseFactor = 0.015625
function var153.Update(arg1, arg2, arg3) -- Line 2005
	local var154 = (-math.pi*2) * arg2
	local minimum_2 = math.min(arg1.SpeedFactor ^ 0.3333333333333333, 5)
	return CFrame.Angles(0.04908738521234052 * (-minimum_2 + math.sin(var154)) * arg3, 0, 0.04908738521234052 * math.cos(var154) * arg3) + (Vector3.new(0, 1, 0)) * (arg1.Radius * 0.125 * (minimum_2 + 1) * (1 - ((2) * (arg2 % 0.5 / 0.5) - 1) ^ 2) * arg3)
end
module_5_upvr.PetAnimations.Walk = var153
var153 = {}
local var156_upvr = var153
var156_upvr.PendingCleanup = {}
function var156_upvr.Create(arg1, arg2) -- Line 2062
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local Attachment = Instance.new("Attachment")
	local any_I_result1_2 = module_3_upvr.I("ParticleEmitter", {
		Brightness = 3;
		Color = ColorSequence.new(Color3.fromRGB(0, 47, 255));
		Enabled = false;
		Lifetime = NumberRange.new(0.5);
		LightEmission = 1;
		LightInfluence = 0;
		Rate = 100;
		Rotation = NumberRange.new(0);
		RotSpeed = NumberRange.new(-50, 50);
		Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.25, 13.14), NumberSequenceKeypoint.new(0.5, 22.5), NumberSequenceKeypoint.new(0.75, 28.14), NumberSequenceKeypoint.new(1, 30)});
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Texture = "rbxassetid://1084955488";
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.25, 0.438), NumberSequenceKeypoint.new(0.5, 0.75), NumberSequenceKeypoint.new(0.75, 0.938), NumberSequenceKeypoint.new(1, 1)});
		Parent = Attachment;
	})
	local module_6 = {
		_CachedLifetimes = {};
		_CachedSizes = {};
		_LongestLifetime = any_I_result1_2.Lifetime.Max;
		Active = true;
		Destroyed = false;
		Detonated = false;
		ExpiresAt = math.huge;
		ChargeSize = 22.337196350097656;
		ExplosionSize = 30;
		LifetimeScale = 1;
		Attachment = Attachment;
		Emitters = {};
		ExplosionEmitter = any_I_result1_2;
	}
	module_6.Emitters[#module_6.Emitters + 1] = module_3_upvr.I("ParticleEmitter", {
		Name = "Core";
		Brightness = 1;
		Acceleration = Vector3.new(0, 0, 0);
		Color = ColorSequence.new(Color3.fromRGB(94, 194, 203));
		EmissionDirection = Enum.NormalId.Top;
		Lifetime = NumberRange.new(1);
		LightEmission = 1;
		LightInfluence = 0;
		Rate = 3;
		Rotation = NumberRange.new(0);
		RotSpeed = NumberRange.new(0);
		Size = NumberSequence.new(4);
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Texture = "rbxassetid://1084962479";
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)});
		Parent = Attachment;
	})
	module_6.Emitters[#module_6.Emitters + 1] = module_3_upvr.I("ParticleEmitter", {
		Name = "Rays_Thick";
		Brightness = 1;
		Acceleration = Vector3.new(0, 0, 0);
		Color = ColorSequence.new(Color3.fromRGB(94, 194, 203));
		EmissionDirection = Enum.NormalId.Top;
		Lifetime = NumberRange.new(1, 2);
		LightEmission = 1;
		LightInfluence = 0;
		Rate = 2.5;
		Rotation = NumberRange.new(-180, 180);
		RotSpeed = NumberRange.new(-75, 75);
		Size = NumberSequence.new(0, 100);
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Texture = "rbxassetid://1053548563";
		Transparency = NumberSequence.new(0, 1);
		Parent = Attachment;
	})
	module_6.Emitters[#module_6.Emitters + 1] = module_3_upvr.I("ParticleEmitter", {
		Name = "Rays_Thin";
		Brightness = 1;
		Acceleration = Vector3.new(0, 0, 0);
		Color = ColorSequence.new(Color3.fromRGB(94, 194, 203));
		EmissionDirection = Enum.NormalId.Top;
		Lifetime = NumberRange.new(1, 2);
		LightEmission = 1;
		LightInfluence = 0;
		Rate = 2.5;
		Rotation = NumberRange.new(-180, 180);
		RotSpeed = NumberRange.new(-75, 75);
		Size = NumberSequence.new(0, 100);
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Texture = "rbxassetid://1084961641";
		Transparency = NumberSequence.new(0, 1);
		Parent = Attachment;
	})
	module_6.Emitters[#module_6.Emitters + 1] = module_3_upvr.I("ParticleEmitter", {
		Name = "Wave";
		Brightness = 1;
		Acceleration = Vector3.new(0, 0, 0);
		Color = ColorSequence.new(Color3.fromRGB(94, 194, 203));
		EmissionDirection = Enum.NormalId.Top;
		Lifetime = NumberRange.new(1);
		LightEmission = 1;
		LightInfluence = 0;
		Rate = 2;
		Rotation = NumberRange.new(90);
		RotSpeed = NumberRange.new(0);
		Size = NumberSequence.new(0, 20);
		Speed = NumberRange.new(0);
		SpreadAngle = Vector2.zero;
		Texture = "rbxassetid://1084963972";
		Transparency = NumberSequence.new(0, 1);
		Parent = Attachment;
	})
	for _, v_6 in Attachment:GetDescendants() do
		if v_6:IsA("ParticleEmitter") then
			if v_6 ~= any_I_result1_2 then
				module_6.Emitters[#module_6.Emitters + 1] = v_6
			end
			if arg2 then
				v_6.LockedToPart = true
			end
			module_6._CachedLifetimes[v_6] = v_6.Lifetime
			module_6._CachedSizes[v_6] = v_6.Size
			local Max_2 = v_6.Lifetime.Max
			if module_6._LongestLifetime < Max_2 then
				module_6._LongestLifetime = Max_2
			end
		end
	end
	for _, v_7 in module_6.Emitters do
		if arg2 then
			v_7.LockedToPart = true
		end
		module_6._CachedLifetimes[v_7] = v_7.Lifetime
		module_6._CachedSizes[v_7] = v_7.Size
		local Max = v_7.Lifetime.Max
		if module_6._LongestLifetime < Max then
			module_6._LongestLifetime = Max
		end
	end
	if arg1 then
		Attachment.Parent = arg1
	end
	return module_6
end
local function _(arg1, arg2) -- Line 2247, Named "GlowChargeCleanUp"
	--[[ Upvalues[1]:
		[1]: var156_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local table_find_result1_5 = table.find(var156_upvr.PendingCleanup, arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	var156_upvr.PendingCleanup[#var156_upvr.PendingCleanup + 1] = arg1
	do
		return
	end
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 16. Error Block 7 start (CF ANALYSIS FAILED)
	if table_find_result1_5 then
		table.remove(var156_upvr.PendingCleanup, table_find_result1_5)
	end
	-- KONSTANTERROR: [19] 16. Error Block 7 end (CF ANALYSIS FAILED)
end
function var156_upvr.Destroy(arg1) -- Line 2266
	--[[ Upvalues[1]:
		[1]: var156_upvr (readonly)
	]]
	arg1.Destroyed = true
	var156_upvr.SetActive(arg1, false)
	local table_find_result1_3 = table.find(var156_upvr.PendingCleanup, arg1)
	if table_find_result1_3 then
		table.remove(var156_upvr.PendingCleanup, table_find_result1_3)
	end
	arg1.Attachment:Destroy()
end
function var156_upvr.Detonate(arg1) -- Line 2278
	--[[ Upvalues[1]:
		[1]: var156_upvr (readonly)
	]]
	if not arg1.Destroyed then
		var156_upvr.SetActive(arg1, false)
		arg1.ExplosionEmitter:Emit(10)
		arg1.ExpiresAt = os.clock() + arg1._LongestLifetime * arg1.LifetimeScale
		if not arg1.Detonated then
			arg1.Detonated = true
			if not table.find(var156_upvr.PendingCleanup, arg1) then
				var156_upvr.PendingCleanup[#var156_upvr.PendingCleanup + 1] = arg1
			end
		end
	end
end
function var156_upvr.SetActive(arg1, arg2) -- Line 2298
	--[[ Upvalues[1]:
		[1]: var156_upvr (readonly)
	]]
	if arg2 and arg1.Destroyed then
	elseif arg1.Active ~= arg2 then
		arg1.Active = arg2
		for i_23, v_17 in arg1.Emitters do
			v_17.Enabled = arg2
		end
		if arg2 then
			if arg1.Detonated then
				arg1.Detonated = false
				local table_find_result1_2 = table.find(var156_upvr.PendingCleanup, arg1)
				if table_find_result1_2 then
					i_23 = var156_upvr
					i_23 = table_find_result1_2
					table.remove(i_23.PendingCleanup, i_23)
				end
			end
		end
	end
end
function var156_upvr.SetChargeSize(arg1, arg2) -- Line 2324
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if arg1.ChargeSize ~= arg2 then
		arg1.ChargeSize = arg2
		local var189 = arg2 / 22.337196350097656
		for _, v_8 in arg1.Emitters do
			local var190 = arg1._CachedSizes[v_8]
			if var189 ~= 1 then
				var190 = module_3_upvr.NumberSequenceScale(var190, var189)
			end
			v_8.Size = var190
		end
	end
end
function var156_upvr.SetExplosionSize(arg1, arg2) -- Line 2347
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	if arg1.ExplosionSize ~= arg2 then
		arg1.ExplosionSize = arg2
		local var191 = arg2 / 30
		local var192 = arg1._CachedSizes[arg1.ExplosionEmitter]
		if var191 ~= 1 then
			var192 = module_3_upvr.NumberSequenceScale(var192, var191)
		end
		arg1.ExplosionEmitter.Size = var192
	end
end
function var156_upvr.SetLifetimeScale(arg1, arg2) -- Line 2367
	if arg1.LifetimeScale ~= arg2 then
		for i_14, v_9 in arg1._CachedLifetimes do
			if arg2 ~= 1 then
				v_9 = NumberRange.new(v_9.Min * arg2, v_9.Max * arg2)
			end
			i_14.Lifetime = v_9
		end
	end
end
local tbl_22_upvr = {
	[module_3_upvr.InputMode_gamepad] = "Press RT to Continue";
	[module_3_upvr.InputMode_mouse_keyboard] = "Click to Continue";
	[module_3_upvr.InputMode_touch] = "Tap to Continue";
}
local tbl_12_upvr = {
	Base = Color3.fromRGB(71, 41, 11);
	Midtone = Color3.fromRGB(175, 77, 28);
	Highlight = Color3.fromRGB(204, 115, 63);
	Gradient = Color3.fromRGB(254, 181, 78);
}
local tbl_7_upvr = {
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Keyboard] = true;
	[Enum.UserInputType.MouseButton1] = true;
	[Enum.UserInputType.MouseButton2] = true;
	[Enum.UserInputType.Touch] = true;
}
local function CloseHatchingInterface_upvr(arg1, arg2, arg3) -- Line 2523, Named "CloseHatchingInterface"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	local Pass = Enum.ContextActionResult.Pass
	if tbl_3_upvr.PetHatchUI and arg2 == Enum.UserInputState.Begin and tbl_7_upvr[arg3.UserInputType] then
		tbl_3_upvr.PetHatchUI.ExpirePending = true
		Pass = Enum.ContextActionResult.Sink
	end
	return Pass
end
local function DisableAutoHatching_upvr(arg1, arg2, arg3) -- Line 2543, Named "DisableAutoHatching"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	if module_5_upvr.PetHatchAutoHatching and arg2 == Enum.UserInputState.Begin and tbl_7_upvr[arg3.UserInputType] then
		module_5_upvr.PetHatchAutoHatching = false
	end
	return Enum.ContextActionResult.Pass
end
local function BindAction_upvr(arg1, arg2, ...) -- Line 2561, Named "BindAction"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
	]]
	if module_5_upvr.PetHatchBindPriority then
		ContextActionService_upvr:BindActionAtPriority(arg1, arg2, false, module_5_upvr.PetHatchBindPriority, ...)
	else
		ContextActionService_upvr:BindAction(arg1, arg2, false, ...)
	end
end
local PlayerGui_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local UserInputService_upvr = game:GetService("UserInputService")
local function PetHatchUICreate_upvr() -- Line 2586, Named "PetHatchUICreate"
	--[[ Upvalues[7]:
		[1]: module_3_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: class_Terrain_upvw (read and write)
		[4]: PlayerGui_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: BindAction_upvr (readonly)
		[7]: DisableAutoHatching_upvr (readonly)
	]]
	local module = {
		_Connections = {};
		Dirty = true;
		ExpirePending = false;
		ButtonSizeX = 0;
		ButtonSizeY = 0;
		GlowOverhang = 0;
		ContinueText = "";
		DisableText = "Stop Auto-Hatching";
		Hatches = {};
		PendingHatches = {};
		FadeTween = module_3_upvr.NumericTweenCreate(1, 0.5);
		PositionTween = module_3_upvr.NumericTweenCreate(1, 0.375, Enum.EasingStyle.Back);
	}
	if module_5_upvr.PetHatchLightProperties then
		module.CameraAttachment = module_3_upvr.I("Attachment", {
			Name = "PetHatchUI_CameraAttachment";
			Parent = class_Terrain_upvw;
		})
		module.CameraLight = module_3_upvr.I("PointLight", {
			Brightness = 0.25;
			Color = Color3.fromRGB(234, 255, 252);
			Range = 0.25;
			Parent = module.CameraAttachment;
		}, module_5_upvr.PetHatchLightProperties)
	end
	module.ScreenGui = module_3_upvr.I("ScreenGui", module_3_upvr.Props_ScreenGui, {
		Name = "BUP_PetHatchUI";
		Parent = PlayerGui_upvr;
	})
	module.ContinueLabel = module_3_upvr.I("TextLabel", module_3_upvr.Props_LabelManual, {
		FontFace = module_3_upvr.SharedTheme.Font_Italic;
		TextColor3 = module_3_upvr.SharedTheme.Text;
		TextTransparency = 0.25;
		ZIndex = 10;
		Parent = module.ScreenGui;
	})
	module.ContinueBounds = module_3_upvr.TextBoundsCreate(module.ContinueLabel.FontFace, module.ContinueLabel.RichText)
	module.ContinueStroke = module_3_upvr.I("UIStroke", module_3_upvr.Props_StrokeContextual, {
		Color = module_3_upvr.SharedTheme.Stroke;
		Transparency = 0.75;
		Parent = module.ContinueLabel;
	})
	module.ContinueGlow = module_3_upvr.I("ImageLabel", {
		BackgroundTransparency = 1;
		Image = "rbxassetid://16512882298";
		ImageColor3 = module_3_upvr.SharedTheme.Text;
		ImageTransparency = 0.75;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.one * 256, Vector2.one * 256);
		ZIndex = -10;
		Parent = module.ScreenGui;
	})
	module.CachedOpacities = module_3_upvr.CO_Create()
	module_3_upvr.CO_AppendWithFadeTween(module.CachedOpacities, module.FadeTween, module.ScreenGui)
	module.DisableButton = module_3_upvr.FancyButton_TextCreate({
		Text = module.DisableText;
	})
	module.DisableButton.Button.Parent = module.ScreenGui
	if UserInputService_upvr:GetImageForKeyCode(module_5_upvr.PetHatchDisableAutoHatchingBind) ~= "" then
		module.DisableIcon = module_3_upvr.I("ImageLabel", {
			AnchorPoint = Vector2.yAxis * 0.5;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			ImageColor3 = module_3_upvr.SharedTheme.Text;
			ZIndex = 2147483647;
			Parent = module.DisableButton.Button;
		})
	end
	module.DisableButton.Button.Activated:Connect(function() -- Line 2697
		--[[ Upvalues[1]:
			[1]: module_5_upvr (copied, readonly)
		]]
		module_5_upvr.PetHatchAutoHatching = false
	end)
	BindAction_upvr(module_5_upvr.PetHatchContinueBindName, DisableAutoHatching_upvr, module_5_upvr.PetHatchDisableAutoHatchingBind)
	return module
end
function module_5_upvr.RegisterPetHatch(arg1, arg2) -- Line 2709
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: PetHatchUICreate_upvr (readonly)
	]]
	local tbl_19 = {}
	tbl_19.Egg = arg1
	tbl_19.Pets = table.clone(arg2)
	local PetHatchUI = tbl_3_upvr.PetHatchUI
	if not PetHatchUI then
		PetHatchUI = PetHatchUICreate_upvr()
		tbl_3_upvr.PetHatchUI = PetHatchUI
	end
	assert(PetHatchUI)
	PetHatchUI.ExpirePending = true
	PetHatchUI.PendingHatches[#PetHatchUI.PendingHatches + 1] = tbl_19
end
local tbl_18_upvr = {
	Glow = 1;
	Hatch = 2;
	Display = 3;
	Expire = 4;
}
local tbl_2_upvr = {
	ButtonPosScaleY = 0.875;
	ButtonSizeXEm = 13.5;
	ButtonSizeYEm = 2.25;
	ButtonTextYEm = 1.35;
	ContinuePosScaleY = 0.85;
	ContinueTextEm = 2;
	EggGlowScale = 1.025;
	GlowOverhangEm = 1;
	GlowOverhangScaleX = 2;
	PetsPerRow = 3;
	PetsHorizontalSkewFactor = 0;
	PetsVerticalSkewFactor = 0.075;
	PetsMaxHorizontalFactor = 0.75;
	PetsMaxVerticalFactor = 0.75;
	PetNameEm = 2.5;
	PetNameOffsetYEm = 0.5;
	CornerRadiusButtonEm = 0.3;
	FancyButtonStrokeEm = 0.12222222222222222;
	FancyButtonLabelStrokeEm = 0.1111111111111111;
	StrokeVeryThin = 0.14583333333333334;
}
local tbl_11_upvr = {
	[tbl_18_upvr.Glow] = 3;
	[tbl_18_upvr.Hatch] = 0.125;
	[tbl_18_upvr.Display] = math.huge;
	[tbl_18_upvr.Expire] = 0.75;
}
local tbl_8_upvr = {
	Chimes = {
		SoundId = "rbxassetid://9114369623";
		Volume = 0.25;
	};
	Pop = {
		SoundId = "rbxassetid://9113856069";
		Volume = 2;
	};
	Static = {
		SoundId = "rbxassetid://9119836911";
		Volume = 0.25;
	};
	Woosh = {
		PlaybackSpeed = 0.8;
		SoundId = "rbxassetid://9117894969";
		TimePosition = 0.375;
		Volume = 0.075;
	};
}
local tbl_17_upvr = {
	ChargeFadeDelay = 1;
	ChargeFadeIn = 1.5;
	EggSpinPeriod = 12;
	HatchTimeVariancePerPet = 0.125;
	PetExpireDurationVarianceFactor = 0.25;
	PetFloatPeriod = 3;
}
local function PetComponentCreate_upvr(arg1, arg2, arg3, arg4) -- Line 2809, Named "PetComponentCreate"
	--[[ Upvalues[6]:
		[1]: var156_upvr (readonly)
		[2]: class_Terrain_upvw (read and write)
		[3]: tbl_17_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: tbl_11_upvr (readonly)
		[6]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_Create_result1 = var156_upvr.Create(class_Terrain_upvw, true)
	local tbl_13 = {
		Charge = any_Create_result1;
		FadeDelay = tbl_17_upvr.ChargeFadeDelay - arg4;
		FadeTween = module_3_upvr.NumericTweenCreate(1, tbl_17_upvr.ChargeFadeIn, Enum.EasingStyle.Quint);
		Opacities = module_3_upvr.CIO_Create(any_Create_result1.Attachment);
	}
	module_3_upvr.CIO_Apply(tbl_13.Opacities, tbl_13.FadeTween.ValueCurrent)
	local module_4 = {}
	module_4.Egg = arg1
	module_4.Pet = arg2
	module_4.AngleX = 0
	module_4.AngleY = 0
	module_4.ComponentModel_ByHatchObject = {}
	module_4.CreatedAt = arg3 + arg4
	module_4.Duration = tbl_11_upvr[0] or 0
	module_4.Finished = false
	module_4.Step = 0
	module_4.Time = arg4
	module_4.AnimationState_Charge = tbl_13
	local tbl_10 = {}
	tbl_10[1] = arg1
	tbl_10[2] = arg2
	local var234
	for _, v_10 in tbl_10 do
		if v_10 ~= arg2 then
			var234 = false
		else
			var234 = true
		end
		local tbl_14 = {}
		if var234 then
		else
		end
		tbl_14.Parent = workspace
		tbl_14.SetPivotToBottom = var234
		tbl_14.Depth = 0
		tbl_14.Offset = CFrame.identity
		tbl_14.OriginalScale = 1
		tbl_14.OriginalSize = Vector3.new(1, 1, 1)
		module_4.ComponentModel_ByHatchObject[v_10] = tbl_14
	end
	return module_4
end
local function UpdateComponentModelScale_upvr(arg1, arg2, arg3, arg4) -- Line 2871, Named "UpdateComponentModelScale"
	local assert_result1_2 = assert(arg2.Model)
	local var237 = arg3
	if not var237 then
		var237 = arg2.OriginalScale
	end
	local var238 = arg4
	if not var238 then
		var238 = arg2.OriginalSize
	end
	assert_result1_2:ScaleTo((var237) * (arg1.ArcLength / (var238.X ^ 2 + var238.Y ^ 2) ^ 0.5))
	local any_GetBoundingBox_result1_3, any_GetBoundingBox_result2 = assert_result1_2:GetBoundingBox()
	arg2.Depth = any_GetBoundingBox_result2.Z * 0.5
	arg2.Offset = any_GetBoundingBox_result1_3:ToObjectSpace(assert_result1_2:GetPivot())
end
local function GetModelFromHatchObject_upvr(arg1, arg2, arg3) -- Line 2894, Named "GetModelFromHatchObject"
	--[[ Upvalues[1]:
		[1]: UpdateComponentModelScale_upvr (readonly)
	]]
	local var245 = arg2.ComponentModel_ByHatchObject[arg3]
	local var246
	if not var245.Model and arg3.Model then
		var246 = true
		local CloneMethod = arg3.CloneMethod
		if not CloneMethod then
			CloneMethod = arg3.Model.Clone
		end
		local CloneMethod_result1 = CloneMethod(arg3.Model)
		local assert_result1 = assert(CloneMethod_result1.PrimaryPart, "Model missing PrimaryPart")
		var245.Model = CloneMethod_result1
		var245.OriginalScale = CloneMethod_result1:GetScale()
		var245.OriginalSize = assert_result1.Size
		for i_16, v_11 in CloneMethod_result1:GetDescendants() do
			if v_11:IsA("BasePart") then
				v_11.CastShadow = false
				v_11.Anchored = true
				v_11.CanCollide = false
				v_11.CanQuery = false
				v_11.CanTouch = false
			end
		end
		if var245.SetPivotToBottom then
			local any_GetBoundingBox_result1_2, _ = CloneMethod_result1:GetBoundingBox()
			i_16 = CFrame.new
			v_11 = 0
			i_16 = i_16(v_11, -_.Y * 0.5, 0)
			i_16 = assert_result1.CFrame:ToObjectSpace(any_GetBoundingBox_result1_2 * i_16)
			assert_result1.PivotOffset = i_16
		end
		CloneMethod_result1.Parent = var245.Parent
	end
	if var245.Model and (arg1.ArcDirty or var246) then
		UpdateComponentModelScale_upvr(arg1, var245)
	end
	return var245.Model, var246
end
local function _(arg1, arg2) -- Line 2962, Named "GetEggSpin"
	--[[ Upvalues[1]:
		[1]: tbl_17_upvr (readonly)
	]]
	return CFrame.Angles(0, ((-math.pi*2)) * ((arg2 - arg1.CreatedAt) % tbl_17_upvr.EggSpinPeriod / tbl_17_upvr.EggSpinPeriod), 0)
end
local function _(arg1) -- Line 2972, Named "GetPetAngle"
	return CFrame.Angles(arg1.AngleX, -arg1.AngleY + math.pi, 0)
end
local function _(arg1, arg2, arg3, arg4) -- Line 2979, Named "GetPetFloat"
	--[[ Upvalues[1]:
		[1]: tbl_17_upvr (readonly)
	]]
	return arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg3 - arg2.CreatedAt) % tbl_17_upvr.PetFloatPeriod / tbl_17_upvr.PetFloatPeriod)) * (arg4 or 1)
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 2991, Named "GetObjectCFrames"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var255 = tbl_3_upvr.NearPlaneDepth + (arg3 or 0)
	local var257
	if arg5 then
		var257 *= arg5
	end
	if arg4 then
		var257 *= arg4
	end
	return var257, CFrame.new(var255 * math.tan(arg2), var255 * math.tan(arg1), -var255)
end
local function _(arg1) -- Line 3019, Named "AnimationState_ChargeDestroy"
	--[[ Upvalues[1]:
		[1]: var156_upvr (readonly)
	]]
	var156_upvr.Destroy(arg1.AnimationState_Charge.Charge)
end
local function AnimateState_ChargeUpdate_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 3028, Named "AnimateState_ChargeUpdate"
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_17_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: var156_upvr (readonly)
	]]
	local AnimationState_Charge_3 = arg2.AnimationState_Charge
	AnimationState_Charge_3.Charge.Attachment.CFrame = tbl_3_upvr.CameraCFrame * arg3 * CFrame.Angles(0, ((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_17_upvr.EggSpinPeriod / tbl_17_upvr.EggSpinPeriod), 0)
	AnimationState_Charge_3.FadeDelay -= arg4
	if AnimationState_Charge_3.FadeDelay <= 0 then
		module_3_upvr.NumericTweener(AnimationState_Charge_3.FadeTween, arg5, 0)
		if AnimationState_Charge_3.FadeTween.Dirty then
			module_3_upvr.CIO_Apply(AnimationState_Charge_3.Opacities, AnimationState_Charge_3.FadeTween.ValueCurrent)
		end
	end
	if arg6 or arg1.ArcDirty then
		local var261 = arg1.ArcLength * arg2.ComponentModel_ByHatchObject[arg2.Egg].OriginalSize.Magnitude * 0.25
		var156_upvr.SetChargeSize(AnimationState_Charge_3.Charge, var261 * 0.25)
		var156_upvr.SetExplosionSize(AnimationState_Charge_3.Charge, var261)
	end
end
local function _(arg1) -- Line 3075, Named "AnimationState_GlowDestroy"
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local AnimationState_Glow = arg1.AnimationState_Glow
	if AnimationState_Glow then
		arg1.AnimationState_Glow = nil
		AnimationState_Glow.Model:Destroy()
		if arg1.ComponentModel_ByHatchObject[arg1.Egg].Model then
			module_3_upvr.CIO_Apply(AnimationState_Glow.OpacitiesEgg, 0)
		end
	end
end
local function _(arg1) -- Line 3097, Named "AnimationState_NameDestroy"
	local AnimationState_Name_2 = arg1.AnimationState_Name
	if AnimationState_Name_2 then
		arg1.AnimationState_Name = nil
		AnimationState_Name_2.Label:Destroy()
	end
end
local function AnimationState_NameUpdate_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 3111, Named "AnimationState_NameUpdate"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local AnimationState_Name = arg2.AnimationState_Name
	local var265
	if AnimationState_Name then
		if arg4 then
			var265 = 0
		else
			var265 = 1
		end
		module_3_upvr.NumericTweener(AnimationState_Name.FadeTween, arg5, var265)
		if not arg4 and module_3_upvr.NumericTweenIsDone(AnimationState_Name.FadeTween, 1) then
			local AnimationState_Name_4 = arg2.AnimationState_Name
			if AnimationState_Name_4 then
				arg2.AnimationState_Name = nil
				AnimationState_Name_4.Label:Destroy()
			end
			return
		end
		if AnimationState_Name.FadeTween.Dirty then
			var265 = AnimationState_Name.FadeTween
			module_3_upvr.CO_ApplyTransparency(AnimationState_Name.Opacities, var265.ValueCurrent)
		end
		local TextScale = arg1.TextScale
		var265 = arg2.Pet.Name
		if module_3_upvr.TextBoundsUpdate(AnimationState_Name.Bounds, var265, module_3_upvr.EmSize * TextScale * tbl_2_upvr.PetNameEm // 1, math.huge) then
			local Bounds = AnimationState_Name.Bounds
			var265 = UDim2.fromOffset(Bounds.X, Bounds.Y)
			AnimationState_Name.Label.Size = var265
			var265 = Bounds.TextSize
			AnimationState_Name.Label.TextSize = var265
		end
		if arg6 or module_3_upvr.EmSizeDirty then
			var265 = module_3_upvr.EmSize
			AnimationState_Name.Stroke.Thickness = var265 * tbl_2_upvr.StrokeVeryThin
		end
		local CurrentCamera_2 = workspace.CurrentCamera
		if CurrentCamera_2 then
			local any_WorldToViewportPoint_result1 = CurrentCamera_2:WorldToViewportPoint(arg3.Position)
			var265 = AnimationState_Name.Label
			var265.Position = UDim2.fromOffset(any_WorldToViewportPoint_result1.X, any_WorldToViewportPoint_result1.Y + module_3_upvr.EmSize * TextScale * tbl_2_upvr.PetNameOffsetYEm // 1)
		end
	end
end
local tbl_5_upvr = {
	[tbl_18_upvr.Glow] = function(arg1, arg2, arg3, arg4, arg5) -- Line 3189
		--[[ Upvalues[6]:
			[1]: tbl_2_upvr (readonly)
			[2]: tbl_17_upvr (readonly)
			[3]: tbl_3_upvr (readonly)
			[4]: GetModelFromHatchObject_upvr (readonly)
			[5]: module_3_upvr (readonly)
			[6]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _ = arg2.Time / arg2.Duration
		local var274 = arg2.ComponentModel_ByHatchObject[arg2.Egg]
		local _ = tbl_3_upvr.NearPlaneDepth + (var274.Depth * tbl_2_upvr.EggGlowScale or 0)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [83] 64. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [83] 64. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [84] 65. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [84] 65. Error Block 3 end (CF ANALYSIS FAILED)
	end;
	[tbl_18_upvr.Hatch] = function(arg1, arg2, arg3, arg4, arg5) -- Line 3277
		--[[ Upvalues[9]:
			[1]: module_5_upvr (readonly)
			[2]: module_3_upvr (readonly)
			[3]: tbl_8_upvr (readonly)
			[4]: var156_upvr (readonly)
			[5]: GetModelFromHatchObject_upvr (readonly)
			[6]: UpdateComponentModelScale_upvr (readonly)
			[7]: tbl_17_upvr (readonly)
			[8]: tbl_3_upvr (readonly)
			[9]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		if arg3 then
			local AnimationState_Charge_2 = arg2.AnimationState_Charge
			local tbl = {
				Parent = AnimationState_Charge_2.Charge.Attachment;
			}
			module_5_upvr.ExternalPlaySoundEffect(module_3_upvr.PropsMerge(tbl_8_upvr.Pop, tbl), 0.375)
			module_5_upvr.ExternalPlaySoundEffect(module_3_upvr.PropsMerge(tbl_8_upvr.Woosh, tbl), 0.125)
			local var291 = arg2.ComponentModel_ByHatchObject[arg2.Egg]
			if var291.Model then
				var291.Model:Destroy()
				var291.Model = nil
			end
			local AnimationState_Glow_4 = arg2.AnimationState_Glow
			if AnimationState_Glow_4 then
				arg2.AnimationState_Glow = nil
				AnimationState_Glow_4.Model:Destroy()
				if arg2.ComponentModel_ByHatchObject[arg2.Egg].Model then
					module_3_upvr.CIO_Apply(AnimationState_Glow_4.OpacitiesEgg, 0)
				end
			end
			var156_upvr.Detonate(AnimationState_Charge_2.Charge)
		end
		local var293 = arg2.ComponentModel_ByHatchObject[arg2.Pet]
		local GetModelFromHatchObject_upvr_result1_2 = GetModelFromHatchObject_upvr(arg1, arg2, arg2.Pet)
		local var295 = arg2.Time / arg2.Duration
		if GetModelFromHatchObject_upvr_result1_2 then
			UpdateComponentModelScale_upvr(arg1, var293, var293.OriginalScale * math.max(var295, 0.0000152587890625))
		end
		local Offset = var293.Offset
		local cframe = CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi, 0)
		local var298 = tbl_3_upvr.NearPlaneDepth + (var293.Depth or 0)
		local cframe_4 = CFrame.new(var298 * math.tan(arg2.AngleY), var298 * math.tan(arg2.AngleX + arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_17_upvr.PetFloatPeriod / tbl_17_upvr.PetFloatPeriod)) * (var295 or 1)), -var298)
		if cframe then
		end
		if Offset then
		end
		if GetModelFromHatchObject_upvr_result1_2 then
			GetModelFromHatchObject_upvr_result1_2:PivotTo(tbl_3_upvr.CameraCFrame * cframe_4 * cframe * Offset)
		end
		AnimateState_ChargeUpdate_upvr(arg1, arg2, cframe_4, arg4, arg5)
	end;
	[tbl_18_upvr.Display] = function(arg1, arg2, arg3, arg4, arg5) -- Line 3349
		--[[ Upvalues[7]:
			[1]: tbl_3_upvr (readonly)
			[2]: module_3_upvr (readonly)
			[3]: GetModelFromHatchObject_upvr (readonly)
			[4]: UpdateComponentModelScale_upvr (readonly)
			[5]: tbl_17_upvr (readonly)
			[6]: AnimationState_NameUpdate_upvr (readonly)
			[7]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		if not arg2.AnimationState_Name then
			local any_I_result1 = module_3_upvr.I("TextLabel", module_3_upvr.Props_LabelManual, {
				AnchorPoint = Vector2.xAxis * 0.5;
				FontFace = module_3_upvr.SharedTheme.Font_Normal;
				Text = arg2.Pet.Name;
				TextColor3 = module_3_upvr.SharedTheme.Text;
				ZIndex = 10;
				Parent = assert(tbl_3_upvr.PetHatchUI).ScreenGui;
			})
			local any_NumericTweenCreate_result1 = module_3_upvr.NumericTweenCreate(1, 0.75, Enum.EasingStyle.Quart)
			local any_CO_Create_result1 = module_3_upvr.CO_Create()
			module_3_upvr.CO_AppendWithFadeTween(any_CO_Create_result1, any_NumericTweenCreate_result1, any_I_result1)
			arg2.AnimationState_Name = {
				Bounds = module_3_upvr.TextBoundsCreate(any_I_result1.FontFace, any_I_result1.RichText);
				FadeTween = any_NumericTweenCreate_result1;
				Label = any_I_result1;
				Opacities = any_CO_Create_result1;
				Stroke = module_3_upvr.I("UIStroke", module_3_upvr.Props_StrokeContextual, {
					Color = module_3_upvr.SharedTheme.Stroke;
					Transparency = 0.75;
					Parent = any_I_result1;
				});
			}
		end
		local var307 = arg2.ComponentModel_ByHatchObject[arg2.Pet]
		local GetModelFromHatchObject_upvr_result1_4 = GetModelFromHatchObject_upvr(arg1, arg2, arg2.Pet)
		local var309
		if arg3 and GetModelFromHatchObject_upvr_result1_4 then
			UpdateComponentModelScale_upvr(arg1, var307, var307.OriginalScale)
		end
		local Offset_4 = var307.Offset
		local cframe_2 = CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi, 0)
		local var312 = tbl_3_upvr.NearPlaneDepth + (var307.Depth or 0)
		var309 = arg2.AngleX + arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_17_upvr.PetFloatPeriod / tbl_17_upvr.PetFloatPeriod)) * 1
		var309 = var312 * math.tan(arg2.AngleY)
		local cframe_3 = CFrame.new(var309, var312 * math.tan(var309), -var312)
		var309 = tbl_3_upvr.CameraCFrame * cframe_3
		if cframe_2 then
			var309 *= cframe_2
		end
		if Offset_4 then
			var309 *= Offset_4
		end
		local var314 = var309
		if GetModelFromHatchObject_upvr_result1_4 then
			GetModelFromHatchObject_upvr_result1_4:PivotTo(var314)
		end
		AnimationState_NameUpdate_upvr(arg1, arg2, var314, true, arg5, arg3)
		AnimateState_ChargeUpdate_upvr(arg1, arg2, cframe_3, arg4, arg5)
	end;
	[tbl_18_upvr.Expire] = function(arg1, arg2, arg3, arg4, arg5) -- Line 3440
		--[[ Upvalues[6]:
			[1]: tbl_17_upvr (readonly)
			[2]: module_3_upvr (readonly)
			[3]: GetModelFromHatchObject_upvr (readonly)
			[4]: tbl_3_upvr (readonly)
			[5]: AnimationState_NameUpdate_upvr (readonly)
			[6]: AnimateState_ChargeUpdate_upvr (readonly)
		]]
		local var316 = arg2.Time / arg2.Duration
		local var317 = arg2.AngleX + arg1.ArcAngle * 0.05 * math.sin(((-math.pi*2)) * ((arg5 - arg2.CreatedAt) % tbl_17_upvr.PetFloatPeriod / tbl_17_upvr.PetFloatPeriod)) * 1
		local assert_result1_3 = assert(arg1.CameraSpecs)
		local var319 = var317 + assert_result1_3.Vertical * 0.025
		local var320 = arg2.ComponentModel_ByHatchObject[arg2.Pet]
		local GetModelFromHatchObject_upvr_result1_3 = GetModelFromHatchObject_upvr(arg1, arg2, arg2.Pet)
		local Offset_2 = var320.Offset
		local cframe_7 = CFrame.Angles(arg2.AngleX, -arg2.AngleY + math.pi, 0)
		local var324 = tbl_3_upvr.NearPlaneDepth + (var320.Depth or 0)
		local var326
		if cframe_7 then
			var326 *= cframe_7
		end
		if Offset_2 then
			var326 *= Offset_2
		end
		local var327 = var326
		if GetModelFromHatchObject_upvr_result1_3 then
			GetModelFromHatchObject_upvr_result1_3:PivotTo(var327)
		end
		AnimationState_NameUpdate_upvr(arg1, arg2, var327, false, arg5)
		AnimateState_ChargeUpdate_upvr(arg1, arg2, CFrame.new(var324 * math.tan(arg2.AngleY * (1 + 0.25 * var316)), var324 * math.tan(module_3_upvr.Lerp(var317, var319, var316) + (-math.min(assert_result1_3.HalfVertical + arg1.ArcAngle, 1.570781068005834) - var319) * (2 * var316 ^ 2 * math.sin((math.pi/2) * var316) - var316)), -var324), arg4, arg5)
	end;
}
local function PetComponentDestroy_upvr(arg1) -- Line 3498, Named "PetComponentDestroy"
	--[[ Upvalues[2]:
		[1]: var156_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	for _, v_12 in arg1.ComponentModel_ByHatchObject do
		if v_12.Model then
			v_12.Model:Destroy()
			v_12.Model = nil
		end
	end
	var156_upvr.Destroy(arg1.AnimationState_Charge.Charge)
	local AnimationState_Glow_3 = arg1.AnimationState_Glow
	if AnimationState_Glow_3 then
		arg1.AnimationState_Glow = nil
		AnimationState_Glow_3.Model:Destroy()
		if arg1.ComponentModel_ByHatchObject[arg1.Egg].Model then
			module_3_upvr.CIO_Apply(AnimationState_Glow_3.OpacitiesEgg, 0)
		end
	end
	local AnimationState_Name_3 = arg1.AnimationState_Name
	if AnimationState_Name_3 then
		arg1.AnimationState_Name = nil
		AnimationState_Name_3.Label:Destroy()
	end
end
local function SortThrottleSteps_upvr(arg1, arg2) -- Line 3519, Named "SortThrottleSteps"
	local var332
	if arg1.Distance >= arg2.Distance then
		var332 = false
	else
		var332 = true
	end
	return var332
end
function module_5_upvr.Stepped(arg1, arg2) -- Line 3526
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: SortThrottleSteps_upvr (readonly)
	]]
	tbl_3_upvr.LastSteppedDelta = arg1
	tbl_3_upvr.LastSteppedTime = arg2
	for i_18, v_13 in {
		LastAnimationPairs = {
			Pairs = module_5_upvr.PetAnimationUpdateRateDistancePairs;
			Steps = tbl_3_upvr.AnimationSteps;
		};
		LastPhysicsPairs = {
			Pairs = module_5_upvr.PetPhysicsStepRateDistancePairs;
			Steps = tbl_3_upvr.PhysicsSteps;
		};
	} do
		if tbl_3_upvr[i_18] ~= v_13.Pairs then
			tbl_3_upvr[i_18] = v_13.Pairs
			table.clear(v_13.Steps)
			for i_19, v_14 in v_13.Pairs do
				v_13.Steps[i_19] = {
					Distance = v_14[1];
					Delta = 1 / v_14[2];
					Remainder = 0;
					Steps = 0;
				}
			end
			table.sort(v_13.Steps, SortThrottleSteps_upvr)
		end
		for _, v_15 in v_13.Steps do
			local var349 = arg1 + v_15.Remainder
			v_15.Steps = var349 // v_15.Delta
			local var350 = v_15.Delta * v_15.Steps
			local var351 = var349 - var350
			if 0.0000152587890625 < var351 then
				var350 = var351
			else
				var350 = 0
			end
			v_15.Remainder = var350
		end
	end
end
function module_5_upvr.RenderStepped(arg1, arg2) -- Line 3583
	--[[ Upvalues[17]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: CameraSpecsCreate_upvr (readonly)
		[4]: PetComponentCreate_upvr (readonly)
		[5]: tbl_17_upvr (readonly)
		[6]: module_3_upvr (readonly)
		[7]: tbl_22_upvr (readonly)
		[8]: tbl_2_upvr (readonly)
		[9]: tbl_12_upvr (readonly)
		[10]: tbl_11_upvr (readonly)
		[11]: tbl_18_upvr (readonly)
		[12]: tbl_8_upvr (readonly)
		[13]: PetComponentDestroy_upvr (readonly)
		[14]: tbl_5_upvr (readonly)
		[15]: BindAction_upvr (readonly)
		[16]: CloseHatchingInterface_upvr (readonly)
		[17]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("BUPC_RenderStepped")
	local CurrentCamera = workspace.CurrentCamera
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 2 start (CF ANALYSIS FAILED)
	tbl_3_upvr.CameraCFrame = CurrentCamera.CFrame
	tbl_3_upvr.NearPlaneDepth = math.abs(CurrentCamera.NearPlaneZ) + module_5_upvr.NearPlaneTolerance
	tbl_3_upvr.CameraSpecs = CameraSpecsCreate_upvr(CurrentCamera)
	-- KONSTANTERROR: [14] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 28. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 28. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_5_upvr.Init(arg1) -- Line 4093
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: HighlightModelCreate_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: tbl_20_upvr (readonly)
	]]
	assert(arg1, "Missing GameData")
	local _ = {
		DepthMode = Enum.HighlightDepthMode.Occluded;
		FillColor = Color3.fromRGB(0, 0, 0);
		FillTransparency = 1;
		OutlineColor = Color3.fromRGB(0, 0, 0);
		OutlineTransparency = 0;
	}
	local var356
	if arg1.HighlightProps then
		var356 = module_3_upvr.PropsMerge(var356, arg1.HighlightProps)
	end
	for i_21 in module_5_upvr.HighlightModels do
		module_5_upvr.HighlightModels[i_21] = HighlightModelCreate_upvr(var356, workspace)
		local _
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	module_2_upvr.InitializeRemotes(tbl_20_upvr)
end
return module_5_upvr