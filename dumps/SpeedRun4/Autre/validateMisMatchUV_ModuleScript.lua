-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:26
-- Luau version 6, Types version 3
-- Time taken: 0.001592 seconds

local UGCValidationService_upvr = game:GetService("UGCValidationService")
local Analytics_upvr = require(script.Parent.Parent.Analytics)
return function(arg1, arg2, arg3) -- Line 9, Named "validateMisMatchUV"
	--[[ Upvalues[2]:
		[1]: UGCValidationService_upvr (readonly)
		[2]: Analytics_upvr (readonly)
	]]
	local var5
	if arg1.context ~= arg2.context then
		var5 = false
	else
		var5 = true
	end
	assert(var5)
	function var5() -- Line 16
		--[[ Upvalues[3]:
			[1]: UGCValidationService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return UGCValidationService_upvr:ValidateEditableMeshMisMatchUV(arg1.editableMesh, arg2.editableMesh)
	end
	local pcall_result1, pcall_result2 = pcall(var5)
	if not pcall_result1 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMisMatchUV_FailedToExecute, nil, arg3)
		return false, {string.format("Failed to execute UV mismatch check for '%s'. Make sure UV map exists and try again.", arg1.context)}
	end
	if not pcall_result2 then
		Analytics_upvr.reportFailure(Analytics_upvr.ErrorType.validateMisMatchUV_UVMismatch, nil, arg3)
		return false, {string.format("Inner and Outer cage UV for '%s' are mismatched. The Roblox provided cage template should be used to create inner and outer cages with no modifications to the UV map.", arg1.context)}
	end
	return true
end