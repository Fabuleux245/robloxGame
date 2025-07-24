-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:38:59
-- Luau version 6, Types version 3
-- Time taken: 0.009144 seconds

local module_3 = {}
local var2_upvw = "rbxasset://textures/ui/traildot.png"
local var3_upvw = "rbxasset://textures/ui/waypoint.png"
local var4_upvw = false
local vector2_upvr_2 = Vector2.new(0, 0.5)
local vector2_upvw = Vector2.new(1.5, 1.5)
local TweenService_upvr = game:GetService("TweenService")
local Workspace_upvr = game:GetService("Workspace")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local udim2_upvr = UDim2.new(0, 42, 0, 50)
local vector2_upvr_3 = Vector2.new(0, 0.5)
local function CreateWaypointTemplates_upvr() -- Line 44, Named "CreateWaypointTemplates"
	--[[ Upvalues[7]:
		[1]: vector2_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: var2_upvw (read and write)
		[4]: udim2_upvr (readonly)
		[5]: vector2_upvr_3 (readonly)
		[6]: var3_upvw (read and write)
		[7]: vector2_upvr_2 (readonly)
	]]
	local Part_3 = Instance.new("Part")
	Part_3.Size = Vector3.new(1, 1, 1)
	Part_3.Anchored = true
	Part_3.CanCollide = false
	Part_3.Name = "TrailDot"
	Part_3.Transparency = 1
	local ImageHandleAdornment_2 = Instance.new("ImageHandleAdornment")
	ImageHandleAdornment_2.Name = "TrailDotImage"
	ImageHandleAdornment_2.Size = vector2_upvw
	ImageHandleAdornment_2.SizeRelativeOffset = Vector3.new(0, 0, -0.1000)
	ImageHandleAdornment_2.AlwaysOnTop = var4_upvw
	ImageHandleAdornment_2.Image = var2_upvw
	ImageHandleAdornment_2.Adornee = Part_3
	ImageHandleAdornment_2.Parent = Part_3
	local Part_2 = Instance.new("Part")
	Part_2.Size = Vector3.new(2, 2, 2)
	Part_2.Anchored = true
	Part_2.CanCollide = false
	Part_2.Name = "EndWaypoint"
	Part_2.Transparency = 1
	local ImageHandleAdornment_3 = Instance.new("ImageHandleAdornment")
	ImageHandleAdornment_3.Name = "TrailDotImage"
	ImageHandleAdornment_3.Size = vector2_upvw
	ImageHandleAdornment_3.SizeRelativeOffset = Vector3.new(0, 0, -0.1000)
	ImageHandleAdornment_3.AlwaysOnTop = var4_upvw
	ImageHandleAdornment_3.Image = var2_upvw
	ImageHandleAdornment_3.Adornee = Part_2
	ImageHandleAdornment_3.Parent = Part_2
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Name = "EndWaypointBillboard"
	BillboardGui.Size = udim2_upvr
	BillboardGui.LightInfluence = 0
	BillboardGui.SizeOffset = vector2_upvr_3
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Adornee = Part_2
	BillboardGui.Parent = Part_2
	local ImageLabel_2 = Instance.new("ImageLabel")
	ImageLabel_2.Image = var3_upvw
	ImageLabel_2.BackgroundTransparency = 1
	ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
	ImageLabel_2.Parent = BillboardGui
	local Part = Instance.new("Part")
	Part.Size = Vector3.new(2, 2, 2)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Name = "FailureWaypoint"
	Part.Transparency = 1
	local ImageHandleAdornment = Instance.new("ImageHandleAdornment")
	ImageHandleAdornment.Name = "TrailDotImage"
	ImageHandleAdornment.Size = vector2_upvw
	ImageHandleAdornment.SizeRelativeOffset = Vector3.new(0, 0, -0.1000)
	ImageHandleAdornment.AlwaysOnTop = var4_upvw
	ImageHandleAdornment.Image = var2_upvw
	ImageHandleAdornment.Adornee = Part
	ImageHandleAdornment.Parent = Part
	local BillboardGui_2 = Instance.new("BillboardGui")
	BillboardGui_2.Name = "FailureWaypointBillboard"
	BillboardGui_2.Size = udim2_upvr
	BillboardGui_2.LightInfluence = 0
	BillboardGui_2.SizeOffset = vector2_upvr_2
	BillboardGui_2.AlwaysOnTop = true
	BillboardGui_2.Adornee = Part
	BillboardGui_2.Parent = Part
	local Frame = Instance.new("Frame")
	Frame.BackgroundTransparency = 1
	Frame.Size = UDim2.new(0, 0, 0, 0)
	Frame.Position = UDim2.new(0.5, 0, 1, 0)
	Frame.Parent = BillboardGui_2
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Image = var3_upvw
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Position = UDim2.new(0, -udim2_upvr.X.Offset / 2, 0, -udim2_upvr.Y.Offset)
	ImageLabel.Size = udim2_upvr
	ImageLabel.Parent = Frame
	return Part_3, Part_2, Part
end
local CreateWaypointTemplates_result1_2_upvw, CreateWaypointTemplates_result2_5_upvw, CreateWaypointTemplates_result3_2_upvw = CreateWaypointTemplates_upvr()
local function _() -- Line 130, Named "getTrailDotParent"
	--[[ Upvalues[1]:
		[1]: Workspace_upvr (readonly)
	]]
	local CurrentCamera = Workspace_upvr.CurrentCamera
	if not CurrentCamera:FindFirstChild("ClickToMoveDisplay") then
		local Model_3 = Instance.new("Model")
		Model_3.Name = "ClickToMoveDisplay"
		Model_3.Parent = CurrentCamera
	end
	return Model_3
end
local function placePathWaypoint_upvr(arg1, arg2) -- Line 141, Named "placePathWaypoint"
	--[[ Upvalues[2]:
		[1]: Workspace_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	local any_FindPartOnRayWithIgnoreList_result1_2, any_FindPartOnRayWithIgnoreList_result2_2, any_FindPartOnRayWithIgnoreList_result3_2 = Workspace_upvr:FindPartOnRayWithIgnoreList(Ray.new(arg2 + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0)), {Workspace_upvr.CurrentCamera, LocalPlayer_upvr.Character})
	if any_FindPartOnRayWithIgnoreList_result1_2 then
		arg1.CFrame = CFrame.new(any_FindPartOnRayWithIgnoreList_result2_2, any_FindPartOnRayWithIgnoreList_result2_2 + any_FindPartOnRayWithIgnoreList_result3_2)
		local CurrentCamera_3 = Workspace_upvr.CurrentCamera
		if not CurrentCamera_3:FindFirstChild("ClickToMoveDisplay") then
			local Model_2 = Instance.new("Model")
			Model_2.Name = "ClickToMoveDisplay"
			Model_2.Parent = CurrentCamera_3
		end
		arg1.Parent = Model_2
	end
end
local tbl_upvr_2 = {}
tbl_upvr_2.__index = tbl_upvr_2
local function Destroy(arg1) -- Line 156
	arg1.DisplayModel:Destroy()
end
tbl_upvr_2.Destroy = Destroy
local function NewDisplayModel(arg1, arg2) -- Line 160
	--[[ Upvalues[2]:
		[1]: CreateWaypointTemplates_result1_2_upvw (read and write)
		[2]: placePathWaypoint_upvr (readonly)
	]]
	local clone_2 = CreateWaypointTemplates_result1_2_upvw:Clone()
	placePathWaypoint_upvr(clone_2, arg2)
	return clone_2
end
tbl_upvr_2.NewDisplayModel = NewDisplayModel
local function new(arg1, arg2) -- Line 166
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr_2)
	setmetatable_result1.DisplayModel = setmetatable_result1:NewDisplayModel(arg1)
	setmetatable_result1.ClosestWayPoint = arg2
	return setmetatable_result1
end
tbl_upvr_2.new = new
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local function Destroy(arg1) -- Line 178
	arg1.Destroyed = true
	arg1.Tween:Cancel()
	arg1.DisplayModel:Destroy()
end
module_2_upvr.Destroy = Destroy
local function NewDisplayModel(arg1, arg2) -- Line 184
	--[[ Upvalues[2]:
		[1]: CreateWaypointTemplates_result2_5_upvw (read and write)
		[2]: placePathWaypoint_upvr (readonly)
	]]
	local clone_3 = CreateWaypointTemplates_result2_5_upvw:Clone()
	placePathWaypoint_upvr(clone_3, arg2)
	return clone_3
end
module_2_upvr.NewDisplayModel = NewDisplayModel
local vector2_upvr_5 = Vector2.new(0, 1)
function module_2_upvr.CreateTween(arg1) -- Line 190
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: vector2_upvr_5 (readonly)
	]]
	local any_Create_result1_3 = TweenService_upvr:Create(arg1.DisplayModel.EndWaypointBillboard, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, -1, true), {
		SizeOffset = vector2_upvr_5;
	})
	any_Create_result1_3:Play()
	return any_Create_result1_3
end
function module_2_upvr.TweenInFrom(arg1, arg2) -- Line 201
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	arg1.DisplayModel.EndWaypointBillboard.StudsOffset = Vector3.new(0, (arg2 - arg1.DisplayModel.Position).Y, 0)
	local any_Create_result1_5 = TweenService_upvr:Create(arg1.DisplayModel.EndWaypointBillboard, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
		StudsOffset = Vector3.new(0, 0, 0);
	})
	any_Create_result1_5:Play()
	return any_Create_result1_5
end
local function new(arg1, arg2, arg3) -- Line 215
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1_3_upvr = setmetatable({}, module_2_upvr)
	setmetatable_result1_3_upvr.DisplayModel = setmetatable_result1_3_upvr:NewDisplayModel(arg1)
	setmetatable_result1_3_upvr.Destroyed = false
	if arg3 and 5 < (arg3 - arg1).Magnitude then
		setmetatable_result1_3_upvr.Tween = setmetatable_result1_3_upvr:TweenInFrom(arg3)
		coroutine.wrap(function() -- Line 222
			--[[ Upvalues[1]:
				[1]: setmetatable_result1_3_upvr (readonly)
			]]
			setmetatable_result1_3_upvr.Tween.Completed:Wait()
			if not setmetatable_result1_3_upvr.Destroyed then
				setmetatable_result1_3_upvr.Tween = setmetatable_result1_3_upvr:CreateTween()
			end
		end)()
	else
		setmetatable_result1_3_upvr.Tween = setmetatable_result1_3_upvr:CreateTween()
	end
	setmetatable_result1_3_upvr.ClosestWayPoint = arg2
	return setmetatable_result1_3_upvr
end
module_2_upvr.new = new
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.Hide(arg1) -- Line 239
	arg1.DisplayModel.Parent = nil
end
function tbl_upvr.Destroy(arg1) -- Line 243
	arg1.DisplayModel:Destroy()
end
function tbl_upvr.NewDisplayModel(arg1, arg2) -- Line 247
	--[[ Upvalues[4]:
		[1]: CreateWaypointTemplates_result3_2_upvw (read and write)
		[2]: placePathWaypoint_upvr (readonly)
		[3]: Workspace_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
	]]
	local clone = CreateWaypointTemplates_result3_2_upvw:Clone()
	placePathWaypoint_upvr(clone, arg2)
	local any_FindPartOnRayWithIgnoreList_result1, any_FindPartOnRayWithIgnoreList_result2, any_FindPartOnRayWithIgnoreList_result3 = Workspace_upvr:FindPartOnRayWithIgnoreList(Ray.new(arg2 + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0)), {Workspace_upvr.CurrentCamera, LocalPlayer_upvr.Character})
	if any_FindPartOnRayWithIgnoreList_result1 then
		clone.CFrame = CFrame.new(any_FindPartOnRayWithIgnoreList_result2, any_FindPartOnRayWithIgnoreList_result2 + any_FindPartOnRayWithIgnoreList_result3)
		local CurrentCamera_2 = Workspace_upvr.CurrentCamera
		if not CurrentCamera_2:FindFirstChild("ClickToMoveDisplay") then
			local Model = Instance.new("Model")
			Model.Name = "ClickToMoveDisplay"
			Model.Parent = CurrentCamera_2
		end
		clone.Parent = Model
	end
	return clone
end
local vector2_upvr_4 = Vector2.new(0.1, 0.5)
local vector2_upvr = Vector2.new(-0.1, 0.5)
function tbl_upvr.RunFailureTween(arg1) -- Line 261
	--[[ Upvalues[4]:
		[1]: TweenService_upvr (readonly)
		[2]: vector2_upvr_4 (readonly)
		[3]: vector2_upvr (readonly)
		[4]: vector2_upvr_2 (readonly)
	]]
	wait(0.125)
	local TweenInfo_new_result1_3 = TweenInfo.new(0.0625, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local any_Create_result1_4 = TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard, TweenInfo_new_result1_3, {
		SizeOffset = vector2_upvr_4;
	})
	any_Create_result1_4:Play()
	TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard.Frame, TweenInfo_new_result1_3, {
		Rotation = 10;
	}):Play()
	any_Create_result1_4.Completed:wait()
	local any_Create_result1_2 = TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard, TweenInfo.new(0.125, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 3, true), {
		SizeOffset = vector2_upvr;
	})
	any_Create_result1_2:Play()
	local TweenInfo_new_result1 = TweenInfo.new(0.125, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 3, true)
	TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard.Frame.ImageLabel, TweenInfo_new_result1, {
		ImageColor3 = Color3.new(0.75, 0.75, 0.75);
	}):Play()
	TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard.Frame, TweenInfo_new_result1, {
		Rotation = -10;
	}):Play()
	any_Create_result1_2.Completed:wait()
	local TweenInfo_new_result1_2 = TweenInfo.new(0.0625, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local any_Create_result1 = TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard, TweenInfo_new_result1_2, {
		SizeOffset = vector2_upvr_2;
	})
	any_Create_result1:Play()
	TweenService_upvr:Create(arg1.DisplayModel.FailureWaypointBillboard.Frame, TweenInfo_new_result1_2, {
		Rotation = 0;
	}):Play()
	any_Create_result1.Completed:wait()
	wait(0.125)
end
function tbl_upvr.new(arg1) -- Line 310
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1_2 = setmetatable({}, tbl_upvr)
	setmetatable_result1_2.DisplayModel = setmetatable_result1_2:NewDisplayModel(arg1)
	return setmetatable_result1_2
end
local Animation_upvr = Instance.new("Animation")
Animation_upvr.AnimationId = "rbxassetid://2874840706"
local var71_upvw
local function _(arg1) -- Line 324, Named "getFailureAnimationTrack"
	--[[ Upvalues[2]:
		[1]: var71_upvw (read and write)
		[2]: Animation_upvr (readonly)
	]]
	if arg1 == nil then
		return var71_upvw
	end
	var71_upvw = arg1:LoadAnimation(Animation_upvr)
	assert(var71_upvw, "")
	var71_upvw.Priority = Enum.AnimationPriority.Action
	var71_upvw.Looped = false
	return var71_upvw
end
local function _() -- Line 335, Named "findPlayerHumanoid"
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local Character = LocalPlayer_upvr.Character
	if Character then
		return Character:FindFirstChildOfClass("Humanoid")
	end
end
local function createTrailDots_upvr(arg1, arg2) -- Line 342, Named "createTrailDots"
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	for i = 1, #arg1 - 1 do
		local var83
		if (arg1[i].Position - arg1[#arg1].Position).Magnitude >= 3 then
			var83 = false
		else
			var83 = true
		end
		if i % 2 == 0 then
		end
		if not var83 then
			tbl[1] = tbl_upvr_2.new(arg1[i].Position, i)
		end
	end
	table.insert(tbl, module_2_upvr.new(arg1[#arg1].Position, #arg1, arg2))
	local module = {}
	for i_2 = #tbl, 1, -1 do
		module[1] = tbl[i_2]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var85
	end
	return module
end
local function _(arg1, arg2) -- Line 367, Named "getTrailDotScale"
	return arg2 * (math.clamp(arg1 - 10, 0, 90) / 90 * 1.5 + 1)
end
local var86_upvw = 0
local RunService_upvr = game:GetService("RunService")
function module_3.CreatePathDisplay(arg1, arg2) -- Line 376
	--[[ Upvalues[5]:
		[1]: var86_upvw (read and write)
		[2]: createTrailDots_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: Workspace_upvr (readonly)
		[5]: vector2_upvw (read and write)
	]]
	var86_upvw += 1
	local createTrailDots_upvr_result1_upvr = createTrailDots_upvr(arg1, arg2)
	local function removePathBeforePoint_upvr(arg1_2) -- Line 380, Named "removePathBeforePoint"
		--[[ Upvalues[1]:
			[1]: createTrailDots_upvr_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _ = #createTrailDots_upvr_result1_upvr
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 17. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 17. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 6. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [19.5]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [19.65666]
		if nil <= arg1_2 then
			-- KONSTANTWARNING: GOTO [19] #17
		end
		-- KONSTANTERROR: [5] 6. Error Block 7 end (CF ANALYSIS FAILED)
	end
	local var90_upvr = "ClickToMoveResizeTrail"..var86_upvw
	RunService_upvr:BindToRenderStep(var90_upvr, Enum.RenderPriority.Camera.Value - 1, function() -- Line 394, Named "resizeTrailDots"
		--[[ Upvalues[5]:
			[1]: createTrailDots_upvr_result1_upvr (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: var90_upvr (readonly)
			[4]: Workspace_upvr (copied, readonly)
			[5]: vector2_upvw (copied, read and write)
		]]
		if #createTrailDots_upvr_result1_upvr == 0 then
			RunService_upvr:UnbindFromRenderStep(var90_upvr)
		else
			for var91 = 1, #createTrailDots_upvr_result1_upvr do
				local TrailDotImage = createTrailDots_upvr_result1_upvr[var91].DisplayModel:FindFirstChild("TrailDotImage")
				if TrailDotImage then
					TrailDotImage.Size = vector2_upvw * (math.clamp((createTrailDots_upvr_result1_upvr[var91].DisplayModel.Position - Workspace_upvr.CurrentCamera.CFrame.p).Magnitude - 10, 0, 90) / 90 * 1.5 + 1)
				end
			end
		end
	end)
	return function() -- Line 410, Named "removePath"
		--[[ Upvalues[2]:
			[1]: removePathBeforePoint_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		removePathBeforePoint_upvr(#arg1)
	end, removePathBeforePoint_upvr
end
local var93_upvw
function module_3.DisplayFailureWaypoint(arg1) -- Line 418
	--[[ Upvalues[2]:
		[1]: var93_upvw (read and write)
		[2]: tbl_upvr (readonly)
	]]
	if var93_upvw then
		var93_upvw:Hide()
	end
	local any_new_result1_upvw = tbl_upvr.new(arg1)
	var93_upvw = any_new_result1_upvw
	coroutine.wrap(function() -- Line 424
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvw (read and write)
		]]
		any_new_result1_upvw:RunFailureTween()
		any_new_result1_upvw:Destroy()
		any_new_result1_upvw = nil
	end)()
end
function module_3.CreateEndWaypoint(arg1) -- Line 431
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.new(arg1)
end
function module_3.PlayFailureAnimation() -- Line 435
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var71_upvw (read and write)
		[3]: Animation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Character_2 = LocalPlayer_upvr.Character
	local var97
	if Character_2 then
		var97 = Character_2:FindFirstChildOfClass("Humanoid")
	else
		var97 = nil
	end
	if var97 then
		if var97 == nil then
		else
			var71_upvw = var97:LoadAnimation(Animation_upvr)
			assert(var71_upvw, "")
			var71_upvw.Priority = Enum.AnimationPriority.Action
			var71_upvw.Looped = false
		end
		var71_upvw:Play()
	end
end
function module_3.CancelFailureAnimation() -- Line 443
	--[[ Upvalues[1]:
		[1]: var71_upvw (read and write)
	]]
	if var71_upvw ~= nil and var71_upvw.IsPlaying then
		var71_upvw:Stop()
	end
end
function module_3.SetWaypointTexture(arg1) -- Line 449
	--[[ Upvalues[5]:
		[1]: var2_upvw (read and write)
		[2]: CreateWaypointTemplates_result1_2_upvw (read and write)
		[3]: CreateWaypointTemplates_result2_5_upvw (read and write)
		[4]: CreateWaypointTemplates_result3_2_upvw (read and write)
		[5]: CreateWaypointTemplates_upvr (readonly)
	]]
	var2_upvw = arg1
	local CreateWaypointTemplates_result1, CreateWaypointTemplates_result2_4, CreateWaypointTemplates_result3 = CreateWaypointTemplates_upvr()
	CreateWaypointTemplates_result1_2_upvw = CreateWaypointTemplates_result1
	CreateWaypointTemplates_result2_5_upvw = CreateWaypointTemplates_result2_4
	CreateWaypointTemplates_result3_2_upvw = CreateWaypointTemplates_result3
end
function module_3.GetWaypointTexture() -- Line 454
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	return var2_upvw
end
function module_3.SetWaypointRadius(arg1) -- Line 458
	--[[ Upvalues[5]:
		[1]: vector2_upvw (read and write)
		[2]: CreateWaypointTemplates_result1_2_upvw (read and write)
		[3]: CreateWaypointTemplates_result2_5_upvw (read and write)
		[4]: CreateWaypointTemplates_result3_2_upvw (read and write)
		[5]: CreateWaypointTemplates_upvr (readonly)
	]]
	vector2_upvw = Vector2.new(arg1, arg1)
	local CreateWaypointTemplates_result1_5, CreateWaypointTemplates_result2_3, CreateWaypointTemplates_result3_4 = CreateWaypointTemplates_upvr()
	CreateWaypointTemplates_result1_2_upvw = CreateWaypointTemplates_result1_5
	CreateWaypointTemplates_result2_5_upvw = CreateWaypointTemplates_result2_3
	CreateWaypointTemplates_result3_2_upvw = CreateWaypointTemplates_result3_4
end
function module_3.GetWaypointRadius() -- Line 463
	--[[ Upvalues[1]:
		[1]: vector2_upvw (read and write)
	]]
	return vector2_upvw.X
end
function module_3.SetEndWaypointTexture(arg1) -- Line 467
	--[[ Upvalues[5]:
		[1]: var3_upvw (read and write)
		[2]: CreateWaypointTemplates_result1_2_upvw (read and write)
		[3]: CreateWaypointTemplates_result2_5_upvw (read and write)
		[4]: CreateWaypointTemplates_result3_2_upvw (read and write)
		[5]: CreateWaypointTemplates_upvr (readonly)
	]]
	var3_upvw = arg1
	local CreateWaypointTemplates_result1_4, CreateWaypointTemplates_result2_2, CreateWaypointTemplates_result3_3 = CreateWaypointTemplates_upvr()
	CreateWaypointTemplates_result1_2_upvw = CreateWaypointTemplates_result1_4
	CreateWaypointTemplates_result2_5_upvw = CreateWaypointTemplates_result2_2
	CreateWaypointTemplates_result3_2_upvw = CreateWaypointTemplates_result3_3
end
function module_3.GetEndWaypointTexture() -- Line 472
	--[[ Upvalues[1]:
		[1]: var3_upvw (read and write)
	]]
	return var3_upvw
end
function module_3.SetWaypointsAlwaysOnTop(arg1) -- Line 476
	--[[ Upvalues[5]:
		[1]: var4_upvw (read and write)
		[2]: CreateWaypointTemplates_result1_2_upvw (read and write)
		[3]: CreateWaypointTemplates_result2_5_upvw (read and write)
		[4]: CreateWaypointTemplates_result3_2_upvw (read and write)
		[5]: CreateWaypointTemplates_upvr (readonly)
	]]
	var4_upvw = arg1
	local CreateWaypointTemplates_result1_3, CreateWaypointTemplates_result2, CreateWaypointTemplates_result3_5 = CreateWaypointTemplates_upvr()
	CreateWaypointTemplates_result1_2_upvw = CreateWaypointTemplates_result1_3
	CreateWaypointTemplates_result2_5_upvw = CreateWaypointTemplates_result2
	CreateWaypointTemplates_result3_2_upvw = CreateWaypointTemplates_result3_5
end
function module_3.GetWaypointsAlwaysOnTop() -- Line 481
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	return var4_upvw
end
return module_3