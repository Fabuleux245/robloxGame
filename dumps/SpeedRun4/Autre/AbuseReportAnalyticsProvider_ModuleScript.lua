-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:10
-- Luau version 6, Types version 3
-- Time taken: 0.000501 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local React_upvr = require(GenericAbuseReporting.Parent.React)
local AbuseReportAnalyticsContext_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportAnalyticsContext)
return function(arg1) -- Line 18, Named "AbuseReportAnalyticsProvider"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: AbuseReportAnalyticsContext_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(false)
	return React_upvr.createElement(AbuseReportAnalyticsContext_upvr.Provider, {
		value = {
			abuseVector = arg1.abuseVector;
			isReportSubmitted = any_useState_result1;
			setIsReportSubmitted = any_useState_result2;
		};
	}, arg1.children)
end