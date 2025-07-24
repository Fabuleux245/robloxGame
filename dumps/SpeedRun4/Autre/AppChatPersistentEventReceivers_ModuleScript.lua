-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:58
-- Luau version 6, Types version 3
-- Time taken: 0.001083 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local AppChatAccountSettingsEventReceiver_upvr = require(script.Parent.AppChatAccountSettingsEventReceiver)
local getFFlagAppChatEnableIntervention_upvr = require(Parent.InterventionShared).Flags.getFFlagAppChatEnableIntervention
local AppChatInterventionEventReceiver_upvr = require(script.Parent.AppChatInterventionEventReceiver)
local ThirdPartyUserService_upvr = game:GetService("ThirdPartyUserService")
local AppChatThirdPartySettingsEventReceiver_upvr = require(script.Parent.AppChatThirdPartySettingsEventReceiver)
local AppChatRemoveThirdPartyRestriction_upvr = require(script.Parent.AppChatRemoveThirdPartyRestriction)
local AppChatNotificationEventReceiver_upvr = require(script.Parent.AppChatNotificationEventReceiver)
return function(arg1) -- Line 19, Named "AppChatPersistentEventReceivers"
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: AppChatAccountSettingsEventReceiver_upvr (readonly)
		[3]: getFFlagAppChatEnableIntervention_upvr (readonly)
		[4]: AppChatInterventionEventReceiver_upvr (readonly)
		[5]: ThirdPartyUserService_upvr (readonly)
		[6]: AppChatThirdPartySettingsEventReceiver_upvr (readonly)
		[7]: AppChatRemoveThirdPartyRestriction_upvr (readonly)
		[8]: AppChatNotificationEventReceiver_upvr (readonly)
	]]
	local module = {
		accountSettings = React_upvr.createElement(AppChatAccountSettingsEventReceiver_upvr, {
			isInExperience = arg1.isInExperience;
		});
	}
	local var12
	if getFFlagAppChatEnableIntervention_upvr() then
		var12 = React_upvr.createElement(AppChatInterventionEventReceiver_upvr, {})
	else
		var12 = nil
	end
	module.intervention = var12
	local var13
	var13 = React_upvr
	var12 = var13.createElement
	if ThirdPartyUserService_upvr ~= nil and ThirdPartyUserService_upvr:IsChatRestrictionSupported() then
		var13 = AppChatThirdPartySettingsEventReceiver_upvr
	else
		var13 = AppChatRemoveThirdPartyRestriction_upvr
	end
	var12 = var12(var13)
	module.thirdPartySettings = var12
	var13 = React_upvr
	var12 = var13.createElement
	var13 = AppChatNotificationEventReceiver_upvr
	var12 = var12(var13)
	module.notification = var12
	return React_upvr.createElement(React_upvr.Fragment, nil, module)
end