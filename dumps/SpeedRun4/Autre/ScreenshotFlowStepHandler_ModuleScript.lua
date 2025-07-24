-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:50
-- Luau version 6, Types version 3
-- Time taken: 0.004211 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local React_upvr = require(CorePackages.Packages.React)
local GetFFlagAvatarIdentificationSafeAreaFix_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarIdentificationSafeAreaFix
local ScreenshotReviewDialog_upvr = require(Parent.Components.ScreenshotReviewDialog)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ScreenshotDialog_upvr = require(Parent.Components.ScreenshotDialog)
return function(arg1) -- Line 28, Named "ScreenshotFlowStepHandler"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[3]: ScreenshotReviewDialog_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: ScreenshotDialog_upvr (readonly)
	]]
	local var8 = React_upvr
	local var23
	if arg1.initialPageNumber == nil then
		var8 = 1
	else
		var8 = arg1.initialPageNumber
	end
	local any_useState_result1_5, any_useState_result2_upvr = var8.useState(var8)
	local any_useState_result1_3, any_useState_result2_upvr_4 = React_upvr.useState(1.7777777777777777)
	local any_useState_result1_2, any_useState_result2_upvr_3 = React_upvr.useState(800)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(800)
	local any_useState_result1_4, any_useState_result2_upvr_5 = React_upvr.useState(true)
	local tbl = {}
	var23 = any_useState_result2_upvr
	tbl[1] = var23
	var23 = {}
	var23[1] = any_useState_result2_upvr
	var23 = React_upvr
	function var23() -- Line 42
		--[[ Upvalues[6]:
			[1]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
			[6]: any_useState_result2_upvr_5 (readonly)
		]]
		local CurrentCamera = game.Workspace.CurrentCamera
		if CurrentCamera ~= nil then
			local viewportSize_2 = CurrentCamera.viewportSize
			if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
				if arg1.viewportInfo then
					any_useState_result2_upvr_4(arg1.viewportInfo.width / arg1.viewportInfo.height)
					-- KONSTANTWARNING: GOTO [38] #27
				end
			end
			any_useState_result2_upvr_4(viewportSize_2.X / viewportSize_2.Y)
			any_useState_result2_upvr_3(viewportSize_2.Y)
			any_useState_result2_upvr_2(viewportSize_2.X)
			local var29 = false
			if viewportSize_2.X < viewportSize_2.Y then
				if viewportSize_2.X >= 800 then
					var29 = false
				else
					var29 = true
				end
			end
			any_useState_result2_upvr_5(var29)
		end
	end
	var23.useEffect(var23, {})
	if any_useState_result1_5 == 1 then
		var23 = React_upvr.createElement
		var23 = var23(ScreenshotReviewDialog_upvr, {
			imageAspectRatio = any_useState_result1_3;
			isSmallPortraitMode = any_useState_result1_4;
			viewportUISafeAreaHeight = any_useState_result1_2;
			viewportUISafeAreaWidth = any_useState_result1;
			onNextPage = React_upvr.useCallback(function() -- Line 35
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (readonly)
				]]
				any_useState_result2_upvr(2)
			end, tbl);
			onBack = arg1.dismissAction;
			onSkip = arg1.skipAnnotationAction;
			onRestart = arg1.restartAction;
			screenshot = arg1.screenshot;
			reportAnythingAnalytics = arg1.reportAnythingAnalytics;
		}, {})
		return var23
	end
	if arg1.entryPoint == "player" then
		var23 = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Label.SelectPerson")
	else
		var23 = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Label.SelectProblem")
	end
	return React_upvr.createElement(ScreenshotDialog_upvr, {
		titleText = var23;
		backAction = React_upvr.useCallback(function() -- Line 38
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(1)
		end, var23);
		dismissAction = arg1.dismissAction;
		finishAnnotationAction = arg1.finishAnnotationAction;
		initialAnnotationPoints = arg1.initialAnnotationPoints;
		isSmallPortraitMode = any_useState_result1_4;
		screenshot = arg1.screenshot;
		imageAspectRatio = any_useState_result1_3;
		setAnnotationCircleRadius = arg1.setAnnotationCircleRadius;
		setAnnotationAreaDimensions = arg1.setAnnotationAreaDimensions;
		reportAnythingAnalytics = arg1.reportAnythingAnalytics;
	})
end