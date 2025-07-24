-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:28
-- Luau version 6, Types version 3
-- Time taken: 0.002411 seconds

local dependencies = require(script:FindFirstAncestor("CrossExperienceVoice").dependencies)
local ExperimentCacheManager_upvr = dependencies.ExperimentCacheManager.ExperimentCacheManager
local game_DefineFastString_result1_upvr = game:DefineFastString("CrossExpVoiceIXPLayer", "Social.PartyVoice")
local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr = {
	CrossExpVoiceDebugVariant_0 = {
		partyVoiceExp = false;
	};
	CrossExpVoiceDebugVariant_1 = {
		partyVoiceExp = true;
	};
}
function module_upvr.new() -- Line 50
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		initialized = false;
		variant = {};
	}
	setmetatable(module, module_upvr)
	return module
end
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("DebugCrossExpVoiceIXPLayer", "")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PartyVoiceDisallowIXPLayerExposureOnInit", false)
function module_upvr.initialize(arg1) -- Line 61
	--[[ Upvalues[5]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr_2 (readonly)
		[4]: tbl_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
	if any_getLayerVariables_result1 ~= nil then
		arg1.initialized = true
		arg1.variant = table.clone(any_getLayerVariables_result1)
	end
	if game_DefineFastString_result1_upvr_2 ~= "None" then
		arg1.initialized = true
		local var12 = tbl_upvr[game_DefineFastString_result1_upvr_2]
		if not var12 then
			var12 = arg1.variant
		end
		arg1.variant = var12
	end
	if arg1.initialized and not game_DefineFastFlag_result1_upvr then
		arg1:logLayerExposure()
	end
end
local function getHasPartyVoiceVolume(arg1) -- Line 81, Named "logLayerExposure"
	--[[ Upvalues[2]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr)
end
module_upvr.logLayerExposure = getHasPartyVoiceVolume
function getHasPartyVoiceVolume() -- Line 85
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var15 = game_GetEngineFeature_result1_upvr
	if var15 then
		var15 = module_upvr.default.variant.partyVoiceExp
	end
	return var15
end
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("PartyVoiceVolume")
local var13 = getHasPartyVoiceVolume
module_upvr.getHasPartyVoiceVolume = var13
if dependencies.SharedFlags.GetFFlagEnableCrossExpVoice() then
	var13 = module_upvr.new()
else
	var13 = nil
end
module_upvr.default = var13
return module_upvr