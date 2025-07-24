-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:04
-- Luau version 6, Types version 3
-- Time taken: 0.006824 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local RoactFitComponents = require(Parent.RoactFitComponents)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
}
function any_extend_result1.init(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
	}
	function arg1.changeContentSize(arg1_2) -- Line 54
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
local function render(arg1) -- Line 63
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local module = {
		keys = {
			PurchaseSucceededTitle = {
				key = "IAPExperience.PurchaseSuccess.Title.PurchaseSucceeded";
			};
			YouOwnText = {
				key = "IAPExperience.PurchaseSuccess.Text.YouOwn";
				params = {
					name = arg1.props.itemName;
				};
			};
			BalanceNow = {
				key = "IAPExperience.PurchaseSuccess.Text.BalanceNow";
			};
			BackToGameButtonText = {
				key = "IAPExperience.PurchaseSuccess.Action.BackToGame";
			};
			EquipText = {
				key = "IAPExperience.PurchaseSuccess.Action.Equip";
			};
			BackToShopText = {
				key = "IAPExperience.PurchaseSuccess.Action.BackToShop";
			};
		};
	}
	function module.render(arg1_3) -- Line 88
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_3)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconSize_upvr = UIBlox.App.Constant.IconSize
local icons_status_imageunavailable_upvr = UIBlox.App.ImageSet.Images["icons/status/imageunavailable"]
local HumanoidViewport_upvr = require(Parent_2.Generic.HumanoidViewport)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local FitFrameVertical_upvr = RoactFitComponents.FitFrameVertical
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
function any_extend_result1.renderAlert(arg1, arg2) -- Line 94
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: IconSize_upvr (readonly)
		[6]: icons_status_imageunavailable_upvr (readonly)
		[7]: HumanoidViewport_upvr (readonly)
		[8]: InteractiveAlert_upvr (readonly)
		[9]: FitFrameVertical_upvr (readonly)
		[10]: FitTextLabel_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_4) -- Line 97
		--[[ Upvalues[12]:
			[1]: arg2 (readonly)
			[2]: props_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: ButtonType_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: IconSize_upvr (copied, readonly)
			[8]: icons_status_imageunavailable_upvr (copied, readonly)
			[9]: HumanoidViewport_upvr (copied, readonly)
			[10]: InteractiveAlert_upvr (copied, readonly)
			[11]: FitFrameVertical_upvr (copied, readonly)
			[12]: FitTextLabel_upvr (copied, readonly)
		]]
		local Theme_upvr = arg1_4.Theme
		local var33
		local var34_upvw
		if var34_upvw then
			var34_upvw = {}
			var34_upvw.buttons = {{
				props = {
					onActivated = props_upvr.doneActivated;
					text = arg2.BackToShopText;
					inputIcon = props_upvr.cancelControllerIcon;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props_upvr.equipActivated;
					text = arg2.EquipText;
					inputIcon = props_upvr.confirmControllerIcon;
				};
			}}
			var33 = var34_upvw
		else
			var34_upvw = {}
			var34_upvw.buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = props_upvr.doneActivated;
					text = arg2.BackToGameButtonText;
					inputIcon = props_upvr.confirmControllerIcon;
				};
			}}
			var33 = var34_upvw
		end
		if props_upvr.itemIcon then
			var34_upvw = Roact_upvr.createElement
			var34_upvw = var34_upvw(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 5, 0, 5);
				Size = UDim2.new(0, 85, 0, 85);
				ScaleType = Enum.ScaleType.Stretch;
				Image = props_upvr.itemIcon;
				ImageTransparency = 0;
			})
		else
			var34_upvw = Roact_upvr.createElement
			var34_upvw = var34_upvw(ImageSetLabel_upvr, {
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 5, 0, 5);
				Size = UDim2.new(0, IconSize_upvr.Large, 0, IconSize_upvr.Large);
				ScaleType = Enum.ScaleType.Stretch;
				Image = icons_status_imageunavailable_upvr;
				ImageColor3 = Theme_upvr.UIDefault.Color;
				ImageTransparency = Theme_upvr.UIDefault.Transparency;
			})
		end
		if props_upvr.model then
			var34_upvw = Roact_upvr.createElement(HumanoidViewport_upvr, {
				model = props_upvr.model;
				Position = UDim2.fromOffset(5, 5);
				Size = UDim2.fromOffset(85, 85);
			})
		end
		local module_2 = {
			screenSize = props_upvr.screenSize;
			position = props_upvr.position;
			anchorPoint = props_upvr.anchorPoint;
			title = arg2.PurchaseSucceededTitle;
		}
		local Font_upvr = arg1_4.Font
		local var48_upvr = arg2.YouOwnText..' '..arg2.BalanceNow:gsub("{robux}", utf8.char(57346)..tostring(props_upvr.balance))
		function module_2.middleContent() -- Line 175
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FitFrameVertical_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: var34_upvw (read and write)
				[5]: FitTextLabel_upvr (copied, readonly)
				[6]: Font_upvr (readonly)
				[7]: var48_upvr (readonly)
				[8]: Theme_upvr (readonly)
			]]
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 24);
				[Roact_upvr.Ref] = arg1.contentRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.changeContentSize;
			}, {
				ItemIconFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 0;
					BackgroundTransparency = 1;
					width = UDim.new(1, 0);
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}, {
					ItemIcon = var34_upvw;
				});
				YouOwnText = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					TextWrapped = true;
					width = FitTextLabel_upvr.Width.FitToText;
					maximumWidth = arg1.state.contentSize.X;
					Font = Font_upvr.Body.Font;
					Text = var48_upvr;
					TextSize = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize;
					TextColor3 = Theme_upvr.TextDefault.Color;
				});
			})
		end
		module_2.buttonStackInfo = var33
		return Roact_upvr.createElement(InteractiveAlert_upvr, module_2)
	end)
end
return any_extend_result1