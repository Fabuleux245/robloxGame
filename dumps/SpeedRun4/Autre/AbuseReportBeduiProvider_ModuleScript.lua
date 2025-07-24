-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:11
-- Luau version 6, Types version 3
-- Time taken: 0.001960 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(Parent.React)
local AbuseReportBeduiContextStatus_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiTypes).AbuseReportBeduiContextStatus
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local fetchBeduiData_upvr = require(GenericAbuseReporting.Bedui.Provider.fetchBeduiData)
local validateBeduiData_upvr = require(GenericAbuseReporting.Bedui.Provider.validateBeduiData)
local AbuseReportBeduiContext_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiContext)
return function(arg1) -- Line 33, Named "AbuseReportBeduiProvider"
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: AbuseReportBeduiContextStatus_upvr (readonly)
		[3]: useRoactService_upvr (readonly)
		[4]: RoactNetworking_upvr (readonly)
		[5]: fetchBeduiData_upvr (readonly)
		[6]: validateBeduiData_upvr (readonly)
		[7]: AbuseReportBeduiContext_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState({
		status = AbuseReportBeduiContextStatus_upvr.Loading;
	})
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	React_upvr.useEffect(function() -- Line 39
		--[[ Upvalues[6]:
			[1]: fetchBeduiData_upvr (copied, readonly)
			[2]: useRoactService_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: validateBeduiData_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
			[6]: AbuseReportBeduiContextStatus_upvr (copied, readonly)
		]]
		fetchBeduiData_upvr(useRoactService_upvr_result1_upvr, arg1.abuseVector):andThen(function(arg1_2) -- Line 41
			--[[ Upvalues[3]:
				[1]: validateBeduiData_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
				[3]: AbuseReportBeduiContextStatus_upvr (copied, readonly)
			]]
			local validateBeduiData_upvr_result1, validateBeduiData_upvr_result2 = validateBeduiData_upvr(arg1_2.responseBody)
			if not validateBeduiData_upvr_result1 then
				warn("Invalid Bedui data:", validateBeduiData_upvr_result2)
				any_useState_result2_upvr({
					status = AbuseReportBeduiContextStatus_upvr.Error;
					error = error;
				})
			else
				any_useState_result2_upvr({
					status = AbuseReportBeduiContextStatus_upvr.Success;
					beduiData = arg1_2.responseBody;
				})
			end
		end):catch(function(arg1_3) -- Line 56
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: AbuseReportBeduiContextStatus_upvr (copied, readonly)
			]]
			warn("Failed to get Bedui data")
			local tbl = {
				status = AbuseReportBeduiContextStatus_upvr.Error;
			}
			tbl.error = arg1_3
			any_useState_result2_upvr(tbl)
		end)
	end, {arg1.abuseVector})
	return React_upvr.createElement(AbuseReportBeduiContext_upvr.Provider, {
		value = any_useState_result1;
	}, arg1.children)
end