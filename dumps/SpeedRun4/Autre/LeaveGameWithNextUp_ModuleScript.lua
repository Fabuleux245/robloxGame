-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:05
-- Luau version 6, Types version 3
-- Time taken: 0.005544 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Enabled_upvr = RobloxGui_upvr.Modules.Chrome.Enabled
local var5_upvr = require(Enabled_upvr)()
local var6_upvr
if var5_upvr then
	Enabled_upvr = require
	var6_upvr = RobloxGui_upvr.Modules.Chrome.Service
	Enabled_upvr = Enabled_upvr(var6_upvr)
else
	Enabled_upvr = nil
end
if var5_upvr then
	var6_upvr = require(RobloxGui_upvr.Modules.Chrome.ChromeShared.Unibar.Constants)
else
	var6_upvr = nil
end
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMSettingsAddPlaySessionID_upvr = require(RobloxGui_upvr.Modules.Settings.Flags).FFlagIEMSettingsAddPlaySessionID
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local module_upvr = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Theme_upvr = require(RobloxGui_upvr.Modules.Settings.Theme)
local any_IsEnabled_result1_upvr = require(RobloxGui_upvr.Modules.TenFootInterface):IsEnabled()
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
local React_upvr = require(CorePackages.Packages.React)
local NextUpModuleContainer_upvr = require(script.Parent.LeaveGameWithNextUp.NextUpModuleContainer)
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local leaveGame_upvr = require(RobloxGui_upvr.Modules.Settings.leaveGame)
local Initialize_result1_upvw = (function() -- Line 46, Named "Initialize"
	--[[ Upvalues[13]:
		[1]: RobloxGui_upvr (readonly)
		[2]: FFlagIEMSettingsAddPlaySessionID_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: RbxAnalyticsService_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Create_upvr (readonly)
		[7]: Theme_upvr (readonly)
		[8]: any_IsEnabled_result1_upvr (readonly)
		[9]: ReactRoblox_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: NextUpModuleContainer_upvr (readonly)
		[12]: Utility_upvr (readonly)
		[13]: leaveGame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	any_CreateNewPage_result1_upvr.playsessionid = ""
	local var21
	if FFlagIEMSettingsAddPlaySessionID_upvr and game_GetEngineFeature_result1_upvr then
		any_CreateNewPage_result1_upvr.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1) -- Line 55
		--[[ Upvalues[4]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: RbxAnalyticsService_upvr (copied, readonly)
			[3]: module_upvr (copied, readonly)
			[4]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
		]]
		if any_CreateNewPage_result1_upvr.HubRef then
			any_CreateNewPage_result1_upvr.HubRef:PopMenu(arg1, true)
		end
		local tbl_2 = {
			confirmed = module_upvr.AnalyticsCancelledName;
			universeid = tostring(game.GameId);
		}
		local AnalyticsLeaveGameSource = module_upvr.AnalyticsLeaveGameSource
		tbl_2.source = AnalyticsLeaveGameSource
		if FFlagIEMSettingsAddPlaySessionID_upvr then
			AnalyticsLeaveGameSource = any_CreateNewPage_result1_upvr.playsessionid
		else
			AnalyticsLeaveGameSource = nil
		end
		tbl_2.playsessionid = AnalyticsLeaveGameSource
		RbxAnalyticsService_upvr:SetRBXEventStream(module_upvr.AnalyticsTargetName, module_upvr.AnalyticsInGameMenuName, module_upvr.AnalyticsLeaveGameName, tbl_2)
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromGamepad(arg1, arg2, arg3) -- Line 72
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.End then
			any_CreateNewPage_result1_upvr.DontLeaveFunc(true)
		end
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromButton(arg1) -- Line 77
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1)
	end
	any_CreateNewPage_result1_upvr.TabHeader = nil
	any_CreateNewPage_result1_upvr.Page.Name = "LeaveGameWithNextupPage"
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
	any_CreateNewPage_result1_upvr.DisableTopPadding = true
	any_CreateNewPage_result1_upvr.MaintainVerticalSize = true
	local tbl = {}
	var21 = "LeaveGameText"
	tbl.Name = var21
	var21 = "Are you sure you want to leave the experience?"
	tbl.Text = var21
	var21 = Theme_upvr.font(Enum.Font.SourceSansBold, "Confirmation")
	tbl.Font = var21
	var21 = Theme_upvr.fontSize(Enum.FontSize.Size36, "Confirmation")
	tbl.FontSize = var21
	var21 = Color3.new(1, 1, 1)
	tbl.TextColor3 = var21
	var21 = 1
	tbl.BackgroundTransparency = var21
	var21 = UDim2.new(1, 0, 0, 70)
	tbl.Size = var21
	var21 = true
	tbl.TextWrapped = var21
	var21 = 2
	tbl.ZIndex = var21
	var21 = any_CreateNewPage_result1_upvr.Page
	tbl.Parent = var21
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var21 = UDim2.new(0, 0, 0, 100)
		return var21
	end
	if not any_IsEnabled_result1_upvr or not INLINED() then
		var21 = UDim2.new(0, 0, 0, 0)
	end
	tbl.Position = var21
	local var28 = Create_upvr("TextLabel")(tbl)
	var21 = "Frame"
	var21 = {}
	var21.Name = "LeaveButtonContainer"
	var21.Parent = any_CreateNewPage_result1_upvr.Page
	var21.Size = UDim2.new(1, 0, 0, 0)
	var21.AutomaticSize = Enum.AutomaticSize.Y
	var21.BackgroundTransparency = 1
	var21.Position = UDim2.new(0, 0, 1, 0)
	local var29 = Create_upvr(var21)(var21)
	var21 = Create_upvr("UIGridLayout")
	local tbl_3 = {
		Name = "LeavetButtonsLayout";
	}
	if not any_IsEnabled_result1_upvr or not UDim2.new(0, 300, 0, 80) then
	end
	tbl_3.CellSize = UDim2.new(0, 200, 0, 50)
	tbl_3.CellPadding = UDim2.new(0, 20, 0, 20)
	tbl_3.FillDirection = Enum.FillDirection.Horizontal
	tbl_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tbl_3.SortOrder = Enum.SortOrder.LayoutOrder
	tbl_3.VerticalAlignment = Enum.VerticalAlignment.Top
	tbl_3.Parent = var29
	var21 = var21(tbl_3)
	local var32 = Create_upvr("Frame")({
		Name = "NextUpContainer";
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = any_CreateNewPage_result1_upvr.Page;
	})
	local tbl_4 = {
		FlexMode = Enum.UIFlexMode.Fill;
		Parent = var32;
	}
	ReactRoblox_upvr.createRoot(Create_upvr("Frame")({
		Name = "NextUpRootContainer";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Parent = var32;
	})):render(React_upvr.createElement(NextUpModuleContainer_upvr))
	if Utility_upvr:IsSmallTouchScreen() then
		var28.FontSize = Enum.FontSize.Size24
		var28.Size = UDim2.new(1, 0, 0, 35)
	elseif any_IsEnabled_result1_upvr then
		var28.FontSize = Enum.FontSize.Size48
	end
	any_CreateNewPage_result1_upvr.LeaveGameButton = Utility_upvr:MakeStyledButton("LeaveGame", "Leave", nil, function() -- Line 162
		--[[ Upvalues[1]:
			[1]: leaveGame_upvr (copied, readonly)
		]]
		leaveGame_upvr(true)
	end)
	any_CreateNewPage_result1_upvr.LeaveGameButton.NextSelectionRight = nil
	any_CreateNewPage_result1_upvr.LeaveGameButton.Parent = var29
	local any_MakeStyledButton_result1 = Utility_upvr:MakeStyledButton("DontLeaveGame", "Don't Leave", nil, any_CreateNewPage_result1_upvr.DontLeaveFromButton)
	any_MakeStyledButton_result1.NextSelectionLeft = nil
	any_MakeStyledButton_result1.Parent = var29
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 1, 0)
	return any_CreateNewPage_result1_upvr
end)()
function Initialize_result1_upvw.GetSize(arg1) -- Line 181
	return Vector2.zero
end
local GuiService_upvr = game:GetService("GuiService")
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagChromeShortcutRemoveRespawnOnLeavePage_upvr = SharedFlags.FFlagChromeShortcutRemoveRespawnOnLeavePage
Initialize_result1_upvw.Displayed.Event:connect(function() -- Line 185
	--[[ Upvalues[8]:
		[1]: GuiService_upvr (readonly)
		[2]: Initialize_result1_upvw (read and write)
		[3]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[4]: FFlagChromeShortcutRemoveRespawnOnLeavePage_upvr (readonly)
		[5]: var5_upvr (readonly)
		[6]: Enabled_upvr (readonly)
		[7]: var6_upvr (readonly)
		[8]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedCoreObject = Initialize_result1_upvw.LeaveGameButton
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 23. Error Block 8 start (CF ANALYSIS FAILED)
	Enabled_upvr:setShortcutBar(var6_upvr.TILTMENU_DIALOG_SHORTCUTBAR_ID)
	do
		return
	end
	-- KONSTANTERROR: [26] 23. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 29. Error Block 9 start (CF ANALYSIS FAILED)
	ContextActionService_upvr:BindCoreAction("LeaveGameCancelAction", Initialize_result1_upvw.DontLeaveFromGamepad, false, Enum.KeyCode.ButtonB)
	-- KONSTANTERROR: [34] 29. Error Block 9 end (CF ANALYSIS FAILED)
end)
Initialize_result1_upvw.Hidden.Event:connect(function() -- Line 202
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("LeaveGameCancelAction")
end)
return Initialize_result1_upvw