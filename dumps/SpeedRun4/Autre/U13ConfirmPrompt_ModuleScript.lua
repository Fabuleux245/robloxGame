-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:36
-- Luau version 6, Types version 3
-- Time taken: 0.002011 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
}
local U13ConfirmType_upvr = require(Parent_3.U13ConfirmType)
function any_extend_result1.getMessage(arg1, arg2, arg3) -- Line 36
	--[[ Upvalues[1]:
		[1]: U13ConfirmType_upvr (readonly)
	]]
	if arg3 == U13ConfirmType_upvr.U13PaymentModal then
		return arg2.u13PaymentModal
	end
	if arg3 == U13ConfirmType_upvr.U13MonthlyThreshold1Modal then
		return arg2.u13MonthlyThreshold1Modal
	end
	if arg3 == U13ConfirmType_upvr.U13MonthlyThreshold2Modal then
		return arg2.u13MonthlyThreshold2Modal
	end
	if arg3 == U13ConfirmType_upvr.ParentalConsentWarningPaymentModal13To17 then
		return arg2.parentalConsentWarningPaymentModal13To17
	end
end
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 48
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			title = {
				key = "IAPExperience.U13Confirm.Title.Warning";
			};
			u13PaymentModal = {
				key = "IAPExperience.U13Confirm.Text.U13PaymentModal";
			};
			u13MonthlyThreshold1Modal = {
				key = "IAPExperience.U13Confirm.Text.U13MonthlyThreshold1Modal";
			};
			u13MonthlyThreshold2Modal = {
				key = "IAPExperience.U13Confirm.Text.U13MonthlyThreshold2Modal";
			};
			parentalConsentWarningPaymentModal13To17 = {
				key = "IAPExperience.U13Confirm.Text.ParentalConsentWarningPaymentModal13To17";
			};
			confirm = {
				key = "IAPExperience.U13Confirm.Action.Confirm";
			};
			cancel = {
				key = "IAPExperience.U13Confirm.Action.Cancel";
			};
		};
	}
	function module.render(arg1_2) -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_2)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.renderAlert(arg1, arg2) -- Line 79
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	local props = arg1.props
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		anchorPoint = props.anchorPoint;
		position = props.position;
		screenSize = props.screenSize;
		title = arg2.title;
		bodyText = arg1:getMessage(arg2, props.modalType);
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = props.cancelActivated;
					text = arg2.cancel;
					inputIcon = props.cancelControllerIcon;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props.doneActivated;
					text = arg2.confirm;
					inputIcon = props.doneControllerIcon;
				};
			}};
		};
	})
end
return any_extend_result1