-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:59
-- Luau version 6, Types version 3
-- Time taken: 0.008012 seconds

local tbl_5_upvr = {
	EventContext = "educational_popup";
	ConfirmName = "educational_confirmed";
	CancelName = "educational_close_app";
	DismissName = "educational_dismiss_prompt";
}
local CoreGui_upvr = game:GetService("CoreGui")
local ContextActionService_upvr = game:GetService("ContextActionService")
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
local GuiService_upvr = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local SendAnalytics_upvr = require(RobloxGui_upvr.Modules.InGameMenu.Utility.SendAnalytics)
local UIBlox = require(CorePackages.Packages.InGameMenuDependencies).UIBlox
local RunService_upvr = game:GetService("RunService")
local GetDefaultQualityLevel_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel
local any_GetNotificationTypeList_result1_upvr = GuiService_upvr:GetNotificationTypeList()
local LinkingProtocol_upvr = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local var13_upvw
local UserLocalStore_upvr = require(RobloxGui_upvr.Modules.InGameMenu.Utility.UserLocalStore)
local GetFIntEducationalPopupDisplayMaxCount_upvr = require(RobloxGui_upvr.Modules.Flags.GetFIntEducationalPopupDisplayMaxCount)
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local EducationalModal_upvr = UIBlox.App.Dialog.Modal.EducationalModal
local Images_upvr = UIBlox.App.ImageSet.Images
local Players_upvr = game:GetService("Players")
local MessageBus_upvr = require(CorePackages.Workspace.Packages.MessageBus).MessageBus
local module_2_upvr = require(RobloxGui_upvr.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui_upvr.Modules.Common.renderWithCoreScriptsStyleProvider)
var13_upvw = (function() -- Line 71, Named "Initialize"
	--[[ Upvalues[21]:
		[1]: RobloxGui_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: GetDefaultQualityLevel_upvr (readonly)
		[7]: any_GetNotificationTypeList_result1_upvr (readonly)
		[8]: LinkingProtocol_upvr (readonly)
		[9]: var13_upvw (read and write)
		[10]: UserLocalStore_upvr (readonly)
		[11]: GetFIntEducationalPopupDisplayMaxCount_upvr (readonly)
		[12]: Localization_upvr (readonly)
		[13]: LocalizationService_upvr (readonly)
		[14]: Roact_upvr (readonly)
		[15]: EducationalModal_upvr (readonly)
		[16]: Images_upvr (readonly)
		[17]: CoreGui_upvr (readonly)
		[18]: Players_upvr (readonly)
		[19]: MessageBus_upvr (readonly)
		[20]: module_2_upvr (readonly)
		[21]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	local any_CreateNewPage_result1_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsPageFactory):CreateNewPage()
	function any_CreateNewPage_result1_upvr.LeaveAppFunc(arg1) -- Line 75
		--[[ Upvalues[6]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: SendAnalytics_upvr (copied, readonly)
			[3]: tbl_5_upvr (copied, readonly)
			[4]: RunService_upvr (copied, readonly)
			[5]: GetDefaultQualityLevel_upvr (copied, readonly)
			[6]: any_GetNotificationTypeList_result1_upvr (copied, readonly)
		]]
		GuiService_upvr.SelectedCoreObject = nil
		local tbl_3 = {}
		local var28
		if arg1 then
			var28 = "Native"
		else
			var28 = "Button"
		end
		tbl_3.source = var28
		SendAnalytics_upvr(tbl_5_upvr.EventContext, tbl_5_upvr.CancelName, tbl_3)
		RunService_upvr.RenderStepped:wait()
		RunService_upvr.RenderStepped:wait()
		settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
		var28 = any_GetNotificationTypeList_result1_upvr
		GuiService_upvr:BroadcastNotification("", var28.NATIVE_EXIT)
	end
	function any_CreateNewPage_result1_upvr.LeaveGameFunc(arg1) -- Line 92
		--[[ Upvalues[6]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: SendAnalytics_upvr (copied, readonly)
			[3]: tbl_5_upvr (copied, readonly)
			[4]: LinkingProtocol_upvr (copied, readonly)
			[5]: RunService_upvr (copied, readonly)
			[6]: GetDefaultQualityLevel_upvr (copied, readonly)
		]]
		GuiService_upvr.SelectedCoreObject = nil
		local tbl_4 = {}
		local var31
		if arg1 then
			var31 = "Gamepad"
		else
			var31 = "Button"
		end
		tbl_4.source = var31
		SendAnalytics_upvr(tbl_5_upvr.EventContext, tbl_5_upvr.ConfirmName, tbl_4)
		LinkingProtocol_upvr.default:detectURL("roblox://navigation/home")
		RunService_upvr.RenderStepped:wait()
		RunService_upvr.RenderStepped:wait()
		game:Shutdown()
		settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
	end
	function any_CreateNewPage_result1_upvr.LeaveGameFromHotkey(arg1, arg2, arg3) -- Line 111
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local var35 = true
			if arg3.UserInputType ~= Enum.UserInputType.Gamepad1 then
				var35 = true
				if arg3.UserInputType ~= Enum.UserInputType.Gamepad2 then
					var35 = true
					if arg3.UserInputType ~= Enum.UserInputType.Gamepad3 then
						if arg3.UserInputType ~= Enum.UserInputType.Gamepad4 then
							var35 = false
						else
							var35 = true
						end
					end
				end
			end
			any_CreateNewPage_result1_upvr.LeaveGameFunc(var35)
		end
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFunc(arg1) -- Line 121
		--[[ Upvalues[2]:
			[1]: var13_upvw (copied, read and write)
			[2]: any_CreateNewPage_result1_upvr (readonly)
		]]
		local var37
		if arg1 then
			var37 = "Gamepad"
		else
			var37 = "Button"
		end
		var13_upvw.dismissedFrom = var37
		var37 = any_CreateNewPage_result1_upvr
		if var37.HubRef then
			var37 = any_CreateNewPage_result1_upvr
			var37.HubRef:PopMenu(arg1, true)
		end
	end
	function any_CreateNewPage_result1_upvr.DontLeaveFromHotkey(arg1, arg2, arg3) -- Line 128
		--[[ Upvalues[1]:
			[1]: any_CreateNewPage_result1_upvr (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			local var39 = true
			if arg3.UserInputType ~= Enum.UserInputType.Gamepad1 then
				var39 = true
				if arg3.UserInputType ~= Enum.UserInputType.Gamepad2 then
					var39 = true
					if arg3.UserInputType ~= Enum.UserInputType.Gamepad3 then
						if arg3.UserInputType ~= Enum.UserInputType.Gamepad4 then
							var39 = false
						else
							var39 = true
						end
					end
				end
			end
			any_CreateNewPage_result1_upvr.DontLeaveFunc(var39)
		end
	end
	function any_CreateNewPage_result1_upvr.DontShowAgain() -- Line 139
		--[[ Upvalues[1]:
			[1]: UserLocalStore_upvr (copied, readonly)
		]]
		local any_new_result1 = UserLocalStore_upvr.new()
		any_new_result1:SetItem("NativeCloseLuaPromptDisplayCount", tostring(math.huge))
		any_new_result1:Flush()
	end
	function any_CreateNewPage_result1_upvr.ShouldShow() -- Line 146
		--[[ Upvalues[2]:
			[1]: UserLocalStore_upvr (copied, readonly)
			[2]: GetFIntEducationalPopupDisplayMaxCount_upvr (copied, readonly)
		]]
		local any_new_result1_2 = UserLocalStore_upvr.new()
		local tonumber_result1 = tonumber(any_new_result1_2:GetItem("NativeCloseLuaPromptDisplayCount"))
		if GetFIntEducationalPopupDisplayMaxCount_upvr() < tonumber_result1 then
			return false
		end
		any_new_result1_2:SetItem("NativeCloseLuaPromptDisplayCount", tostring(tonumber_result1 + 1))
		any_new_result1_2:Flush()
		return true
	end
	any_CreateNewPage_result1_upvr.TabHeader = nil
	any_CreateNewPage_result1_upvr.Page.Name = "ExitModalPage"
	any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
	any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
	any_CreateNewPage_result1_upvr.IsPageClipped = false
	any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, 1)
	local any_new_result1_upvr = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId)
	local function ExitModal_upvr() -- Line 173, Named "ExitModal"
		--[[ Upvalues[11]:
			[1]: any_new_result1_upvr (readonly)
			[2]: LocalizationService_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: EducationalModal_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: CoreGui_upvr (copied, readonly)
			[7]: any_CreateNewPage_result1_upvr (readonly)
			[8]: Players_upvr (copied, readonly)
			[9]: MessageBus_upvr (copied, readonly)
			[10]: module_2_upvr (copied, readonly)
			[11]: renderWithCoreScriptsStyleProvider_upvr (copied, readonly)
		]]
		any_new_result1_upvr:SetLocale(LocalizationService_upvr.RobloxLocaleId)
		local tbl_2 = {
			title = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.Title");
			subtitle = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.Subtitle");
			bodyTextOpenMenu = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.BodyTextOpenMenu");
			bodyTextClickHome = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.BodyTextClickHome");
			optionDontShow = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.OptionDontShow");
			actionExit = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.ActionExit");
			actionHome = any_new_result1_upvr:Format("CoreScripts.InGameMenu.ExitModal.ActionHome");
		}
		local module = {}
		local tbl = {
			bodyContents = {{
				text = tbl_2.bodyTextOpenMenu;
				isSystemMenuIcon = true;
			}, {
				icon = Images_upvr["icons/menu/home_off"];
				text = tbl_2.bodyTextClickHome;
			}};
			hasDoNotShow = true;
			cancelText = tbl_2.actionExit;
			confirmText = tbl_2.actionHome;
			doNotShowText = tbl_2.optionDontShow;
			titleBackgroundImageProps = {
				image = "rbxasset://textures/ui/LuaApp/graphic/Auth/GridBackground.jpg";
				imageHeight = 200;
				text = "<font face=\"GothamBlack\" size=\"42\">"..tbl_2.title.."</font><font size=\"4\"><br /></font><br />"..tbl_2.subtitle;
			};
			screenSize = CoreGui_upvr.RobloxGui.AbsoluteSize;
		}
		function tbl.onDismiss() -- Line 209
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (copied, readonly)
			]]
			any_CreateNewPage_result1_upvr.DontLeaveFunc(false)
		end
		function tbl.onCancel(arg1) -- Line 212
			--[[ Upvalues[1]:
				[1]: any_CreateNewPage_result1_upvr (copied, readonly)
			]]
			if arg1 then
				any_CreateNewPage_result1_upvr.DontShowAgain()
			end
			any_CreateNewPage_result1_upvr.LeaveAppFunc(false)
		end
		function tbl.onConfirm(arg1) -- Line 218
			--[[ Upvalues[4]:
				[1]: any_CreateNewPage_result1_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: MessageBus_upvr (copied, readonly)
				[4]: module_2_upvr (copied, readonly)
			]]
			if arg1 then
				any_CreateNewPage_result1_upvr.DontShowAgain()
			end
			any_CreateNewPage_result1_upvr.LeaveGameFunc(false)
			MessageBus_upvr.publish(module_2_upvr.OnSurveyEventDescriptor, {
				eventType = module_2_upvr.SurveyEventType;
				userId = tostring(Players_upvr.LocalPlayer.UserId);
				customProps = {
					chromeSeenCount = tostring(0);
				};
			})
		end
		module[1] = Roact_upvr.createElement(EducationalModal_upvr, tbl)
		return renderWithCoreScriptsStyleProvider_upvr(module)
	end
	local var56_upvw = false
	local any_mount_result1_upvw = Roact_upvr.mount(ExitModal_upvr(), any_CreateNewPage_result1_upvr.Page, "ExitModal")
	local function var55() -- Line 242
		--[[ Upvalues[4]:
			[1]: var56_upvw (read and write)
			[2]: any_mount_result1_upvw (read and write)
			[3]: Roact_upvr (copied, readonly)
			[4]: ExitModal_upvr (readonly)
		]]
		if not var56_upvw then
			var56_upvw = true
			task.delay(1, function() -- Line 245
				--[[ Upvalues[4]:
					[1]: var56_upvw (copied, read and write)
					[2]: any_mount_result1_upvw (copied, read and write)
					[3]: Roact_upvr (copied, readonly)
					[4]: ExitModal_upvr (copied, readonly)
				]]
				var56_upvw = false
				any_mount_result1_upvw = Roact_upvr.update(any_mount_result1_upvw, ExitModal_upvr())
			end)
		end
	end
	LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):Connect(var55)
	CoreGui_upvr.RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):Connect(var55)
	return any_CreateNewPage_result1_upvr
end)()
local var59_upvw = var13_upvw
local GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGateEducationalPopupVisibilityViaGUAC
local InExperienceCapabilities_upvr = require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
var59_upvw.Displayed.Event:connect(function() -- Line 260
	--[[ Upvalues[4]:
		[1]: var59_upvw (read and write)
		[2]: GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr (readonly)
		[3]: InExperienceCapabilities_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
	]]
	if not var59_upvw.ShouldShow() or GetFFlagGateEducationalPopupVisibilityViaGUAC_upvr() and not InExperienceCapabilities_upvr.canViewEducationalPopup then
		var59_upvw.LeaveAppFunc(true)
	end
	var59_upvw.dismissedFrom = "Menu"
	ContextActionService_upvr:BindCoreAction("LeaveGameAction", var59_upvw.LeaveGameFromHotkey, false, Enum.KeyCode.ButtonA)
	ContextActionService_upvr:BindCoreAction("DontLeaveAction", var59_upvw.DontLeaveFromHotkey, false, Enum.KeyCode.ButtonB)
end)
var59_upvw.Hidden.Event:connect(function() -- Line 283
	--[[ Upvalues[4]:
		[1]: var59_upvw (read and write)
		[2]: SendAnalytics_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
	]]
	if var59_upvw.dismissedFrom then
		SendAnalytics_upvr(tbl_5_upvr.EventContext, tbl_5_upvr.DismissName, {
			source = var59_upvw.dismissedFrom;
		})
		var59_upvw.dismissedFrom = nil
	end
	ContextActionService_upvr:UnbindCoreAction("LeaveGameAction")
	ContextActionService_upvr:UnbindCoreAction("DontLeaveAction")
end)
return var59_upvw