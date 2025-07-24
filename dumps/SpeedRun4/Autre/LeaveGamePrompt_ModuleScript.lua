-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:46
-- Luau version 6, Types version 3
-- Time taken: 0.003675 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LeaveGamePrompt")
any_extend_result1.validateProps = t.strictInterface({
	closeMenu = t.callback;
	canGamepadCaptureFocus = t.optional(t.boolean);
	canKeyboardCaptureFocus = t.optional(t.boolean);
	onConfirm = t.optional(t.callback);
})
local RunService_upvr = game:GetService("RunService")
local GetDefaultQualityLevel_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).GetDefaultQualityLevel
function any_extend_result1.init(arg1) -- Line 35
	--[[ Upvalues[4]:
		[1]: SendAnalytics_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: GetDefaultQualityLevel_upvr (readonly)
	]]
	function arg1.leaveGameConfirm() -- Line 36
		--[[ Upvalues[4]:
			[1]: SendAnalytics_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
			[4]: GetDefaultQualityLevel_upvr (copied, readonly)
		]]
		SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsLeaveGameName, {
			confirmed = Constants_upvr.AnalyticsConfirmedName;
		})
		RunService_upvr.Heartbeat:Wait()
		game:Shutdown()
		settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
	end
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local GetFFlagEnableVRFTUXExperience_upvr = require(RobloxGui.Modules.FTUX.Flags.GetFFlagEnableVRFTUXExperience)
local IsFTUXExperience_upvr = require(RobloxGui.Modules.FTUX.Utility.IsFTUXExperience)
local PlatformEnum_upvr = require(RobloxGui.Modules.FTUX.Enums.PlatformEnum)
local LeavePrompt_upvr = require(script.Parent.LeavePrompt)
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[6]:
		[1]: withLocalization_upvr (readonly)
		[2]: GetFFlagEnableVRFTUXExperience_upvr (readonly)
		[3]: IsFTUXExperience_upvr (readonly)
		[4]: PlatformEnum_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: LeavePrompt_upvr (readonly)
	]]
	local module_2 = {
		titleText = "CoreScripts.InGameMenu.Prompt.LeaveGameTitle";
	}
	local var21
	if GetFFlagEnableVRFTUXExperience_upvr() and IsFTUXExperience_upvr(PlatformEnum_upvr.QuestVR) then
		var21 = "CoreScripts.InGameMenu.Prompt.VRFTUXLeaveGameBodyText"
	else
		var21 = "CoreScripts.InGameMenu.Prompt.LeaveGameBodyText"
	end
	module_2.bodyText = var21
	var21 = "CoreScripts.InGameMenu.Prompt.LeaveGame"
	module_2.confirmText = var21
	var21 = "CoreScripts.InGameMenu.Prompt.ResumeGame"
	module_2.cancelText = var21
	return withLocalization_upvr(module_2)(function(arg1_2) -- Line 56
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LeavePrompt_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module = {
			titleText = arg1_2.titleText;
			bodyText = arg1_2.bodyText;
			confirmText = arg1_2.confirmText;
			cancelText = arg1_2.cancelText;
		}
		local onConfirm = arg1.props.onConfirm
		if not onConfirm then
			onConfirm = arg1.leaveGameConfirm
		end
		module.onConfirm = onConfirm
		module.onCancel = arg1.props.closeMenu
		module.canGamepadCaptureFocus = arg1.props.canGamepadCaptureFocus
		module.canKeyboardCaptureFocus = arg1.props.canKeyboardCaptureFocus
		return Roact_upvr.createElement(LeavePrompt_upvr, module)
	end)
end
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 70
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var32 = false
	local var33
	if var33 == Constants_upvr.LeaveGamePromptPageKey then
		var32 = false
		var33 = arg1.displayOptions.inputType
		if var33 == Constants_upvr.InputType.Gamepad then
			var33 = arg1.respawn.dialogOpen
			var32 = not var33
			if var32 then
				var33 = arg1.currentZone
				if var33 ~= 1 then
					var32 = false
				else
					var32 = true
				end
			end
		end
	end
	var33 = false
	if arg1.menuPage == Constants_upvr.LeaveGamePromptPageKey then
		var33 = false
		if arg1.displayOptions.inputType == Constants_upvr.InputType.MouseAndKeyboard then
			var33 = not arg1.respawn.dialogOpen
		end
	end
	return {
		canGamepadCaptureFocus = var32;
		canKeyboardCaptureFocus = var33;
	}
end, function(arg1) -- Line 84
	--[[ Upvalues[3]:
		[1]: CloseMenu_upvr (readonly)
		[2]: SendAnalytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return {
		closeMenu = function() -- Line 86, Named "closeMenu"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
			SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsLeaveGameName, {
				confirmed = Constants_upvr.AnalyticsCancelledName;
			})
		end;
	}
end)(any_extend_result1)