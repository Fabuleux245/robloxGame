-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:01
-- Luau version 6, Types version 3
-- Time taken: 0.001660 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Analytics)
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
return function(arg1, arg2, arg3, arg4) -- Line 10, Named "validateCageMeshIntersection"
	--[[ Upvalues[3]:
		[1]: Analytics_upvr (readonly)
		[2]: pcallDeferred_upvr (readonly)
		[3]: UGCValidationService_upvr (readonly)
	]]
	assert(arg4.assetTypeEnum, "validationContext.assetTypeEnum is required")
	local var5
	if not arg3.editableMesh then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshIntersection_InvalidRefMeshId, nil, arg4)
		return false, {string.format("The meshId reference for cage '%s' is invalid or doesn't exist. Please, verify you are using a valid mesh asset and try again.", arg3.fullName)}
	end
	local var3_result1, pcallDeferred_upvr_result2, var3_result3, var3_result4, pcallDeferred_upvr_result5 = pcallDeferred_upvr(function() -- Line 35
		--[[ Upvalues[4]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshCageMeshIntersection(arg1.editableMesh, arg2.editableMesh, arg3.editableMesh)
	end, arg4)
	if not var3_result1 then
		var5 = Analytics_upvr
		var5 = Analytics_upvr.ErrorType.validateCageMeshIntersection_FailedToExecute
		var5.reportFailure(var5, nil, arg4)
		var5 = {}
		var5[1] = string.format("Failed to execute cage intersection detection for '%s'. Make sure the cage mesh exists and try again.", arg3.fullName)
		return false, var5
	end
	local module = {}
	var5 = true
	if not pcallDeferred_upvr_result2 then
		var5 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshIntersection_Intersection, nil, arg4)
		table.insert(module, string.format("There are cage vertices inside the layered accessory mesh '%s', which could lead to interpenetration issues during fitting. You need to edit the cage mesh to fix this intersection issue.", arg2.context))
	end
	if not var3_result3 then
		var5 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshIntersection_IrrelevantCageModified, nil, arg4)
		table.insert(module, string.format("Outer cage of '%s' has mesh edits on regions that don't correspond to its current asset type '%s' (i.e. edits on the lower leg cages when asset type is set to 'Head'). You need to check the asset type for the layered accessory '%s'.", arg2.fullName, arg4.assetTypeEnum.Name, arg2.context))
	end
	if not var3_result4 then
		var5 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshIntersection_OuterCageFarExtendedFromMesh, nil, arg4)
		table.insert(module, string.format("Outer cage of '%s' has mesh edits that place vertices too far away from the model mesh. You need to edit the cage vertices to be closer to the model.", arg2.fullName))
	end
	if not pcallDeferred_upvr_result5 then
		var5 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageMeshIntersection_AverageOuterCageToMeshVertDistances, nil, arg4)
		table.insert(module, string.format("The average distance between the layered accessory '%s' and its outer cage is too large. You need to edit the cage mesh to be closer to the accessory.", arg2.context))
	end
	return var5, module
end