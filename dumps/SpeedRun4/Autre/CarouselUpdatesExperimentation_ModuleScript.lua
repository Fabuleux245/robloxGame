-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:40
-- Luau version 6, Types version 3
-- Time taken: 0.001540 seconds

local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("CollectionViews").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaAppCarouselUpdatesExpLayer", "PlayerApp.GridUI")
local function _(arg1) -- Line 7, Named "getIsUserInTreatmentAndSendExposureLog"
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
	getIsUpdatedHeaderEnabled = function() -- Line 19, Named "getIsUpdatedHeaderEnabled"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local var5 = game_DefineFastString_result1_upvr
		local any_getLayerVariables_result1_3 = ExperimentCacheManager_upvr.default:getLayerVariables(var5, true)
		if any_getLayerVariables_result1_3 and any_getLayerVariables_result1_3.IsUpdatedHeaderEnabled ~= nil then
			ExperimentCacheManager_upvr.default:sendCustomExposureLog(var5)
			return any_getLayerVariables_result1_3.IsUpdatedHeaderEnabled
		end
		return false
	end;
	getIsDesktopScrollable = function() -- Line 22, Named "getIsDesktopScrollable"
		--[[ Upvalues[2]:
			[1]: game_DefineFastString_result1_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local var7 = game_DefineFastString_result1_upvr
		local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(var7, true)
		if any_getLayerVariables_result1 and any_getLayerVariables_result1.IsDesktopScrollable ~= nil then
			ExperimentCacheManager_upvr.default:sendCustomExposureLog(var7)
			return any_getLayerVariables_result1.IsDesktopScrollable
		end
		return false
	end;
}