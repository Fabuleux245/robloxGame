-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:08
-- Luau version 6, Types version 3
-- Time taken: 0.002506 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local SharedFlags = require(Parent.SharedFlags)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatForceNewChatTab", false)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 38
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		_isInitialized = false;
		_showNewChatTab = false;
		_showAddFriendsOnHomePageUtilityTray = false;
		_showAddFriendsOnChatTabNilState = false;
	}
	setmetatable(module, module_upvr)
	return module
end
local getFStringNewChatTabExperimentationLayer_upvr = SharedFlags.getFStringNewChatTabExperimentationLayer
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local getFStringNewChatTabExperimentLayerValue_upvr = SharedFlags.getFStringNewChatTabExperimentLayerValue
local getFStringNewChatTabExperimentAddFriendsLayerValue_upvr = SharedFlags.getFStringNewChatTabExperimentAddFriendsLayerValue
local getFStringNewChatTabExperimentAddFriendsNilStateLayerValue_upvr = SharedFlags.getFStringNewChatTabExperimentAddFriendsNilStateLayerValue
local IXPServiceWrapper_upvr = require(Parent.IxpServiceWrapper).IXPServiceWrapper
function module_upvr.initialize(arg1, arg2) -- Line 50
	--[[ Upvalues[6]:
		[1]: getFStringNewChatTabExperimentationLayer_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: getFStringNewChatTabExperimentLayerValue_upvr (readonly)
		[4]: getFStringNewChatTabExperimentAddFriendsLayerValue_upvr (readonly)
		[5]: getFStringNewChatTabExperimentAddFriendsNilStateLayerValue_upvr (readonly)
		[6]: IXPServiceWrapper_upvr (readonly)
	]]
	local any_getLayerVariables_result1 = arg2.default:getLayerVariables(getFStringNewChatTabExperimentationLayer_upvr())
	if any_getLayerVariables_result1 ~= nil then
		any_new_result1_upvr:debug("NewChatTabExperimentation.initialize cache ready")
		local var13 = any_getLayerVariables_result1[getFStringNewChatTabExperimentLayerValue_upvr()]
		local var14 = any_getLayerVariables_result1[getFStringNewChatTabExperimentAddFriendsLayerValue_upvr()]
		local var15 = any_getLayerVariables_result1[getFStringNewChatTabExperimentAddFriendsNilStateLayerValue_upvr()]
		if var13 then
			arg1._showNewChatTab = var13
		end
		if var14 then
			arg1._showAddFriendsOnHomePageUtilityTray = var14
		end
		if var15 then
			arg1._showAddFriendsOnChatTabNilState = var15
		end
		any_new_result1_upvr:debug(`NewChatTabExperimentation.initialize showNewChatTab {var13} showAddFriendsOnHomePageUtilityTray {var14}`)
		IXPServiceWrapper_upvr:LogUserLayerExposure(getFStringNewChatTabExperimentationLayer_upvr())
	else
		any_new_result1_upvr:debug("NewChatTabExperimentation.initialize cache not ready")
	end
	arg1._isInitialized = true
end
local getFFlagEnableNewChatTabExperiment_upvr = SharedFlags.getFFlagEnableNewChatTabExperiment
function module_upvr.isEnabled() -- Line 83
	--[[ Upvalues[2]:
		[1]: getFFlagEnableNewChatTabExperiment_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var16_result1 = getFFlagEnableNewChatTabExperiment_upvr()
	if not var16_result1 then
		var16_result1 = game_DefineFastFlag_result1_upvr
	end
	return var16_result1
end
function module_upvr.getConnectTabLeadsToChatTab(arg1) -- Line 87
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var18 = game_DefineFastFlag_result1_upvr
	if not var18 then
		var18 = arg1._showNewChatTab
	end
	return var18
end
function module_upvr.getShowAddFriendsOnHomePageUtilityTray(arg1) -- Line 91
	return arg1._showAddFriendsOnHomePageUtilityTray
end
function module_upvr.getShowAddFriendsOnChatTabNilState(arg1) -- Line 95
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var19 = game_DefineFastFlag_result1_upvr
	if not var19 then
		var19 = arg1._showAddFriendsOnChatTabNilState
	end
	return var19
end
module_upvr.default = module_upvr.new()
return module_upvr