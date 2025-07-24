-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:15
-- Luau version 6, Types version 3
-- Time taken: 0.001844 seconds

local calculateMinMax_upvr = require(script.Parent.Parent.util.calculateMinMax)
local module_2_upvr = {}
function module_2_upvr.combineBounds(arg1, arg2) -- Line 23
	--[[ Upvalues[2]:
		[1]: calculateMinMax_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local module = {}
	local calculateMinMax_upvr_result1_2, calculateMinMax_upvr_result2_3 = calculateMinMax_upvr(arg1.minMeshCorner, arg1.maxMeshCorner, arg2.minMeshCorner, arg2.maxMeshCorner)
	module.minMeshCorner = calculateMinMax_upvr_result1_2
	module.maxMeshCorner = calculateMinMax_upvr_result2_3
	local calculateMinMax_upvr_result1_3, calculateMinMax_upvr_result2 = calculateMinMax_upvr(arg1.minRigAttachment, arg1.maxRigAttachment, arg2.minRigAttachment, arg2.maxRigAttachment)
	module.minRigAttachment = calculateMinMax_upvr_result1_3
	module.maxRigAttachment = calculateMinMax_upvr_result2
	module_2_upvr.setOverallBounds(module)
	return module
end
function module_2_upvr.expandMeshBounds(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: calculateMinMax_upvr (readonly)
	]]
	local calculateMinMax_upvr_result1_4, calculateMinMax_upvr_result2_5 = calculateMinMax_upvr(arg1.minMeshCorner, arg1.maxMeshCorner, arg2, arg2)
	arg1.minMeshCorner = calculateMinMax_upvr_result1_4
	arg1.maxMeshCorner = calculateMinMax_upvr_result2_5
end
function module_2_upvr.expandRigAttachmentBounds(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: calculateMinMax_upvr (readonly)
	]]
	local var2_result1, calculateMinMax_upvr_result2_2 = calculateMinMax_upvr(arg1.minRigAttachment, arg1.maxRigAttachment, arg2, arg2)
	arg1.minRigAttachment = var2_result1
	arg1.maxRigAttachment = calculateMinMax_upvr_result2_2
end
function module_2_upvr.setOverallBounds(arg1) -- Line 46
	--[[ Upvalues[1]:
		[1]: calculateMinMax_upvr (readonly)
	]]
	local calculateMinMax_upvr_result1, calculateMinMax_upvr_result2_4 = calculateMinMax_upvr(arg1.minMeshCorner, arg1.maxMeshCorner, arg1.minRigAttachment, arg1.maxRigAttachment)
	arg1.minOverall = calculateMinMax_upvr_result1
	arg1.maxOverall = calculateMinMax_upvr_result2_4
end
function module_2_upvr.calculateBoundsCenters(arg1) -- Line 52
	local var15
	if arg1.minMeshCorner and arg1.maxMeshCorner then
		var15 = (arg1.minMeshCorner + arg1.maxMeshCorner) / 2
	else
		var15 = nil
	end
	local var16
	if arg1.minRigAttachment and arg1.maxRigAttachment then
		var16 = (arg1.minRigAttachment + arg1.maxRigAttachment) / 2
	else
		var16 = nil
	end
	if arg1.minOverall and arg1.maxOverall then
		return var15, var16, (arg1.minOverall + arg1.maxOverall) / 2
	end
	return var15, var16, nil
end
function module_2_upvr.calculateBoundsDimensions(arg1) -- Line 66
	local var17
	if arg1.minMeshCorner and arg1.maxMeshCorner then
		var17 = arg1.maxMeshCorner - arg1.minMeshCorner
	else
		var17 = nil
	end
	local var18
	if arg1.minRigAttachment and arg1.maxRigAttachment then
		var18 = arg1.maxRigAttachment - arg1.minRigAttachment
	else
		var18 = nil
	end
	if arg1.minOverall and arg1.maxOverall then
		return var17, var18, arg1.maxOverall - arg1.minOverall
	end
	return var17, var18, nil
end
return module_2_upvr