-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:44
-- Luau version 6, Types version 3
-- Time taken: 0.001434 seconds

local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("AppChatPerfExperimentLayer", "Party.Chat.Perf")
local function _(arg1) -- Line 9, Named "getIsUserInTreatment"
	--[[ Upvalues[2]:
		[1]: game_DefineFastString_result1_upvr (readonly)
		[2]: ExperimentCacheManager_upvr (readonly)
	]]
	local any_getLayerVariables_result1_2 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
	if any_getLayerVariables_result1_2 and any_getLayerVariables_result1_2[arg1] ~= nil then
		return any_getLayerVariables_result1_2[arg1]
	end
	return false
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatPerfExposureUpdate", false)
return {
	getChatLandingPaginationEnabled = function() -- Line 20, Named "getChatLandingPaginationEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
		if any_getLayerVariables_result1 and any_getLayerVariables_result1.IsChatLandingPaginationEnabled ~= nil then
			return any_getLayerVariables_result1.IsChatLandingPaginationEnabled
		end
		return false
	end;
	getChatConversationPaginationEnabled = function() -- Line 24, Named "getChatConversationPaginationEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local any_getLayerVariables_result1_5 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
		if any_getLayerVariables_result1_5 and any_getLayerVariables_result1_5.IsChatConversationPaginationEnabled ~= nil then
			return any_getLayerVariables_result1_5.IsChatConversationPaginationEnabled
		end
		return false
	end;
	getChatMembersPaginationEnabled = function() -- Line 28, Named "getChatMembersPaginationEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local any_getLayerVariables_result1_3 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
		if any_getLayerVariables_result1_3 and any_getLayerVariables_result1_3.IsChatMembersPaginationEnabled ~= nil then
			return any_getLayerVariables_result1_3.IsChatMembersPaginationEnabled
		end
		return false
	end;
	getChatConversationRenderingFixEnabled = function() -- Line 32, Named "getChatConversationRenderingFixEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local any_getLayerVariables_result1_4 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
		if any_getLayerVariables_result1_4 and any_getLayerVariables_result1_4.IsChatConversationRenderingFixEnabled ~= nil then
			return any_getLayerVariables_result1_4.IsChatConversationRenderingFixEnabled
		end
		return false
	end;
	logExposure = function() -- Line 36, Named "logExposure"
		--[[ Upvalues[3]:
			[1]: game_DefineFastFlag_result1_upvr (readonly)
			[2]: game_DefineFastString_result1_upvr (readonly)
			[3]: ExperimentCacheManager_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [12] 10. Error Block 3 start (CF ANALYSIS FAILED)
		ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr)
		do
			return
		end
		-- KONSTANTERROR: [12] 10. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 16. Error Block 4 start (CF ANALYSIS FAILED)
		ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr)
		-- KONSTANTERROR: [20] 16. Error Block 4 end (CF ANALYSIS FAILED)
	end;
}