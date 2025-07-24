-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:14
-- Luau version 6, Types version 3
-- Time taken: 0.005278 seconds

local module_4_upvr = {0, 1, 2, 3, 4, 5, 6, 7}
local module_3_upvr = {0, 1, 3, 4, 5, 7}
local module_upvr = {0, 1, 4, 5, 6}
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
module_2_upvr.ClassName = "ViewportModel"
local function _(arg1) -- Line 71, Named "getIndices"
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_4_upvr (readonly)
	]]
	if arg1:IsA("WedgePart") then
		return module_3_upvr
	end
	if arg1:IsA("CornerWedgePart") then
		return module_upvr
	end
	return module_4_upvr
end
local function getCorners_upvr(arg1, arg2, arg3) -- Line 80, Named "getCorners"
	local module = {}
	for i, v in pairs(arg3) do
		module[i] = (arg1) * (arg2 * Vector3.new(math.floor(v / 4) % 2 * 2 - 1, math.floor(v / 2) % 2 * 2 - 1, v % 2 * 2 - 1))
	end
	return module
end
local function getModelPointCloud_upvr(arg1) -- Line 89, Named "getModelPointCloud"
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: getCorners_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_2, pairs_result2, pairs_result3 = pairs(arg1:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 40. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [51] 40. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.7]
	-- KONSTANTERROR: [9] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
local function viewProjectionEdgeHits_upvr(arg1, arg2, arg3, arg4) -- Line 103, Named "viewProjectionEdgeHits"
	local var20 = (-math.huge)
	local var21 = math.huge
	for _, v_2 in pairs(arg1) do
		local var25 = arg4 * (arg3 - v_2.Z)
		local var26 = v_2[arg2] + var25
		local var27 = v_2[arg2] - var25
		var20 = math.max(var20, var26, var27)
		var21 = math.min(var21, var26, var27)
	end
	return var20, var21
end
function module_2_upvr.new(arg1, arg2) -- Line 127
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_2_upvr)
	setmetatable_result1.Model = nil
	setmetatable_result1.ViewportFrame = arg1
	setmetatable_result1.WorldModel = arg1:FindFirstChild("WorldModel")
	setmetatable_result1.Camera = arg2
	local WorldModel = arg1:FindFirstChild("WorldModel")
	if not WorldModel then
		local WorldModel_2 = Instance.new("WorldModel")
		WorldModel_2.Parent = arg1
		setmetatable_result1.WorldModel = WorldModel_2
	else
		setmetatable_result1.WorldModel = WorldModel
	end
	setmetatable_result1._points = {}
	setmetatable_result1._modelCFrame = CFrame.new()
	setmetatable_result1._modelSize = Vector3.new()
	setmetatable_result1._modelRadius = 0
	setmetatable_result1:Calibrate()
	return setmetatable_result1
end
function module_2_upvr.SetModel(arg1, arg2) -- Line 159
	--[[ Upvalues[1]:
		[1]: getModelPointCloud_upvr (readonly)
	]]
	arg1.Model = arg2
	arg2.Parent = arg1.WorldModel
	local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = arg2:GetBoundingBox()
	arg1._points = getModelPointCloud_upvr(arg2)
	arg1._modelCFrame = any_GetBoundingBox_result1
	arg1._modelSize = any_GetBoundingBox_result2
	arg1._modelRadius = any_GetBoundingBox_result2.Magnitude / 3
end
function module_2_upvr.Calibrate(arg1) -- Line 173
	local tbl = {}
	local AbsoluteSize = arg1.ViewportFrame.AbsoluteSize
	tbl.aspect = AbsoluteSize.X / AbsoluteSize.Y
	tbl.yFov2 = math.rad(arg1.Camera.FieldOfView / 2)
	tbl.tanyFov2 = math.tan(tbl.yFov2)
	tbl.xFov2 = math.atan(tbl.tanyFov2 * tbl.aspect)
	tbl.tanxFov2 = math.tan(tbl.xFov2)
	tbl.cFov2 = math.atan(tbl.tanyFov2 * math.min(1, tbl.aspect))
	tbl.sincFov2 = math.sin(tbl.cFov2)
	arg1._viewport = tbl
end
function module_2_upvr.GetFitDistance(arg1, arg2) -- Line 195
	if not arg2 or not (arg2 - arg1._modelCFrame.Position).Magnitude then
	end
	return (arg1._modelRadius + 0) / arg1._viewport.sincFov2
end
function module_2_upvr.GetMinimumFitCFrame(arg1, arg2) -- Line 207
	--[[ Upvalues[1]:
		[1]: viewProjectionEdgeHits_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var39
	if not arg1.Model then
		return CFrame.new()
	end
	local any_Inverse_result1 = arg2 - arg2.Position:Inverse()
	local _points = arg1._points
	local tbl_2 = {}
	var39 = any_Inverse_result1 * _points[1]
	tbl_2[1] = var39
	var39 = tbl_2[1].Z
	for i_3 = 2, #_points do
		local var43 = any_Inverse_result1 * _points[i_3]
		var39 = math.min(var39, var43.Z)
		tbl_2[i_3] = var43
		local _
	end
	local viewProjectionEdgeHits_upvr_result1, viewProjectionEdgeHits_upvr_result2_2 = viewProjectionEdgeHits_upvr(tbl_2, 'X', var39, arg1._viewport.tanxFov2)
	local viewProjectionEdgeHits_result1, viewProjectionEdgeHits_upvr_result2 = viewProjectionEdgeHits_upvr(tbl_2, 'Y', var39, arg1._viewport.tanyFov2)
	return arg2 * CFrame.new((viewProjectionEdgeHits_upvr_result1 + viewProjectionEdgeHits_upvr_result2_2) / 2, (viewProjectionEdgeHits_result1 + viewProjectionEdgeHits_upvr_result2) / 2, var39 + math.max((viewProjectionEdgeHits_upvr_result1 - viewProjectionEdgeHits_upvr_result2_2) / 2 / arg1._viewport.tanxFov2, (viewProjectionEdgeHits_result1 - viewProjectionEdgeHits_upvr_result2) / 2 / arg1._viewport.tanyFov2))
end
return module_2_upvr