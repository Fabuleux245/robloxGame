-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:36
-- Luau version 6, Types version 3
-- Time taken: 0.002417 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
}
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			title = {
				key = "Authentication.TwoStepVerification.Title.VerificationRequired";
			};
			message = {
				key = "Authentication.TwoStepVerification.Label.TwoStepRequired";
			};
			cancel = {
				key = "Authentication.TwoStepVerification.Action.Cancel";
			};
			backToGame = {
				key = "IAPExperience.PurchaseSuccess.Action.BackToGame";
			};
			gotoSecurity = {
				key = "Authentication.TwoStepVerification.Action.GoToSecurity";
			};
		};
	}
	function module.render(arg1_2) -- Line 54
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_2)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.renderAlert(arg1, arg2) -- Line 60
	--[[ Upvalues[4]:
		[1]: ButtonType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local props = arg1.props
	local var19
	if props.openSecuritySettings then
		var19 = {
			buttons = {{
				props = {
					onActivated = props.closePrompt;
					text = arg2.cancel;
					inputIcon = props.cancelControllerIcon;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props.openSecuritySettings;
					text = arg2.gotoSecurity;
					inputIcon = props.doneControllerIcon;
				};
			}};
		}
	else
		var19 = {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props.closePrompt;
					text = arg2.backToGame;
					inputIcon = props.doneControllerIcon;
				};
			}};
		}
	end
	return Roact_upvr.createElement(InteractiveAlert_upvr, {
		anchorPoint = props.anchorPoint;
		position = props.position;
		screenSize = props.screenSize;
		title = arg2.title;
		titleIcon = Images_upvr["icons/status/error_large"];
		bodyText = arg2.message;
		buttonStackInfo = var19;
	})
end
return any_extend_result1