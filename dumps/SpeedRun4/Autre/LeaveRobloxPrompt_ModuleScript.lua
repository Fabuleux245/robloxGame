-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:31
-- Luau version 6, Types version 3
-- Time taken: 0.001752 seconds

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
local function render(arg1) -- Line 27
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			TitleText = {
				key = "IAPExperience.LeaveRoblox.Title.LeavingRoblox";
			};
			BodyText = {
				key = "IAPExperience.LeaveRoblox.Text.ExternalWebsiteWarning";
			};
			ButtonCancel = {
				key = "IAPExperience.LeaveRoblox.Action.Cancel";
			};
			ButtonContinue = {
				key = "IAPExperience.LeaveRoblox.Action.Continue";
			};
		};
	}
	function module.render(arg1_2) -- Line 43
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
function any_extend_result1.renderAlert(arg1, arg2) -- Line 49
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 1;
		Active = true;
		Selectable = false;
	}, {
		AlertWindow = Roact_upvr.createElement(InteractiveAlert_upvr, {
			title = arg2.TitleText;
			bodyText = arg2.BodyText;
			buttonStackInfo = {
				buttons = {{
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = arg1.props.cancelActivated;
						text = arg2.ButtonCancel;
					};
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = arg1.props.continueActivated;
						text = arg2.ButtonContinue;
					};
				}};
			};
			screenSize = arg1.props.screenSize;
		});
	})
end
return any_extend_result1