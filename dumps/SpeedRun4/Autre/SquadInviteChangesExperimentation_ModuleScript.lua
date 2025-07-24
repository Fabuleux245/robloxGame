-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:47
-- Luau version 6, Types version 3
-- Time taken: 0.001315 seconds

local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("SquadInviteChangesExperimentLayer", "Party.Formation.Invite")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnablePartyInviteChangesExperimentation5", false)
local function _(arg1) -- Line 14, Named "getIsUserInTreatment"
	--[[ Upvalues[2]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr_2)
	if any_getLayerVariables_result1 and any_getLayerVariables_result1[arg1] ~= nil then
		return any_getLayerVariables_result1[arg1]
	end
	return false
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("EnableNewPartyInviteChanges10", false)
local game_DefineFastString_result1_upvr = game:DefineFastString("SquadEnablePartyInviteChangesVariant", "enablePartyInviteChanges")
return {
	getInviteChangesEnabled = function() -- Line 24, Named "getInviteChangesEnabled"
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr (readonly)
			[4]: ExperimentCacheManager_upvr (readonly)
			[5]: game_DefineFastString_result1_upvr_2 (readonly)
		]]
		local var10 = game_DefineFastFlag_result1_upvr_2
		if not var10 then
			var10 = game_DefineFastFlag_result1_upvr
			if var10 then
				local var11 = game_DefineFastString_result1_upvr
				local any_getLayerVariables_result1_3 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr_2)
				if any_getLayerVariables_result1_3 and any_getLayerVariables_result1_3[var11] ~= nil then
					var10 = any_getLayerVariables_result1_3[var11]
					return var10
				end
				var10 = false
			end
		end
		return var10
	end;
	logExposure = function() -- Line 32, Named "logExposure"
		--[[ Upvalues[3]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
			[3]: game_DefineFastString_result1_upvr_2 (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			if ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr_2) ~= nil then
				ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr_2)
			end
		end
	end;
}