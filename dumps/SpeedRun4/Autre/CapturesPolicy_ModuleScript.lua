-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:10
-- Luau version 6, Types version 3
-- Time taken: 0.000816 seconds

local PolicyProvider = require(script.Parent.Parent.Parent.PolicyProvider)
local any_MemStorageService_result1 = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local any_withGetPolicyImplementation_result1 = PolicyProvider.withGetPolicyImplementation(any_MemStorageService_result1)
function any_withGetPolicyImplementation_result1.Mapper(arg1) -- Line 9
	return {
		eligibleForCapturesFeature = function() -- Line 11, Named "eligibleForCapturesFeature"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.EligibleForCapturesFeature or false
		end;
		eligibleForVideoCapture = function() -- Line 14, Named "eligibleForVideoCapture"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.EligibleForVideoCapture or false
		end;
		enableCapturesBulkManagement = function() -- Line 17, Named "enableCapturesBulkManagement"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.EnableCapturesBulkManagement or false
		end;
		enableShareCaptureCTA = function() -- Line 20, Named "enableShareCaptureCTA"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.EnableShareCaptureCTA or false
		end;
		hasVideoCaptureCapability = function() -- Line 23, Named "hasVideoCaptureCapability"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.HasVideoCaptureCapability or false
		end;
	}
end
any_withGetPolicyImplementation_result1.PolicyImplementation = any_MemStorageService_result1
return any_withGetPolicyImplementation_result1