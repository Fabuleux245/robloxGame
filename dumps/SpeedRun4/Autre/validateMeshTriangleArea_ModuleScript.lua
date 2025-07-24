-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:24
-- Luau version 6, Types version 3
-- Time taken: 0.001795 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 12, Named "validateMeshTriangleArea"
	--[[ Upvalues[3]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	local var5
	if arg2 then
		var5 = arg2.isServer
	else
		var5 = nil
	end
	local var2_result1, var2_result2 = pcallDeferred_upvr(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshTriangleArea(arg1.editableMesh)
	end, arg2)
	if not var2_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshTriangleArea_FailedToLoadMesh, nil, arg2)
		if var5 then
			error(string.format("Failed to load model mesh %s. Make sure mesh exists and try again.", arg1.fullName))
		end
		return false, {string.format("Failed to load model mesh %s. Make sure mesh exists and try again.", arg1.fullName)}
	end
	if not var2_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshTriangleArea_NoArea, nil, arg2)
		return false, {string.format("Detected zero-area triangle in model mesh %s. You need to edit the mesh to remove zero-area triangles.", arg1.fullName)}
	end
	Analytics_upvr.recordScriptTime(script.Name, tick(), arg2)
	return true
end