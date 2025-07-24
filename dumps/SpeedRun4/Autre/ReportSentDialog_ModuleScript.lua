-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:56
-- Luau version 6, Types version 3
-- Time taken: 0.002373 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportSentDialog")
any_extend_result1.validateProps = t.strictInterface({
	isReportSentOpen = t.boolean;
	onDismiss = t.callback;
	inputType = t.optional(t.string);
})
function any_extend_result1.init(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.buttonRef = Roact_upvr.createRef()
end
local FocusHandler_upvr = require(script.Parent.Parent.Connection.FocusHandler)
local Constants_upvr = require(Parent.Resources.Constants)
local GuiService_upvr = game:GetService("GuiService")
local ContextActionService_upvr = game:GetService("ContextActionService")
function any_extend_result1.renderFocusHandler(arg1) -- Line 38
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: FocusHandler_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: ContextActionService_upvr (readonly)
	]]
	local module = {}
	local var12 = false
	if arg1.props.inputType == Constants_upvr.InputType.Gamepad then
		var12 = arg1.props.isReportSentOpen
	end
	module.isFocused = var12
	function module.didFocus() -- Line 41
		--[[ Upvalues[3]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ContextActionService_upvr (copied, readonly)
		]]
		GuiService_upvr:RemoveSelectionGroup("ReportSentDialogGroup")
		GuiService_upvr:AddSelectionParent("ReportSentDialogGroup", arg1.buttonRef:getValue())
		GuiService_upvr.SelectedCoreObject = arg1.buttonRef:getValue()
		ContextActionService_upvr:BindCoreAction("ReporSentDialogSinkAction", function(arg1_2, arg2) -- Line 47
			return Enum.ContextActionResult.Sink
		end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonY, Enum.KeyCode.ButtonX)
	end
	function module.didBlur() -- Line 51
		--[[ Upvalues[2]:
			[1]: ContextActionService_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		ContextActionService_upvr:UnbindCoreAction("ReporSentDialogSinkAction")
		GuiService_upvr:RemoveSelectionGroup("ReportSentDialogGroup")
	end
	return Roact_upvr.createElement(FocusHandler_upvr, module)
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local InfoDialog_upvr = require(Parent.Components.InfoDialog)
local Assets_upvr = require(Parent.Resources.Assets)
function any_extend_result1.render(arg1) -- Line 58
	--[[ Upvalues[4]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InfoDialog_upvr (readonly)
		[4]: Assets_upvr (readonly)
	]]
	return withLocalization_upvr({
		titleText = "CoreScripts.InGameMenu.Report.ThanksForReport";
		bodyText = "CoreScripts.InGameMenu.Report.WillReviewBody";
		dismissText = "CoreScripts.InGameMenu.Ok";
	})(function(arg1_3) -- Line 63
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: InfoDialog_upvr (copied, readonly)
			[3]: Assets_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createFragment({
			Dialog = Roact_upvr.createElement(InfoDialog_upvr, {
				titleText = arg1_3.titleText;
				bodyText = arg1_3.bodyText;
				dismissText = arg1_3.dismissText;
				iconImage = Assets_upvr.Images.SuccessTick;
				buttonRef = arg1.buttonRef;
				onDismiss = arg1.props.onDismiss;
				visible = arg1.props.isReportSentOpen;
			});
			FocusHandler = arg1:renderFocusHandler();
		})
	end)
end
local CloseReportSentDialog_upvr = require(Parent.Actions.CloseReportSentDialog)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 79
	return {
		isReportSentOpen = arg1.report.reportSentOpen;
		inputType = arg1.displayOptions.inputType;
	}
end, function(arg1) -- Line 84
	--[[ Upvalues[1]:
		[1]: CloseReportSentDialog_upvr (readonly)
	]]
	return {
		onDismiss = function() -- Line 86, Named "onDismiss"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseReportSentDialog_upvr (copied, readonly)
			]]
			arg1(CloseReportSentDialog_upvr())
		end;
	}
end)(any_extend_result1)