-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:47
-- Luau version 6, Types version 3
-- Time taken: 0.001837 seconds

game:DefineFastFlag("SelfViewProfileDiscoverabilityUpsellEnabledForAll", false)
game:DefineFastFlag("SelfViewProfileDiscoverabilityUpsellIXPEnabled", false)
game:DefineFastInt("SelfViewProfileDiscoverabilityUpsellRolloutEnabled", 0)
local dependencies = require(script:FindFirstAncestor("DiscoverabilityModal").dependencies)
local rolloutByApplicationId_upvr = dependencies.rolloutByApplicationId
local function var3_upvr() -- Line 11
	return game:GetFastInt("SelfViewProfileDiscoverabilityUpsellRolloutEnabled")
end
local function _() -- Line 15, Named "selfViewProfileDiscoverabilityUpsellRolloutEnabled"
	--[[ Upvalues[2]:
		[1]: rolloutByApplicationId_upvr (readonly)
		[2]: var3_upvr (readonly)
	]]
	return rolloutByApplicationId_upvr(var3_upvr)()
end
local function _() -- Line 19, Named "selfViewProfileDiscoverabilityUpsellExperimentEnabled"
	return game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellIXPEnabled")
end
local function _() -- Line 23, Named "selfViewProfileDiscoverabilityUpsellEnabledForAll"
	return game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellEnabledForAll")
end
local module = {}
local getFStringSocialProfileLayer_upvr = dependencies.getFStringSocialProfileLayer
function module.experimentOrRolloutEnabled(arg1) -- Line 28
	--[[ Upvalues[3]:
		[1]: getFStringSocialProfileLayer_upvr (readonly)
		[2]: rolloutByApplicationId_upvr (readonly)
		[3]: var3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6 = arg1[getFStringSocialProfileLayer_upvr()]
	if not var6 then
		var6 = {}
		var6.show_discoverability_upsell_profile_view = "False"
	end
	if not game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellIXPEnabled") or var6.show_discoverability_upsell_profile_view ~= "True" then
		if not rolloutByApplicationId_upvr(var3_upvr)() then
		end
	end
	return game:GetFastFlag("SelfViewProfileDiscoverabilityUpsellEnabledForAll")
end
return module