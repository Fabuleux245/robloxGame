-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:31
-- Luau version 6, Types version 3
-- Time taken: 0.002866 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local RoactFitComponents_upvr = require(Parent.RoactFitComponents)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
}
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 45
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			title = {
				key = "IAPExperience.InsufficientRobux.Title.InsufficientRobux";
			};
			dontHaveEnough = {
				key = "IAPExperience.InsufficientRobux.Text.DontHaveEnough";
			};
			currentBalance = {
				key = "IAPExperience.InsufficientRobux.Text.CurrentBalance";
			};
			cancel = {
				key = "IAPExperience.InsufficientRobux.Action.Cancel";
			};
			buyRobux = {
				key = "IAPExperience.InsufficientRobux.Action.BuyRobux";
			};
		};
	}
	function module.render(arg1_2) -- Line 64
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_2)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local withStyle_upvr = UIBlox.Core.Style.withStyle
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local FitFrameVertical_upvr = RoactFitComponents_upvr.FitFrameVertical
local FitTextLabel_upvr = RoactFitComponents_upvr.FitTextLabel
local FitFrameHorizontal_upvr = RoactFitComponents_upvr.FitFrameHorizontal
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_common_robux_upvr = UIBlox.App.ImageSet.Images["icons/common/robux"]
function any_extend_result1.renderAlert(arg1, arg2) -- Line 70
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: FitFrameVertical_upvr (readonly)
		[6]: RoactFitComponents_upvr (readonly)
		[7]: FitTextLabel_upvr (readonly)
		[8]: FitFrameHorizontal_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: icons_common_robux_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 71
		--[[ Upvalues[11]:
			[1]: Roact_upvr (copied, readonly)
			[2]: InteractiveAlert_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: ButtonType_upvr (copied, readonly)
			[6]: FitFrameVertical_upvr (copied, readonly)
			[7]: RoactFitComponents_upvr (copied, readonly)
			[8]: FitTextLabel_upvr (copied, readonly)
			[9]: FitFrameHorizontal_upvr (copied, readonly)
			[10]: ImageSetLabel_upvr (copied, readonly)
			[11]: icons_common_robux_upvr (copied, readonly)
		]]
		local Font_upvr = arg1_3.Font
		local module_2 = {
			screenSize = arg1.props.screenSize;
			title = arg2.title;
			bodyText = arg2.dontHaveEnough;
			buttonStackInfo = {
				buttons = {{
					props = {
						onActivated = arg1.props.closePrompt;
						text = arg2.cancel;
					};
					isDefaultChild = true;
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = arg1.props.buyRobux;
						text = arg2.buyRobux;
					};
				}};
			};
		}
		local Theme_upvr = arg1_3.Theme
		local var34_upvr = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize
		function module_2.middleContent() -- Line 99
			--[[ Upvalues[12]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FitFrameVertical_upvr (copied, readonly)
				[3]: RoactFitComponents_upvr (copied, readonly)
				[4]: FitTextLabel_upvr (copied, readonly)
				[5]: Font_upvr (readonly)
				[6]: arg2 (copied, readonly)
				[7]: Theme_upvr (readonly)
				[8]: var34_upvr (readonly)
				[9]: FitFrameHorizontal_upvr (copied, readonly)
				[10]: ImageSetLabel_upvr (copied, readonly)
				[11]: icons_common_robux_upvr (copied, readonly)
				[12]: arg1 (copied, readonly)
			]]
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				margin = RoactFitComponents_upvr.Rect.quad(10, 0, 10, 0);
				contentPadding = UDim.new(0, 30);
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			}, {
				CurrentBalanceLabel = Roact_upvr.createElement(FitTextLabel_upvr, {
					width = FitTextLabel_upvr.Width.FitToText;
					BackgroundTransparency = 1;
					Font = Font_upvr.Body.Font;
					Text = arg2.currentBalance;
					TextColor3 = Theme_upvr.TextDefault.Color;
					TextTransparency = Theme_upvr.TextDefault.Transparency;
					TextSize = var34_upvr;
					LayoutOrder = 0;
				});
				RobuxAmount = Roact_upvr.createElement(FitFrameHorizontal_upvr, {
					height = UDim.new(1, 0);
					contentPadding = UDim.new(0, 10);
					FillDirection = Enum.FillDirection.Horizontal;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					BackgroundTransparency = 1;
					LayoutOrder = 1;
				}, {
					Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
						LayoutOrder = 1;
						BackgroundTransparency = 1;
						Size = UDim2.fromOffset(var34_upvr, var34_upvr);
						Image = icons_common_robux_upvr;
						ImageColor3 = Theme_upvr.TextDefault.Color;
						ImageTransparency = Theme_upvr.TextDefault.Transparency;
					});
					Text = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 2;
						width = FitTextLabel_upvr.Width.FitToText;
						Text = arg1.props.robuxBalance;
						Font = Font_upvr.Body.Font;
						TextColor3 = Theme_upvr.TextDefault.Color;
						TextTransparency = Theme_upvr.TextDefault.Transparency;
						TextSize = var34_upvr;
						BackgroundTransparency = 1;
					});
				});
			})
		end
		return Roact_upvr.createElement(InteractiveAlert_upvr, module_2)
	end)
end
return any_extend_result1