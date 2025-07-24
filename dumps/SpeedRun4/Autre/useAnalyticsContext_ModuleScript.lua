-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:14
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local React_upvr = require(GenericAbuseReporting.Parent.React)
local AbuseReportAnalyticsContext_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportAnalyticsContext)
return function() -- Line 7, Named "useAnalyticsContext"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: AbuseReportAnalyticsContext_upvr (readonly)
	]]
	return React_upvr.useContext(AbuseReportAnalyticsContext_upvr)
end