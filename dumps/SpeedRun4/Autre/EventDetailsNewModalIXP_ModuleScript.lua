-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:52
-- Luau version 6, Types version 3
-- Time taken: 0.001703 seconds

game:SetFlagVersion("EnableEventDetailsNewModalIXP", 5)
game:DefineFastFlag("EnableEventDetailsNewModalIXP", false)
local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local AppUserLayers_upvr = require(VirtualEvents.Parent.ExperimentLayers).AppUserLayers
local ExperimentCacheManager_upvr = require(VirtualEvents.Parent.ExperimentCacheManager).ExperimentCacheManager
local function _(arg1) -- Line 12, Named "getLayerData"
	--[[ Upvalues[2]:
		[1]: AppUserLayers_upvr (readonly)
		[2]: ExperimentCacheManager_upvr (readonly)
	]]
	local CreatorSuccessVirtualEvents = AppUserLayers_upvr.CreatorSuccessVirtualEvents
	local any_getLayerVariables_result1_2 = ExperimentCacheManager_upvr.default:getLayerVariables(CreatorSuccessVirtualEvents, true)
	if any_getLayerVariables_result1_2 and any_getLayerVariables_result1_2[arg1] ~= nil then
		ExperimentCacheManager_upvr.default:sendCustomExposureLog(CreatorSuccessVirtualEvents)
		return any_getLayerVariables_result1_2[arg1]
	end
	return false
end
return {
	GetFFlagEnableEventDetailsNewModalIXP = function() -- Line 8, Named "GetFFlagEnableEventDetailsNewModalIXP"
		return game:GetFastFlag("EnableEventDetailsNewModalIXP")
	end;
	EnableEventDetailsNewModal = function() -- Line 23, Named "EnableEventDetailsNewModal"
		--[[ Upvalues[2]:
			[1]: AppUserLayers_upvr (readonly)
			[2]: ExperimentCacheManager_upvr (readonly)
		]]
		local game_GetFastFlag_result1 = game:GetFastFlag("EnableEventDetailsNewModalIXP")
		if game_GetFastFlag_result1 then
			local CreatorSuccessVirtualEvents_2 = AppUserLayers_upvr.CreatorSuccessVirtualEvents
			local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(CreatorSuccessVirtualEvents_2, true)
			if any_getLayerVariables_result1 and any_getLayerVariables_result1.EnableEventDetailsNewModal ~= nil then
				ExperimentCacheManager_upvr.default:sendCustomExposureLog(CreatorSuccessVirtualEvents_2)
				game_GetFastFlag_result1 = any_getLayerVariables_result1.EnableEventDetailsNewModal
				return game_GetFastFlag_result1
			end
			game_GetFastFlag_result1 = false
		end
		return game_GetFastFlag_result1
	end;
}