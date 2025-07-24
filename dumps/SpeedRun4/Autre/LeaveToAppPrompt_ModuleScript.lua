-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:47
-- Luau version 6, Types version 3
-- Time taken: 0.003216 seconds

local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LeaveToAppPrompt")
any_extend_result1.validateProps = t.strictInterface({
	closeMenu = t.callback;
	canGamepadCaptureFocus = t.optional(t.boolean);
	canKeyboardCaptureFocus = t.optional(t.boolean);
	onConfirm = t.optional(t.callback);
	linkingProtocol = t.table;
})
any_extend_result1.defaultProps = {
	linkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol.default;
}
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.init(arg1) -- Line 35
	--[[ Upvalues[3]:
		[1]: SendAnalytics_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	function arg1.goToHomePage() -- Line 36
		--[[ Upvalues[4]:
			[1]: SendAnalytics_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: RunService_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		SendAnalytics_upvr(Constants_upvr.AnalyticsLeaveToHomeName, Constants_upvr.AnalyticsLeaveToHomeName, {
			confirmed = Constants_upvr.AnalyticsLeaveToHomeName;
		})
		RunService_upvr.Heartbeat:Wait()
		arg1.props.linkingProtocol:detectURL("roblox://navigation/home")
		game:Shutdown()
	end
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local LeavePrompt_upvr = require(script.Parent.LeavePrompt)
function any_extend_result1.render(arg1) -- Line 57
	--[[ Upvalues[3]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LeavePrompt_upvr (readonly)
	]]
	return withLocalization_upvr({
		titleText = "CoreScripts.InGameMenu.Prompt.LeaveGameTitle";
		bodyText = "CoreScripts.InGameMenu.Prompt.LeaveGameBodyText";
		confirmText = "CoreScripts.InGameMenu.Prompt.BackToHome";
		cancelText = "CoreScripts.InGameMenu.Prompt.ResumeGame";
	})(function(arg1_2) -- Line 63
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LeavePrompt_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module_3 = {
			titleText = arg1_2.titleText;
			bodyText = arg1_2.bodyText;
			confirmText = arg1_2.confirmText;
			cancelText = arg1_2.cancelText;
		}
		local onConfirm = arg1.props.onConfirm
		if not onConfirm then
			onConfirm = arg1.goToHomePage
		end
		module_3.onConfirm = onConfirm
		module_3.onCancel = arg1.props.closeMenu
		module_3.canGamepadCaptureFocus = arg1.props.canGamepadCaptureFocus
		module_3.canKeyboardCaptureFocus = arg1.props.canKeyboardCaptureFocus
		return Roact_upvr.createElement(LeavePrompt_upvr, module_3)
	end)
end
local CloseMenu_upvr = require(Parent.Thunks.CloseMenu)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 77
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var27 = false
	local var28
	if var28 == Constants_upvr.LeaveToAppPromptPageKey then
		var27 = false
		var28 = arg1.displayOptions.inputType
		if var28 == Constants_upvr.InputType.Gamepad then
			var28 = arg1.respawn.dialogOpen
			var27 = not var28
			if var27 then
				var28 = arg1.currentZone
				if var28 ~= 1 then
					var27 = false
				else
					var27 = true
				end
			end
		end
	end
	var28 = false
	if arg1.menuPage == Constants_upvr.LeaveToAppPromptPageKey then
		var28 = false
		if arg1.displayOptions.inputType == Constants_upvr.InputType.MouseAndKeyboard then
			var28 = not arg1.respawn.dialogOpen
		end
	end
	return {
		canGamepadCaptureFocus = var27;
		canKeyboardCaptureFocus = var28;
	}
end, function(arg1) -- Line 91
	--[[ Upvalues[1]:
		[1]: CloseMenu_upvr (readonly)
	]]
	return {
		closeMenu = function() -- Line 93, Named "closeMenu"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseMenu_upvr (copied, readonly)
			]]
			arg1(CloseMenu_upvr)
		end;
	}
end)(any_extend_result1)