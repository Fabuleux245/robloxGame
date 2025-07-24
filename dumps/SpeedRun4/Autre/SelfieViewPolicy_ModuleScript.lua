-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:13
-- Luau version 6, Types version 3
-- Time taken: 0.000745 seconds

local PolicyProvider = require(game:GetService("CorePackages").Packages.PolicyProvider)
local any_MemStorageService_result1 = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local any_withGetPolicyImplementation_result1 = PolicyProvider.withGetPolicyImplementation(any_MemStorageService_result1)
function any_withGetPolicyImplementation_result1.Mapper(arg1) -- Line 7
	return {
		eligibleForSelfieViewFeature = function() -- Line 9, Named "eligibleForSelfieViewFeature"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.EligibleForSelfieViewFeature or false
		end;
	}
end
any_withGetPolicyImplementation_result1.PolicyImplementation = any_MemStorageService_result1
return any_withGetPolicyImplementation_result1