-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:06
-- Luau version 6, Types version 3
-- Time taken: 0.002906 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local game_DefineFastString_result1_upvr = game:DefineFastString("AppChatHideChatToastExperimentationLayer", "Social.AppChat")
local ExperimentCacheManager_upvr = require(Parent.ExperimentCacheManager).ExperimentCacheManager
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatForceHideChatToastTreatment", false)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 32
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		_isInitialized = false;
		_shouldHideChatToast = false;
		_shouldHideChatBellIcon = false;
	}
	setmetatable(module, module_upvr)
	return module
end
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("ShouldHideChatToast", "ShouldHideChatToast")
local game_DefineFastString_result1_upvr_3 = game:DefineFastString("ShouldHideChatBellIcon", "ShouldHideChatBellIcon")
function module_upvr.initialize(arg1) -- Line 43
	--[[ Upvalues[5]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
		[4]: game_DefineFastString_result1_upvr_2 (readonly)
		[5]: game_DefineFastString_result1_upvr_3 (readonly)
	]]
	local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(game_DefineFastString_result1_upvr)
	if any_getLayerVariables_result1 ~= nil then
		any_new_result1_upvr:debug("HideChatToastExperimentation.initialize cache ready")
		local var11 = any_getLayerVariables_result1[game_DefineFastString_result1_upvr_2]
		local var12 = any_getLayerVariables_result1[game_DefineFastString_result1_upvr_3]
		if var11 then
			arg1._shouldHideChatToast = var11
		end
		if var12 then
			arg1._shouldHideChatBellIcon = var12
		end
		any_new_result1_upvr:debug(`HideChatToastExperimentation.initialize with shouldHideChatToast {var11} and shouldHideChatBellIcon {var12}`)
		arg1._isInitialized = true
	else
		any_new_result1_upvr:debug("HideChatToastExperimentation.initialize cache not ready")
	end
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AppChatHideChatToastExperimentEnabled", false)
function module_upvr.isEnabled() -- Line 68
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var14 = game_DefineFastFlag_result1_upvr_2
	if not var14 then
		var14 = game_DefineFastFlag_result1_upvr
	end
	return var14
end
function module_upvr.getShouldHideChatToast(arg1) -- Line 72
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local any_isEnabled_result1_2 = arg1.isEnabled()
	if any_isEnabled_result1_2 then
		any_isEnabled_result1_2 = arg1._shouldHideChatToast
		if not any_isEnabled_result1_2 then
			any_isEnabled_result1_2 = game_DefineFastFlag_result1_upvr
		end
	end
	return any_isEnabled_result1_2
end
function module_upvr.getShouldHideChatBellIcon(arg1) -- Line 76
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local any_isEnabled_result1 = arg1.isEnabled()
	if any_isEnabled_result1 then
		any_isEnabled_result1 = arg1._shouldHideChatBellIcon
		if not any_isEnabled_result1 then
			any_isEnabled_result1 = game_DefineFastFlag_result1_upvr
		end
	end
	return any_isEnabled_result1
end
function module_upvr.logExposure(arg1) -- Line 80
	--[[ Upvalues[2]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: game_DefineFastString_result1_upvr (readonly)
	]]
	pcall(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: ExperimentCacheManager_upvr (copied, readonly)
			[2]: game_DefineFastString_result1_upvr (copied, readonly)
		]]
		ExperimentCacheManager_upvr.default:logLayerExposure(game_DefineFastString_result1_upvr)
	end)
end
module_upvr.default = module_upvr.new()
return module_upvr