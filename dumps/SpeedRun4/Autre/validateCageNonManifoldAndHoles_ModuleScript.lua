-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:02
-- Luau version 6, Types version 3
-- Time taken: 0.001781 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2) -- Line 9, Named "validateCageNonManifoldAndHoles"
	--[[ Upvalues[2]:
		[1]: UGCValidationService_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	local pcall_result1, pcall_result2, pcall_result3 = pcall(function() -- Line 13
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshCageNonManifoldAndHoles(arg1.editableMesh)
	end)
	local var8
	if not pcall_result1 then
		var8 = Analytics_upvr
		var8 = Analytics_upvr.ErrorType.validateCageNonManifoldAndHoles_FailedToExecute
		var8.reportFailure(var8, nil, arg2)
		var8 = {}
		var8[1] = string.format("Failed to execute cage non-manifold check for '%s'. Make sure cage mesh exists and try again.", arg1.fullName)
		return false, var8
	end
	local module = {}
	var8 = true
	if not pcall_result2 then
		var8 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageNonManifoldAndHoles_NonManifold, nil, arg2)
		table.insert(module, string.format("'%s' is non-manifold (i.e. there are edges with 3 or more incident faces). Some vertices are likely too close and welded together as a single vertex causing edges to collapse into a non-manifold. You need to edit the cage mesh so that vertices aren't too close together.", arg1.fullName))
	end
	if not pcall_result3 then
		var8 = false
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateCageNonManifoldAndHoles_CageHoles, nil, arg2)
		table.insert(module, string.format("'%s' is not watertight (i.e. detected holes in the mesh). You need to edit the mesh and close the holes (may leave eyes and mouth areas open when applicable).", arg1.fullName))
	end
	return var8, module
end