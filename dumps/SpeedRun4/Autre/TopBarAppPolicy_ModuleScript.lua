-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:58
-- Luau version 6, Types version 3
-- Time taken: 0.000854 seconds

local PolicyProvider = require(game:GetService("CorePackages").Packages.PolicyProvider)
local any_withGetPolicyImplementation_result1 = PolicyProvider.withGetPolicyImplementation(PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy"))
function any_withGetPolicyImplementation_result1.Mapper(arg1) -- Line 7
	return {
		getDisplayVoiceBetaBadge = function() -- Line 9, Named "getDisplayVoiceBetaBadge"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.DisplayVoiceBetaBadge or false
		end;
		showBadgeOver12 = function() -- Line 12, Named "showBadgeOver12"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.ShowBadgeOver12 or false
		end;
	}
end
return any_withGetPolicyImplementation_result1