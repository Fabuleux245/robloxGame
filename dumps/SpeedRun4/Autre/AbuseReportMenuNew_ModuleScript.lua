-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:16
-- Luau version 6, Types version 3
-- Time taken: 0.015489 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local IXPService_upvr = game:GetService("IXPService")
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local React_upvr = require(CorePackages.Packages.React)
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local ReportModes_upvr = Constants_upvr.ReportModes
local ReportTypes_upvr = Constants_upvr.ReportTypes
local DsaIllegalContentReporting = require(CorePackages.Workspace.Packages.DsaIllegalContentReporting)
local ReactFocusNavigation_upvr = require(CorePackages.Packages.ReactFocusNavigation)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FStringReportMenuIXPLayer_upvr = SharedFlags.FStringReportMenuIXPLayer
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("SelectInSceneIXPField", "EnableSelectInScene")
local tbl_11_upvr = {ReportModes_upvr.Classic, ReportModes_upvr.SelectInScene}
local tbl_4_upvr = {ReportTypes_upvr.Person, ReportTypes_upvr.Experience}
local function _() -- Line 81, Named "isInSelectInSceneExperiment"
	--[[ Upvalues[3]:
		[1]: IXPService_upvr (readonly)
		[2]: FStringReportMenuIXPLayer_upvr (readonly)
		[3]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	local pcall_result1, pcall_result2_3 = pcall(function() -- Line 83
		--[[ Upvalues[2]:
			[1]: IXPService_upvr (copied, readonly)
			[2]: FStringReportMenuIXPLayer_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetUserLayerVariables(FStringReportMenuIXPLayer_upvr)
	end)
	if not pcall_result1 or not pcall_result2_3 or pcall_result2_3[game_DefineFastString_result1_upvr_2] == nil then
		return false
	end
	IXPService_upvr:LogUserLayerExposure(FStringReportMenuIXPLayer_upvr)
	return pcall_result2_3[game_DefineFastString_result1_upvr_2]
end
local GetFFlagWHAM1707ExperimentForceEnabled_upvr = require(AbuseReportMenu.Flags.GetFFlagWHAM1707ExperimentForceEnabled)
local FStringEARReportMenuIXPLayer_upvr = SharedFlags.FStringEARReportMenuIXPLayer
local game_DefineFastString_result1_upvr = game:DefineFastString("WHAM1707IXPField", "EnableWHAM1707")
local function isInWHAM1707Experiment_upvr() -- Line 95, Named "isInWHAM1707Experiment"
	--[[ Upvalues[4]:
		[1]: GetFFlagWHAM1707ExperimentForceEnabled_upvr (readonly)
		[2]: IXPService_upvr (readonly)
		[3]: FStringEARReportMenuIXPLayer_upvr (readonly)
		[4]: game_DefineFastString_result1_upvr (readonly)
	]]
	if GetFFlagWHAM1707ExperimentForceEnabled_upvr() then
		return true
	end
	local pcall_result1_4, pcall_result2_2 = pcall(function() -- Line 101
		--[[ Upvalues[2]:
			[1]: IXPService_upvr (copied, readonly)
			[2]: FStringEARReportMenuIXPLayer_upvr (copied, readonly)
		]]
		return IXPService_upvr:GetUserLayerVariables(FStringEARReportMenuIXPLayer_upvr)
	end)
	if not pcall_result1_4 or not pcall_result2_2 or pcall_result2_2[game_DefineFastString_result1_upvr] == nil then
		return false
	end
	IXPService_upvr:LogUserLayerExposure(FStringEARReportMenuIXPLayer_upvr)
	return pcall_result2_2[game_DefineFastString_result1_upvr]
end
local analyticsReducer_upvr = require(AbuseReportMenu.Reducers.analyticsReducer)
local createCleanup_upvr = require(AbuseReportMenu.Components.createCleanup)
local useReportAnythingWithScreenshot_upvr = require(AbuseReportMenu.Hooks.useReportAnythingWithScreenshot)
local getMenuItemSizings_upvr = require(AbuseReportMenu.Utility.getMenuItemSizings)
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local isAbuseReportMenuOpenCloseSignalEnabled_upvr = require(AbuseReportMenu.Flags.isAbuseReportMenuOpenCloseSignalEnabled)
local SafetyService_upvr = game:GetService("SafetyService")
local AnnotationModal_upvr = require(AbuseReportMenu.ReportAnything.Components.AnnotationModal)
local ModalBasedSelectorDialogController_upvr = require(AbuseReportMenu.Components.ModalBasedSelectorDialogController)
local ReportAbuseAnalytics_upvr = require(AbuseReportMenu.Analytics.ReportAbuseAnalytics)
local Players_upvr = game:GetService("Players")
local isShowSelectInSceneReportMenu_upvr = require(AbuseReportMenu.Utility.isShowSelectInSceneReportMenu)
local ReportAnythingAnalytics_upvr = require(AbuseReportMenu.ReportAnything.Utility.ReportAnythingAnalytics)
local ReportPersonMenuItemsContainer_upvr = require(AbuseReportMenu.Components.Containers.ReportPersonMenuItemsContainer)
local ReportExperienceMenuItemsContainer_upvr = require(AbuseReportMenu.Components.Containers.ReportExperienceMenuItemsContainer)
local FFlagCSFocusWrapperRefactor_upvr = SharedFlags.FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local SegmentedControl_upvr = require(CorePackages.Packages.UIBlox).App.Control.SegmentedControl
local SelectInSceneReportMenu_upvr = require(AbuseReportMenu.Components.SelectInSceneReportMenu)
local ReportTypeSelector_upvr = require(AbuseReportMenu.Components.ReportTypeSelector)
local isShowEUDSAIllegalContentReportingLink_upvr = DsaIllegalContentReporting.isShowEUDSAIllegalContentReportingLink
local DSAReportLink_upvr = DsaIllegalContentReporting.DSAReportLink
local isShowUKOSAIllegalContentReportingLink_upvr = DsaIllegalContentReporting.isShowUKOSAIllegalContentReportingLink
local View_upvr = Foundation_upvr.View
local OSAReportLink_upvr = DsaIllegalContentReporting.OSAReportLink
local function var26_upvr(arg1) -- Line 113
	--[[ Upvalues[37]:
		[1]: React_upvr (readonly)
		[2]: analyticsReducer_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: tbl_11_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: createCleanup_upvr (readonly)
		[7]: useReportAnythingWithScreenshot_upvr (readonly)
		[8]: getMenuItemSizings_upvr (readonly)
		[9]: useLocalization_upvr (readonly)
		[10]: isAbuseReportMenuOpenCloseSignalEnabled_upvr (readonly)
		[11]: isInWHAM1707Experiment_upvr (readonly)
		[12]: SafetyService_upvr (readonly)
		[13]: AnnotationModal_upvr (readonly)
		[14]: ModalBasedSelectorDialogController_upvr (readonly)
		[15]: ReportAbuseAnalytics_upvr (readonly)
		[16]: Players_upvr (readonly)
		[17]: isShowSelectInSceneReportMenu_upvr (readonly)
		[18]: IXPService_upvr (readonly)
		[19]: FStringReportMenuIXPLayer_upvr (readonly)
		[20]: game_DefineFastString_result1_upvr_2 (readonly)
		[21]: ReportAnythingAnalytics_upvr (readonly)
		[22]: ReportTypes_upvr (readonly)
		[23]: ReportPersonMenuItemsContainer_upvr (readonly)
		[24]: ReportExperienceMenuItemsContainer_upvr (readonly)
		[25]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[26]: FocusRoot_upvr (readonly)
		[27]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[28]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[29]: SegmentedControl_upvr (readonly)
		[30]: ReportModes_upvr (readonly)
		[31]: SelectInSceneReportMenu_upvr (readonly)
		[32]: ReportTypeSelector_upvr (readonly)
		[33]: isShowEUDSAIllegalContentReportingLink_upvr (readonly)
		[34]: DSAReportLink_upvr (readonly)
		[35]: isShowUKOSAIllegalContentReportingLink_upvr (readonly)
		[36]: View_upvr (readonly)
		[37]: OSAReportLink_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_upvr, any_useState_result2_upvr_8 = React_upvr.useState(false)
	local any_useState_result1_4, any_useState_result2_upvr_7 = React_upvr.useState(1)
	local any_useState_result1_6_upvr, any_useState_result2_upvr_6 = React_upvr.useState(1)
	local any_useState_result1_2, any_useState_result2_upvr_4 = React_upvr.useState(nil)
	local any_useState_result1, any_useState_result2_upvr_5 = React_upvr.useState(0)
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_7, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_5, any_useState_result2_upvr_3 = React_upvr.useState({
		width = 0;
		height = 0;
	})
	local var71 = false
	if any_useState_result1_5.width < any_useState_result1_5.height then
		if any_useState_result1_5.width >= 700 then
			var71 = false
		else
			var71 = true
		end
	end
	local any_useReducer_result1, any_useReducer_result2_upvr = React_upvr.useReducer(analyticsReducer_upvr, Constants_upvr.AnalyticsInitialState)
	local var74 = tbl_11_upvr[any_useState_result1_4]
	local var75 = tbl_4_upvr[any_useState_result1_6_upvr]
	local var29_result1_upvr, useReportAnythingWithScreenshot_upvr_result2_upvr = useReportAnythingWithScreenshot_upvr(any_useState_result1_upvr, arg1.hideReportTab, arg1.showReportTab, React_upvr.useCallback(createCleanup_upvr(any_useReducer_result1, any_useReducer_result2_upvr, any_useState_result2_upvr_4, var75), {any_useReducer_result1, any_useState_result1_6_upvr}))
	local var30_result1 = getMenuItemSizings_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr(Constants_upvr.localizationKeys)
	React_upvr.useEffect(function() -- Line 140
		--[[ Upvalues[13]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr_8 (readonly)
			[3]: isAbuseReportMenuOpenCloseSignalEnabled_upvr (copied, readonly)
			[4]: isInWHAM1707Experiment_upvr (copied, readonly)
			[5]: var29_result1_upvr (readonly)
			[6]: SafetyService_upvr (copied, readonly)
			[7]: AnnotationModal_upvr (copied, readonly)
			[8]: ModalBasedSelectorDialogController_upvr (copied, readonly)
			[9]: any_useState_result2_upvr_4 (readonly)
			[10]: any_useState_result2_upvr_5 (readonly)
			[11]: ReportAbuseAnalytics_upvr (copied, readonly)
			[12]: useReportAnythingWithScreenshot_upvr_result2_upvr (readonly)
			[13]: Constants_upvr (copied, readonly)
		]]
		arg1.registerOnReportTabDisplayed(function() -- Line 141
			--[[ Upvalues[5]:
				[1]: any_useState_result2_upvr_8 (copied, readonly)
				[2]: isAbuseReportMenuOpenCloseSignalEnabled_upvr (copied, readonly)
				[3]: isInWHAM1707Experiment_upvr (copied, readonly)
				[4]: var29_result1_upvr (copied, readonly)
				[5]: SafetyService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_8(true)
			if isAbuseReportMenuOpenCloseSignalEnabled_upvr() and isInWHAM1707Experiment_upvr() and var29_result1_upvr.screenshotContentId ~= "" then
				SafetyService_upvr:ReportMenuTabOpen()
			end
		end)
		arg1.registerOnReportTabHidden(function() -- Line 150
			--[[ Upvalues[6]:
				[1]: any_useState_result2_upvr_8 (copied, readonly)
				[2]: AnnotationModal_upvr (copied, readonly)
				[3]: ModalBasedSelectorDialogController_upvr (copied, readonly)
				[4]: isAbuseReportMenuOpenCloseSignalEnabled_upvr (copied, readonly)
				[5]: isInWHAM1707Experiment_upvr (copied, readonly)
				[6]: SafetyService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_8(false)
			AnnotationModal_upvr.unmountAnnotationPage()
			ModalBasedSelectorDialogController_upvr.unmountModalSelector()
			if isAbuseReportMenuOpenCloseSignalEnabled_upvr() and isInWHAM1707Experiment_upvr() then
				SafetyService_upvr:ReportMenuTabClose()
			end
		end)
		arg1.registerSetNextPlayerToReport(function(arg1_2) -- Line 158
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_4 (copied, readonly)
			]]
			any_useState_result2_upvr_4(arg1_2)
		end)
		arg1.registerOnMenuWidthChange(function(arg1_3) -- Line 161
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_5 (copied, readonly)
			]]
			any_useState_result2_upvr_5(arg1_3)
		end)
		arg1.registerOnSettingsHidden(function() -- Line 164
			--[[ Upvalues[3]:
				[1]: ReportAbuseAnalytics_upvr (copied, readonly)
				[2]: useReportAnythingWithScreenshot_upvr_result2_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			if ReportAbuseAnalytics_upvr:getAbuseReportSessionEntryPoint() == "" then
				useReportAnythingWithScreenshot_upvr_result2_upvr({
					type = Constants_upvr.ReportAnythingActions.ClearAll;
				})
			end
		end)
	end, {var29_result1_upvr})
	React_upvr.useEffect(function() -- Line 173
		--[[ Upvalues[6]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_useState_result2_upvr_6 (readonly)
			[3]: any_useState_result2_upvr_7 (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
			[5]: Players_upvr (copied, readonly)
			[6]: any_useState_result2_upvr (readonly)
		]]
		if not any_useState_result1_upvr then
			any_useState_result2_upvr_6(0)
			any_useState_result2_upvr_7(1)
			any_useState_result2_upvr_2(false)
		else
			if #Players_upvr:GetPlayers() <= 1 then
				any_useState_result2_upvr(true)
				any_useState_result2_upvr_6(2)
				return
			end
			any_useState_result2_upvr_6(1)
			any_useState_result2_upvr(false)
		end
	end, {any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 193
		--[[ Upvalues[10]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_useReducer_result2_upvr (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: ReportAbuseAnalytics_upvr (copied, readonly)
			[5]: isShowSelectInSceneReportMenu_upvr (copied, readonly)
			[6]: IXPService_upvr (copied, readonly)
			[7]: FStringReportMenuIXPLayer_upvr (copied, readonly)
			[8]: game_DefineFastString_result1_upvr_2 (copied, readonly)
			[9]: any_useState_result2_upvr_2 (readonly)
			[10]: any_useState_result2_upvr_3 (readonly)
		]]
		if any_useState_result1_upvr then
			any_useReducer_result2_upvr({
				type = Constants_upvr.AnalyticsActions.SetMenuOpenedTimestamp;
				timestamp = math.floor(workspace:GetServerTimeNow() * 1000);
			})
			ReportAbuseAnalytics_upvr:startAbuseReportSession("ReportPage")
			local isShowSelectInSceneReportMenu_upvr_result1 = isShowSelectInSceneReportMenu_upvr(any_useReducer_result2_upvr)
			if isShowSelectInSceneReportMenu_upvr_result1 then
				local pcall_result1_3, pcall_result2 = pcall(function() -- Line 83
					--[[ Upvalues[2]:
						[1]: IXPService_upvr (copied, readonly)
						[2]: FStringReportMenuIXPLayer_upvr (copied, readonly)
					]]
					return IXPService_upvr:GetUserLayerVariables(FStringReportMenuIXPLayer_upvr)
				end)
				if not pcall_result1_3 or not pcall_result2 or pcall_result2[game_DefineFastString_result1_upvr_2] == nil then
					isShowSelectInSceneReportMenu_upvr_result1 = false
				else
					IXPService_upvr:LogUserLayerExposure(FStringReportMenuIXPLayer_upvr)
					isShowSelectInSceneReportMenu_upvr_result1 = pcall_result2[game_DefineFastString_result1_upvr_2]
				end
				if isShowSelectInSceneReportMenu_upvr_result1 then
					isShowSelectInSceneReportMenu_upvr_result1 = any_useState_result2_upvr_2
					isShowSelectInSceneReportMenu_upvr_result1(true)
				end
			end
		end
		local CurrentCamera = game.Workspace.CurrentCamera
		if CurrentCamera ~= nil then
			local ViewportSize_2 = CurrentCamera.ViewportSize
			any_useState_result2_upvr_3({
				width = ViewportSize_2.X;
				height = ViewportSize_2.Y;
			})
			any_useReducer_result2_upvr({
				type = Constants_upvr.AnalyticsActions.SetViewportInformation;
				viewportSizeX = ViewportSize_2.X;
				viewportSizeY = ViewportSize_2.Y;
			})
		end
	end, {any_useState_result1_upvr, any_useState_result1})
	local tbl_13 = {
		onReportComplete = arg1.onReportComplete;
		reportAnythingAnalytics = ReportAnythingAnalytics_upvr;
		reportAnythingState = var29_result1_upvr;
		reportAnythingDispatch = useReportAnythingWithScreenshot_upvr_result2_upvr;
		hideReportTab = arg1.hideReportTab;
		isReportTabVisible = any_useState_result1_upvr;
		showReportSentPage = arg1.showReportSentPage;
		analyticsState = any_useReducer_result1;
		analyticsDispatch = any_useReducer_result2_upvr;
		preselectedPlayer = any_useState_result1_2;
		setPreselectedPlayer = any_useState_result2_upvr_4;
		menuWidth = any_useState_result1;
		viewportDimension = any_useState_result1_5;
	}
	if var75 == ReportTypes_upvr.Person then
		local _ = {
			utilityProps = tbl_13;
			isSmallPortraitViewport = var71;
		}
	elseif var75 == ReportTypes_upvr.Experience then
	end
	local module = {}
	local var116 = React_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var116 = FocusRoot_upvr
	else
		var116 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl_6 = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.RouterView;
			frameProps = {
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			};
			isIsolated = true;
			isAutoFocusRoot = true;
		}
		-- KONSTANTWARNING: GOTO [326] #242
	end
	local tbl = {}
	local tbl_10 = {}
	local tbl_3 = {}
	local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = 0;
		Padding = UDim.new(0, 12);
	})
	tbl_3.Layout = any_createElement_result1
	if any_useState_result1_7 then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.XY;
			Position = UDim2.new(0.5, 0, 0, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			LayoutOrder = 0;
		}, {
			SelectInSceneToggle = React_upvr.createElement(SegmentedControl_upvr, {
				onTabActivated = function(arg1_4) -- Line 308, Named "onTabActivated"
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr_7 (readonly)
					]]
					any_useState_result2_upvr_7(arg1_4)
				end;
				selectedTabIndex = any_useState_result1_4;
				tabs = {{
					tabName = useLocalization_upvr_result1.BuildAReport;
				}, {
					tabName = useLocalization_upvr_result1.SelectInScene;
				}};
				width = UDim.new(0, any_useState_result1);
			});
		})
	else
		any_createElement_result1 = nil
	end
	tbl_3.SelectInSceneToggleFrame = any_createElement_result1
	if var74 == ReportModes_upvr.SelectInScene then
		local _ = {
			hideReportTab = arg1.hideReportTab;
		}
	else
		local var134
		if var74 == ReportModes_upvr.Classic then
			local tbl_9 = {
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
			}
			var134 = 1
			tbl_9.Size = UDim2.new(var134, 0, 0, 0)
			tbl_9.LayoutOrder = 1
			local tbl_8 = {}
			var134 = React_upvr.createElement
			var134 = var134("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, var30_result1.ItemPadding);
			})
			tbl_8.Layout = var134
			var134 = React_upvr.createElement
			var134 = var134(ReportTypeSelector_upvr, {
				label = useLocalization_upvr_result1.ReportType;
				abuseType = useLocalization_upvr_result1[tbl_4_upvr[any_useState_result1_6_upvr]];
				layoutOrder = 0;
				utilityProps = tbl_13;
				isSelectionDisabled = any_useState_result1_3;
				menuWidth = any_useState_result1;
				isSmallPortraitViewport = var71;
				onClickLeft = function() -- Line 345, Named "onClickLeft"
					--[[ Upvalues[6]:
						[1]: useReportAnythingWithScreenshot_upvr_result2_upvr (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: any_useReducer_result2_upvr (readonly)
						[4]: any_useState_result2_upvr_6 (readonly)
						[5]: any_useState_result1_6_upvr (readonly)
						[6]: tbl_4_upvr (copied, readonly)
					]]
					useReportAnythingWithScreenshot_upvr_result2_upvr({
						type = Constants_upvr.ReportAnythingActions.ClearAnnotationFlowProperties;
					})
					any_useReducer_result2_upvr({
						type = Constants_upvr.AnalyticsActions.IncrementExperiencePersonChanged;
					})
					any_useState_result2_upvr_6((any_useState_result1_6_upvr - 1 - 1) % #tbl_4_upvr + 1)
				end;
				onClickRight = function() -- Line 355, Named "onClickRight"
					--[[ Upvalues[6]:
						[1]: useReportAnythingWithScreenshot_upvr_result2_upvr (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: any_useReducer_result2_upvr (readonly)
						[4]: any_useState_result2_upvr_6 (readonly)
						[5]: any_useState_result1_6_upvr (readonly)
						[6]: tbl_4_upvr (copied, readonly)
					]]
					useReportAnythingWithScreenshot_upvr_result2_upvr({
						type = Constants_upvr.ReportAnythingActions.ClearAnnotationFlowProperties;
					})
					any_useReducer_result2_upvr({
						type = Constants_upvr.AnalyticsActions.IncrementExperiencePersonChanged;
					})
					any_useState_result2_upvr_6((any_useState_result1_6_upvr - 1 + 1) % #tbl_4_upvr + 1)
				end;
			})
			tbl_8.ReportTypeSelector = var134
			var134 = React_upvr.createElement
			var134 = var134("Frame", {
				BackgroundTransparency = 1;
				LayoutOrder = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1, 0, 0, 0);
			}, {
				MenuItems = React_upvr.createElement(ReportExperienceMenuItemsContainer_upvr, {
					utilityProps = tbl_13;
					isSmallPortraitViewport = var71;
				});
			})
			tbl_8.MenuItemsContainer = var134
			if isShowEUDSAIllegalContentReportingLink_upvr() then
				var134 = React_upvr.createElement
				var134 = var134("Frame", {
					BackgroundTransparency = 1;
					LayoutOrder = 2;
					AutomaticSize = Enum.AutomaticSize.Y;
					Size = UDim2.new(1, 0, 0, 0);
				}, {
					DSALink = React_upvr.createElement(DSAReportLink_upvr);
				})
			else
				var134 = nil
			end
			tbl_8.DSALinkFrame = var134
			if isShowUKOSAIllegalContentReportingLink_upvr() then
				local _ = {
					tag = "size-full-0 auto-y";
					LayoutOrder = 2;
				}
				local _ = {
					OSALink = React_upvr.createElement(OSAReportLink_upvr);
				}
			else
			end
			tbl_8.OSALinkFrame = nil
		else
		end
	end
	tbl_3.Menu = nil
	tbl_10.MenuLayoutFrame = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
	}, tbl_3)
	tbl[Constants_upvr.AbuseReportMenuPlaceholderFrame] = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, tbl_10)
	module.FocusNavigationCoreScriptsWrapper = var116.createElement(var116, {
		selectionGroupName = Constants_upvr.AbuseReportMenuRootName;
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.RouterView;
		automaticSize = Enum.AutomaticSize.Y;
		size = UDim2.new(1, 0, 0, 0);
	}, tbl)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
		Position = UDim2.new(0, 0, 0, var30_result1.TopPadding);
	}, module)
end
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local StyleProviderWithDefaultTheme_upvr = require(CorePackages.Workspace.Packages.Style).StyleProviderWithDefaultTheme
local GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr = require(AbuseReportMenu.Flags.GetFFlagAddAbuseReportMenuCoreScriptsProvider)
local CoreScriptsRootProvider_upvr = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
return function(arg1) -- Line 401
	--[[ Upvalues[12]:
		[1]: Localization_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: StyleProviderWithDefaultTheme_upvr (readonly)
		[5]: GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr (readonly)
		[6]: CoreScriptsRootProvider_upvr (readonly)
		[7]: LocalizationProvider_upvr (readonly)
		[8]: Foundation_upvr (readonly)
		[9]: Constants_upvr (readonly)
		[10]: var26_upvr (readonly)
		[11]: ReactFocusNavigation_upvr (readonly)
		[12]: any_new_result1_upvr (readonly)
	]]
	local module_2 = {}
	local var158 = true
	module_2.withDarkTheme = var158
	if GetFFlagAddAbuseReportMenuCoreScriptsProvider_upvr() then
		var158 = {}
		var158.CoreScriptsRootProvider = React_upvr.createElement(CoreScriptsRootProvider_upvr, {}, {
			LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, {
				localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
			}, {
				FoundationProvider = React_upvr.createElement(Foundation_upvr.FoundationProvider, {
					theme = Foundation_upvr.Enums.Theme.Dark;
				}, {
					[Constants_upvr.AbuseReportMenuRootName] = React_upvr.createElement(var26_upvr, arg1);
				});
			});
		})
	else
		var158 = {}
		local tbl_7 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_7.localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
		var158.LocalizationProvider = React_upvr.createElement(LocalizationProvider_upvr, tbl_7, {
			FocusNavigationProvider = React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
				value = any_new_result1_upvr;
			}, {
				[Constants_upvr.AbuseReportMenuRootName] = React_upvr.createElement(var26_upvr, arg1);
			});
		})
	end
	return React_upvr.createElement(StyleProviderWithDefaultTheme_upvr, module_2, var158)
end