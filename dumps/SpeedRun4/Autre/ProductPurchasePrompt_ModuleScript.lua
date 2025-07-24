-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:59
-- Luau version 6, Types version 3
-- Time taken: 0.010633 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local RoactFitComponents = require(Parent_2.RoactFitComponents)
local UIBlox = require(Parent_2.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	screenSize = t.Vector2;
	isLoading = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	isDelayedInput = t.optional(t.boolean);
	enableInputDelayed = t.optional(t.boolean);
	itemIcon = t.table;
	model = t.optional(t.table);
	itemName = t.string;
	itemRobuxCost = t.number;
	currentBalance = t.number;
	isGamePass = t.optional(t.boolean);
	testPurchase = t.optional(t.boolean);
	buyItemControllerIcon = t.optional(t.table);
	cancelControllerIcon = t.optional(t.table);
	buyItemActivated = t.callback;
	cancelPurchaseActivated = t.callback;
	isLuobu = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
	isLoading = false;
	isDisabled = false;
	testPurchase = false;
	isDelayedInput = false;
	enableInputDelayed = false;
	isLuobu = false;
	isGamePass = false;
}
function any_extend_result1.init(arg1) -- Line 78
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.footerRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
		footerSize = Vector2.new(0, 0);
	}
	function arg1.changeContentSize(arg1_2) -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.contentSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				contentSize = arg1_2.AbsoluteSize;
			})
		end
	end
	function arg1.changeFooterSize(arg1_3) -- Line 94
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.footerSize ~= arg1_3.AbsoluteSize then
			arg1:setState({
				footerSize = arg1_3.AbsoluteSize;
			})
		end
	end
end
local shouldShowNewUpsellModalExperiment_upvr = require(Parent.Utility.Experiments.shouldShowNewUpsellModalExperiment)
local ProductPurchaseModal_upvr = require(script.Parent.v2.ProductPurchaseModal)
local MultiTextLocalizer_upvr = require(Parent.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 103
	--[[ Upvalues[4]:
		[1]: shouldShowNewUpsellModalExperiment_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ProductPurchaseModal_upvr (readonly)
		[4]: MultiTextLocalizer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var18
	if arg1.props.isLuobu then
	else
	end
	if shouldShowNewUpsellModalExperiment_upvr() then
		local module_2 = {}
		local tbl_12 = {}
		var18 = arg1.props
		tbl_12.itemIcon = var18.itemIcon
		var18 = arg1.props
		tbl_12.itemName = var18.itemName
		var18 = arg1.props
		tbl_12.itemRobuxCost = var18.itemRobuxCost
		module_2.product = tbl_12
		module_2.balanceAmount = arg1.props.currentBalance
		local tbl_3 = {}
		var18 = arg1.props
		tbl_3.buyItemActivated = var18.buyItemActivated
		var18 = arg1.props
		tbl_3.buyItemControllerIcon = var18.buyItemControllerIcon
		var18 = arg1.props
		tbl_3.buyItemIsDelayedInput = var18.isDelayedInput
		var18 = arg1.props
		tbl_3.buyItemEnableInputDelayed = var18.enableInputDelayed
		var18 = arg1.props
		tbl_3.cancelActivated = var18.cancelPurchaseActivated
		var18 = arg1.props
		tbl_3.isDisabled = var18.isDisabled
		module_2.buttons = tbl_3
		module_2.screenSize = arg1.props.screenSize
		return Roact_upvr.createElement(ProductPurchaseModal_upvr, module_2)
	end
	local module = {}
	local tbl_2 = {}
	local tbl_11 = {}
	if arg1.props.isGamePass then
		var18 = "IAPExperience.PurchasePrompt.Title.BuyGamepass"
	else
		var18 = "IAPExperience.PurchasePrompt.Title.BuyItem"
	end
	tbl_11.key = var18
	tbl_2.BuyItemTitle = tbl_11
	local tbl_13 = {
		key = "IAPExperience.PurchasePrompt.Text.BuyItemQuestion";
	}
	var18 = {}
	var18.name = arg1.props.itemName
	tbl_13.params = var18
	tbl_2.BuyItemQuestion = tbl_13
	local tbl_7 = {}
	var18 = "IAPExperience.PurchasePrompt.Text.RemainingBalance"
	tbl_7.key = var18
	tbl_2.RemainingBalance = tbl_7
	local tbl_9 = {}
	var18 = "IAPExperience.PurchasePrompt.Text.TestPurchase"
	tbl_9.key = var18
	tbl_2.TestPurchaseText = tbl_9
	local tbl_4 = {}
	var18 = "IAPExperience.PurchasePrompt.Action.Cancel"
	tbl_4.key = var18
	tbl_2.ButtonCancel = tbl_4
	local tbl_6 = {}
	var18 = "IAPExperience.PurchasePrompt.Text.Loading"
	tbl_6.key = var18
	tbl_2.LoadingText = tbl_6
	module.keys = tbl_2
	function module.render(arg1_4) -- Line 154
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_4)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
local withStyle_upvr = UIBlox.Core.Style.withStyle
local utf8_char_result1_upvr = utf8.char(57346)
local HumanoidViewport_upvr = require(script.Parent.Parent.Generic.HumanoidViewport)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local FitFrameVertical_upvr = RoactFitComponents.FitFrameVertical
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local icons_common_robux_upvr = UIBlox.App.ImageSet.Images["icons/common/robux"]
function any_extend_result1.renderAlert(arg1, arg2) -- Line 160
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: utf8_char_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: HumanoidViewport_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: InteractiveAlert_upvr (readonly)
		[7]: FitFrameVertical_upvr (readonly)
		[8]: FitTextLabel_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: icons_common_robux_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 161
		--[[ Upvalues[11]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: utf8_char_result1_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: HumanoidViewport_upvr (copied, readonly)
			[6]: ImageSetLabel_upvr (copied, readonly)
			[7]: InteractiveAlert_upvr (copied, readonly)
			[8]: FitFrameVertical_upvr (copied, readonly)
			[9]: FitTextLabel_upvr (copied, readonly)
			[10]: ButtonType_upvr (copied, readonly)
			[11]: icons_common_robux_upvr (copied, readonly)
		]]
		local Theme_upvr = arg1_5.Theme
		local Font_upvr = arg1_5.Font
		local Color = Theme_upvr.IconEmphasis.Color
		local var43_upvr = "%s <font color=\"%s\">%s</font>%d"
		if arg1.props.model then
			var43_upvr = Roact_upvr.createElement
			var43_upvr = var43_upvr(HumanoidViewport_upvr, {
				model = arg1.props.model;
				LayoutOrder = 1;
				Size = UDim2.fromOffset(85, 85);
				Position = UDim2.fromOffset(5, 5);
			})
		else
			var43_upvr = Roact_upvr.createElement
			var43_upvr = var43_upvr(ImageSetLabel_upvr, {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Position = UDim2.new(0, 5, 0, 5);
				Size = UDim2.new(0, 85, 0, 85);
				ScaleType = Enum.ScaleType.Stretch;
				Image = arg1.props.itemIcon;
				ImageTransparency = 0;
			})
		end
		local module_3 = {
			screenSize = arg1.props.screenSize;
			position = arg1.props.position;
			anchorPoint = arg1.props.anchorPoint;
			title = arg2.BuyItemTitle;
			middleContent = function() -- Line 203, Named "middleContent"
				--[[ Upvalues[8]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameVertical_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: var43_upvr (readonly)
					[5]: FitTextLabel_upvr (copied, readonly)
					[6]: Font_upvr (readonly)
					[7]: arg2 (copied, readonly)
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
					ItemIcon = var43_upvr;
					ItemName = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 2;
						BackgroundTransparency = 1;
						TextWrapped = true;
						width = FitTextLabel_upvr.Width.FitToText;
						maximumWidth = arg1.state.contentSize.X;
						Font = Font_upvr.Footer.Font;
						Text = arg2.BuyItemQuestion;
						TextSize = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize;
						TextColor3 = Theme_upvr.TextDefault.Color;
					});
				})
			end;
		}
		local tbl_8 = {}
		local tbl = {}
		local tbl_10 = {}
		local tbl_5 = {}
		local isDisabled = arg1.props.isDisabled
		if not isDisabled then
			isDisabled = arg1.props.isLoading
		end
		tbl_5.isDisabled = isDisabled
		tbl_5.onActivated = arg1.props.cancelPurchaseActivated
		tbl_5.text = arg2.ButtonCancel
		tbl_5.inputIcon = arg1.props.cancelControllerIcon
		tbl_10.props = tbl_5
		tbl[1] = tbl_10
		tbl[2] = {
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				isLoading = arg1.props.isLoading;
				isDisabled = arg1.props.isDisabled;
				isDelayedInput = arg1.props.isDelayedInput;
				enableInputDelayed = arg1.props.enableInputDelayed;
				delayInputSeconds = 3;
				onActivated = arg1.props.buyItemActivated;
				icon = icons_common_robux_upvr;
				text = tostring(arg1.props.itemRobuxCost);
				inputIcon = arg1.props.buyItemControllerIcon;
			};
		}
		tbl_8.buttons = tbl
		module_3.buttonStackInfo = tbl_8
		local var57_upvr = arg1.state.contentSize.X * 0.85
		local formatted_upvr = string.format(var43_upvr, arg2.RemainingBalance, string.format("rgb(%d,%d,%d)", math.round(Color.R * 255), math.round(Color.G * 255), math.round(Color.B * 255)), utf8_char_result1_upvr, arg1.props.currentBalance - arg1.props.itemRobuxCost)
		function module_3.footerContent() -- Line 257
			--[[ Upvalues[9]:
				[1]: arg1 (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: FitFrameVertical_upvr (copied, readonly)
				[4]: var57_upvr (readonly)
				[5]: Font_upvr (readonly)
				[6]: formatted_upvr (readonly)
				[7]: Theme_upvr (readonly)
				[8]: FitTextLabel_upvr (copied, readonly)
				[9]: arg2 (copied, readonly)
			]]
			if not arg1.props.testPurchase then
				return Roact_upvr.createElement(FitFrameVertical_upvr, {
					BackgroundTransparency = 1;
					width = UDim.new(1, 0);
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					contentPadding = UDim.new(0, 2);
					[Roact_upvr.Ref] = arg1.footerRef;
					[Roact_upvr.Change.AbsoluteSize] = arg1.changeFooterSize;
				}, {
					RemainingBalanceText = Roact_upvr.createElement("TextLabel", {
						LayoutOrder = 1;
						BackgroundTransparency = 1;
						RichText = true;
						Position = UDim2.fromScale(0, 0.5);
						Size = UDim2.fromOffset(var57_upvr, 0);
						AutomaticSize = Enum.AutomaticSize.Y;
						TextWrapped = true;
						Font = Font_upvr.Footer.Font;
						Text = formatted_upvr;
						TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
						TextColor3 = Theme_upvr.TextDefault.Color;
					});
				})
			end
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 2);
				[Roact_upvr.Ref] = arg1.footerRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.changeFooterSize;
			}, {
				TestPurchaseTest = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					width = FitTextLabel_upvr.Width.FitToText;
					Font = Font_upvr.Footer.Font;
					Text = arg2.TestPurchaseText;
					TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
					TextColor3 = Theme_upvr.TextDefault.Color;
				});
			})
		end
		return Roact_upvr.createElement(InteractiveAlert_upvr, module_3)
	end)
end
return any_extend_result1