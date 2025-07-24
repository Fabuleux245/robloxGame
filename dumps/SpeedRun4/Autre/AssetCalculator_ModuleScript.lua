-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:13
-- Luau version 6, Types version 3
-- Time taken: 0.010203 seconds

local Parent = script.Parent.Parent
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
local getPartNamesInHierarchyOrder_upvr = require(Parent.util.getPartNamesInHierarchyOrder)
local AssetTraversalUtils_upvr = require(Parent.util.AssetTraversalUtils)
local getFFlagUGCValidateEmoteAnimationExtendedTests_upvr = require(Parent.flags.getFFlagUGCValidateEmoteAnimationExtendedTests)
local tbl_upvr_2 = {
	root = "LowerTorso";
	children = {
		UpperTorso = {
			children = {
				Head = AssetTraversalUtils_upvr.assetHierarchy[Enum.AssetType.DynamicHead];
				LeftUpperArm = AssetTraversalUtils_upvr.assetHierarchy[Enum.AssetType.LeftArm];
				RightUpperArm = AssetTraversalUtils_upvr.assetHierarchy[Enum.AssetType.RightArm];
			};
		};
		LeftUpperLeg = AssetTraversalUtils_upvr.assetHierarchy[Enum.AssetType.LeftLeg];
		RightUpperLeg = AssetTraversalUtils_upvr.assetHierarchy[Enum.AssetType.RightLeg];
	};
}
local tbl_upvr = {
	root = "HumanoidRootPart";
	children = {
		LowerTorso = tbl_upvr_2;
	};
}
local module_2_upvr = {}
local canBeNormalized_upvr = require(Parent.util.canBeNormalized)
local function calculateCFrame_upvr(arg1, arg2) -- Line 55, Named "calculateCFrame"
	--[[ Upvalues[1]:
		[1]: canBeNormalized_upvr (readonly)
	]]
	local var14 = arg1 - arg2
	if not canBeNormalized_upvr(var14) then return end
	local Unit_2 = var14.Unit
	local Unit = Unit_2:Cross(Vector3.new(0, 0, 1)).Unit
	local canBeNormalized_upvr_result1 = canBeNormalized_upvr(Unit)
	if not canBeNormalized_upvr_result1 then
		if Unit_2.Z < 0 then
			canBeNormalized_upvr_result1 = Vector3.new(0, 1, 0)
		else
			canBeNormalized_upvr_result1 = Vector3.new(-0, -1, -0)
		end
		Unit = Unit_2:Cross(canBeNormalized_upvr_result1).Unit
	end
	return CFrame.fromMatrix(arg1, Unit, Unit_2, Unit:Cross(Unit_2).Unit)
end
local function calculatePartTransformInHierarchy_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 74, Named "calculatePartTransformInHierarchy"
	--[[ Upvalues[2]:
		[1]: getFFlagUGCValidateEmoteAnimationExtendedTests_upvr (readonly)
		[2]: ConstantsInterface_upvr (readonly)
	]]
	local var18
	if getFFlagUGCValidateEmoteAnimationExtendedTests_upvr() then
		if arg5 and arg5[arg1.Name] then
			var18 = arg5[arg1.Name]
		else
			var18 = CFrame.new()
		end
	end
	local var19 = arg3
	if arg2 then
		local arg4_result1 = arg4(arg2)
		assert(arg4_result1)
		local any_getRigAttachmentToParent_result1 = ConstantsInterface_upvr.getRigAttachmentToParent(nil, arg1.Name)
		local SOME_3 = arg4_result1:FindFirstChild(any_getRigAttachmentToParent_result1)
		assert(SOME_3)
		local SOME_4 = arg1:FindFirstChild(any_getRigAttachmentToParent_result1)
		assert(SOME_4)
		if getFFlagUGCValidateEmoteAnimationExtendedTests_upvr() then
			var19 = var19 * SOME_3.CFrame * var18 * SOME_4.CFrame:Inverse()
			return var19
		end
		var19 = var19 * SOME_3.CFrame * SOME_4.CFrame:Inverse()
		return var19
	end
	if getFFlagUGCValidateEmoteAnimationExtendedTests_upvr() then
		var19 = var18
		return var19
	end
	return CFrame.new()
end
local function calculateHierarchyTransforms_upvr(arg1, arg2, arg3) -- Line 116, Named "calculateHierarchyTransforms"
	--[[ Upvalues[1]:
		[1]: calculatePartTransformInHierarchy_upvr (readonly)
	]]
	local module_3_upvr = {}
	local function calculateAllTransformsInternal(arg1_2, arg2_2, arg3_2, arg4) -- Line 123
		--[[ Upvalues[5]:
			[1]: arg2 (readonly)
			[2]: calculatePartTransformInHierarchy_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: module_3_upvr (readonly)
			[5]: calculateAllTransformsInternal (readonly)
		]]
		local arg2_result1 = arg2(arg1_2)
		assert(arg2_result1)
		local calculatePartTransformInHierarchy_result1 = calculatePartTransformInHierarchy_upvr(arg2_result1, arg2_2, arg4, arg2, arg3)
		module_3_upvr[arg2_result1.Name] = calculatePartTransformInHierarchy_result1
		if not arg3_2.children then
		else
			for var27, var28 in arg3_2.children do
				calculateAllTransformsInternal(var27, arg1_2, var28, calculatePartTransformInHierarchy_result1)
			end
		end
	end
	calculateAllTransformsInternal(arg1.root, nil, arg1, CFrame.new())
	return module_3_upvr
end
local function _(arg1, arg2) -- Line 144, Named "calculateLocalSpaceTransform"
	return (CFrame.new(arg1.Rotation:Inverse() * (arg2.Position - arg1.Position))) * (arg1.Rotation:Inverse() * arg2.Rotation)
end
local function calculateAssetCFrameFromPartsCFrames_upvr(arg1, arg2) -- Line 151, Named "calculateAssetCFrameFromPartsCFrames"
	--[[ Upvalues[2]:
		[1]: getPartNamesInHierarchyOrder_upvr (readonly)
		[2]: calculateCFrame_upvr (readonly)
	]]
	local getPartNamesInHierarchyOrder_upvr_result1 = getPartNamesInHierarchyOrder_upvr(arg1)
	return calculateCFrame_upvr(arg2[getPartNamesInHierarchyOrder_upvr_result1[1]].Position, arg2[getPartNamesInHierarchyOrder_upvr_result1[3]].Position)
end
local function _(arg1) -- Line 162, Named "assertTypesToOrient"
	local var34 = true
	if arg1 ~= Enum.AssetType.LeftArm then
		var34 = true
		if arg1 ~= Enum.AssetType.RightArm then
			var34 = true
			if arg1 ~= Enum.AssetType.LeftLeg then
				if arg1 ~= Enum.AssetType.RightLeg then
					var34 = false
				else
					var34 = true
				end
			end
		end
	end
	assert(var34)
end
local function _(arg1, arg2, arg3) -- Line 171, Named "getAttachmentCFrame"
	local SOME_2 = arg1:FindFirstChild(arg2)
	assert(SOME_2)
	return arg3 * SOME_2.CFrame
end
function module_2_upvr.calculatePartCFrameFromRigAttachments(arg1, arg2, arg3) -- Line 177
	--[[ Upvalues[3]:
		[1]: ConstantsInterface_upvr (readonly)
		[2]: AssetTraversalUtils_upvr (readonly)
		[3]: calculateCFrame_upvr (readonly)
	]]
	local var36 = true
	if arg1 ~= Enum.AssetType.LeftArm then
		var36 = true
		if arg1 ~= Enum.AssetType.RightArm then
			var36 = true
			if arg1 ~= Enum.AssetType.LeftLeg then
				if arg1 ~= Enum.AssetType.RightLeg then
					var36 = false
				else
					var36 = true
				end
			end
		end
	end
	assert(var36)
	local any_getRigAttachmentToParent_result1_2 = ConstantsInterface_upvr.getRigAttachmentToParent(arg1, arg2.Name)
	if any_getRigAttachmentToParent_result1_2 == "" then return end
	local SOME_5 = arg2:FindFirstChild(any_getRigAttachmentToParent_result1_2)
	assert(SOME_5)
	local any_getAssetRigChild_result1 = AssetTraversalUtils_upvr.getAssetRigChild(arg1, arg2.Name)
	if not any_getAssetRigChild_result1 then return end
	local SOME_6 = arg2:FindFirstChild(ConstantsInterface_upvr.getRigAttachmentToParent(arg1, any_getAssetRigChild_result1))
	assert(SOME_6)
	return calculateCFrame_upvr((arg3 * SOME_5.CFrame).Position, (arg3 * SOME_6.CFrame).Position)
end
local Cryo_upvr = require(Parent.Parent.Cryo)
function module_2_upvr.calculateStraightenedLimb(arg1, arg2, arg3) -- Line 201
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: getPartNamesInHierarchyOrder_upvr (readonly)
		[3]: AssetTraversalUtils_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: ConstantsInterface_upvr (readonly)
	]]
	local var46 = true
	if arg1 ~= Enum.AssetType.LeftArm then
		var46 = true
		if arg1 ~= Enum.AssetType.RightArm then
			var46 = true
			if arg1 ~= Enum.AssetType.LeftLeg then
				if arg1 ~= Enum.AssetType.RightLeg then
					var46 = false
				else
					var46 = true
				end
			end
		end
	end
	assert(var46)
	local any_join_result1 = Cryo_upvr.Dictionary.join(arg2)
	local var48
	for _, v in getPartNamesInHierarchyOrder_upvr(arg1) do
		local arg3_result1 = arg3(v)
		local var53 = arg1
		local any_getAssetRigChild_result1_2 = AssetTraversalUtils_upvr.getAssetRigChild(var53, v)
		local var55
		if any_getAssetRigChild_result1_2 ~= nil then
			var53 = false
		else
			var53 = true
		end
		if not var53 then
			var55 = module_2_upvr.calculatePartCFrameFromRigAttachments(arg1, arg3_result1, arg2[v]) or var55
		end
		local var56 = var55
		local var57 = arg2[v]
		any_join_result1[v] = (CFrame.new(var56.Rotation:Inverse() * (var57.Position - var56.Position))) * (var56.Rotation:Inverse() * var57.Rotation)
		if var48 then
			local SOME = arg3_result1:FindFirstChild(ConstantsInterface_upvr.getRigAttachmentToParent(arg1, v))
			assert(SOME)
			any_join_result1[v] = CFrame.new((any_join_result1[v].Position) + (var48 - (any_join_result1[v] * SOME.CFrame).Position)) * any_join_result1[v].Rotation
		end
		if not var53 then
			assert(arg3_result1:FindFirstChild(ConstantsInterface_upvr.getRigAttachmentToParent(arg1, any_getAssetRigChild_result1_2)))
		end
	end
	return any_join_result1
end
function module_2_upvr.calculateAssetCFrame(arg1, arg2) -- Line 254
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: calculateAssetCFrameFromPartsCFrames_upvr (readonly)
	]]
	local any_calculateAllTransformsForAsset_result1 = module_2_upvr.calculateAllTransformsForAsset(arg1, arg2)
	if Enum.AssetType.DynamicHead == arg1 then
		return any_calculateAllTransformsForAsset_result1.Head
	end
	if Enum.AssetType.Torso == arg1 then
		return any_calculateAllTransformsForAsset_result1.LowerTorso
	end
	return calculateAssetCFrameFromPartsCFrames_upvr(arg1, any_calculateAllTransformsForAsset_result1)
end
function module_2_upvr.calculateAllTransformsForAsset(arg1, arg2) -- Line 265
	--[[ Upvalues[2]:
		[1]: calculateHierarchyTransforms_upvr (readonly)
		[2]: AssetTraversalUtils_upvr (readonly)
	]]
	if Enum.AssetType.DynamicHead == arg1 then
		return {
			Head = CFrame.new();
		}
	end
	local function findMeshHandle(arg1_3) -- Line 270
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2:FindFirstChild(arg1_3)
	end
	return calculateHierarchyTransforms_upvr(AssetTraversalUtils_upvr.assetHierarchy[arg1], findMeshHandle)
end
function module_2_upvr.calculateAllTransformsForFullBody(arg1, arg2) -- Line 277
	--[[ Upvalues[4]:
		[1]: getFFlagUGCValidateEmoteAnimationExtendedTests_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: calculateHierarchyTransforms_upvr (readonly)
	]]
	local function findMeshHandle(arg1_4) -- Line 281
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1[arg1_4]
	end
	local getFFlagUGCValidateEmoteAnimationExtendedTests_upvr_result1 = getFFlagUGCValidateEmoteAnimationExtendedTests_upvr()
	if getFFlagUGCValidateEmoteAnimationExtendedTests_upvr_result1 then
		if arg2 then
			getFFlagUGCValidateEmoteAnimationExtendedTests_upvr_result1 = tbl_upvr
		else
			getFFlagUGCValidateEmoteAnimationExtendedTests_upvr_result1 = tbl_upvr_2
		end
		return calculateHierarchyTransforms_upvr(getFFlagUGCValidateEmoteAnimationExtendedTests_upvr_result1, findMeshHandle, arg2)
	end
	return calculateHierarchyTransforms_upvr(tbl_upvr_2, findMeshHandle)
end
function module_2_upvr.calculatePartsLocalToAsset(arg1, arg2) -- Line 295
	--[[ Upvalues[2]:
		[1]: getPartNamesInHierarchyOrder_upvr (readonly)
		[2]: calculateCFrame_upvr (readonly)
	]]
	local var67 = true
	if arg1 ~= Enum.AssetType.LeftArm then
		var67 = true
		if arg1 ~= Enum.AssetType.RightArm then
			var67 = true
			if arg1 ~= Enum.AssetType.LeftLeg then
				if arg1 ~= Enum.AssetType.RightLeg then
					var67 = false
				else
					var67 = true
				end
			end
		end
	end
	assert(var67)
	local getPartNamesInHierarchyOrder_upvr_result1_3 = getPartNamesInHierarchyOrder_upvr(arg1)
	local calculateCFrame_upvr_result1 = calculateCFrame_upvr(arg2[getPartNamesInHierarchyOrder_upvr_result1_3[1]].Position, arg2[getPartNamesInHierarchyOrder_upvr_result1_3[3]].Position)
	local module = {}
	local var74
	for _, v_2 in getPartNamesInHierarchyOrder_upvr(arg1) do
		if calculateCFrame_upvr_result1 then
			local var75 = arg2[v_2]
			var74 = (CFrame.new(calculateCFrame_upvr_result1.Rotation:Inverse() * (var75.Position - calculateCFrame_upvr_result1.Position))) * (calculateCFrame_upvr_result1.Rotation:Inverse() * var75.Rotation)
		else
			var74 = arg2[v_2]
		end
		module[v_2] = var74
	end
	return module
end
function module_2_upvr.getBodyPartsToParents() -- Line 317
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local module_upvr = {}
	local function calculateAllTransformsInternal_upvr(arg1, arg2, arg3) -- Line 320, Named "calculateAllTransformsInternal"
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: calculateAllTransformsInternal_upvr (readonly)
		]]
		module_upvr[arg1] = arg2 or "HumanoidRootPart"
		if not arg3.children then
		else
			for var77, var78 in arg3.children do
				calculateAllTransformsInternal_upvr(var77, arg1, var78)
			end
		end
	end
	calculateAllTransformsInternal_upvr(tbl_upvr_2.root, nil, tbl_upvr_2)
	return module_upvr
end
return module_2_upvr