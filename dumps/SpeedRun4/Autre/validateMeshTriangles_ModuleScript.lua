-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:25
-- Luau version 6, Types version 3
-- Time taken: 0.001376 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Constants_upvr = require(Parent.Constants)
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2, arg3) -- Line 12, Named "validateMeshTriangles"
	--[[ Upvalues[4]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Analytics_upvr (readonly)
	]]
	local isServer = arg3.isServer
	local var2_result1, var2_result2 = pcallDeferred_upvr(function() -- Line 19
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:GetEditableMeshTriCount(arg1.editableMesh)
	end, arg3)
	local var10
	if var10 ~= nil then
	else
		var10 = Constants_upvr.MAX_HAT_TRIANGLES
	end
	if not var2_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshTriangles_FailedToLoadMesh, nil, arg3)
		if isServer ~= nil and isServer then
			error(string.format("Failed to load model mesh %s. Make sure the mesh exists and try again.", arg1.fullName))
		end
		return false, {string.format("Failed to load model mesh %s. Make sure the mesh exists and try again.", arg1.fullName)}
	end
	if var10 < var2_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMeshTriangles_TooManyTriangles, nil, arg3)
		return false, {string.format("Model mesh %s resolution of %d is higher than max support value of %d. You need to retopologize your model and try again.", arg1.fullName, var2_result2, var10)}
	end
	return true
end