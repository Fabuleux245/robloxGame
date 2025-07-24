-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:48
-- Luau version 6, Types version 3
-- Time taken: 0.001830 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ForceTextChatEnabledForTenFootInterfaces", false)
local game_GetEngineFeature_result1_upvr_2 = game:GetEngineFeature("ThirdPartyTextChatPermissionsApi")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("ConsoleInExperienceChatExperimentFeature")
local IXPService_upvr = game:GetService("IXPService")
local ExperimentCacheManager_upvr = require(script:FindFirstAncestor("SocialExperiments").Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaConsoleInExperienceChatLayerName", "PlatformExcellence.Consoles.Features")
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("LuaConsoleInExperienceChatVariableName", "inExperienceChatEnabled")
local function getIsEnabled_upvr() -- Line 29, Named "getIsEnabled"
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr_2 (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: IXPService_upvr (readonly)
		[5]: ExperimentCacheManager_upvr (readonly)
		[6]: game_DefineFastString_result1_upvr (readonly)
		[7]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		return true
	end
	if not game_GetEngineFeature_result1_upvr_2 or not game_GetEngineFeature_result1_upvr then
		return false
	end
	local var8_upvw
	if IXPService_upvr:GetUserLayerLoadingStatus() ~= Enum.IXPLoadingStatus.Initialized then
		pcall(function() -- Line 49
			--[[ Upvalues[3]:
				[1]: var8_upvw (read and write)
				[2]: ExperimentCacheManager_upvr (copied, readonly)
				[3]: game_DefineFastString_result1_upvr (copied, readonly)
			]]
			var8_upvw = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr, true)
		end)
	else
		pcall(function() -- Line 54
			--[[ Upvalues[3]:
				[1]: var8_upvw (read and write)
				[2]: IXPService_upvr (copied, readonly)
				[3]: game_DefineFastString_result1_upvr (copied, readonly)
			]]
			var8_upvw = IXPService_upvr:GetUserLayerVariables(game_DefineFastString_result1_upvr)
		end)
	end
	if var8_upvw and var8_upvw[game_DefineFastString_result1_upvr_2] ~= nil then
		return var8_upvw[game_DefineFastString_result1_upvr_2]
	end
	return false
end
local var11_upvw
return {
	getIsEnabled = function() -- Line 68, Named "getIsEnabledMemoized"
		--[[ Upvalues[2]:
			[1]: var11_upvw (read and write)
			[2]: getIsEnabled_upvr (readonly)
		]]
		if var11_upvw == nil then
			var11_upvw = getIsEnabled_upvr()
		end
		return var11_upvw
	end;
}