-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:10
-- Luau version 6, Types version 3
-- Time taken: 0.003562 seconds

local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui"):WaitForChild("RobloxGui"):WaitForChild("Modules")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Theme_upvr = require(Modules.Settings.Theme)
local var6
while not var6 do
	Players.ChildAdded:wait()
	var6 = Players.LocalPlayer
end
local SettingsPageFactory_upvr = require(Modules.Settings.SettingsPageFactory)
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Utility_upvr = require(Modules.Settings.Utility)
local any_textSize_result1_upvr = Theme_upvr.textSize(36)
local any_textSize_result1_upvr_2 = Theme_upvr.textSize(24)
local any_textSize_result1_upvr_3 = Theme_upvr.textSize(16)
local Initialize_result1_upvr = (function() -- Line 36, Named "Initialize"
	--[[ Upvalues[8]:
		[1]: SettingsPageFactory_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: Theme_upvr (readonly)
		[4]: Utility_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: any_textSize_result1_upvr (readonly)
		[7]: any_textSize_result1_upvr_2 (readonly)
		[8]: any_textSize_result1_upvr_3 (readonly)
	]]
	local any_CreateNewPage_result1_upvr = SettingsPageFactory_upvr:CreateNewPage()
	any_CreateNewPage_result1_upvr.TabHeader = nil
	any_CreateNewPage_result1_upvr.PageListLayout.Parent = nil
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
	any_CreateNewPage_result1_upvr.IsPageClipped = false
	any_CreateNewPage_result1_upvr.Page.Name = "ReportSentPage"
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.fromScale(1, 0)
	any_CreateNewPage_result1_upvr.Page.AutomaticSize = Enum.AutomaticSize.Y
	any_CreateNewPage_result1_upvr.Root = Create_upvr("Frame")({
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Name = "ReportSentContents";
		Parent = any_CreateNewPage_result1_upvr.Page;
	})
	any_CreateNewPage_result1_upvr.RootLayout = Create_upvr("UIListLayout")({
		Name = "RootLayout";
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Parent = any_CreateNewPage_result1_upvr.Root;
	})
	local function createTextLabel(arg1, arg2, arg3, arg4) -- Line 64
		--[[ Upvalues[3]:
			[1]: Create_upvr (copied, readonly)
			[2]: Theme_upvr (copied, readonly)
			[3]: any_CreateNewPage_result1_upvr (readonly)
		]]
		local module = {}
		module.Name = arg1
		module.LayoutOrder = arg4
		module.Size = UDim2.fromScale(1, 0)
		module.BackgroundTransparency = 1
		module.AutomaticSize = Enum.AutomaticSize.Y
		module.Text = arg2
		module.TextSize = arg3
		module.Font = Theme_upvr.font(Enum.Font.SourceSansBold, "Bold")
		module.TextWrap = true
		module.TextColor3 = Color3.fromRGB(255, 255, 255)
		module.TextXAlignment = Enum.TextXAlignment.Center
		module.Parent = any_CreateNewPage_result1_upvr.Root
		return Create_upvr("TextLabel")(module)
	end
	local function _(arg1, arg2, arg3, arg4) -- Line 81, Named "createButton"
		--[[ Upvalues[2]:
			[1]: Utility_upvr (copied, readonly)
			[2]: any_CreateNewPage_result1_upvr (readonly)
		]]
		local any_MakeStyledButton_result1_2, any_MakeStyledButton_result2_2 = Utility_upvr:MakeStyledButton(arg1, arg2, UDim2.new(1, 0, 0, 50), arg4)
		any_MakeStyledButton_result1_2.LayoutOrder = arg3
		any_MakeStyledButton_result1_2.Parent = any_CreateNewPage_result1_upvr.Root
		return any_MakeStyledButton_result1_2, any_MakeStyledButton_result2_2
	end
	local function createSpacer(arg1, arg2) -- Line 89
		--[[ Upvalues[2]:
			[1]: Create_upvr (copied, readonly)
			[2]: any_CreateNewPage_result1_upvr (readonly)
		]]
		local module_2 = {}
		module_2.LayoutOrder = arg2
		module_2.Name = "Spacer"..tostring(arg2)
		module_2.Size = UDim2.fromOffset(0, arg1)
		module_2.Parent = any_CreateNewPage_result1_upvr.Root
		return Create_upvr("Frame")(module_2)
	end
	any_CreateNewPage_result1_upvr.TitleLabel = createTextLabel("TitleLabel", RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Heading.Report.ThanksForReport"), any_textSize_result1_upvr, 0)
	any_CreateNewPage_result1_upvr.BodyLabel = createTextLabel("BodyLabel", RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Label.Report.ReceivedReportBody"), any_textSize_result1_upvr_2, 1)
	any_CreateNewPage_result1_upvr.TopSpacer = createSpacer(10, 2)
	any_CreateNewPage_result1_upvr.ActionHeader = createTextLabel("ActionHeader", RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Label.Report.OtherActionsHeader"), any_textSize_result1_upvr_3, 3)
	any_CreateNewPage_result1_upvr.ActionHeader.TextXAlignment = Enum.TextXAlignment.Left
	local any_MakeStyledButton_result1, any_MakeStyledButton_result2 = Utility_upvr:MakeStyledButton("BlockButton", RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Action.Block"), UDim2.new(1, 0, 0, 50), function() -- Line 111
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr:HandleBlock()
	end)
	any_MakeStyledButton_result1.LayoutOrder = 4
	any_MakeStyledButton_result1.Parent = any_CreateNewPage_result1_upvr.Root
	any_CreateNewPage_result1_upvr.BlockButton = any_MakeStyledButton_result1
	any_CreateNewPage_result1_upvr.BlockLabel = any_MakeStyledButton_result2
	any_CreateNewPage_result1_upvr.MiddleSpacer = createSpacer(20, 6)
	local any_MakeStyledButton_result1_3, _ = Utility_upvr:MakeStyledButton("DoneButton", RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Action.Report.Done"), UDim2.new(1, 0, 0, 50), function() -- Line 118
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr:HandleDone()
	end)
	any_MakeStyledButton_result1_3.LayoutOrder = 7
	any_MakeStyledButton_result1_3.Parent = any_CreateNewPage_result1_upvr.Root
	any_CreateNewPage_result1_upvr.DoneButton = any_MakeStyledButton_result1_3
	return any_CreateNewPage_result1_upvr
end)()
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
function Initialize_result1_upvr.UpdateActions(arg1) -- Line 127
	--[[ Upvalues[2]:
		[1]: BlockingUtility_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
	]]
	if arg1.ReportedPlayer then
		arg1.TopSpacer.Visible = true
		arg1.ActionHeader.Visible = true
		arg1.BlockButton.Visible = not BlockingUtility_upvr:IsPlayerBlockedByUserId(arg1.ReportedPlayer.UserId)
		arg1.BlockLabel.Text = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Label.Report.BlockDisplayName", {
			DISPLAY_NAME = arg1.ReportedPlayer.DisplayName;
			RBX_NAME = arg1.ReportedPlayer.Name;
		})
	else
		arg1.TopSpacer.Visible = false
		arg1.ActionHeader.Visible = false
		arg1.BlockButton.Visible = false
	end
end
function Initialize_result1_upvr.ShowReportedPlayer(arg1, arg2) -- Line 149
	--[[ Upvalues[1]:
		[1]: Initialize_result1_upvr (readonly)
	]]
	arg1.ReportedPlayer = arg2
	arg1:UpdateActions()
	arg1.HubRef:SwitchToPage(Initialize_result1_upvr, true)
end
local onBlockButtonActivated_upvr = require(script:FindFirstAncestor("Settings").onBlockButtonActivated)
local any_new_result1_upvr = require(script:FindFirstAncestor("Settings").Analytics.BlockingAnalytics).new(var6.UserId, {
	EventStream = game:GetService("RbxAnalyticsService");
})
function Initialize_result1_upvr.HandleBlock(arg1) -- Line 156
	--[[ Upvalues[2]:
		[1]: onBlockButtonActivated_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	if arg1.ReportedPlayer then
		onBlockButtonActivated_upvr(arg1.ReportedPlayer, any_new_result1_upvr)
	end
	arg1:HandleDone()
end
function Initialize_result1_upvr.HandleDone(arg1) -- Line 163
	arg1.HubRef:SetVisibility(false, true)
end
return Initialize_result1_upvr