-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:14
-- Luau version 6, Types version 3
-- Time taken: 0.007144 seconds

local Parent = script.Parent.Parent
local ConstantsInterface_upvr = require(Parent.ConstantsInterface)
local module_upvr = {}
local getExpectedPartSize_upvr = require(Parent.util.getExpectedPartSize)
local calculateMinMax_upvr = require(Parent.util.calculateMinMax)
function module_upvr.calculateBounds(arg1, arg2, arg3, arg4, arg5) -- Line 21
	--[[ Upvalues[3]:
		[1]: getExpectedPartSize_upvr (readonly)
		[2]: calculateMinMax_upvr (readonly)
		[3]: ConstantsInterface_upvr (readonly)
	]]
	if arg5 then
		local getExpectedPartSize_upvr_result1 = getExpectedPartSize_upvr(arg2, arg5)
		local calculateMinMax_upvr_result1, calculateMinMax_upvr_result2_4 = calculateMinMax_upvr(arg4.minMeshCorner, arg4.maxMeshCorner, arg3:PointToWorldSpace(-(getExpectedPartSize_upvr_result1 / 2)), arg3:PointToWorldSpace(-(getExpectedPartSize_upvr_result1 / 2)))
		arg4.minMeshCorner = calculateMinMax_upvr_result1
		arg4.maxMeshCorner = calculateMinMax_upvr_result2_4
		local var5_result1, calculateMinMax_upvr_result2_3 = calculateMinMax_upvr(arg4.minMeshCorner, arg4.maxMeshCorner, arg3:PointToWorldSpace(getExpectedPartSize_upvr_result1 / 2), arg3:PointToWorldSpace(getExpectedPartSize_upvr_result1 / 2))
		arg4.minMeshCorner = var5_result1
		arg4.maxMeshCorner = calculateMinMax_upvr_result2_3
	else
		local calculateMinMax_upvr_result1_4, calculateMinMax_upvr_result2_2 = calculateMinMax_upvr(arg4.minMeshCorner, arg4.maxMeshCorner, arg3:PointToWorldSpace(-(arg2.Size / 2)), arg3:PointToWorldSpace(-(arg2.Size / 2)))
		arg4.minMeshCorner = calculateMinMax_upvr_result1_4
		arg4.maxMeshCorner = calculateMinMax_upvr_result2_2
		local calculateMinMax_upvr_result1_3, var5_result2 = calculateMinMax_upvr(arg4.minMeshCorner, arg4.maxMeshCorner, arg3:PointToWorldSpace(arg2.Size / 2), arg3:PointToWorldSpace(arg2.Size / 2))
		arg4.minMeshCorner = calculateMinMax_upvr_result1_3
		arg4.maxMeshCorner = var5_result2
	end
	for _, v in ConstantsInterface_upvr.getAttachments(arg1, arg2.Name) do
		local SOME = arg2:FindFirstChild(v)
		local assert = assert
		assert(SOME)
		if string.match(SOME.Name, "RigAttachment$") == nil then
			assert = false
		else
			assert = true
		end
		if assert then
			local var24 = arg3 * SOME.CFrame
			local calculateMinMax_upvr_result1_6, calculateMinMax_upvr_result2_6 = calculateMinMax_upvr(arg4.minRigAttachment, arg4.maxRigAttachment, var24.Position, var24.Position)
			arg4.minRigAttachment = calculateMinMax_upvr_result1_6
			arg4.maxRigAttachment = calculateMinMax_upvr_result2_6
		end
	end
	local calculateMinMax_upvr_result1_2, calculateMinMax_upvr_result2 = calculateMinMax_upvr(arg4.minOverall, arg4.maxOverall, arg4.minMeshCorner, arg4.maxMeshCorner)
	arg4.minOverall = calculateMinMax_upvr_result1_2
	arg4.maxOverall = calculateMinMax_upvr_result2
	local calculateMinMax_upvr_result1_5, calculateMinMax_upvr_result2_5 = calculateMinMax_upvr(arg4.minOverall, arg4.maxOverall, arg4.minRigAttachment, arg4.maxRigAttachment)
	arg4.minOverall = calculateMinMax_upvr_result1_5
	arg4.maxOverall = calculateMinMax_upvr_result2_5
end
function module_upvr.traverseHierarchy(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 93
	--[[ Upvalues[2]:
		[1]: ConstantsInterface_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var39
	if arg1 == nil then
		var39 = false
	else
		var39 = true
	end
	if (arg2 and arg3) == nil then
	else
	end
	if var39 == true then
	else
	end
	assert(true)
	if arg1 then
		local _ = arg1[arg6]
	else
	end
	var39 = arg2:FindFirstChild(arg6)
	assert(var39)
	if arg4 then
		var39 = nil
		if arg1 then
			var39 = arg1[arg4]
		else
			var39 = arg2:FindFirstChild(arg4)
		end
		assert(var39)
		local any_getRigAttachmentToParent_result1 = ConstantsInterface_upvr.getRigAttachmentToParent(arg3, arg6)
		local SOME_2 = var39:FindFirstChild(any_getRigAttachmentToParent_result1)
		assert(SOME_2)
		local SOME_3 = arg2:FindFirstChild(arg6):FindFirstChild(any_getRigAttachmentToParent_result1)
		assert(SOME_3)
		local _ = arg5 * SOME_2.CFrame * SOME_3.CFrame:Inverse()
	else
	end
	module_upvr.calculateBounds(arg3, arg2:FindFirstChild(arg6), CFrame.new(), arg8, arg9)
	if arg7.children then
		for i_2, v_2 in arg7.children do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_upvr.traverseHierarchy(arg1, arg2, arg3, arg6, CFrame.new(), i_2, v_2, arg8, arg9)
		end
	end
end
local var45_upvw
local getPartNamesInHierarchyOrder_upvr = require(Parent.util.getPartNamesInHierarchyOrder)
local function initRigParentToChild_upvr() -- Line 155, Named "initRigParentToChild"
	--[[ Upvalues[2]:
		[1]: var45_upvw (read and write)
		[2]: getPartNamesInHierarchyOrder_upvr (readonly)
	]]
	if var45_upvw then
	else
		var45_upvw = {}
		for _, v_3 in {Enum.AssetType.LeftArm, Enum.AssetType.RightArm, Enum.AssetType.LeftLeg, Enum.AssetType.RightLeg} do
			local getPartNamesInHierarchyOrder_upvr_result1 = getPartNamesInHierarchyOrder_upvr(v_3)
			var45_upvw[v_3] = {}
			for i_4 = 1, #getPartNamesInHierarchyOrder_upvr_result1 - 1 do
				var45_upvw[v_3][getPartNamesInHierarchyOrder_upvr_result1[i_4]] = getPartNamesInHierarchyOrder_upvr_result1[i_4 + 1]
			end
		end
	end
end
function module_upvr.getAssetRigChild(arg1, arg2) -- Line 171
	--[[ Upvalues[2]:
		[1]: initRigParentToChild_upvr (readonly)
		[2]: var45_upvw (read and write)
	]]
	initRigParentToChild_upvr()
	return assert(var45_upvw[arg1], "Invalid asset type")[arg2]
end
module_upvr.assetHierarchy = {
	[Enum.AssetType.DynamicHead] = {
		root = "Head";
	};
	[Enum.AssetType.Torso] = {
		root = "LowerTorso";
		children = {
			UpperTorso = {};
		};
	};
	[Enum.AssetType.LeftArm] = {
		root = "LeftUpperArm";
		children = {
			LeftLowerArm = {
				children = {
					LeftHand = {};
				};
			};
		};
	};
	[Enum.AssetType.RightArm] = {
		root = "RightUpperArm";
		children = {
			RightLowerArm = {
				children = {
					RightHand = {};
				};
			};
		};
	};
	[Enum.AssetType.LeftLeg] = {
		root = "LeftUpperLeg";
		children = {
			LeftLowerLeg = {
				children = {
					LeftFoot = {};
				};
			};
		};
	};
	[Enum.AssetType.RightLeg] = {
		root = "RightUpperLeg";
		children = {
			RightLowerLeg = {
				children = {
					RightFoot = {};
				};
			};
		};
	};
}
return module_upvr