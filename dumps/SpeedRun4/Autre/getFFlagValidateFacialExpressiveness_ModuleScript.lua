-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:08:46
-- Luau version 6, Types version 3
-- Time taken: 0.000626 seconds

game:DefineFastFlag("ValidateFacialExpressiveness", false)
local getEngineFeatureEngineUGCNewFACSChecks_upvr = require(script.Parent.Parent.flags.getEngineFeatureEngineUGCNewFACSChecks)
return function() -- Line 7
	--[[ Upvalues[1]:
		[1]: getEngineFeatureEngineUGCNewFACSChecks_upvr (readonly)
	]]
	local var2_result1 = getEngineFeatureEngineUGCNewFACSChecks_upvr()
	if var2_result1 then
		var2_result1 = game:GetFastFlag("ValidateFacialExpressiveness")
	end
	return var2_result1
end