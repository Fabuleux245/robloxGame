-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:09
-- Luau version 6, Types version 3
-- Time taken: 0.004801 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local BuilderIcons_upvr = require(CorePackages.Packages.BuilderIcons)
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local FFlagUIBloxMigrateBuilderIcon_upvr = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.FFlagUIBloxMigrateBuilderIcon
local uiblox_upvr = BuilderIcons_upvr.Migration.uiblox
local Theme_upvr = require(RobloxGui_upvr.Modules.Settings.Theme)
local Roact_upvr = require(CorePackages.Packages.Roact)
local AbuseReportMenu_upvr = require(RobloxGui_upvr.Modules.AbuseReportMenu).AbuseReportMenu
local Initialize_result1_upvw = (function() -- Line 21, Named "Initialize"
	--[[ Upvalues[8]:
		[1]: RobloxGui_upvr (readonly)
		[2]: Utility_upvr (readonly)
		[3]: FFlagUIBloxMigrateBuilderIcon_upvr (readonly)
		[4]: uiblox_upvr (readonly)
		[5]: BuilderIcons_upvr (readonly)
		[6]: Theme_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: AbuseReportMenu_upvr (readonly)
	]]
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	function any_CreateNewPage_result1_upvr._onHiddenCallback() -- Line 25
	end
	function any_CreateNewPage_result1_upvr._onDisplayedCallback() -- Line 26
	end
	function any_CreateNewPage_result1_upvr._onSettingsHiddenCallback() -- Line 27
	end
	function any_CreateNewPage_result1_upvr._setNextPlayerToReportCallback() -- Line 28
	end
	function any_CreateNewPage_result1_upvr._onMenuWidthChange() -- Line 29
	end
	function any_CreateNewPage_result1_upvr.SetHub(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.HubRef = arg2
		any_CreateNewPage_result1_upvr.HubRef.SettingsShowSignal:connect(function(arg1_2) -- Line 35
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (copied, readonly)
			]]
			if not arg1_2 then
				any_CreateNewPage_result1_upvr:onSettingsHidden()
			end
		end)
		return any_CreateNewPage_result1_upvr
	end
	function any_CreateNewPage_result1_upvr.showAlert(arg1, arg2, arg3, arg4) -- Line 44
		--[[ Upvalues[2]:
			[1]: Utility_upvr (copied, readonly)
			[2]: any_CreateNewPage_result1_upvr (readonly)
		]]
		Utility_upvr:ShowAlert(arg2, arg3, any_CreateNewPage_result1_upvr.HubRef, arg4)
	end
	local function showReportSentPage(arg1, arg2) -- Line 48
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.HubRef.ReportSentPageV2:ShowReportedPlayer(arg2, true)
	end
	any_CreateNewPage_result1_upvr.showReportSentPage = showReportSentPage
	function any_CreateNewPage_result1_upvr.HideMenu(arg1) -- Line 52
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.HubRef:SetVisibility(false, true)
	end
	function any_CreateNewPage_result1_upvr.ShowMenu(arg1) -- Line 56
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.HubRef:SetVisibility(true, true, any_CreateNewPage_result1_upvr, nil, "ScreenshotUnhide")
	end
	function any_CreateNewPage_result1_upvr.onHidden(arg1) -- Line 60
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr._onHiddenCallback()
	end
	function any_CreateNewPage_result1_upvr.onSettingsHidden(arg1) -- Line 64
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr._onSettingsHiddenCallback()
	end
	function any_CreateNewPage_result1_upvr.onDisplayed(arg1) -- Line 68
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr._onDisplayedCallback()
	end
	function any_CreateNewPage_result1_upvr.setNextPlayerToReport(arg1, arg2) -- Line 72
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr._setNextPlayerToReportCallback(arg2)
	end
	any_CreateNewPage_result1_upvr.TabHeader.Name = "ReportAbuseTab"
	if FFlagUIBloxMigrateBuilderIcon_upvr then
		local icons_actions_feedback = uiblox_upvr["icons/actions/feedback"]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Text = icons_actions_feedback.name
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.FontFace = BuilderIcons_upvr.Font[icons_actions_feedback.variant]
	else
		local icons_actions_feedback_2 = Theme_upvr.Images["icons/actions/feedback"]
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectOffset = icons_actions_feedback_2.ImageRectOffset
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.ImageRectSize = icons_actions_feedback_2.ImageRectSize
		any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Icon.Image = icons_actions_feedback_2.Image
	end
	any_CreateNewPage_result1_upvr.TabHeader.TabLabel.Title.Text = "Report"
	any_CreateNewPage_result1_upvr.Page.Name = "ReportAbuseMenuNewContainerPage"
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = true
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = true
	Roact_upvr.mount(Roact_upvr.createElement(AbuseReportMenu_upvr, {
		hideReportTab = function() -- Line 97, Named "hideReportTab"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr:HideMenu()
		end;
		showReportTab = function() -- Line 100, Named "showReportTab"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr:ShowMenu()
		end;
		registerOnReportTabHidden = function(arg1) -- Line 103, Named "registerOnReportTabHidden"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr._onHiddenCallback = arg1
		end;
		registerOnReportTabDisplayed = function(arg1) -- Line 106, Named "registerOnReportTabDisplayed"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr._onDisplayedCallback = arg1
		end;
		registerOnMenuWidthChange = function(arg1) -- Line 109, Named "registerOnMenuWidthChange"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr._onMenuWidthChange = arg1
		end;
		registerSetNextPlayerToReport = function(arg1) -- Line 112, Named "registerSetNextPlayerToReport"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr._setNextPlayerToReportCallback = arg1
		end;
		registerOnSettingsHidden = function(arg1) -- Line 115, Named "registerOnSettingsHidden"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr._onSettingsHiddenCallback = arg1
		end;
		showReportSentPage = function(arg1) -- Line 118, Named "showReportSentPage"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr:showReportSentPage(arg1)
		end;
		onReportComplete = function(arg1) -- Line 121, Named "onReportComplete"
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (readonly)
			]]
			any_CreateNewPage_result1_upvr:showAlert(arg1, "Ok", function() -- Line 122
				--[[ Upvalues[1]:
					[1]: any_CreateNewPage_result1_upvr (copied, readonly)
				]]
				any_CreateNewPage_result1_upvr:HideMenu()
			end)
		end;
	}), any_CreateNewPage_result1_upvr.Page, "AbuseReportMenu")
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, 0)
	any_CreateNewPage_result1_upvr.Page.AutomaticSize = Enum.AutomaticSize.Y
	any_CreateNewPage_result1_upvr.Page:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 137
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr._onMenuWidthChange(any_CreateNewPage_result1_upvr.Page.AbsoluteSize.X)
	end)
	return any_CreateNewPage_result1_upvr
end)()
Initialize_result1_upvw.Displayed.Event:connect(function() -- Line 147
	--[[ Upvalues[1]:
		[1]: Initialize_result1_upvw (read and write)
	]]
	Initialize_result1_upvw:onDisplayed()
end)
Initialize_result1_upvw.Hidden.Event:connect(function() -- Line 151
	--[[ Upvalues[1]:
		[1]: Initialize_result1_upvw (read and write)
	]]
	Initialize_result1_upvw:onHidden()
end)
local ReportAbuseAnalytics_upvr = require(RobloxGui_upvr.Modules.AbuseReportMenu).ReportAbuseAnalytics
function Initialize_result1_upvw.ReportPlayer(arg1, arg2, arg3) -- Line 155
	--[[ Upvalues[2]:
		[1]: ReportAbuseAnalytics_upvr (readonly)
		[2]: Initialize_result1_upvw (read and write)
	]]
	if arg2 then
		ReportAbuseAnalytics_upvr:startAbuseReportSession(arg3)
		Initialize_result1_upvw:setNextPlayerToReport(arg2)
		if not Initialize_result1_upvw.HubRef:GetVisibility() then
			Initialize_result1_upvw.HubRef:SetVisibility(true, false, Initialize_result1_upvw)
			return
		end
		Initialize_result1_upvw.HubRef:SwitchToPage(Initialize_result1_upvw, false, nil, nil, nil, {
			entrypoint = ReportAbuseAnalytics_upvr:getAbuseReportSessionEntryPoint();
		})
	end
end
return Initialize_result1_upvw