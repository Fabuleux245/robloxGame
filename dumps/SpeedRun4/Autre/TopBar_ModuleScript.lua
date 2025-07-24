-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:58
-- Luau version 6, Types version 3
-- Time taken: 0.006961 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local GuiService_upvr = game:GetService("GuiService")
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local var6_upvr = require(RobloxGui_upvr.Modules.Chrome.Enabled)()
local Constants_upvr_2 = require(script.Constants)
if var6_upvr and (not require(RobloxGui_upvr.Modules.TenFootInterface):IsEnabled() or SharedFlags.GetFFlagAdaptUnibarAndTiltSizing()) then
	local any_GetGuiInset_result1, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
	GuiService_upvr:SetGlobalGuiInset(any_GetGuiInset_result1.X, Constants_upvr_2.TopBarHeight, any_GetGuiInset_result2.X, any_GetGuiInset_result2.Y)
end
local FTUX = RobloxGui_upvr.Modules.FTUX
local module_upvr = {}
module_upvr.__index = module_upvr
local GlobalConfig_upvr = require(script.GlobalConfig)
local Roact_upvr = require(CorePackages.Packages.Roact)
local TenFootInterface_upvr = require(RobloxGui_upvr.Modules.TenFootInterface)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducer_upvr = require(script.Reducer)
local registerSetCores_upvr = require(script.registerSetCores)
local GetCanChat_upvr = require(script.Thunks.GetCanChat)
local GetGameName_upvr = require(script.Thunks.GetGameName)
local GetFFlagDebugEnableVRFTUXExperienceInStudio_upvr = require(FTUX.Flags.GetFFlagDebugEnableVRFTUXExperienceInStudio)
local isRunningInStudio_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).isRunningInStudio
local FTUX_2_upvr = require(script.Parent.FTUX)
local PlatformEnum_upvr = require(FTUX.Enums.PlatformEnum)
local GetFFlagEnableVRFTUXExperience_upvr = require(FTUX.Flags.GetFFlagEnableVRFTUXExperience)
local IsFTUXExperience_upvr = require(FTUX.Utility.IsFTUXExperience)
local isNewInGameMenuEnabled_upvr = require(RobloxGui_upvr.Modules.isNewInGameMenuEnabled)
local SetSmallTouchDevice_upvr = require(script.Actions.SetSmallTouchDevice)
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local Constants_upvr = require(CorePackages.Packages.UIBlox).App.Style.Constants
local UiModeStyleProvider_upvr = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider
local TopBarApp_upvr = require(script.Components.TopBarApp)
local FFlagAddMenuNavigationToggleDialog_upvr = SharedFlags.FFlagAddMenuNavigationToggleDialog
local FFlagGamepadNavigationDialogABTest_upvr = require(script.Flags.FFlagGamepadNavigationDialogABTest)
local DesignTokenProvider_upvr = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider
local MenuNavigationPromptTokenMapper_upvr = require(script.TokenMappers.MenuNavigationPromptTokenMapper)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local TopBarAppPolicy_upvr = require(script.TopBarAppPolicy)
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local RoactAppExperiment_upvr = require(CorePackages.Packages.RoactAppExperiment)
local IXPService_upvr = game:GetService("IXPService")
local GetFFlagEnableCrossExpVoice_upvr = SharedFlags.GetFFlagEnableCrossExpVoice
local Component_upvr = require(CorePackages.Workspace.Packages.CrossExperienceVoice).Component
local ReactSceneUnderstanding_upvr = require(CorePackages.Packages.ReactSceneUnderstanding)
local Songbird_upvr = require(CorePackages.Workspace.Packages.Songbird)
local VoiceStateContext_upvr = require(RobloxGui_upvr.Modules.VoiceChat.VoiceStateContext)
local GetFFlagSimpleChatUnreadMessageCount_upvr = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local UpdateUnreadMessagesBadge_upvr = require(script.Actions.UpdateUnreadMessagesBadge)
function module_upvr.new() -- Line 86
	--[[ Upvalues[44]:
		[1]: module_upvr (readonly)
		[2]: GlobalConfig_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: TenFootInterface_upvr (readonly)
		[5]: var6_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: Constants_upvr_2 (readonly)
		[8]: Rodux_upvr (readonly)
		[9]: Reducer_upvr (readonly)
		[10]: registerSetCores_upvr (readonly)
		[11]: GetCanChat_upvr (readonly)
		[12]: GetGameName_upvr (readonly)
		[13]: GetFFlagDebugEnableVRFTUXExperienceInStudio_upvr (readonly)
		[14]: isRunningInStudio_upvr (readonly)
		[15]: FTUX_2_upvr (readonly)
		[16]: PlatformEnum_upvr (readonly)
		[17]: GetFFlagEnableVRFTUXExperience_upvr (readonly)
		[18]: IsFTUXExperience_upvr (readonly)
		[19]: isNewInGameMenuEnabled_upvr (readonly)
		[20]: RobloxGui_upvr (readonly)
		[21]: SetSmallTouchDevice_upvr (readonly)
		[22]: Utility_upvr (readonly)
		[23]: Constants_upvr (readonly)
		[24]: UiModeStyleProvider_upvr (readonly)
		[25]: TopBarApp_upvr (readonly)
		[26]: FFlagAddMenuNavigationToggleDialog_upvr (readonly)
		[27]: FFlagGamepadNavigationDialogABTest_upvr (readonly)
		[28]: DesignTokenProvider_upvr (readonly)
		[29]: MenuNavigationPromptTokenMapper_upvr (readonly)
		[30]: RoactRodux_upvr (readonly)
		[31]: TopBarAppPolicy_upvr (readonly)
		[32]: LocalizationProvider_upvr (readonly)
		[33]: Localization_upvr (readonly)
		[34]: LocalizationService_upvr (readonly)
		[35]: RoactAppExperiment_upvr (readonly)
		[36]: IXPService_upvr (readonly)
		[37]: GetFFlagEnableCrossExpVoice_upvr (readonly)
		[38]: Component_upvr (readonly)
		[39]: ReactSceneUnderstanding_upvr (readonly)
		[40]: Songbird_upvr (readonly)
		[41]: VoiceStateContext_upvr (readonly)
		[42]: CoreGui_upvr (readonly)
		[43]: GetFFlagSimpleChatUnreadMessageCount_upvr (readonly)
		[44]: UpdateUnreadMessagesBadge_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	if GlobalConfig_upvr.propValidation then
		Roact_upvr.setGlobalConfig({
			propValidation = true;
		})
	end
	if GlobalConfig_upvr.elementTracing then
		Roact_upvr.setGlobalConfig({
			elementTracing = true;
		})
	end
	if not TenFootInterface_upvr:IsEnabled() and not var6_upvr then
		GuiService_upvr:SetGlobalGuiInset(0, Constants_upvr_2.TopBarHeight, 0, 0)
	end
	setmetatable_result1_upvr.store = Rodux_upvr.Store.new(Reducer_upvr, nil, {Rodux_upvr.thunkMiddleware})
	registerSetCores_upvr(setmetatable_result1_upvr.store)
	setmetatable_result1_upvr.store:dispatch(GetCanChat_upvr)
	setmetatable_result1_upvr.store:dispatch(GetGameName_upvr)
	if GetFFlagDebugEnableVRFTUXExperienceInStudio_upvr() and isRunningInStudio_upvr() then
		FTUX_2_upvr.mountFtuxMenu(PlatformEnum_upvr.QuestVR)
	end
	local var54
	if GetFFlagEnableVRFTUXExperience_upvr() and IsFTUXExperience_upvr(PlatformEnum_upvr.QuestVR) then
		FTUX_2_upvr.mountFtuxMenu(PlatformEnum_upvr.QuestVR)
	end
	if isNewInGameMenuEnabled_upvr() then
		require(RobloxGui_upvr.Modules.InGameMenuInit).mountInGameMenu()
	end
	coroutine.wrap(function() -- Line 130
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: SetSmallTouchDevice_upvr (copied, readonly)
			[3]: Utility_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.store:dispatch(SetSmallTouchDevice_upvr(Utility_upvr:IsSmallTouchScreen()))
	end)()
	local tbl_7_upvr = {
		themeName = Constants_upvr.ThemeName.Dark;
		fontName = Constants_upvr.FontName.Gotham;
	}
	local any_createElement_result1 = Roact_upvr.createElement(TopBarApp_upvr)
	local var60
	if FFlagAddMenuNavigationToggleDialog_upvr or FFlagGamepadNavigationDialogABTest_upvr then
		local tbl_6 = {}
		local tbl = {}
		if FFlagGamepadNavigationDialogABTest_upvr then
			var60 = MenuNavigationPromptTokenMapper_upvr
		else
			var60 = nil
		end
		tbl.MenuNavigationPrompt = var60
		tbl_6.tokenMappers = tbl
		any_createElement_result1 = Roact_upvr.createElement(DesignTokenProvider_upvr, tbl_6, {
			TopBarApp = any_createElement_result1;
		})
	end
	local tbl_2 = {}
	local tbl_4 = {}
	local tbl_3 = {}
	local tbl_5 = {}
	var54 = Roact_upvr.createElement
	var54 = var54(RoactAppExperiment_upvr.Provider, {
		value = IXPService_upvr;
	}, {
		TopBarApp = any_createElement_result1;
	})
	tbl_5.RoactAppExperimentProvider = var54
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var54 = Roact_upvr.createElement(Component_upvr)
		return var54
	end
	if not GetFFlagEnableCrossExpVoice_upvr() or not INLINED() then
		var54 = nil
	end
	tbl_5.CrossExperienceVoice = var54
	tbl_3.ExperimentProvider = Roact_upvr.createFragment(tbl_5)
	tbl_4.LocalizationProvider = Roact_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, tbl_3)
	tbl_2.PolicyProvider = Roact_upvr.createElement(TopBarAppPolicy_upvr.Provider, {
		policy = {TopBarAppPolicy_upvr.Mapper};
	}, (function(arg1) -- Line 139, Named "wrapWithUiModeStyleProvider"
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: UiModeStyleProvider_upvr (copied, readonly)
			[3]: tbl_7_upvr (readonly)
		]]
		return {
			UiModeStyleProvider = Roact_upvr.createElement(UiModeStyleProvider_upvr, {
				style = tbl_7_upvr;
			}, arg1);
		}
	end)(tbl_4))
	setmetatable_result1_upvr.root = Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = setmetatable_result1_upvr.store;
	}, tbl_2)
	setmetatable_result1_upvr.root = Roact_upvr.createElement(ReactSceneUnderstanding_upvr.SceneAnalysisProvider, nil, setmetatable_result1_upvr.root)
	setmetatable_result1_upvr.root = Roact_upvr.createElement(Songbird_upvr.ReportAudioPopupContext.Provider, nil, setmetatable_result1_upvr.root)
	setmetatable_result1_upvr.root = Roact_upvr.createElement(VoiceStateContext_upvr.Provider, nil, setmetatable_result1_upvr.root)
	setmetatable_result1_upvr.root = Roact_upvr.createElement("Folder", {
		Name = "TopBarApp";
	}, setmetatable_result1_upvr.root)
	setmetatable_result1_upvr.element = Roact_upvr.mount(setmetatable_result1_upvr.root, CoreGui_upvr, "TopBar")
	if not GetFFlagSimpleChatUnreadMessageCount_upvr() then
		game:GetService("TextChatService").MessageReceived:Connect(function() -- Line 204
			--[[ Upvalues[2]:
				[1]: setmetatable_result1_upvr (readonly)
				[2]: UpdateUnreadMessagesBadge_upvr (copied, readonly)
			]]
			setmetatable_result1_upvr.store:dispatch(UpdateUnreadMessagesBadge_upvr(1))
		end)
	end
	if FFlagGamepadNavigationDialogABTest_upvr then
		local UserInputService = game:GetService("UserInputService")
		local var77_upvw
		if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) then
			setmetatable_result1_upvr:setGamepadNavigationDialogOpen(true)
		else
			var77_upvw = UserInputService.GamepadConnected:Connect(function() -- Line 221
				--[[ Upvalues[2]:
					[1]: setmetatable_result1_upvr (readonly)
					[2]: var77_upvw (read and write)
				]]
				setmetatable_result1_upvr:setGamepadNavigationDialogOpen(true)
				if var77_upvw then
					var77_upvw:Disconnect()
					var77_upvw = nil
				end
			end)
		end
		GuiService_upvr:GetPropertyChangedSignal("MenuIsOpen"):Connect(function() -- Line 212, Named "disconnectGamepadConnected"
			--[[ Upvalues[1]:
				[1]: var77_upvw (read and write)
			]]
			if var77_upvw then
				var77_upvw:Disconnect()
				var77_upvw = nil
			end
		end)
	end
	return setmetatable_result1_upvr
end
local SetInspectMenuOpen_upvr = require(script.Actions.SetInspectMenuOpen)
function module_upvr.setInspectMenuOpen(arg1, arg2) -- Line 233
	--[[ Upvalues[1]:
		[1]: SetInspectMenuOpen_upvr (readonly)
	]]
	arg1.store:dispatch(SetInspectMenuOpen_upvr(arg2))
end
local SetGamepadMenuOpen_upvr = require(script.Actions.SetGamepadMenuOpen)
function module_upvr.setGamepadMenuOpen(arg1, arg2) -- Line 237
	--[[ Upvalues[1]:
		[1]: SetGamepadMenuOpen_upvr (readonly)
	]]
	arg1.store:dispatch(SetGamepadMenuOpen_upvr(arg2))
end
local SetGamepadNavigationDialogOpen_upvr = require(script.Actions.SetGamepadNavigationDialogOpen)
function module_upvr.setGamepadNavigationDialogOpen(arg1, arg2) -- Line 241
	--[[ Upvalues[1]:
		[1]: SetGamepadNavigationDialogOpen_upvr (readonly)
	]]
	arg1.store:dispatch(SetGamepadNavigationDialogOpen_upvr(arg2))
end
return module_upvr.new()