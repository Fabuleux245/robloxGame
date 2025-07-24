-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:38
-- Luau version 6, Types version 3
-- Time taken: 0.000929 seconds

local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
local module = {
	componentType = "dropdown";
	getIsVisible = function(arg1) -- Line 9, Named "getIsVisible"
		return true
	end;
}
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
function module.getMenuItems(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var5
	if arg1.methodOfAbuse == "Voice Chat" then
		var5 = Constants_upvr.PlayerVoiceAbuseTypes
	else
		var5 = Constants_upvr.PlayerAbuseTypes
	end
	return Cryo_upvr.Dictionary.values(var5)
end
function module.onUpdateSelectedOption(arg1, arg2, arg3, arg4) -- Line 18
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	arg4.analyticsDispatch({
		type = Constants_upvr.AnalyticsActions.IncrementReasonChanged;
	})
	local tbl_2 = {
		type = Constants_upvr.AnalyticsActions.SetReasonSelection;
	}
	tbl_2.selection = arg1
	arg4.analyticsDispatch(tbl_2)
	local tbl = {
		type = Constants_upvr.PlayerMenuActions.UpdateAbuseReason;
	}
	tbl.abuseReason = arg1
	arg3(tbl)
end
module.fieldLabel = "ReasonForAbuse"
module.componentName = "AbuseReason"
return module