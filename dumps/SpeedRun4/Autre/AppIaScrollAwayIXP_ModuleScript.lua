-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:20:43
-- Luau version 6, Types version 3
-- Time taken: 0.001249 seconds

local Parent = script.Parent.Parent
local var2_upvw
local ExperimentCacheManager_upvr = require(Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("AppIaScrollAwayIxpLayer", require(Parent.ExperimentLayers).AppUserLayers.BottomBarNavLayer)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("AppIaScrollAwayIxpVariantKey", "enabled")
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("AppIaScrollAwayIxpVariantDisabled", 0)
local function getIXPVariant_upvr() -- Line 22, Named "getIXPVariant"
	--[[ Upvalues[5]:
		[1]: var2_upvw (read and write)
		[2]: ExperimentCacheManager_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr (readonly)
		[4]: game_DefineFastString_result1_upvr_2 (readonly)
		[5]: game_DefineFastInt_result1_upvr_2 (readonly)
	]]
	if var2_upvw == nil then
		local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
		if any_getLayerVariables_result1 ~= nil then
			ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr)
		end
		local var8 = any_getLayerVariables_result1
		if not var8 then
			var8 = {}
		end
		var2_upvw = var8
	end
	local var9 = var2_upvw[game_DefineFastString_result1_upvr_2]
	if var9 == nil then
		return game_DefineFastInt_result1_upvr_2
	end
	return tonumber(var9)
end
local FFlagAppIaScrollAway_upvr = require(Parent.SharedFlags).FFlagAppIaScrollAway
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppIaScrollAwayIxpRollOut", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AppIaScrollAwayIxpEnabled", false)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppIaScrollAwayIxpVariantEnabled", 1)
return {
	getEnabled = function() -- Line 41, Named "getEnabled"
		--[[ Upvalues[5]:
			[1]: FFlagAppIaScrollAway_upvr (readonly)
			[2]: game_DefineFastFlag_result1_upvr (readonly)
			[3]: game_DefineFastFlag_result1_upvr_2 (readonly)
			[4]: getIXPVariant_upvr (readonly)
			[5]: game_DefineFastInt_result1_upvr (readonly)
		]]
		local var14
		if not FFlagAppIaScrollAway_upvr then
			return false
		end
		if game_DefineFastFlag_result1_upvr then
			return true
		end
		if not game_DefineFastFlag_result1_upvr_2 then
			return false
		end
		if getIXPVariant_upvr() ~= game_DefineFastInt_result1_upvr then
			var14 = false
		else
			var14 = true
		end
		return var14
	end;
}