-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:50
-- Luau version 6, Types version 3
-- Time taken: 0.001088 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local any_extend_result1 = React_upvr.PureComponent:extend("ScreenshotFlowStepHandlerContainer")
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").ReportAnything.Resources.Constants)
local ScreenshotFlowStepHandler_upvr = require(script.Parent.ScreenshotFlowStepHandler)
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: CoreScriptsRootProvider_upvr (readonly)
		[3]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[4]: FocusRoot_upvr (readonly)
		[5]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[6]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ScreenshotFlowStepHandler_upvr (readonly)
	]]
	local module = {}
	local var13 = React_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var13 = FocusRoot_upvr
	else
		var13 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			isAutoFocusRoot = true;
		}
	else
	end
	module.FocusNavigationCoreScriptsWrapper = var13.createElement(var13, {
		selectionGroupName = Constants_upvr.ScreenshotFlowStepHandlerRootName;
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
	}, {
		ScreenshotFlowStepHandlerContainer = React_upvr.createElement(ScreenshotFlowStepHandler_upvr, arg1.props);
	})
	return React_upvr.createElement(CoreScriptsRootProvider_upvr, {}, module)
end
return any_extend_result1