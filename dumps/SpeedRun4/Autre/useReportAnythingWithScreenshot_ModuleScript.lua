-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:32
-- Luau version 6, Types version 3
-- Time taken: 0.001401 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local TnSIXPWrapper_upvr = require(AbuseReportMenu.IXP.TnSIXPWrapper)
local React_upvr = require(game:GetService("CorePackages").Packages.React)
local reportAnythingReducer_upvr = require(AbuseReportMenu.Reducers.reportAnythingReducer)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local useCaptureScreenshot_upvr = require(AbuseReportMenu.Hooks.useCaptureScreenshot)
local useHideForScreenshot_upvr = require(AbuseReportMenu.Hooks.useHideForScreenshot)
return function(arg1, arg2, arg3, arg4) -- Line 12
	--[[ Upvalues[6]:
		[1]: TnSIXPWrapper_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: reportAnythingReducer_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: useCaptureScreenshot_upvr (readonly)
		[6]: useHideForScreenshot_upvr (readonly)
	]]
	local any_useReducer_result1_upvr, any_useReducer_result2_upvr = React_upvr.useReducer(reportAnythingReducer_upvr, Constants_upvr.ReportAnythingInitialState)
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = TnSIXPWrapper_upvr.getReportAnythingExperienceEnabled()
		return var11
	end
	if TnSIXPWrapper_upvr.getReportAnythingAvatarEnabled() or INLINED() then
		if any_useReducer_result1_upvr.screenshotContentId ~= "" then
			var11 = false
		else
			var11 = true
		end
	end
	useHideForScreenshot_upvr(var11, arg1, arg2, arg3, useCaptureScreenshot_upvr(React_upvr.useCallback(function(arg1_2) -- Line 25
		--[[ Upvalues[2]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		local tbl_2 = {
			type = Constants_upvr.ReportAnythingActions.SetScreenshotContentId;
		}
		tbl_2.screenshotContentId = arg1_2
		any_useReducer_result2_upvr(tbl_2)
	end), React_upvr.useCallback(function(arg1_3) -- Line 31
		--[[ Upvalues[2]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		local tbl = {
			type = Constants_upvr.ReportAnythingActions.SetScreenshotId;
		}
		tbl.screenshotId = arg1_3
		any_useReducer_result2_upvr(tbl)
	end), React_upvr.useCallback(function(arg1_4) -- Line 37
		--[[ Upvalues[2]:
			[1]: any_useReducer_result2_upvr (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		local tbl_3 = {
			type = Constants_upvr.ReportAnythingActions.SetIdentificationResults;
		}
		tbl_3.identificationResults = arg1_4
		any_useReducer_result2_upvr(tbl_3)
	end)), function() -- Line 44
		--[[ Upvalues[3]:
			[1]: arg4 (readonly)
			[2]: any_useReducer_result1_upvr (readonly)
			[3]: any_useReducer_result2_upvr (readonly)
		]]
		arg4(any_useReducer_result1_upvr, any_useReducer_result2_upvr)
	end)
	return any_useReducer_result1_upvr, any_useReducer_result2_upvr
end