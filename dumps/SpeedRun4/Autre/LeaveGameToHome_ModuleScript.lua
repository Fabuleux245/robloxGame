-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:04
-- Luau version 6, Types version 3
-- Time taken: 0.006099 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local any_GetFFlag_result1_upvr = settings():GetFFlag("CollectAnalyticsForSystemMenu")
local var6_upvw
if any_GetFFlag_result1_upvr then
	var6_upvw = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
end
local FFlagIEMSettingsAddPlaySessionID_upvr = require(RobloxGui_upvr.Modules.Settings.Flags).FFlagIEMSettingsAddPlaySessionID
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local GetFFlagEnableInGameMenuDurationLogger_upvr = require(RobloxGui_upvr.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)
local PerfUtils_upvr = require(RobloxGui_upvr.Modules.Common.PerfUtils)
local LinkingProtocol_upvr = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local RunService_upvr = game:GetService("RunService")
local GetDefaultQualityLevel_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Theme_upvr = require(RobloxGui_upvr.Modules.Settings.Theme)
local any_IsEnabled_result1_upvr = require(RobloxGui_upvr.Modules.TenFootInterface):IsEnabled()
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local Initialize_result1_upvw = (function() -- Line 52, Named "Initialize"
	--[[ Upvalues[16]:
		[1]: RobloxGui_upvr (readonly)
		[2]: FFlagIEMSettingsAddPlaySessionID_upvr (readonly)
		[3]: game_GetEngineFeature_result1_upvr (readonly)
		[4]: RbxAnalyticsService_upvr (readonly)
		[5]: GetFFlagEnableInGameMenuDurationLogger_upvr (readonly)
		[6]: PerfUtils_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: any_GetFFlag_result1_upvr (readonly)
		[9]: var6_upvw (read and write)
		[10]: LinkingProtocol_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: GetDefaultQualityLevel_upvr (readonly)
		[13]: Create_upvr (readonly)
		[14]: Theme_upvr (readonly)
		[15]: any_IsEnabled_result1_upvr (readonly)
		[16]: Utility_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	any_CreateNewPage_result1_upvr.playsessionid = ""
	local var20
	if FFlagIEMSettingsAddPlaySessionID_upvr and game_GetEngineFeature_result1_upvr then
		any_CreateNewPage_result1_upvr.playsessionid = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	function any_CreateNewPage_result1_upvr.LeaveFunc() -- Line 61
		--[[ Upvalues[11]:
			[1]: GetFFlagEnableInGameMenuDurationLogger_upvr (copied, readonly)
			[2]: PerfUtils_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: any_GetFFlag_result1_upvr (copied, readonly)
			[5]: RbxAnalyticsService_upvr (copied, readonly)
			[6]: var6_upvw (copied, read and write)
			[7]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
			[8]: any_CreateNewPage_result1_upvr (readonly)
			[9]: LinkingProtocol_upvr (copied, readonly)
			[10]: RunService_upvr (copied, readonly)
			[11]: GetDefaultQualityLevel_upvr (copied, readonly)
		]]
		if GetFFlagEnableInGameMenuDurationLogger_upvr() then
			PerfUtils_upvr.leavingGame()
		end
		GuiService_upvr.SelectedCoreObject = nil
		if any_GetFFlag_result1_upvr then
			local tbl_2 = {
				confirmed = var6_upvw.AnalyticsConfirmedName;
				universeid = tostring(game.GameId);
			}
			local AnalyticsLeaveToHomeSource_2 = var6_upvw.AnalyticsLeaveToHomeSource
			tbl_2.source = AnalyticsLeaveToHomeSource_2
			if FFlagIEMSettingsAddPlaySessionID_upvr then
				AnalyticsLeaveToHomeSource_2 = any_CreateNewPage_result1_upvr.playsessionid
			else
				AnalyticsLeaveToHomeSource_2 = nil
			end
			tbl_2.playsessionid = AnalyticsLeaveToHomeSource_2
			RbxAnalyticsService_upvr:SetRBXEventStream(var6_upvw.AnalyticsTargetName, var6_upvw.AnalyticsInGameMenuName, var6_upvw.AnalyticsLeaveGameName, tbl_2)
		end
		LinkingProtocol_upvr.default:detectURL("roblox://navigation/home")
		RunService_upvr.RenderStepped:wait()
		RunService_upvr.RenderStepped:wait()
		game:Shutdown()
		settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1) -- Line 93
		--[[ Upvalues[5]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: any_GetFFlag_result1_upvr (copied, readonly)
			[3]: RbxAnalyticsService_upvr (copied, readonly)
			[4]: var6_upvw (copied, read and write)
			[5]: FFlagIEMSettingsAddPlaySessionID_upvr (copied, readonly)
		]]
		if any_CreateNewPage_result1_upvr.HubRef then
			any_CreateNewPage_result1_upvr.HubRef:PopMenu(arg1, true)
		end
		if any_GetFFlag_result1_upvr then
			local tbl_3 = {
				confirmed = var6_upvw.AnalyticsCancelledName;
				universeid = tostring(game.GameId);
			}
			local AnalyticsLeaveToHomeSource = var6_upvw.AnalyticsLeaveToHomeSource
			tbl_3.source = AnalyticsLeaveToHomeSource
			if FFlagIEMSettingsAddPlaySessionID_upvr then
				AnalyticsLeaveToHomeSource = any_CreateNewPage_result1_upvr.playsessionid
			else
				AnalyticsLeaveToHomeSource = nil
			end
			tbl_3.playsessionid = AnalyticsLeaveToHomeSource
			RbxAnalyticsService_upvr:SetRBXEventStream(var6_upvw.AnalyticsTargetName, var6_upvw.AnalyticsInGameMenuName, var6_upvw.AnalyticsLeaveGameName, tbl_3)
		end
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromHotkey(arg1, arg2, arg3) -- Line 112
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local var30 = true
			if arg3.UserInputType ~= Enum.UserInputType.Gamepad1 then
				var30 = true
				if arg3.UserInputType ~= Enum.UserInputType.Gamepad2 then
					var30 = true
					if arg3.UserInputType ~= Enum.UserInputType.Gamepad3 then
						if arg3.UserInputType ~= Enum.UserInputType.Gamepad4 then
							var30 = false
						else
							var30 = true
						end
					end
				end
			end
			any_CreateNewPage_result1_upvr.DontLeaveFunc(var30)
		end
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromButton(arg1) -- Line 120
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1)
	end
	any_CreateNewPage_result1_upvr.TabHeader = nil
	any_CreateNewPage_result1_upvr.Page.Name = "LeaveGameToHomePage"
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
	local tbl_4 = {}
	var20 = "LeaveGameText"
	tbl_4.Name = var20
	var20 = "Are you sure you want to leave the experience?"
	tbl_4.Text = var20
	var20 = Theme_upvr.font(Enum.Font.SourceSansBold, "Confirmation")
	tbl_4.Font = var20
	var20 = Theme_upvr.fontSize(Enum.FontSize.Size36, "Confirmation")
	tbl_4.FontSize = var20
	var20 = Color3.new(1, 1, 1)
	tbl_4.TextColor3 = var20
	var20 = 1
	tbl_4.BackgroundTransparency = var20
	var20 = UDim2.new(1, 0, 0, 200)
	tbl_4.Size = var20
	var20 = true
	tbl_4.TextWrapped = var20
	var20 = 2
	tbl_4.ZIndex = var20
	var20 = any_CreateNewPage_result1_upvr.Page
	tbl_4.Parent = var20
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var20 = UDim2.new(0, 0, 0, 100)
		return var20
	end
	if not any_IsEnabled_result1_upvr or not INLINED() then
		var20 = UDim2.new(0, 0, 0, 0)
	end
	tbl_4.Position = var20
	local var33 = Create_upvr("TextLabel")(tbl_4)
	var20 = "Frame"
	var20 = {}
	var20.Name = "LeaveButtonContainer"
	var20.Parent = var33
	var20.Size = UDim2.new(1, 0, 0, 400)
	var20.BackgroundTransparency = 1
	var20.Position = UDim2.new(0, 0, 1, 0)
	local var34 = Create_upvr(var20)(var20)
	var20 = Create_upvr("UIGridLayout")
	local tbl = {
		Name = "LeavetButtonsLayout";
	}
	if not any_IsEnabled_result1_upvr or not UDim2.new(0, 300, 0, 80) then
	end
	tbl.CellSize = UDim2.new(0, 200, 0, 50)
	tbl.CellPadding = UDim2.new(0, 20, 0, 20)
	tbl.FillDirection = Enum.FillDirection.Horizontal
	tbl.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tbl.SortOrder = Enum.SortOrder.LayoutOrder
	tbl.VerticalAlignment = Enum.VerticalAlignment.Top
	tbl.Parent = var34
	var20 = var20(tbl)
	if Utility_upvr:IsSmallTouchScreen() then
		var33.FontSize = Enum.FontSize.Size24
		var33.Size = UDim2.new(1, 0, 0, 100)
	elseif any_IsEnabled_result1_upvr then
		var33.FontSize = Enum.FontSize.Size48
	end
	any_CreateNewPage_result1_upvr.LeaveGameButton = Utility_upvr:MakeStyledButton("LeaveGame", "Leave", nil, any_CreateNewPage_result1_upvr.LeaveFunc)
	any_CreateNewPage_result1_upvr.LeaveGameButton.NextSelectionRight = nil
	any_CreateNewPage_result1_upvr.LeaveGameButton.Parent = var34
	local any_MakeStyledButton_result1 = Utility_upvr:MakeStyledButton("DontLeaveGame", "Don't Leave", nil, any_CreateNewPage_result1_upvr.DontLeaveFromButton)
	any_MakeStyledButton_result1.NextSelectionLeft = nil
	any_MakeStyledButton_result1.Parent = var34
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, any_MakeStyledButton_result1.AbsolutePosition.Y + any_MakeStyledButton_result1.AbsoluteSize.Y)
	return any_CreateNewPage_result1_upvr
end)()
Initialize_result1_upvw.Displayed.Event:connect(function() -- Line 196
	--[[ Upvalues[3]:
		[1]: GuiService_upvr (readonly)
		[2]: Initialize_result1_upvw (read and write)
		[3]: ContextActionService_upvr (readonly)
	]]
	GuiService_upvr.SelectedCoreObject = Initialize_result1_upvw.LeaveGameButton
	ContextActionService_upvr:BindCoreAction("LeaveGameCancelAction", Initialize_result1_upvw.DontLeaveFromHotkey, false, Enum.KeyCode.ButtonB)
end)
Initialize_result1_upvw.Hidden.Event:connect(function() -- Line 201
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("LeaveGameCancelAction")
end)
return Initialize_result1_upvw