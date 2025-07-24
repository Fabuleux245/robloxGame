-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:07
-- Luau version 6, Types version 3
-- Time taken: 0.014900 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_6_upvr = require(Modules:WaitForChild("Utility"))
local module_2_upvr = require(script:FindFirstAncestor("LevelLoader"):WaitForChild("DimensionManager"))
module.ObjectType = table.freeze({
	Orbiter = 1;
	Slider = 2;
	Spinner = 3;
	Stepper = 5;
	Texture = 4;
})
local tbl_3_upvr = {
	CameraPlanes = nil;
	DynamicObjects_ByType_ByLevelAssetState = {};
}
local tbl_upvr = {}
local tbl_5_upvr = {
	RotationalSpeed = math.pi;
}
local function _(arg1) -- Line 91, Named "GetCFrame"
	local var12
	local var13
	if arg1 then
		if typeof(arg1) == "CFrame" then
			var12 = arg1
			var13 = false
			return var12, var13
		end
		if typeof(arg1) == "Vector3" then
			var12 = CFrame.new(arg1)
			var13 = true
		end
	end
	return var12, var13
end
local function DynamicPVInstanceInitialize_upvr(arg1) -- Line 131, Named "DynamicPVInstanceInitialize"
	local Object = arg1.Object
	assert(Object:IsA("PVInstance"))
	local any_GetPivot_result1_2 = Object:GetPivot()
	local identity = CFrame.identity
	local var17 = Vector3.new(0, 0, 0)
	if Object:IsA("Model") then
		local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = Object:GetBoundingBox()
		identity = any_GetBoundingBox_result1
		var17 = any_GetBoundingBox_result2
	elseif Object:IsA("BasePart") then
		identity = Object.CFrame
		var17 = Object.Size
	end
	arg1.Origin = any_GetPivot_result1_2
	arg1.Pivot = any_GetPivot_result1_2
	arg1.PivotOffset = any_GetPivot_result1_2:ToObjectSpace(identity)
	arg1.Size = var17
	return arg1
end
local function DynamicPVInstanceInFrame(arg1, arg2) -- Line 160
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return module_6_upvr.CameraBoxInFrame(arg2, arg1.Pivot * arg1.PivotOffset, arg1.Size)
end
local function PerformStep_upvr(arg1, arg2) -- Line 206, Named "PerformOrbit"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var24 = arg1.Pivot * CFrame.Angles(0, arg1.Rotation, 0)
	for _, v in arg1.Objects do
		local any_CFrameToDimensionSpace_result1_4 = module_2_upvr.CFrameToDimensionSpace(arg2, v.Rotation + var24 * v.Offset)
		v.Pivot = any_CFrameToDimensionSpace_result1_4
		v.Object:PivotTo(any_CFrameToDimensionSpace_result1_4)
	end
end
local tbl_2 = {}
local function Initialize(arg1, arg2, arg3) -- Line 225
	--[[ Upvalues[5]:
		[1]: module_3_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: DynamicPVInstanceInitialize_upvr (readonly)
		[5]: PerformStep_upvr (readonly)
	]]
	local Pivot = arg2.Pivot
	local var32
	local var33
	if Pivot then
		if typeof(Pivot) == "CFrame" then
			var32 = Pivot
		elseif typeof(Pivot) == "Vector3" then
			var32 = CFrame.new(Pivot)
		end
	end
	var33 = var32
	if typeof(var33) ~= "CFrame" then
		warn(module_3_upvr.FormatOutput("Orbiter '%s' from LevelAsset '%s' is missing a Pivot attribute", "DynamicObjectManager", nil, arg1.Object.Name, arg3.Asset.Id))
		var33 = CFrame.identity
	end
	arg1.Pivot = var33
	local radians = math.rad(module_6_upvr.GetNumber(arg2.StartAngle) or 0)
	arg1.Rotation = radians
	if type(arg2.Speed) == "number" then
		radians = math.rad(arg2.Speed)
	else
		radians = tbl_5_upvr.RotationalSpeed
	end
	arg1.Speed = radians
	arg1.Objects = {}
	for i_2, v_2 in arg1.Object:GetChildren() do
		if v_2:IsA("PVInstance") then
			local any_GetPivot_result1 = v_2:GetPivot()
			arg1.Objects[#arg1.Objects + 1] = DynamicPVInstanceInitialize_upvr({
				Object = v_2;
				Offset = var33:ToObjectSpace(any_GetPivot_result1).Position;
				Rotation = any_GetPivot_result1.Rotation;
			})
		end
	end
	if #arg1.Objects == 0 then
		i_2 = "DynamicObjectManager"
		v_2 = nil
		warn(module_3_upvr.FormatOutput("Orbiter '%s' from LevelAsset '%s' has no objects", i_2, v_2, arg1.Object.Name, arg3.Asset.Id))
	end
	if arg1.Rotation ~= 0 then
		PerformStep_upvr(arg1, arg3)
	end
end
tbl_2.Initialize = Initialize
local function InFrame(arg1, arg2) -- Line 273
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local var44
	for _, v_3 in arg1.Objects do
		if module_6_upvr.CameraBoxInFrame(arg2, v_3.Pivot * v_3.PivotOffset, v_3.Size) then
			var44 = true
			return var44
		end
	end
	return var44
end
tbl_2.InFrame = InFrame
local function Update(arg1, arg2, arg3) -- Line 292
	--[[ Upvalues[1]:
		[1]: PerformStep_upvr (readonly)
	]]
	arg1.Rotation = (arg1.Rotation + arg1.Speed * arg2) % (-math.pi*2)
	PerformStep_upvr(arg1, arg3)
end
tbl_2.Update = Update
tbl_upvr[module.ObjectType.Orbiter] = tbl_2
function PerformStep_upvr(arg1, arg2) -- Line 344, Named "PerformSlide"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any_CFrameToDimensionSpace_result1_6 = module_2_upvr.CFrameToDimensionSpace(arg2, arg1.Origin:Lerp(arg1.Goal, 0.5 - math.cos((-math.pi*2) * arg1.Time / arg1.Cycle) * 0.5))
	arg1.Pivot = any_CFrameToDimensionSpace_result1_6
	arg1.Object:PivotTo(any_CFrameToDimensionSpace_result1_6)
end
local tbl = {}
local function Initialize(arg1, arg2, arg3) -- Line 360
	--[[ Upvalues[4]:
		[1]: DynamicPVInstanceInitialize_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local DynamicPVInstanceInitialize_upvr_result1 = DynamicPVInstanceInitialize_upvr(arg1)
	DynamicPVInstanceInitialize_upvr_result1.Cycle = module_6_upvr.GetNumber(arg2.Cycle) or 1
	DynamicPVInstanceInitialize_upvr_result1.Time = module_6_upvr.GetNumber(arg2.StartTime) or 0
	local Path = arg2.Path
	local var49
	local var50
	if Path then
		if typeof(Path) == "CFrame" then
			var49 = Path
			var50 = false
		elseif typeof(Path) == "Vector3" then
			var49 = CFrame.new(Path)
			var50 = true
		end
	end
	local var51 = var49
	if not var51 then
		warn(module_3_upvr.FormatOutput("Slider '%s' from LevelAsset '%s' is missing a Path attribute", "DynamicObjectManager", nil, DynamicPVInstanceInitialize_upvr_result1.Object.Name, arg3.Asset.Id))
		var51 = CFrame.identity
	end
	local var52 = var51
	if arg2.SizeRelative == true then
		local var53 = var52.Rotation + var52.Position * module_6_upvr.PVInstanceGetSize(DynamicPVInstanceInitialize_upvr_result1.Object)
	end
	if arg2.Reverses == true then
		DynamicPVInstanceInitialize_upvr_result1.Origin *= var53:Inverse()
	end
	if var50 then
		DynamicPVInstanceInitialize_upvr_result1.Goal = DynamicPVInstanceInitialize_upvr_result1.Origin + (var53 * var53).Position
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		DynamicPVInstanceInitialize_upvr_result1.Goal = (DynamicPVInstanceInitialize_upvr_result1.Origin) * (var53 * var53)
	end
	if DynamicPVInstanceInitialize_upvr_result1.Time ~= 0 then
		local any_CFrameToDimensionSpace_result1 = module_2_upvr.CFrameToDimensionSpace(arg3, DynamicPVInstanceInitialize_upvr_result1.Origin:Lerp(DynamicPVInstanceInitialize_upvr_result1.Goal, 0.5 - math.cos((-math.pi*2) * DynamicPVInstanceInitialize_upvr_result1.Time / DynamicPVInstanceInitialize_upvr_result1.Cycle) * 0.5))
		DynamicPVInstanceInitialize_upvr_result1.Pivot = any_CFrameToDimensionSpace_result1
		DynamicPVInstanceInitialize_upvr_result1.Object:PivotTo(any_CFrameToDimensionSpace_result1)
	end
end
tbl.Initialize = Initialize
tbl.InFrame = DynamicPVInstanceInFrame
local function Update(arg1, arg2, arg3) -- Line 404
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.Time = (arg1.Time + arg2) % arg1.Cycle
	local any_CFrameToDimensionSpace_result1_7 = module_2_upvr.CFrameToDimensionSpace(arg3, arg1.Origin:Lerp(arg1.Goal, 0.5 - math.cos((-math.pi*2) * arg1.Time / arg1.Cycle) * 0.5))
	arg1.Pivot = any_CFrameToDimensionSpace_result1_7
	arg1.Object:PivotTo(any_CFrameToDimensionSpace_result1_7)
end
tbl.Update = Update
tbl_upvr[module.ObjectType.Slider] = tbl
function PerformStep_upvr(arg1, arg2) -- Line 438, Named "PerformSpin"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any_CFrameToDimensionSpace_result1_5 = module_2_upvr.CFrameToDimensionSpace(arg2, arg1.Origin * CFrame.Angles(0, arg1.Rotation, 0))
	arg1.Pivot = any_CFrameToDimensionSpace_result1_5
	arg1.Object:PivotTo(any_CFrameToDimensionSpace_result1_5)
end
local tbl_10 = {}
local function Initialize(arg1, arg2, arg3) -- Line 452
	--[[ Upvalues[4]:
		[1]: DynamicPVInstanceInitialize_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	local DynamicPVInstanceInitialize_upvr_result1_2 = DynamicPVInstanceInitialize_upvr(arg1)
	local radians_2 = math.rad(module_6_upvr.GetNumber(arg2.StartAngle) or 0)
	DynamicPVInstanceInitialize_upvr_result1_2.Rotation = radians_2
	if type(arg2.Speed) == "number" then
		radians_2 = math.rad(arg2.Speed)
	else
		radians_2 = tbl_5_upvr.RotationalSpeed
	end
	DynamicPVInstanceInitialize_upvr_result1_2.Speed = radians_2
	if DynamicPVInstanceInitialize_upvr_result1_2.Rotation ~= 0 then
		local any_CFrameToDimensionSpace_result1_2 = module_2_upvr.CFrameToDimensionSpace(arg3, DynamicPVInstanceInitialize_upvr_result1_2.Origin * CFrame.Angles(0, DynamicPVInstanceInitialize_upvr_result1_2.Rotation, 0))
		DynamicPVInstanceInitialize_upvr_result1_2.Pivot = any_CFrameToDimensionSpace_result1_2
		DynamicPVInstanceInitialize_upvr_result1_2.Object:PivotTo(any_CFrameToDimensionSpace_result1_2)
	end
end
tbl_10.Initialize = Initialize
tbl_10.InFrame = DynamicPVInstanceInFrame
local function Update(arg1, arg2, arg3) -- Line 470
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	arg1.Rotation = (arg1.Rotation + arg1.Speed * arg2) % (-math.pi*2)
	local any_CFrameToDimensionSpace_result1_3 = module_2_upvr.CFrameToDimensionSpace(arg3, arg1.Origin * CFrame.Angles(0, arg1.Rotation, 0))
	arg1.Pivot = any_CFrameToDimensionSpace_result1_3
	arg1.Object:PivotTo(any_CFrameToDimensionSpace_result1_3)
end
tbl_10.Update = Update
tbl_upvr[module.ObjectType.Spinner] = tbl_10
function PerformStep_upvr(arg1, arg2) -- Line 530, Named "PerformStep"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local StepCurrent = arg1.StepCurrent
	local var68
	if StepCurrent ~= arg1.StepPrevious then
		local StepCount = arg1.StepCount
		var68 = arg1.Origin
		for _ = 1, StepCount - math.abs(StepCurrent - StepCount) do
			var68 *= arg1.Step
		end
		local any_CFrameFromDimensionSpace_result1 = module_2_upvr.CFrameFromDimensionSpace(arg2, var68)
		arg1.Pivot = any_CFrameFromDimensionSpace_result1
		arg1.Object:PivotTo(any_CFrameFromDimensionSpace_result1)
		arg1.StepPrevious = StepCurrent
	end
end
local var62_upvr = PerformStep_upvr
local tbl_9 = {}
local function Initialize(arg1, arg2, arg3) -- Line 565
	--[[ Upvalues[4]:
		[1]: DynamicPVInstanceInitialize_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: var62_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local DynamicPVInstanceInitialize_upvr_result1_3 = DynamicPVInstanceInitialize_upvr(arg1)
	DynamicPVInstanceInitialize_upvr_result1_3.Period = module_6_upvr.GetNumber(arg2.Period) or 1
	DynamicPVInstanceInitialize_upvr_result1_3.StepCount = math.max(math.round(module_6_upvr.GetNumber(arg2.StepCount) or 1), 1)
	DynamicPVInstanceInitialize_upvr_result1_3.StepCurrent = math.round(module_6_upvr.GetNumber(arg2.StepStart) or 0) % 2 * DynamicPVInstanceInitialize_upvr_result1_3.StepCount
	DynamicPVInstanceInitialize_upvr_result1_3.StepPrevious = 0
	DynamicPVInstanceInitialize_upvr_result1_3.Time = module_6_upvr.GetNumber(arg2.StartTime) or 0
	local Step = arg2.Step
	local var74
	local var75
	if Step then
		if typeof(Step) == "CFrame" then
			var74 = Step
			var75 = false
		elseif typeof(Step) == "Vector3" then
			var74 = CFrame.new(Step)
			var75 = true
		end
	end
	local var76 = var74
	if not var76 then
		warn(module_3_upvr.FormatOutput("Stepper '%s' from LevelAsset '%s' is missing a Path attribute", "DynamicObjectManager", nil, DynamicPVInstanceInitialize_upvr_result1_3.Object.Name, arg3.Asset.Id))
		var76 = CFrame.identity
	end
	local var77 = var76
	if arg2.SizeRelative == true then
		local var78 = var77.Rotation + var77.Position * module_6_upvr.PVInstanceGetSize(DynamicPVInstanceInitialize_upvr_result1_3.Object)
	end
	if arg2.Reverses == true then
		DynamicPVInstanceInitialize_upvr_result1_3.Origin *= var78:Inverse()
		DynamicPVInstanceInitialize_upvr_result1_3.StepCurrent += DynamicPVInstanceInitialize_upvr_result1_3.StepCount
		DynamicPVInstanceInitialize_upvr_result1_3.StepCount *= 2
	end
	if var75 then
		DynamicPVInstanceInitialize_upvr_result1_3.Step = DynamicPVInstanceInitialize_upvr_result1_3.Origin:ToObjectSpace(DynamicPVInstanceInitialize_upvr_result1_3.Origin + (var78 * var78).Position)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		DynamicPVInstanceInitialize_upvr_result1_3.Step = var78 * var78
	end
	var62_upvr(DynamicPVInstanceInitialize_upvr_result1_3, arg3)
end
tbl_9.Initialize = Initialize
tbl_9.InFrame = DynamicPVInstanceInFrame
local function Update(arg1, arg2, arg3) -- Line 613
	--[[ Upvalues[1]:
		[1]: var62_upvr (readonly)
	]]
	arg1.Time += arg2
	local var79 = arg1.Time // arg1.Period
	if 0 < var79 then
		arg1.Time -= arg1.Period * var79
		arg1.StepCurrent = (arg1.StepCurrent + var79) % 2 * arg1.StepCount
		var62_upvr(arg1, arg3)
	end
end
tbl_9.Update = Update
tbl_upvr[module.ObjectType.Stepper] = tbl_9
var62_upvr = module.ObjectType.Texture
local tbl_6 = {}
local function Initialize(arg1, arg2, arg3) -- Line 662
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	assert(arg1.Object:IsA("BasePart"))
	local Speed = arg2.Speed
	if typeof(Speed) ~= "Vector2" then
		warn(module_3_upvr.FormatOutput("Texture '%s' from LevelAsset '%s' is missing a Pivot attribute", "DynamicObjectManager", nil, arg1.Object.Name, arg3.Asset.Id))
		Speed = Vector2.zero
	end
	arg1.Origin = arg1.Object.CFrame
	arg1.Size = arg1.Object.Size
	arg1.Speed = Speed
	arg1.Textures = {}
	for i_5, v_4 in arg1.Object:GetChildren() do
		if v_4:IsA("Texture") then
			arg1.Textures[#arg1.Textures + 1] = {
				Texture = v_4;
				PosX = v_4.OffsetStudsU;
				PosY = v_4.OffsetStudsV;
				TileX = v_4.StudsPerTileU;
				TileY = v_4.StudsPerTileV;
			}
		end
	end
	if #arg1.Textures == 0 then
		i_5 = "DynamicObjectManager"
		v_4 = nil
		warn(module_3_upvr.FormatOutput("Texture '%s' from LevelAsset '%s' has no textures", i_5, v_4, arg1.Object.Name, arg3.Asset.Id))
	end
end
tbl_6.Initialize = Initialize
function tbl_6.InFrame(arg1, arg2) -- Line 704
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	return module_6_upvr.CameraBoxInFrame(arg2, arg1.Origin, arg1.Size)
end
function tbl_6.Update(arg1, arg2, arg3) -- Line 712
	local var94 = arg1.Speed * arg2
	local X = var94.X
	local Y = var94.Y
	for _, v_5 in arg1.Textures do
		local var97 = (v_5.PosX + X) % v_5.TileX
		local var98 = (v_5.PosY + Y) % v_5.TileY
		v_5.PosX = var97
		v_5.PosY = var98
		v_5.Texture.OffsetStudsU = var97
		v_5.Texture.OffsetStudsV = var98
	end
end
tbl_upvr[var62_upvr] = tbl_6
var62_upvr = {}
local PostSimulation_upvr = var62_upvr
PostSimulation_upvr.Orbiters = module.ObjectType.Orbiter
PostSimulation_upvr.Sliders = module.ObjectType.Slider
PostSimulation_upvr.Spinners = module.ObjectType.Spinner
PostSimulation_upvr.Steppers = module.ObjectType.Stepper
PostSimulation_upvr.Textures = module.ObjectType.Texture
function module.Initialize(arg1) -- Line 750
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: PostSimulation_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState[arg1] then
	else
		local Map = arg1.Map
		if Map then
			local tbl_8 = {}
			for i_11, v_10 in Map.Dynamic do
				local var110 = PostSimulation_upvr[i_11]
				local var111 = tbl_upvr[var110]
				if var111 then
					local tbl_7 = {}
					for _, v_11 in v_10 do
						local any_GetAttributes_result1 = v_11:GetAttributes()
						local tbl_4 = {}
						local var115
						if any_GetAttributes_result1.IsHazard ~= true then
							var115 = false
						else
							var115 = true
						end
						tbl_4._IsHazard = var115
						tbl_4._Type = var110
						if any_GetAttributes_result1.NoThrottle ~= true then
							var115 = false
						else
							var115 = true
						end
						tbl_4._Unthrottled = var115
						var115 = v_11:Clone()
						tbl_4.Object = var115
						tbl_4.LastUpdatedAt = os.clock()
						var115 = var111.Initialize
						var115(tbl_4, any_GetAttributes_result1, arg1)
						var115 = tbl_4.Object
						var115.Parent = Map.Directories.Dynamic
						var115 = #tbl_7 + 1
						tbl_7[var115] = tbl_4
					end
					if 0 < #tbl_7 then
						tbl_8[var110] = tbl_7
					end
				end
			end
			if next(tbl_8) ~= nil then
				tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState[arg1] = tbl_8
			end
		end
	end
end
function PostSimulation_upvr(arg1) -- Line 812, Named "Deinitialize"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local var128 = tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState[arg1]
	if var128 then
		tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState[arg1] = nil
		for i_7, v_6 in var128 do
			local Destroy = tbl_upvr[i_7].Destroy
			if Destroy then
				for _, v_7 in v_6 do
					Destroy(v_7)
				end
			else
				for _, var125 in v_6 do
					var125.Object:Destroy()
				end
			end
		end
	end
end
module.Deinitialize = PostSimulation_upvr
function PostSimulation_upvr(arg1) -- Line 835, Named "GetDynamicHazards"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local module_5 = {}
	local var135 = tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState[arg1]
	if var135 then
		for _, v_8 in var135 do
			for _, v_9 in v_8 do
				if v_9._IsHazard then
					module_5[#module_5 + 1] = v_9.Object
				end
			end
		end
	end
	return module_5
end
module.GetDynamicHazards = PostSimulation_upvr
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
function PostSimulation_upvr(arg1, arg2) -- Line 860, Named "PostSimulation"
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	if next(tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState) == nil then
	else
		debug.profilebegin("CFH_DynamicObjectManager")
		for i_13, v_12 in tbl_3_upvr.DynamicObjects_ByType_ByLevelAssetState do
			for i_14, v_13 in v_12 do
				local var143 = tbl_upvr[i_14]
				for _, v_14 in v_13 do
					if v_14._Unthrottled or var143.InFrame(v_14, module_6_upvr.CameraPlanesCreate(module_4_upvr.Camera)) then
						var143.Update(v_14, arg2 - v_14.LastUpdatedAt, i_13)
						v_14.LastUpdatedAt = arg2
					end
				end
			end
		end
		debug.profileend()
	end
end
module.PostSimulation = PostSimulation_upvr
return module