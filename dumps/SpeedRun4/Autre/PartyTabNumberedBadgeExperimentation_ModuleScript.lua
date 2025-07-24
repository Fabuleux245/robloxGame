-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:44
-- Luau version 6, Types version 3
-- Time taken: 0.002434 seconds

local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ForceEnablePartyNumberedBadge3", false)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnablePartyTabNumberedBadge3", false)
local function _(arg1, arg2) -- Line 12, Named "getUserIsInTreatment"
	if arg1 and arg1[arg2] ~= nil then
		local typeof_result1 = typeof(arg1[arg2])
		if typeof_result1 == "number" then
			if 0 >= arg1[arg2] then
				typeof_result1 = false
			else
				typeof_result1 = true
			end
			return typeof_result1
		end
	end
	return false
end
local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("PartyTabBadgingExperimentVariantName", "partyTabNumberedBadgeVariant")
local game_DefineFastString_result1_upvr = game:DefineFastString("AppBadgingExperimentVariantName", "appBadgingVariant")
return {
	getPartyTabNumberedBadgeEnabled = function(arg1) -- Line 28, Named "getPartyTabNumberedBadgeEnabled"
		--[[ Upvalues[4]:
			[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr_2 (readonly)
			[4]: game_DefineFastString_result1_upvr (readonly)
		]]
		local var12 = game_DefineFastFlag_result1_upvr_2
		if not var12 then
			var12 = game_DefineFastFlag_result1_upvr
			if var12 then
				local var13 = game_DefineFastString_result1_upvr_2
				if arg1 and arg1[var13] ~= nil and typeof(arg1[var13]) == "number" then
					if 0 >= arg1[var13] then
						var12 = false
					else
						var12 = true
					end
				else
					var12 = false
				end
				if not var12 then
					local var14 = game_DefineFastString_result1_upvr
					if arg1 and arg1[var14] ~= nil and typeof(arg1[var14]) == "number" then
						if 0 >= arg1[var14] then
							var12 = false
						else
							var12 = true
						end
						return var12
					end
				end
			end
		end
		return false
	end;
	sendExposureLogForTreatment = function(arg1) -- Line 20, Named "sendExposureLogForTreatment"
		--[[ Upvalues[1]:
			[1]: ExperimentCacheManager_upvr (readonly)
		]]
		ExperimentCacheManager_upvr.default:logLayerExposure(arg1)
	end;
	getPartyTabNumberedBadgeFlagsEnabled = function() -- Line 24, Named "getPartyTabNumberedBadgeFlagsEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
		]]
		local var6 = game_DefineFastFlag_result1_upvr_2
		if not var6 then
			var6 = game_DefineFastFlag_result1_upvr
		end
		return var6
	end;
}