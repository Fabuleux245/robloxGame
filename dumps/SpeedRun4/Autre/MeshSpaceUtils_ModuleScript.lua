-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:40
-- Luau version 6, Types version 3
-- Time taken: 0.001733 seconds

local module = {}
local function _(arg1, arg2) -- Line 16, Named "toWorldSpace"
	return (arg1) * (arg2 / 2)
end
local function _(arg1, arg2) -- Line 22, Named "calculateLocalSpaceTransform"
	return (CFrame.new(arg1.Rotation:Inverse() * (arg2.Position - arg1.Position))) * (arg1.Rotation:Inverse() * arg2.Rotation)
end
local function _(arg1, arg2, arg3) -- Line 30, Named "calculateAcceptableBoundsWorldSpace"
	local var2 = (arg1.min) * (arg2 / 2)
	local var3 = (arg1.max) * (arg2 / 2)
	return (var2 + var3) * 0.5 + arg3, var3 - var2
end
local BoundsDataUtils_upvr = require(script.Parent.Parent.util.BoundsDataUtils)
function module.clampAttachmentToBounds(arg1, arg2, arg3, arg4) -- Line 43
	--[[ Upvalues[1]:
		[1]: BoundsDataUtils_upvr (readonly)
	]]
	local var7 = arg4 or 0.001
	local any_calculateBoundsCenters_result1 = BoundsDataUtils_upvr.calculateBoundsCenters(arg2.boundsData)
	local any_calculateBoundsDimensions_result1 = BoundsDataUtils_upvr.calculateBoundsDimensions(arg2.boundsData)
	assert(any_calculateBoundsCenters_result1, "meshCenterPos is nil")
	assert(any_calculateBoundsDimensions_result1, "meshDimensions is nil")
	local var11 = (arg2.cframe * arg1.CFrame).Position - any_calculateBoundsCenters_result1
	local var12 = (arg3.min) * (any_calculateBoundsDimensions_result1 / 2)
	local var13 = (arg3.max) * (any_calculateBoundsDimensions_result1 / 2)
	local tbl = {}
	for _, v in {'X', 'Y', 'Z'} do
		tbl[v] = {}
		tbl[v].min = var12[v] + var7
		tbl[v].max = var13[v] - var7
		if tbl[v].max < tbl[v].min then
			local var16 = (var12[v] + var13[v]) * 0.5
			tbl[v].min = var16
			tbl[v].max = var16
		end
	end
	local var17 = ((arg2.cframe * arg1.CFrame).Rotation) + (any_calculateBoundsCenters_result1 + Vector3.new(math.clamp(var11.X, tbl.X.min, tbl.X.max), math.clamp(var11.Y, tbl.Y.min, tbl.Y.max), math.clamp(var11.Z, tbl.Z.min, tbl.Z.max)))
	local cframe_3 = arg2.cframe
	return (CFrame.new(cframe_3.Rotation:Inverse() * (var17.Position - cframe_3.Position))) * (cframe_3.Rotation:Inverse() * var17.Rotation)
end
function module.calculateAcceptableBoundsLocalSpace(arg1, arg2, arg3, arg4) -- Line 88
	local var19 = (arg1.min) * (arg3 / 2)
	local var20 = (arg1.max) * (arg3 / 2)
	local cframe_2 = arg2.cframe
	local cframe = CFrame.new((var19 + var20) * 0.5 + arg4)
	return (CFrame.new(cframe_2.Rotation:Inverse() * (cframe.Position - cframe_2.Position))) * (cframe_2.Rotation:Inverse() * cframe.Rotation), var20 - var19
end
return module