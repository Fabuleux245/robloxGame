-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:31
-- Luau version 6, Types version 3
-- Time taken: 0.000834 seconds

local Parent = script.Parent.Parent
local pcallDeferred_upvr = require(Parent.util.pcallDeferred)
local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(Parent.Analytics)
return function(arg1, arg2) -- Line 13, Named "validateRigidMeshNotSkinned"
	--[[ Upvalues[3]:
		[1]: pcallDeferred_upvr (readonly)
		[2]: UGCValidationService_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	local var2_result1, pcallDeferred_upvr_result2 = pcallDeferred_upvr(function() -- Line 17
		--[[ Upvalues[2]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UGCValidationService_upvr:DoesMeshHaveSkinningData(arg1)
	end, arg2)
	if not var2_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateRigidMeshSkinning_FailedToDownload, nil, arg2)
		return false, {"Could not verify underlying mesh data. Please try again or make a bug report."}
	end
	if pcallDeferred_upvr_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateRigidMeshSkinning_BonesFoundInMesh, nil, arg2)
		return false, {"This accessory mesh has underlying skinning data, which is not supported for rigid accessories. Ensure that you are not importing bones when loading the mesh into Studio."}
	end
	return true
end