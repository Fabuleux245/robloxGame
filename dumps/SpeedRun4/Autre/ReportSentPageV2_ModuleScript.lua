-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:10
-- Luau version 6, Types version 3
-- Time taken: 0.005158 seconds

local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Settings = script:FindFirstAncestor("Settings")
local ReportAbuseAnalytics = require(RobloxGui.Modules.AbuseReportMenu).ReportAbuseAnalytics
local var8_upvw
local function _() -- Line 25
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: Roact_upvr (readonly)
	]]
	if var8_upvw ~= nil then
		Roact_upvr.unmount(var8_upvw)
		var8_upvw = nil
	end
end
local var10
while not var10 do
	Players.ChildAdded:wait()
	var10 = Players.LocalPlayer
end
local SettingsPageFactory_upvr = require(RobloxGui:WaitForChild("Modules").Settings.SettingsPageFactory)
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Initialize_result1_upvr = (function() -- Line 46, Named "Initialize"
	--[[ Upvalues[2]:
		[1]: SettingsPageFactory_upvr (readonly)
		[2]: Create_upvr (readonly)
	]]
	local any_CreateNewPage_result1 = SettingsPageFactory_upvr:CreateNewPage()
	any_CreateNewPage_result1.TabHeader = nil
	any_CreateNewPage_result1.PageListLayout.Parent = nil
	any_CreateNewPage_result1.ShouldShowBottomBar = false
	any_CreateNewPage_result1.ShouldShowHubBar = false
	any_CreateNewPage_result1.IsPageClipped = false
	any_CreateNewPage_result1.Page.Name = "ReportSentPageV2"
	any_CreateNewPage_result1.Page.Size = UDim2.fromScale(1, 0)
	any_CreateNewPage_result1.Page.AutomaticSize = Enum.AutomaticSize.Y
	any_CreateNewPage_result1.Root = Create_upvr("Frame")({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Name = "ReportSentContents";
		Parent = any_CreateNewPage_result1.Page;
	})
	return any_CreateNewPage_result1
end)()
local GetFFlagReportAbuseThankYouPageSizeFix_upvr = require(RobloxGui.Modules.Flags.GetFFlagReportAbuseThankYouPageSizeFix)
local ReportConfirmationScreen_upvr = require(Settings.Components.ReportConfirmation.ReportConfirmationScreen)
local any_new_result1_upvr = ReportAbuseAnalytics.new(require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService")), require(CorePackages.Workspace.Packages.Analytics).Analytics.new(RbxAnalyticsService).Diag, ReportAbuseAnalytics.MenuContexts.LegacySentPage)
local any_new_result1_upvr_2 = require(Settings.Analytics.BlockingAnalytics).new(var10.UserId, {
	EventStream = RbxAnalyticsService;
})
function Initialize_result1_upvr.UpdateMenu(arg1) -- Line 70
	--[[ Upvalues[6]:
		[1]: var8_upvw (read and write)
		[2]: Roact_upvr (readonly)
		[3]: GetFFlagReportAbuseThankYouPageSizeFix_upvr (readonly)
		[4]: ReportConfirmationScreen_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: any_new_result1_upvr_2 (readonly)
	]]
	local ReportedPlayer = arg1.ReportedPlayer
	local var22_upvw
	if var22_upvw ~= nil then
		var22_upvw = Roact_upvr.unmount
		var22_upvw(var8_upvw)
		var22_upvw = nil
		var8_upvw = var22_upvw
	end
	var22_upvw = arg1.settingsShowChangedSignal
	if var22_upvw then
		var22_upvw = arg1.settingsShowChangedSignal:disconnect
		var22_upvw()
		var22_upvw = nil
		arg1.settingsShowChangedSignal = var22_upvw
	end
	var22_upvw = arg1.HubRef.SettingsShowSignal
	var22_upvw = var22_upvw:connect(function(arg1_2) -- Line 79
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1_2 then
			arg1:HandleDone()
		end
	end)
	arg1.settingsShowChangedSignal = var22_upvw
	var22_upvw = nil
	if GetFFlagReportAbuseThankYouPageSizeFix_upvr() then
		var22_upvw = Instance.new("BindableEvent")
		arg1.SizeChangedSignal = arg1.Root:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() -- Line 89
			--[[ Upvalues[2]:
				[1]: var22_upvw (read and write)
				[2]: arg1 (readonly)
			]]
			var22_upvw:Fire(arg1.Root.AbsoluteSize)
		end)
	end
	local tbl = {
		player = {
			UserId = ReportedPlayer.UserId;
			Name = ReportedPlayer.Name;
			DisplayName = ReportedPlayer.DisplayName;
		};
		closeMenu = function() -- Line 100, Named "closeMenu"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:HandleDone()
		end;
		isVoiceReport = arg1.isVoiceReport;
		ZIndex = arg1.HubRef.Shield.ZIndex + 1;
		reportAbuseAnalytics = any_new_result1_upvr;
	}
	local var27 = any_new_result1_upvr_2
	tbl.blockingAnalytics = var27
	if GetFFlagReportAbuseThankYouPageSizeFix_upvr() then
		var27 = var22_upvw.Event
	else
		var27 = nil
	end
	tbl.onSizeChanged = var27
	var8_upvw = Roact_upvr.mount(Roact_upvr.createElement(ReportConfirmationScreen_upvr, tbl), arg1.Root, "ReportSentPageV2")
end
function Initialize_result1_upvr.ShowReportedPlayer(arg1, arg2, arg3) -- Line 113
	--[[ Upvalues[1]:
		[1]: Initialize_result1_upvr (readonly)
	]]
	arg1.ReportedPlayer = arg2
	arg1.isVoiceReport = arg3
	arg1:UpdateMenu()
	arg1.HubRef:SwitchToPage(Initialize_result1_upvr, true)
end
function Initialize_result1_upvr.HandleDone(arg1) -- Line 121
	--[[ Upvalues[2]:
		[1]: var8_upvw (read and write)
		[2]: Roact_upvr (readonly)
	]]
	if var8_upvw ~= nil then
		Roact_upvr.unmount(var8_upvw)
		var8_upvw = nil
	end
	if arg1.settingsShowChangedSignal then
		arg1.settingsShowChangedSignal:disconnect()
		arg1.settingsShowChangedSignal = nil
	end
	if arg1.SizeChangedSignal then
		arg1.SizeChangedSignal:disconnect()
		arg1.SizeChangedSignal = nil
	end
	arg1.HubRef:SetVisibility(false, true)
end
return Initialize_result1_upvr