-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:50
-- Luau version 6, Types version 3
-- Time taken: 0.000509 seconds

local PolicyProvider = require(game:GetService("CorePackages").Packages.PolicyProvider)
local any_withGetPolicyImplementation_result1 = PolicyProvider.withGetPolicyImplementation(PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy"))
function any_withGetPolicyImplementation_result1.Mapper(arg1) -- Line 11
	return {
		getCustomOutfitNames = function() -- Line 13, Named "getCustomOutfitNames"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.CustomCostumeNames ~= nil then
				return arg1.CustomCostumeNames
			end
			return true
		end;
	}
end
return any_withGetPolicyImplementation_result1