-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:11
-- Luau version 6, Types version 3
-- Time taken: 0.015897 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local React_upvr = require(CorePackages.Packages.React)
local ReactFocusNavigation_upvr = require(CorePackages.Packages.ReactFocusNavigation)
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local Enabled_upvr = RobloxGui_upvr.Modules.Chrome.Enabled
local var9_upvr = require(Enabled_upvr)()
local var10_upvr
if var9_upvr then
	Enabled_upvr = require
	var10_upvr = RobloxGui_upvr.Modules.Chrome.Service
	Enabled_upvr = Enabled_upvr(var10_upvr)
else
	Enabled_upvr = nil
end
if var9_upvr then
	var10_upvr = require(RobloxGui_upvr.Modules.Chrome.ChromeShared.Unibar.Constants)
else
	var10_upvr = nil
end
RobloxGui_upvr:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local any_IsEnabled_result1_upvr = require(RobloxGui_upvr.Modules.TenFootInterface):IsEnabled()
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableChromeShortcutBar_upvr = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagRefactorMenuConfirmationButtons_upvr = require(RobloxGui_upvr.Modules.Settings.Flags.FFlagRefactorMenuConfirmationButtons)
local module_upvr = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local useLastInputMode_upvr = require(CorePackages.Workspace.Packages.FocusNavigationUtils).useLastInputMode
local useFocusGuiObject_upvr = ReactFocusNavigation_upvr.useFocusGuiObject
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local View_upvr = Foundation_upvr.View
local Text_upvr = Foundation_upvr.Text
local Button_upvr = Foundation_upvr.Button
local InputSize_upvr = Foundation_upvr.Enums.InputSize
local ButtonVariant_upvr = Foundation_upvr.Enums.ButtonVariant
local function ResetCharacterButtonsContainer_upvr(arg1) -- Line 82, Named "ResetCharacterButtonsContainer"
	--[[ Upvalues[12]:
		[1]: React_upvr (readonly)
		[2]: useLastInputMode_upvr (readonly)
		[3]: useFocusGuiObject_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Utility_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: any_IsEnabled_result1_upvr (readonly)
		[9]: Text_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: InputSize_upvr (readonly)
		[12]: ButtonVariant_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local useLastInputMode_upvr_result1_upvr = useLastInputMode_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		ConfirmResetCharacter = module_upvr.ConfirmResetCharacterLocalizedKey;
		ResetCharacter = module_upvr.ResetCharacterLocalizedKey;
		DontResetCharacter = module_upvr.DontResetCharacterLocalizedKey;
	})
	React_upvr.useEffect(function() -- Line 96
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr_2 = arg1.pageDisplayed.Event:Connect(function() -- Line 97
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(true)
		end)
		local any_Connect_result1_upvr = arg1.pageHidden.Event:Connect(function() -- Line 100
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(false)
		end)
		return function() -- Line 104
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr_2 (readonly)
				[2]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr_2:Disconnect()
			any_Connect_result1_upvr:Disconnect()
		end
	end, {arg1.pageDisplayed, arg1.pageHidden})
	local var17_result1_upvr = useFocusGuiObject_upvr()
	React_upvr.useEffect(function() -- Line 110
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: useLastInputMode_upvr_result1_upvr (readonly)
			[3]: var17_result1_upvr (readonly)
			[4]: any_useRef_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr then
			if useLastInputMode_upvr_result1_upvr == "Focus" then
				var17_result1_upvr(any_useRef_result1_upvr.current)
				return
			end
			var17_result1_upvr(nil)
		end
	end, {any_useState_result1_upvr, useLastInputMode_upvr_result1_upvr, any_useRef_result1_upvr.current})
	local module_2 = {}
	local var42
	if any_IsEnabled_result1_upvr then
		var42 = 100
	else
		var42 = 0
	end
	module_2.Position = UDim2.new(0, 0, 0, var42)
	module_2.tag = "size-full-0 auto-y col"
	local module = {}
	local tbl_5 = {}
	var42 = useLocalization_upvr_result1.ConfirmResetCharacter
	tbl_5.Text = var42
	var42 = UDim2.new
	if Utility_upvr:IsSmallTouchScreen() then
	else
	end
	var42 = var42(1, 0, 0, 200)
	tbl_5.Size = var42
	var42 = 1
	tbl_5.LayoutOrder = var42
	var42 = {}
	var42["text-wrap"] = true
	if not Utility_upvr:IsSmallTouchScreen() then
	end
	var42["text-heading-medium"] = not any_IsEnabled_result1_upvr
	var42["text-heading-small"] = Utility_upvr:IsSmallTouchScreen()
	var42["text-heading-large"] = any_IsEnabled_result1_upvr
	tbl_5.tag = var42
	module.ResetCharacterText = React_upvr.createElement(Text_upvr, tbl_5)
	local tbl_4 = {}
	var42 = 2
	tbl_4.LayoutOrder = var42
	var42 = "size-full-0 auto-y row align-x-center gap-xlarge wrap"
	tbl_4.tag = var42
	var42 = {}
	local tbl_3 = {
		text = useLocalization_upvr_result1.ResetCharacter;
		size = InputSize_upvr.Large;
		variant = ButtonVariant_upvr.SoftEmphasis;
	}
	if any_IsEnabled_result1_upvr then
	else
	end
	tbl_3.width = UDim.new(0, 200)
	tbl_3.LayoutOrder = 1
	tbl_3.ref = any_useRef_result1_upvr
	tbl_3.onActivated = arg1.onResetFunction
	var42.ResetCharacterButton = React_upvr.createElement(Button_upvr, tbl_3)
	local tbl = {
		text = useLocalization_upvr_result1.DontResetCharacter;
		size = InputSize_upvr.Large;
		variant = ButtonVariant_upvr.Subtle;
	}
	if any_IsEnabled_result1_upvr then
	else
	end
	tbl.width = UDim.new(0, 200)
	tbl.LayoutOrder = 2
	tbl.onActivated = React_upvr.useCallback(function() -- Line 120
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Utility_upvr (copied, readonly)
		]]
		arg1.dontResetCharFromButton(Utility_upvr:IsUsingGamepad())
	end, {})
	var42.DontResetCharacterButton = React_upvr.createElement(Button_upvr, tbl)
	module.ButtonsContainer = React_upvr.createElement(View_upvr, tbl_4, var42)
	return React_upvr.createElement(View_upvr, module_2, module)
end
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local function ResetCharacterContainer_upvr(arg1) -- Line 164, Named "ResetCharacterContainer"
	--[[ Upvalues[9]:
		[1]: Localization_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LocalizationProvider_upvr (readonly)
		[5]: FoundationProvider_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: ReactFocusNavigation_upvr (readonly)
		[8]: any_new_result1_upvr (readonly)
		[9]: ResetCharacterButtonsContainer_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
			theme = Foundation_upvr.Enums.Theme.Dark;
		}, {
			FocusNavigationProvider = React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
				value = any_new_result1_upvr;
			}, {
				ResetCharacterButtonsContainer = React_upvr.createElement(ResetCharacterButtonsContainer_upvr, arg1);
			});
		});
	})
end
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Theme_upvr = require(RobloxGui_upvr.Modules.Settings.Theme)
local Players_upvr = game:GetService("Players")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ResetTelemetryTypeCheckFix", false)
local FFlagRespawnActionChromeShortcutTelemetry_upvr = require(RobloxGui_upvr.Modules.Chrome.Flags.FFlagRespawnActionChromeShortcutTelemetry)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
local Initialize_result1_upvw = (function() -- Line 182, Named "Initialize"
	--[[ Upvalues[16]:
		[1]: RobloxGui_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: FFlagRefactorMenuConfirmationButtons_upvr (readonly)
		[5]: Create_upvr (readonly)
		[6]: Theme_upvr (readonly)
		[7]: any_IsEnabled_result1_upvr (readonly)
		[8]: Utility_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: game_DefineFastFlag_result1_upvr (readonly)
		[11]: FFlagRespawnActionChromeShortcutTelemetry_upvr (readonly)
		[12]: Cryo_upvr (readonly)
		[13]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[14]: ReactRoblox_upvr (readonly)
		[15]: React_upvr (readonly)
		[16]: ResetCharacterContainer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	function any_CreateNewPage_result1_upvr.DontResetCharFunc(arg1) -- Line 186
		--[[ Upvalues[3]:
			[1]: RbxAnalyticsService_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
			[3]: any_CreateNewPage_result1_upvr (readonly)
		]]
		RbxAnalyticsService_upvr:SetRBXEventStream(module_upvr.AnalyticsTargetName, module_upvr.AnalyticsInGameMenuName, module_upvr.AnalyticsRespawnCharacterName, {
			confirmed = module_upvr.AnalyticsCancelledName;
			universeid = tostring(game.GameId);
		})
		if any_CreateNewPage_result1_upvr.HubRef then
			any_CreateNewPage_result1_upvr.HubRef:PopMenu(arg1, true)
		end
	end
	function any_CreateNewPage_result1_upvr.DontResetCharFromHotkey(arg1, arg2, arg3) -- Line 194
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local var73 = true
			if arg3.UserInputType ~= Enum.UserInputType.Gamepad1 then
				var73 = true
				if arg3.UserInputType ~= Enum.UserInputType.Gamepad2 then
					var73 = true
					if arg3.UserInputType ~= Enum.UserInputType.Gamepad3 then
						if arg3.UserInputType ~= Enum.UserInputType.Gamepad4 then
							var73 = false
						else
							var73 = true
						end
					end
				end
			end
			any_CreateNewPage_result1_upvr.DontResetCharFunc(var73)
		end
	end
	function any_CreateNewPage_result1_upvr.DontResetCharFromButton(arg1) -- Line 202
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		any_CreateNewPage_result1_upvr.DontResetCharFunc(arg1)
	end
	any_CreateNewPage_result1_upvr.TabHeader = nil
	any_CreateNewPage_result1_upvr.Page.Name = "ResetCharacter"
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
	local var75
	if not FFlagRefactorMenuConfirmationButtons_upvr then
		local tbl_2 = {}
		var75 = "ResetCharacterText"
		tbl_2.Name = var75
		var75 = "Are you sure you want to reset your character?"
		tbl_2.Text = var75
		var75 = Theme_upvr.font(Enum.Font.SourceSansBold, "Confirmation")
		tbl_2.Font = var75
		var75 = Theme_upvr.fontSize(Enum.FontSize.Size36, "Confirmation")
		tbl_2.FontSize = var75
		var75 = Color3.new(1, 1, 1)
		tbl_2.TextColor3 = var75
		var75 = 1
		tbl_2.BackgroundTransparency = var75
		var75 = UDim2.new(1, 0, 0, 200)
		tbl_2.Size = var75
		var75 = true
		tbl_2.TextWrapped = var75
		var75 = 2
		tbl_2.ZIndex = var75
		var75 = any_CreateNewPage_result1_upvr.Page
		tbl_2.Parent = var75
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var75 = UDim2.new(0, 0, 0, 100)
			return var75
		end
		if not any_IsEnabled_result1_upvr or not INLINED() then
			var75 = UDim2.new(0, 0, 0, 0)
		end
		tbl_2.Position = var75
		local var77 = Create_upvr("TextLabel")(tbl_2)
		var75 = "Frame"
		var75 = {}
		var75.Name = "ResetButtonContainer"
		var75.Parent = var77
		var75.Size = UDim2.new(1, 0, 0, 400)
		var75.BackgroundTransparency = 1
		var75.Position = UDim2.new(0, 0, 1, 0)
		local var78 = Create_upvr(var75)(var75)
		var75 = "UIGridLayout"
		var75 = {}
		var75.Name = "ResetButtonsLayout"
		if not any_IsEnabled_result1_upvr or not UDim2.new(0, 300, 0, 80) then
		end
		var75.CellSize = UDim2.new(0, 200, 0, 50)
		var75.CellPadding = UDim2.new(0, 20, 0, 20)
		var75.FillDirection = Enum.FillDirection.Horizontal
		var75.HorizontalAlignment = Enum.HorizontalAlignment.Center
		var75.SortOrder = Enum.SortOrder.LayoutOrder
		var75.VerticalAlignment = Enum.VerticalAlignment.Top
		var75.Parent = var78
		var75 = Utility_upvr:IsSmallTouchScreen()
		if var75 then
			var75 = Enum.FontSize.Size24
			var77.FontSize = var75
			var75 = UDim2.new(1, 0, 0, 100)
			var77.Size = var75
		else
			var75 = any_IsEnabled_result1_upvr
			if var75 then
				var75 = Enum.FontSize.Size48
				var77.FontSize = var75
			end
		end
	end
	local function var79_upvr(arg1) -- Line 261
		--[[ Upvalues[6]:
			[1]: Players_upvr (copied, readonly)
			[2]: module_upvr (copied, readonly)
			[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[4]: FFlagRespawnActionChromeShortcutTelemetry_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local LocalPlayer_3 = Players_upvr.LocalPlayer
		if LocalPlayer_3 then
			local Character = LocalPlayer_3.Character
			if Character then
				local Humanoid = Character:FindFirstChild("Humanoid")
				if Humanoid then
					Humanoid.Health = 0
				end
			end
		end
		Character = {}
		local var90 = Character
		var90.confirmed = module_upvr.AnalyticsConfirmedName
		var90.universeid = tostring(game.GameId)
		if game_DefineFastFlag_result1_upvr then
			if FFlagRespawnActionChromeShortcutTelemetry_upvr and arg1 and type(arg1) == "table" and arg1.resetTelemetryFields then
				var90 = Cryo_upvr.Dictionary.join(var90, arg1.resetTelemetryFields)
				-- KONSTANTWARNING: GOTO [73] #54
			end
		elseif FFlagRespawnActionChromeShortcutTelemetry_upvr and arg1 and arg1.resetTelemetryFields then
			var90 = Cryo_upvr.Dictionary.join(var90, arg1.resetTelemetryFields)
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [73] 54. Error Block 16 start (CF ANALYSIS FAILED)
		RbxAnalyticsService_upvr:SetRBXEventStream(module_upvr.AnalyticsTargetName, module_upvr.AnalyticsInGameMenuName, module_upvr.AnalyticsRespawnCharacterName, var90)
		RbxAnalyticsService_upvr:ReportCounter("InGameMenu-ResetCharacter")
		-- KONSTANTERROR: [73] 54. Error Block 16 end (CF ANALYSIS FAILED)
	end
	any_CreateNewPage_result1_upvr.ResetBindable = true
	local function var91(arg1) -- Line 290
		--[[ Upvalues[2]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
			[2]: var79_upvr (readonly)
		]]
		if any_CreateNewPage_result1_upvr.ResetBindable == true then
			var79_upvr(arg1)
		elseif any_CreateNewPage_result1_upvr.ResetBindable then
			any_CreateNewPage_result1_upvr.ResetBindable:Fire()
		end
		if any_CreateNewPage_result1_upvr.HubRef then
			any_CreateNewPage_result1_upvr.HubRef:SetVisibility(false, true)
		end
	end
	if FFlagEnableChromeShortcutBar_upvr then
		any_CreateNewPage_result1_upvr.ResetFunction = var91
	end
	if not FFlagRefactorMenuConfirmationButtons_upvr then
		any_CreateNewPage_result1_upvr.ResetCharacterButton = Utility_upvr:MakeStyledButton("ResetCharacter", "Reset", nil, var91)
		any_CreateNewPage_result1_upvr.ResetCharacterButton.NextSelectionRight = nil
		any_CreateNewPage_result1_upvr.ResetCharacterButton.Parent = var78
		local any_MakeStyledButton_result1 = Utility_upvr:MakeStyledButton("DontResetCharacter", "Don't Reset", nil, any_CreateNewPage_result1_upvr.DontResetCharFromButton)
		any_MakeStyledButton_result1.NextSelectionLeft = nil
		any_MakeStyledButton_result1.Parent = var78
		any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, any_MakeStyledButton_result1.AbsolutePosition.Y + any_MakeStyledButton_result1.AbsoluteSize.Y)
	end
	if FFlagRefactorMenuConfirmationButtons_upvr then
		any_CreateNewPage_result1_upvr.PageRoot = ReactRoblox_upvr.createRoot(any_CreateNewPage_result1_upvr.Page)
		any_CreateNewPage_result1_upvr.PageRoot:render(React_upvr.createElement(ResetCharacterContainer_upvr, {
			onResetFunction = var91;
			dontResetCharFromButton = any_CreateNewPage_result1_upvr.DontResetCharFromButton;
			pageDisplayed = any_CreateNewPage_result1_upvr.Displayed;
			pageHidden = any_CreateNewPage_result1_upvr.Hidden;
		}))
	end
	return any_CreateNewPage_result1_upvr
end)()
local var95_upvw = false
local GuiService_upvr = game:GetService("GuiService")
local FFlagChromeShortcutRemoveLeaveOnRespawnPage_upvr = SharedFlags.FFlagChromeShortcutRemoveLeaveOnRespawnPage
Initialize_result1_upvw.Displayed.Event:connect(function() -- Line 335
	--[[ Upvalues[10]:
		[1]: var95_upvw (read and write)
		[2]: FFlagRefactorMenuConfirmationButtons_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: Initialize_result1_upvw (read and write)
		[5]: FFlagEnableChromeShortcutBar_upvr (readonly)
		[6]: var9_upvr (readonly)
		[7]: FFlagChromeShortcutRemoveLeaveOnRespawnPage_upvr (readonly)
		[8]: Enabled_upvr (readonly)
		[9]: var10_upvr (readonly)
		[10]: ContextActionService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	var95_upvw = true
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedCoreObject = Initialize_result1_upvw.ResetCharacterButton
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 3 end (CF ANALYSIS FAILED)
end)
Initialize_result1_upvw.Hidden.Event:connect(function() -- Line 353
	--[[ Upvalues[2]:
		[1]: var95_upvw (read and write)
		[2]: ContextActionService_upvr (readonly)
	]]
	var95_upvw = false
	ContextActionService_upvr:UnbindCoreAction("ResetCharacterAction")
end)
function Initialize_result1_upvw.SetResetCallback(arg1, arg2) -- Line 358
	--[[ Upvalues[2]:
		[1]: var95_upvw (read and write)
		[2]: Initialize_result1_upvw (read and write)
	]]
	if arg2 == false and var95_upvw then
		Initialize_result1_upvw.HubRef:PopMenu(nil, true)
	end
	Initialize_result1_upvw.ResetBindable = arg2
end
return Initialize_result1_upvw