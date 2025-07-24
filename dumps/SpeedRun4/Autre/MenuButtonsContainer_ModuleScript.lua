-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:21
-- Luau version 6, Types version 3
-- Time taken: 0.005975 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local React_upvr = require(CorePackages.Packages.React)
local Foundation_upvr = require(CorePackages.Packages.Foundation)
local View_upvr = Foundation_upvr.View
local MenuButton_upvr = require(script.Parent.MenuButton)
local function createMenuButtons_upvr(arg1, arg2, arg3) -- Line 33, Named "createMenuButtons"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: MenuButton_upvr (readonly)
	]]
	local module_3 = {}
	for i = 1, #arg1 do
		local tbl_2 = {}
		local tbl_5 = {
			text = arg1[i].text;
		}
		tbl_5.lastInput = arg2
		tbl_5.keyboardHint = arg1[i].hint.keyboard
		tbl_5.gamepadButtonImageHint = arg1[i].hint.gamepadButtonImage
		tbl_5.onActivated = arg1[i].onActivated
		tbl_5.layoutOrder = 1
		tbl_5.isEmphasized = arg1[i].isEmphasized
		tbl_5.isSmall = arg3
		tbl_5.isDisabled = arg1[i].getIsDisabled()
		tbl_2.MenuButton = React_upvr.createElement(MenuButton_upvr, tbl_5)
		module_3["MenuButtonContainer"..i] = React_upvr.createElement(View_upvr, {
			tag = "fill row align-y-center";
			LayoutOrder = i;
		}, tbl_2)
	end
	return module_3
end
local Utility_upvr = require(RobloxGui.Modules.Settings.Utility)
local useSignalState_upvr = require(CorePackages.Packages.SignalsReact).useSignalState
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local module_2_upvr = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local useLastInput_upvr = require(CorePackages.Workspace.Packages.Responsive).useLastInput
local FIntRelocateMobileMenuButtonsVariant_upvr = require(RobloxGui.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant)
local ContextActionService_upvr = game:GetService("ContextActionService")
local UserInputService_upvr = game:GetService("UserInputService")
local function MenuButtons_upvr(arg1) -- Line 66, Named "MenuButtons"
	--[[ Upvalues[11]:
		[1]: React_upvr (readonly)
		[2]: Utility_upvr (readonly)
		[3]: useSignalState_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: useLastInput_upvr (readonly)
		[7]: FIntRelocateMobileMenuButtonsVariant_upvr (readonly)
		[8]: ContextActionService_upvr (readonly)
		[9]: UserInputService_upvr (readonly)
		[10]: View_upvr (readonly)
		[11]: createMenuButtons_upvr (readonly)
	]]
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local any_useState_result1, any_useState_result2 = React_upvr.useState(Utility_upvr:IsSmallTouchScreen())
	local any_useBinding_result1_upvr_3, any_useBinding_result2_upvr_2 = React_upvr.useBinding("")
	local any_useBinding_result1_upvr_2, any_useBinding_result2_upvr = React_upvr.useBinding("")
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr_3 = React_upvr.useBinding("")
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		LeaveGame = module_2_upvr.LeaveGameLocalizedKey;
		Respawn = module_2_upvr.RespawnLocalizedKey;
		Resume = module_2_upvr.ResumeLocalizedKey;
	})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 84
		--[[ Upvalues[10]:
			[1]: useLocalization_upvr_result1_upvr (readonly)
			[2]: any_useBinding_result1_upvr_3 (readonly)
			[3]: any_useBinding_result2_upvr_2 (readonly)
			[4]: arg1 (readonly)
			[5]: module_2_upvr (copied, readonly)
			[6]: any_useBinding_result1_upvr_2 (readonly)
			[7]: any_useBinding_result2_upvr (readonly)
			[8]: any_useBinding_result1_upvr (readonly)
			[9]: any_useBinding_result2_upvr_3 (readonly)
			[10]: FIntRelocateMobileMenuButtonsVariant_upvr (copied, readonly)
		]]
		local module = {}
		local tbl = {
			name = "LeaveGameButton";
			text = useLocalization_upvr_result1_upvr.LeaveGame;
			hint = {
				keyboard = 'L';
				gamepadButton = Enum.KeyCode.ButtonX;
				gamepadButtonImage = any_useBinding_result1_upvr_3;
				setGamepadButtonImage = any_useBinding_result2_upvr_2;
			};
			isEmphasized = false;
		}
		local function getIsDisabled() -- Line 96
			return false
		end
		tbl.getIsDisabled = getIsDisabled
		local function onActivated() -- Line 99
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			arg1.onLeaveGame(module_2_upvr.AnalyticsMenuButtonSource)
		end
		tbl.onActivated = onActivated
		tbl.hotkeys = {Enum.KeyCode.L, Enum.KeyCode.ButtonX}
		local function hotkeyFunc() -- Line 103
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			arg1.onLeaveGame(module_2_upvr.AnalyticsMenuHotkeySource)
		end
		tbl.hotkeyFunc = hotkeyFunc
		local tbl_4 = {
			name = "ResetButton";
			text = useLocalization_upvr_result1_upvr.Respawn;
			hint = {
				keyboard = 'R';
				gamepadButton = Enum.KeyCode.ButtonY;
				gamepadButtonImage = any_useBinding_result1_upvr_2;
				setGamepadButtonImage = any_useBinding_result2_upvr;
			};
			isEmphasized = false;
		}
		local function getIsDisabled() -- Line 117
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			return not arg1.getCanRespawn(false)
		end
		tbl_4.getIsDisabled = getIsDisabled
		local function onActivated() -- Line 120
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			arg1.onRespawn(module_2_upvr.AnalyticsMenuButtonSource)
		end
		tbl_4.onActivated = onActivated
		tbl_4.hotkeys = {Enum.KeyCode.R, Enum.KeyCode.ButtonY}
		local function hotkeyFunc() -- Line 124
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			arg1.onRespawn(module_2_upvr.AnalyticsMenuHotkeySource)
		end
		tbl_4.hotkeyFunc = hotkeyFunc
		local tbl_6 = {
			name = "ResumeButton";
			text = useLocalization_upvr_result1_upvr.Resume;
		}
		local tbl_3 = {
			keyboard = "ESC";
			gamepadButton = Enum.KeyCode.ButtonStart;
			gamepadButtonImage = any_useBinding_result1_upvr;
		}
		local var43 = any_useBinding_result2_upvr_3
		tbl_3.setGamepadButtonImage = var43
		tbl_6.hint = tbl_3
		if FIntRelocateMobileMenuButtonsVariant_upvr ~= 1 then
			var43 = false
		else
			var43 = true
		end
		tbl_6.isEmphasized = not var43
		function tbl_6.getIsDisabled() -- Line 138
			return false
		end
		function tbl_6.onActivated() -- Line 141
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			arg1.onResume(module_2_upvr.AnalyticsMenuButtonSource)
		end
		function tbl_6.hotkeyFunc() -- Line 144
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			arg1.onResume(module_2_upvr.AnalyticsMenuHotkeySource)
		end
		tbl_6.hotkeys = {Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart}
		module[1] = tbl
		module[2] = tbl_4
		module[3] = tbl_6
		return module
	end, {useLocalization_upvr_result1_upvr.LeaveGame, useLocalization_upvr_result1_upvr.Respawn, useLocalization_upvr_result1_upvr.Resume})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_3) -- Line 169
		--[[ Upvalues[1]:
			[1]: ContextActionService_upvr (copied, readonly)
		]]
		for i_2 = 1, #arg1_3 do
			ContextActionService_upvr:UnbindCoreAction(arg1_3[i_2].name)
		end
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 152
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ContextActionService_upvr (copied, readonly)
		]]
		if not arg1.getVisibility() then
		else
			for var48 = 1, #arg1_2 do
				if arg1_2[var48].hotkeyFunc ~= nil then
					ContextActionService_upvr:BindCoreAction(arg1_2[var48].name, arg1_2[var48].hotkeyFunc, false, unpack(arg1_2[var48].hotkeys))
				end
			end
		end
	end, {})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_4) -- Line 175
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_3 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
		]]
		local function _(arg1_5, arg2) -- Line 176
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_3 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			return function() -- Line 177
				--[[ Upvalues[4]:
					[1]: arg2 (readonly)
					[2]: any_useCallback_result1_upvr_3 (copied, readonly)
					[3]: arg1_4 (copied, readonly)
					[4]: arg1_5 (readonly)
				]]
				if not arg2() then
					any_useCallback_result1_upvr_3(arg1_4)
					arg1_5()
				end
			end
		end
		local function _(arg1_6, arg2) -- Line 185
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_3 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			return function(arg1_7, arg2_2, arg3) -- Line 186
				--[[ Upvalues[4]:
					[1]: arg1_6 (readonly)
					[2]: arg2 (readonly)
					[3]: any_useCallback_result1_upvr_3 (copied, readonly)
					[4]: arg1_4 (copied, readonly)
				]]
				if arg2_2 == Enum.UserInputState.Begin then
					(function() -- Line 177
						--[[ Upvalues[4]:
							[1]: arg2 (readonly)
							[2]: any_useCallback_result1_upvr_3 (copied, readonly)
							[3]: arg1_4 (copied, readonly)
							[4]: arg1_6 (readonly)
						]]
						if not arg2() then
							any_useCallback_result1_upvr_3(arg1_4)
							arg1_6()
						end
					end)()
				end
			end
		end
		for i_3 = 1, #arg1_4 do
			local getIsDisabled_4_upvr = arg1_4[i_3].getIsDisabled
			local onActivated_4_upvr = arg1_4[i_3].onActivated
			arg1_4[i_3].onActivated = function() -- Line 177
				--[[ Upvalues[4]:
					[1]: getIsDisabled_4_upvr (readonly)
					[2]: any_useCallback_result1_upvr_3 (copied, readonly)
					[3]: arg1_4 (readonly)
					[4]: onActivated_4_upvr (readonly)
				]]
				if not getIsDisabled_4_upvr() then
					any_useCallback_result1_upvr_3(arg1_4)
					onActivated_4_upvr()
				end
			end
			getIsDisabled_4_upvr = arg1_4[i_3]
			onActivated_4_upvr = getIsDisabled_4_upvr.hotkeyFunc
			getIsDisabled_4_upvr = arg1_4[i_3].getIsDisabled
			arg1_4[i_3].hotkeyFunc = function(arg1_8, arg2, arg3) -- Line 186
				--[[ Upvalues[4]:
					[1]: onActivated_4_upvr (readonly)
					[2]: getIsDisabled_4_upvr (readonly)
					[3]: any_useCallback_result1_upvr_3 (copied, readonly)
					[4]: arg1_4 (readonly)
				]]
				if arg2 == Enum.UserInputState.Begin then
					(function() -- Line 177
						--[[ Upvalues[4]:
							[1]: getIsDisabled_4_upvr (readonly)
							[2]: any_useCallback_result1_upvr_3 (copied, readonly)
							[3]: arg1_4 (copied, readonly)
							[4]: onActivated_4_upvr (readonly)
						]]
						if not getIsDisabled_4_upvr() then
							any_useCallback_result1_upvr_3(arg1_4)
							onActivated_4_upvr()
						end
					end)()
				end
			end
			onActivated_4_upvr = arg1_4[i_3]
			getIsDisabled_4_upvr = arg1_4[i_3].hint.gamepadButton
			onActivated_4_upvr.hint.setGamepadButtonImage(UserInputService_upvr:GetImageForKeyCode(getIsDisabled_4_upvr))
		end
		arg1.setAddMenuKeyBindings(function() -- Line 201
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			any_useCallback_result1_upvr(arg1_4)
		end)
		arg1.setRemoveMenuKeyBindings(function() -- Line 204
			--[[ Upvalues[2]:
				[1]: any_useCallback_result1_upvr_3 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			any_useCallback_result1_upvr_3(arg1_4)
		end)
		return arg1_4
	end, {})
	React_upvr.useEffect(function() -- Line 211
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(any_useCallback_result1_upvr_2(any_useMemo_result1_upvr))
	end, {any_useMemo_result1_upvr})
	React_upvr.useEffect(function() -- Line 216
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: any_useState_result1_2_upvr (readonly)
		]]
		UserInputService_upvr.GamepadConnected:Connect(function() -- Line 217
			--[[ Upvalues[2]:
				[1]: any_useState_result1_2_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
			]]
			for i_4 = 1, #any_useState_result1_2_upvr do
				any_useState_result1_2_upvr[i_4].hint.setGamepadButtonImage(UserInputService_upvr:GetImageForKeyCode(any_useState_result1_2_upvr[i_4].hint.gamepadButton))
			end
		end)
	end, {any_useState_result1_2_upvr})
	return React_upvr.createElement(View_upvr, {
		tag = {
			["size-full row align-y-center"] = true;
			["gap-small"] = not any_useState_result1;
			["gap-xsmall"] = any_useState_result1;
		};
	}, createMenuButtons_upvr(any_useState_result1_2_upvr, useLastInput_upvr(), any_useState_result1))
end
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local LocalizationProvider_upvr = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
local FoundationProvider_upvr = Foundation_upvr.FoundationProvider
return function(arg1) -- Line 235, Named "Container"
	--[[ Upvalues[7]:
		[1]: Localization_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LocalizationProvider_upvr (readonly)
		[5]: FoundationProvider_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: MenuButtons_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		FoundationProvider = React_upvr.createElement(FoundationProvider_upvr, {
			theme = Foundation_upvr.Enums.Theme.Dark;
		}, {
			MenuButtons = React_upvr.createElement(MenuButtons_upvr, arg1);
		});
	})
end