-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:08
-- Luau version 6, Types version 3
-- Time taken: 0.001827 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local SharedFlags = require(Parent.SharedFlags)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 16
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		_isInitialized = false;
		_variant = 0;
	}
	setmetatable(module, module_2_upvr)
	return module
end
local GetFStringConnectTabChatTileRecolorExperimentationLayer_upvr = SharedFlags.GetFStringConnectTabChatTileRecolorExperimentationLayer
local any_new_result1_upvr = require(Parent.Loggers).Logger:new(script.Name)
local GetFStringConnectTabChatTileRecolorLayerValue_upvr = SharedFlags.GetFStringConnectTabChatTileRecolorLayerValue
local IXPServiceWrapper_upvr = require(Parent.IxpServiceWrapper).IXPServiceWrapper
function module_2_upvr.initialize(arg1, arg2) -- Line 26
	--[[ Upvalues[4]:
		[1]: GetFStringConnectTabChatTileRecolorExperimentationLayer_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: GetFStringConnectTabChatTileRecolorLayerValue_upvr (readonly)
		[4]: IXPServiceWrapper_upvr (readonly)
	]]
	local any_getLayerVariables_result1 = arg2.default:getLayerVariables(GetFStringConnectTabChatTileRecolorExperimentationLayer_upvr())
	if any_getLayerVariables_result1 ~= nil then
		any_new_result1_upvr:debug("ConnectTabChatTileRecolorExperimentation.initialize cache ready")
		local var10 = any_getLayerVariables_result1[GetFStringConnectTabChatTileRecolorLayerValue_upvr()]
		if var10 then
			arg1._variant = var10
		end
		IXPServiceWrapper_upvr:LogUserLayerExposure(GetFStringConnectTabChatTileRecolorExperimentationLayer_upvr())
	else
		any_new_result1_upvr:debug("ConnectTabChatTileRecolorExperimentation.initialize cache not ready")
	end
	arg1._isInitialized = true
end
local GetFFlagEnableConnectTabChatTileRecolorExperiment_upvr = SharedFlags.GetFFlagEnableConnectTabChatTileRecolorExperiment
function module_2_upvr.isEnabled() -- Line 45
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableConnectTabChatTileRecolorExperiment_upvr (readonly)
	]]
	return GetFFlagEnableConnectTabChatTileRecolorExperiment_upvr()
end
function module_2_upvr.getIsRecolored(arg1) -- Line 49
	local var12
	if arg1._variant ~= 2 then
		var12 = false
	else
		var12 = true
	end
	return var12
end
module_2_upvr.default = module_2_upvr.new()
return module_2_upvr