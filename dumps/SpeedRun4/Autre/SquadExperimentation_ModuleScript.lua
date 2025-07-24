-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:47
-- Luau version 6, Types version 3
-- Time taken: 0.001453 seconds

local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("SquadExpLayer", "Social.PartyRollout")
local function _(arg1) -- Line 24, Named "getIsUserInTreatment"
	--[[ Upvalues[2]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	local any_getLayerVariables_result1_4 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr, true)
	if any_getLayerVariables_result1_4 and any_getLayerVariables_result1_4[arg1] ~= nil then
		return any_getLayerVariables_result1_4[arg1]
	end
	return false
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ForceEnableSquad", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ForceEnableSquadAmazon", false)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("EnableSquadEntrypoints", false)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("EnableSquadEntrypointsVariant", "enableSquadEntrypoints")
return {
	getSquadEntrypointsEnabled = function() -- Line 34, Named "getSquadEntrypointsEnabled"
		--[[ Upvalues[6]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[3]: game_DefineFastFlag_result1_upvr_3 (readonly)
			[4]: game_DefineFastString_result1_upvr_2 (readonly)
			[5]: ExperimentCacheManager_upvr (readonly)
			[6]: game_DefineFastString_result1_upvr (readonly)
		]]
		local var14 = game_DefineFastFlag_result1_upvr
		if not var14 then
			var14 = game_DefineFastFlag_result1_upvr_2
			if not var14 then
				var14 = game_DefineFastFlag_result1_upvr_3
				if var14 then
					local var15 = game_DefineFastString_result1_upvr_2
					local any_getLayerVariables_result1_3 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr, true)
					if any_getLayerVariables_result1_3 and any_getLayerVariables_result1_3[var15] ~= nil then
						var14 = any_getLayerVariables_result1_3[var15]
						return var14
					end
					var14 = false
				end
			end
		end
		return var14
	end;
}