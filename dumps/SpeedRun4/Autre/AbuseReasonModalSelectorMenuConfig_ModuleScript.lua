-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:39
-- Luau version 6, Types version 3
-- Time taken: 0.001910 seconds

local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
local module = {
	componentType = "modalSelector";
	getIsVisible = function(arg1) -- Line 9, Named "getIsVisible"
		return true
	end;
}
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
function module.getMenuItems(arg1, arg2) -- Line 12
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var5
	if arg1.methodOfAbuse == Constants_upvr.AbuseMethods.VoiceChat then
		var5 = Constants_upvr.PlayerVoiceAbuseTypes
	else
		var5 = Constants_upvr.PlayerAbuseTypes
	end
	return Cryo_upvr.List.map(Cryo_upvr.Dictionary.values(var5), function(arg1_2) -- Line 17
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local module_2 = {
			label = arg2[arg1_2];
		}
		module_2.identifier = arg1_2
		return module_2
	end)
end
function module.getSelectedValue(arg1) -- Line 24
	return arg1.abuseReason
end
function module.onUpdateSelectedOption(arg1, arg2, arg3, arg4) -- Line 27
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg4.analyticsDispatch({
		type = Constants_upvr.AnalyticsActions.IncrementReasonChanged;
	})
	arg4.analyticsDispatch({
		type = Constants_upvr.AnalyticsActions.SetReasonSelection;
		selection = arg1.identifier;
	})
	arg3({
		type = Constants_upvr.PlayerMenuActions.UpdateAbuseReason;
		abuseReason = arg1.identifier;
	})
end
module.fieldLabel = "ReasonForAbuse"
module.componentName = "AbuseReason"
return module