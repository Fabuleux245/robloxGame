-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:13
-- Luau version 6, Types version 3
-- Time taken: 0.000737 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local React_upvr = require(GenericAbuseReporting.Parent.React)
local AbuseReportFormDataContext_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportFormDataContext)
return function(arg1) -- Line 12, Named "AbuseReportFormDataProvider"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: AbuseReportFormDataContext_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({})
	return React_upvr.createElement(AbuseReportFormDataContext_upvr.Provider, {
		value = {
			formData = any_useState_result1;
			updateForm = React_upvr.useCallback(function(arg1_2, arg2) -- Line 15
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (readonly)
				]]
				any_useState_result2_upvr(function(arg1_3) -- Line 16
					--[[ Upvalues[2]:
						[1]: arg1_2 (readonly)
						[2]: arg2 (readonly)
					]]
					local clone = table.clone(arg1_3)
					clone[arg1_2] = arg2
					return clone
				end)
			end, {});
		};
	}, arg1.children)
end