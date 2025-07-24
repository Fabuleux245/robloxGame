-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:11
-- Luau version 6, Types version 3
-- Time taken: 0.001729 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SharedFlags = require(Parent.SharedFlags)
local getFStringAppChatInExperienceIXPLayer_upvr = SharedFlags.getFStringAppChatInExperienceIXPLayer
local ExperimentCacheManager_upvr = require(Parent.ExperimentCacheManager).ExperimentCacheManager
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 39
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
local game_DefineFastString_result1_upvr = game:DefineFastString("DebugInExperienceAppChatIXPVariant", "None")
local Constants_upvr = require(AppChat.App.Constants)
function module_upvr.initialize(arg1) -- Line 50
	--[[ Upvalues[4]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: getFStringAppChatInExperienceIXPLayer_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	local any_getLayerVariables_result1 = ExperimentCacheManager_upvr.default:getLayerVariables(getFStringAppChatInExperienceIXPLayer_upvr())
	if any_getLayerVariables_result1 ~= nil then
		arg1.initialized = true
		arg1.variant = table.clone(any_getLayerVariables_result1)
	end
	if game_DefineFastString_result1_upvr ~= "None" then
		arg1.initialized = true
		local var11 = Constants_upvr.InExperienceAppChatVariants[game_DefineFastString_result1_upvr]
		if not var11 then
			var11 = arg1.variant
		end
		arg1.variant = var11
	end
	if arg1.initialized then
		arg1:logLayerExposure()
	end
end
function module_upvr.logLayerExposure(arg1) -- Line 70
	--[[ Upvalues[2]:
		[1]: ExperimentCacheManager_upvr (readonly)
		[2]: getFStringAppChatInExperienceIXPLayer_upvr (readonly)
	]]
	ExperimentCacheManager_upvr.default:logLayerExposure(getFStringAppChatInExperienceIXPLayer_upvr())
end
local function getShowPlatformChatInChrome() -- Line 75, Named "getHasInExperienceAppChatEntryPoint"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local ShowPlatformChatChromeUnibarEntryPoint_2 = module_upvr.default.variant.ShowPlatformChatChromeUnibarEntryPoint
	if not ShowPlatformChatChromeUnibarEntryPoint_2 then
		ShowPlatformChatChromeUnibarEntryPoint_2 = module_upvr.default.variant.ShowPlatformChatChromeDropdownEntryPoint
	end
	return ShowPlatformChatChromeUnibarEntryPoint_2
end
module_upvr.getHasInExperienceAppChatEntryPoint = getShowPlatformChatInChrome
function getShowPlatformChatInChrome() -- Line 81
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local ShowPlatformChatChromeUnibarEntryPoint = module_upvr.default.variant.ShowPlatformChatChromeUnibarEntryPoint
	if not ShowPlatformChatChromeUnibarEntryPoint then
		ShowPlatformChatChromeUnibarEntryPoint = module_upvr.default.variant.ShowPlatformChatChromeDropdownEntryPoint
	end
	return ShowPlatformChatChromeUnibarEntryPoint
end
local var13 = getShowPlatformChatInChrome
module_upvr.getShowPlatformChatInChrome = var13
if SharedFlags.GetFFlagEnableAppChatInExperience() then
	var13 = module_upvr.new()
else
	var13 = nil
end
module_upvr.default = var13
return module_upvr