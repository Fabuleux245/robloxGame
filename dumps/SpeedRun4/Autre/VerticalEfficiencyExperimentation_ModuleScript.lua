-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:37
-- Luau version 6, Types version 3
-- Time taken: 0.000969 seconds

local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("DiscoveryUtils").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaAppVerticalEfficiencyExpLayer", "PlayerApp.HomePage.UX")
local function _(arg1) -- Line 12, Named "getIsUserInTreatmentAndSendExposureLog"
	--[[ Upvalues[2]:
		[1]: game_DefineFastString_result1_upvr (readonly)
		[2]: ExperimentCacheManager_upvr (readonly)
	]]
	local var3 = game_DefineFastString_result1_upvr
	local any_getLayerVariables_result1_2 = ExperimentCacheManager_upvr.default:getLayerVariables(var3, true)
	if any_getLayerVariables_result1_2 and any_getLayerVariables_result1_2[arg1] ~= nil then
		ExperimentCacheManager_upvr.default:sendCustomExposureLog(var3)
		return any_getLayerVariables_result1_2[arg1]
	end
	return false
end
return {
	getIsProfileMovedToTopBar = function() -- Line 24, Named "getIsProfileMovedToTopBar"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local var5 = game_DefineFastString_result1_upvr
		local any_getLayerVariables_result1_3 = ExperimentCacheManager_upvr.default:getLayerVariables(var5, true)
		if any_getLayerVariables_result1_3 and any_getLayerVariables_result1_3.IsProfileMovedToTopBar ~= nil then
			ExperimentCacheManager_upvr.default:sendCustomExposureLog(var5)
			return any_getLayerVariables_result1_3.IsProfileMovedToTopBar
		end
		return false
	end;
	getIsRobloxLogoHeaderEnabled = function() -- Line 28, Named "getIsRobloxLogoHeaderEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local var7 = game_DefineFastString_result1_upvr
		local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(var7, true)
		if any_getLayerVariables_result1 and any_getLayerVariables_result1.IsRobloxLogoHeaderEnabled ~= nil then
			ExperimentCacheManager_upvr.default:sendCustomExposureLog(var7)
			return any_getLayerVariables_result1.IsRobloxLogoHeaderEnabled
		end
		return false
	end;
}