-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:48
-- Luau version 6, Types version 3
-- Time taken: 0.002107 seconds

local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("SquadQuickStartExperimentLayer", "Party.Formation.Create.User")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnablePartyQuickStartExperimentation2", false)
local var4_upvr = game:DefineFastFlag("PartyFormationCreateUserExposureEnabled", false) and game_DefineFastFlag_result1_upvr
local function _(arg1) -- Line 18, Named "getIsUserInTreatment"
	--[[ Upvalues[2]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	local any_getLayerVariables_result1_3 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
	if any_getLayerVariables_result1_3 and any_getLayerVariables_result1_3[arg1] ~= nil then
		return any_getLayerVariables_result1_3[arg1]
	end
	return false
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnablePartyQuickStartChanges2", false)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("SquadEnablePartyQuickStartVariant", "enablePartyQuickStartChanges")
return {
	getPartyQuickStartChangesEnabled = function() -- Line 28, Named "getPartyQuickStartChangesEnabled"
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr_2 (readonly)
			[4]: ExperimentCacheManager_upvr (readonly)
			[5]: game_DefineFastString_result1_upvr (readonly)
		]]
		local var11 = game_DefineFastFlag_result1_upvr_2
		if not var11 then
			var11 = game_DefineFastFlag_result1_upvr
			if var11 then
				local var12 = game_DefineFastString_result1_upvr_2
				local any_getLayerVariables_result1_2 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
				if any_getLayerVariables_result1_2 and any_getLayerVariables_result1_2[var12] ~= nil then
					var11 = any_getLayerVariables_result1_2[var12]
					return var11
				end
				var11 = false
			end
		end
		return var11
	end;
	logExposure = function() -- Line 33, Named "logExposure"
		--[[ Upvalues[3]:
			[1]: var4_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr (readonly)
		]]
		if var4_upvr then
			if ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr) ~= nil then
				ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr)
			end
		end
	end;
	isLogExposureEnabled = var4_upvr;
}