-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:38
-- Luau version 6, Types version 3
-- Time taken: 0.002368 seconds

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local GetFFlagInviteListRerank_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInviteListRerank
local module_upvr = {}
module_upvr.__index = module_upvr
local IXPServiceWrapper_upvr = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
function module_upvr.new(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: IXPServiceWrapper_upvr (readonly)
		[2]: GetFFlagInviteListRerank_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local module = {}
	local var7 = arg1
	if not var7 then
		var7 = IXPServiceWrapper_upvr
	end
	module._ixpServiceWrapper = var7
	module._styleEnabled = false
	module._customizationEnabled = false
	local var8 = false
	module._newSendEndpointEnabled = var8
	if GetFFlagInviteListRerank_upvr() then
		var8 = 0
	else
		var8 = nil
	end
	module._inviteListSortOrder = var8
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.getStyleEnabled(arg1) -- Line 32
	return arg1._styleEnabled
end
function module_upvr.getCustomizationEnabled(arg1) -- Line 36
	return arg1._customizationEnabled
end
function module_upvr.getNewSendEndpointEnabled(arg1) -- Line 40
	return arg1._newSendEndpointEnabled
end
if GetFFlagInviteListRerank_upvr() then
	function module_upvr.getInviteListSortOrder(arg1) -- Line 45
		return arg1._inviteListSortOrder
	end
end
local GetFFlagEnableNewInviteMenuIXP_upvr = require(Modules.Flags.GetFFlagEnableNewInviteMenuIXP)
local GetFStringInExperienceNotificationsLayer_upvr = require(Modules.Flags.GetFStringInExperienceNotificationsLayer)
function module_upvr.initialize(arg1) -- Line 50
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableNewInviteMenuIXP_upvr (readonly)
		[2]: GetFStringInExperienceNotificationsLayer_upvr (readonly)
		[3]: GetFFlagInviteListRerank_upvr (readonly)
	]]
	if not GetFFlagEnableNewInviteMenuIXP_upvr() then
	else
		task.spawn(function() -- Line 55
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: GetFStringInExperienceNotificationsLayer_upvr (copied, readonly)
				[3]: GetFFlagInviteListRerank_upvr (copied, readonly)
			]]
			arg1._ixpServiceWrapper:WaitForInitialization()
			local any_GetLayerData_result1 = arg1._ixpServiceWrapper:GetLayerData(GetFStringInExperienceNotificationsLayer_upvr())
			if any_GetLayerData_result1 then
				arg1._styleEnabled = any_GetLayerData_result1.NewInviteMenuStyleEnabled or false
				arg1._customizationEnabled = any_GetLayerData_result1.NewInviteMenuCustomizationEnabled or false
				local var13 = any_GetLayerData_result1.NewInviteMenuEndpointEnabled or false
				arg1._newSendEndpointEnabled = var13
				if GetFFlagInviteListRerank_upvr() then
					var13 = any_GetLayerData_result1.invite_list_sort_order or 0
				else
					var13 = nil
				end
				arg1._inviteListSortOrder = var13
			end
		end)
	end
end
module_upvr.default = module_upvr.new()
return module_upvr