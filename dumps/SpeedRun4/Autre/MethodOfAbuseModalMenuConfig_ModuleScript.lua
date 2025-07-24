-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:40
-- Luau version 6, Types version 3
-- Time taken: 0.002066 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local TnSIXPWrapper_upvr = require(AbuseReportMenu.IXP.TnSIXPWrapper)
local module = {
	componentType = "modalSelector";
	getIsVisible = function(arg1) -- Line 15, Named "getIsVisible"
		--[[ Upvalues[1]:
			[1]: TnSIXPWrapper_upvr (readonly)
		]]
		local isVoiceEnabled = arg1.isVoiceEnabled
		if not isVoiceEnabled then
			isVoiceEnabled = TnSIXPWrapper_upvr.getReportAnythingAvatarEnabled()
		end
		return isVoiceEnabled
	end;
}
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local default_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local getAvailableMethodsOfAbuse_upvr = require(AbuseReportMenu.Utility.getAvailableMethodsOfAbuse)
function module.getMenuItems(arg1) -- Line 18
	--[[ Upvalues[4]:
		[1]: Cryo_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: getAvailableMethodsOfAbuse_upvr (readonly)
		[4]: TnSIXPWrapper_upvr (readonly)
	]]
	local isVoiceEnabled_2 = arg1.isVoiceEnabled
	if isVoiceEnabled_2 then
		isVoiceEnabled_2 = not Cryo_upvr.isEmpty(default_upvr:getRecentUsersInteractionData())
	end
	return getAvailableMethodsOfAbuse_upvr(isVoiceEnabled_2, TnSIXPWrapper_upvr.getReportAnythingAvatarEnabled())
end
function module.getSelectedValue(arg1) -- Line 24
	return arg1.methodOfAbuse
end
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
function module.onUpdateSelectedOption(arg1, arg2, arg3, arg4) -- Line 27
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg3({
		type = Constants_upvr.PlayerMenuActions.UpdateMethodOfAbuse;
		methodOfAbuse = arg1.identifier;
	})
	if arg1.identifier ~= arg2.methodOfAbuse then
		arg4.reportAnythingDispatch({
			type = Constants_upvr.ReportAnythingActions.ClearAnnotationFlowProperties;
		})
		arg4.analyticsDispatch({
			type = Constants_upvr.AnalyticsActions.IncrementTypeofabuseChanged;
		})
		arg4.analyticsDispatch({
			type = Constants_upvr.AnalyticsActions.SetTypeOfAbuseSelection;
			selection = arg1.identifier;
		})
	end
end
module.fieldLabel = "MethodOfAbuse"
module.componentName = "MethodOfAbuse"
return module