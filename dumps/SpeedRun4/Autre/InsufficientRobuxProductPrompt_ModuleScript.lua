-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:00
-- Luau version 6, Types version 3
-- Time taken: 0.004884 seconds

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
function any_extend_result1.init(arg1) -- Line 44
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
		footerSize = Vector2.new(0, 0);
	}
	function arg1.changeContentSize(arg1_2) -- Line 51
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.contentSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				contentSize = arg1_2.AbsoluteSize;
			})
		end
	end
end
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 60
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			InsufficientRobuxTitle = {
				key = "IAPExperience.InsufficientRobux.Title.InsufficientRobux";
			};
			YouNeed = {
				key = "IAPExperience.InsufficientRobux.Text.YouNeed";
			};
			RobuxStore = {
				key = "IAPExperience.InsufficientRobux.Action.RobuxStore";
			};
			ButtonCancel = {
				key = "IAPExperience.InsufficientRobux.Action.Cancel";
			};
		};
	}
	function module.render(arg1_3) -- Line 76
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_3)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local withStyle_upvr = UIBlox.Core.Style.withStyle
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local FitFrameVertical_upvr = require(Parent.RoactFitComponents).FitFrameVertical
local ProductDetails_upvr = require(Parent_3.ProductDetails)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.renderAlert(arg1, arg2) -- Line 82
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: FitFrameVertical_upvr (readonly)
		[5]: ProductDetails_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_4) -- Line 85
		--[[ Upvalues[8]:
			[1]: props_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: InteractiveAlert_upvr (copied, readonly)
			[5]: FitFrameVertical_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: ProductDetails_upvr (copied, readonly)
			[8]: ButtonType_upvr (copied, readonly)
		]]
		local Theme_upvr = arg1_4.Theme
		local module_2 = {
			screenSize = props_upvr.screenSize;
			position = props_upvr.position;
			anchorPoint = props_upvr.anchorPoint;
			title = arg2.InsufficientRobuxTitle;
		}
		local Font_upvr = arg1_4.Font
		local any_gsub_result1_upvr = arg2.YouNeed:gsub("{robux}", string.format("<font color=\"rgb(%s)\">%s%s</font>", tostring(Color3.new(math.round(Theme_upvr.TextEmphasis.Color.R * 255), math.round(Theme_upvr.TextEmphasis.Color.G * 255), math.round(Theme_upvr.TextEmphasis.Color.B * 255))), utf8.char(57346), tostring(props_upvr.itemRobuxCost - props_upvr.balanceAmount)))
		function module_2.middleContent() -- Line 109
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FitFrameVertical_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: ProductDetails_upvr (copied, readonly)
				[5]: props_upvr (copied, readonly)
				[6]: Theme_upvr (readonly)
				[7]: Font_upvr (readonly)
				[8]: any_gsub_result1_upvr (readonly)
			]]
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 15);
				[Roact_upvr.Ref] = arg1.contentRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.changeContentSize;
			}, {
				ProductDetails = Roact_upvr.createElement(ProductDetails_upvr, {
					layoutOrder = 1;
					model = props_upvr.model;
					itemIcon = props_upvr.itemIcon;
					itemName = props_upvr.itemName;
					itemRobuxCost = props_upvr.itemRobuxCost;
				});
				Underline = Roact_upvr.createElement("Frame", {
					LayoutOrder = 2;
					BorderSizePixel = 0;
					BackgroundColor3 = Theme_upvr.Divider.Color;
					BackgroundTransparency = Theme_upvr.Divider.Transparency;
					Size = UDim2.new(1, 0, 0, 1);
				});
				AdditionalBuyText = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(0, arg1.state.contentSize.X, 0, 0);
					RichText = true;
					AutomaticSize = Enum.AutomaticSize.Y;
					TextWrapped = true;
					Font = Font_upvr.Body.Font;
					Text = any_gsub_result1_upvr;
					TextSize = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize;
					TextColor3 = Theme_upvr.TextDefault.Color;
					TextTransparency = Theme_upvr.TextDefault.Transparency;
				});
			})
		end
		module_2.buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = props_upvr.cancelPurchaseActivated;
					text = arg2.ButtonCancel;
					inputIcon = props_upvr.cancelControllerIcon;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props_upvr.robuxStoreActivated;
					text = arg2.RobuxStore;
					inputIcon = props_upvr.acceptControllerIcon;
				};
			}};
		}
		return Roact_upvr.createElement(InteractiveAlert_upvr, module_2)
	end)
end
return any_extend_result1