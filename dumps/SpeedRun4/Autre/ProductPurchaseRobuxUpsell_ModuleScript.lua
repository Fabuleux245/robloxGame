-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:02
-- Luau version 6, Types version 3
-- Time taken: 0.013966 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local Parent_3 = Parent_2.Parent
local Roact_upvr = require(Parent_3.Roact)
local t = require(Parent_3.t)
local RoactFitComponents = require(Parent_3.RoactFitComponents)
local FitFrameVertical_upvr = RoactFitComponents.FitFrameVertical
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
local UIBlox = require(Parent_3.UIBlox)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ProductDetails_upvr = require(Parent.ProductDetails)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	screenSize = t.Vector2;
	isLoading = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	isDelayedInput = t.optional(t.boolean);
	enableInputDelayed = t.optional(t.boolean);
	model = t.optional(t.table);
	itemIcon = t.table;
	itemName = t.string;
	itemRobuxCost = t.number;
	robuxPurchaseAmount = t.number;
	robuxPurchaseAmountBeforeBonus = t.optional(t.number);
	balanceAmount = t.number;
	buyItemControllerIcon = t.optional(t.table);
	cancelControllerIcon = t.optional(t.table);
	buyItemActivated = t.callback;
	cancelPurchaseActivated = t.callback;
	isLuobu = t.optional(t.boolean);
	isVng = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
	isLoading = false;
	isDisabled = false;
	isDelayedInput = false;
	enableInputDelayed = false;
	isLuobu = false;
}
function any_extend_result1.init(arg1) -- Line 85
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.footerRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
		footerSize = Vector2.new(0, 0);
	}
	function arg1.changeContentSize(arg1_2) -- Line 93
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.contentSize ~= arg1_2.AbsoluteSize then
			arg1:setState({
				contentSize = arg1_2.AbsoluteSize;
			})
		end
	end
	function arg1.changeFooterSize(arg1_3) -- Line 101
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
local SharedFlags_upvr = require(Parent_3.SharedFlags)
local LocalizationProvider_upvr = require(Parent_3.Localization).LocalizationProvider
local Localization_upvr = require(Parent_3.AppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 110
	--[[ Upvalues[6]:
		[1]: SharedFlags_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LocalizationProvider_upvr (readonly)
		[4]: Localization_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: MultiTextLocalizer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var27
	if arg1.props.isLuobu then
		var27 = "IAPExperience.RobuxUpsell.Text.BuyRobuxQuestionWithWarning"
	else
		var27 = "IAPExperience.RobuxUpsell.Text.BuyRobuxQuestion"
	end
	if arg1.props.isVng then
	else
	end
	if SharedFlags_upvr.FFlagLowCogsBannerExperiment then
		return Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, {
			Alert = arg1:renderNewAlert();
		})
	end
	local module_4 = {
		keys = {
			InsufficientFundsTitle = {
				key = "IAPExperience.RobuxUpsell.Title.InsufficientFunds";
			};
			BuyRobuxQuestion = {
				key = var27;
			};
			DisclosurePayment = {
				key = "IAPExperience.RobuxUpsell.Text.DisclosurePayment";
			};
			DisclosureTerms = {
				key = "IAPExperience.RobuxUpsell.Text.DisclosureTerms";
			};
			RemainingBalance = {
				key = "IAPExperience.RobuxUpsell.Text.RemainingBalance";
			};
			BuyRobuxButton = {
				key = "IAPExperience.RobuxUpsell.Action.BuyRobux";
			};
			ButtonCancel = {
				key = "IAPExperience.RobuxUpsell.Action.Cancel";
			};
			LoadingText = {
				key = "IAPExperience.RobuxUpsell.Text.Loading";
			};
		};
	}
	function module_4.render(arg1_4) -- Line 155
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_4)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module_4)
end
any_extend_result1.render = render
local getEnableFixRobuxUpsellPriceCrash_upvr = require(Parent_2.Flags.getEnableFixRobuxUpsellPriceCrash)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_common_robux_upvr = UIBlox.App.ImageSet.Images["icons/common/robux"]
local IconSize_upvr = UIBlox.App.Constant.IconSize
function any_extend_result1.renderAlert(arg1, arg2) -- Line 161
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: getEnableFixRobuxUpsellPriceCrash_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: FitFrameVertical_upvr (readonly)
		[6]: ProductDetails_upvr (readonly)
		[7]: FitTextLabel_upvr (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: icons_common_robux_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: IconSize_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 162
		--[[ Upvalues[12]:
			[1]: getEnableFixRobuxUpsellPriceCrash_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: InteractiveAlert_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: FitFrameVertical_upvr (copied, readonly)
			[7]: ProductDetails_upvr (copied, readonly)
			[8]: FitTextLabel_upvr (copied, readonly)
			[9]: ImageSetLabel_upvr (copied, readonly)
			[10]: icons_common_robux_upvr (copied, readonly)
			[11]: ButtonType_upvr (copied, readonly)
			[12]: IconSize_upvr (copied, readonly)
		]]
		local Theme_upvr_2 = arg1_5.Theme
		local Font_upvr = arg1_5.Font
		local var47_upvw = 0
		if getEnableFixRobuxUpsellPriceCrash_upvr() then
			var47_upvw = (arg1.props.balanceAmount or 0) + (arg1.props.robuxPurchaseAmount or 0) - (arg1.props.itemRobuxCost or 0)
		else
			var47_upvw = arg1.props.balanceAmount + arg1.props.robuxPurchaseAmount - arg1.props.itemRobuxCost
		end
		local module = {
			screenSize = arg1.props.screenSize;
			position = arg1.props.position;
			anchorPoint = arg1.props.anchorPoint;
			title = arg2.InsufficientFundsTitle;
		}
		local function middleContent() -- Line 183
			--[[ Upvalues[10]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FitFrameVertical_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: ProductDetails_upvr (copied, readonly)
				[5]: Theme_upvr_2 (readonly)
				[6]: FitTextLabel_upvr (copied, readonly)
				[7]: Font_upvr (readonly)
				[8]: arg2 (copied, readonly)
				[9]: ImageSetLabel_upvr (copied, readonly)
				[10]: icons_common_robux_upvr (copied, readonly)
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
				ItemDetails = Roact_upvr.createElement(ProductDetails_upvr, {
					layoutOrder = 1;
					model = arg1.props.model;
					itemIcon = arg1.props.itemIcon;
					itemName = arg1.props.itemName;
					itemRobuxCost = arg1.props.itemRobuxCost;
				});
				Underline = Roact_upvr.createElement("Frame", {
					LayoutOrder = 2;
					BorderSizePixel = 0;
					BackgroundColor3 = Theme_upvr_2.Divider.Color;
					BackgroundTransparency = Theme_upvr_2.Divider.Transparency;
					Size = UDim2.new(1, 0, 0, 1);
				});
				ConfirmationFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					width = UDim.new(1, 0);
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					contentPadding = UDim.new(0, 1);
				}, {
					WouldYouLikeText = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 1;
						BackgroundTransparency = 1;
						width = FitTextLabel_upvr.Width.FitToText;
						TextWrapped = true;
						maximumWidth = arg1.state.contentSize.X * 0.8;
						Font = Font_upvr.Body.Font;
						Text = arg2.BuyRobuxQuestion;
						TextSize = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize;
						TextColor3 = Theme_upvr_2.TextDefault.Color;
					});
					RobuxIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
						LayoutOrder = 2;
						BackgroundTransparency = 1;
						Position = UDim2.new(0, 5, 0, 5);
						Size = UDim2.new(0, 24, 0, 24);
						ScaleType = Enum.ScaleType.Stretch;
						Image = icons_common_robux_upvr;
						ImageColor3 = Theme_upvr_2.IconEmphasis.Color;
						ImageTransparency = Theme_upvr_2.IconEmphasis.Transparency;
					});
					RemainingRobux = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 3;
						BackgroundTransparency = 1;
						width = FitTextLabel_upvr.Width.FitToText;
						Font = Font_upvr.Body.Font;
						Text = tostring(arg1.props.robuxPurchaseAmount);
						TextSize = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize;
						TextColor3 = Theme_upvr_2.TextEmphasis.Color;
					});
				});
				DisclosureFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 4;
					BackgroundTransparency = 1;
					width = UDim.new(1, 0);
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					contentPadding = UDim.new(0, 1);
				}, {
					DisclosurePayment = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 1;
						BackgroundTransparency = 1;
						width = FitTextLabel_upvr.Width.FitToText;
						Font = Font_upvr.Footer.Font;
						Text = arg2.DisclosurePayment;
						TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
						TextColor3 = Theme_upvr_2.TextDefault.Color;
					});
					DisclosureTerms = Roact_upvr.createElement(FitTextLabel_upvr, {
						LayoutOrder = 2;
						BackgroundTransparency = 1;
						width = FitTextLabel_upvr.Width.FitToText;
						Font = Font_upvr.Footer.Font;
						Text = arg2.DisclosureTerms;
						TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
						TextColor3 = Theme_upvr_2.TextDefault.Color;
					});
				});
			})
		end
		module.middleContent = middleContent
		module.buttonStackInfo = {
			buttons = {{
				props = {
					isDisabled = arg1.props.isDisabled;
					onActivated = arg1.props.cancelPurchaseActivated;
					text = arg2.ButtonCancel;
					inputIcon = arg1.props.cancelControllerIcon;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					isLoading = arg1.props.isLoading;
					isDisabled = arg1.props.isDisabled;
					isDelayedInput = arg1.props.isDelayedInput;
					enableInputDelayed = arg1.props.enableInputDelayed;
					delayInputSeconds = 3;
					onActivated = arg1.props.buyItemActivated;
					text = arg2.BuyRobuxButton;
					inputIcon = arg1.props.buyItemControllerIcon;
				};
			}};
		}
		local function footerContent() -- Line 313
			--[[ Upvalues[11]:
				[1]: arg2 (copied, readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: FitFrameVertical_upvr (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: FitTextLabel_upvr (copied, readonly)
				[6]: Font_upvr (readonly)
				[7]: Theme_upvr_2 (readonly)
				[8]: ImageSetLabel_upvr (copied, readonly)
				[9]: IconSize_upvr (copied, readonly)
				[10]: icons_common_robux_upvr (copied, readonly)
				[11]: var47_upvw (read and write)
			]]
			local string_split_result1 = string.split(arg2.RemainingBalance, " {robux} ")
			return Roact_upvr.createElement(FitFrameVertical_upvr, {
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 1);
				[Roact_upvr.Ref] = arg1.footerRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.changeFooterSize;
			}, {
				RemainingBalanceBefore = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					width = FitTextLabel_upvr.Width.FitToText;
					Font = Font_upvr.Footer.Font;
					Text = string_split_result1[1];
					TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
					TextColor3 = Theme_upvr_2.TextDefault.Color;
				});
				RobuxIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					Position = UDim2.new(0, 5, 0, 5);
					Size = UDim2.new(0, IconSize_upvr.Small, 0, IconSize_upvr.Small);
					ScaleType = Enum.ScaleType.Stretch;
					Image = icons_common_robux_upvr;
					ImageColor3 = Theme_upvr_2.IconEmphasis.Color;
					ImageTransparency = Theme_upvr_2.IconEmphasis.Transparency;
				});
				RemainingRobux = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					width = FitTextLabel_upvr.Width.FitToText;
					Font = Font_upvr.Footer.Font;
					Text = var47_upvw;
					TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
					TextColor3 = Theme_upvr_2.TextDefault.Color;
				});
				RemainingBalanceAfter = Roact_upvr.createElement(FitTextLabel_upvr, {
					LayoutOrder = 4;
					BackgroundTransparency = 1;
					width = FitTextLabel_upvr.Width.FitToText;
					Font = Font_upvr.Footer.Font;
					Text = string_split_result1[2];
					TextSize = Font_upvr.BaseSize * Font_upvr.Footer.RelativeSize;
					TextColor3 = Theme_upvr_2.TextDefault.Color;
				});
			})
		end
		module.footerContent = footerContent
		return Roact_upvr.createElement(InteractiveAlert_upvr, module)
	end)
end
local withLocalization_upvr = require(Parent_3.Localization).withLocalization
function any_extend_result1.renderNewAlert(arg1) -- Line 385
	--[[ Upvalues[8]:
		[1]: withLocalization_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: FitFrameVertical_upvr (readonly)
		[6]: ProductDetails_upvr (readonly)
		[7]: FitTextLabel_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var76
	if arg1.props.isLuobu then
		var76 = "IAPExperience.RobuxUpsell.Text.BuyRobuxQuestionWithWarning"
	else
		var76 = "IAPExperience.RobuxUpsell.Text.BuyRobuxQuestion"
	end
	if arg1.props.isVng then
	else
	end
	return withLocalization_upvr({
		InsufficientFundsTitle = "IAPExperience.RobuxUpsell.Title.InsufficientFunds";
		BuyRobuxQuestion = var76;
		DisclosurePayment = "IAPExperience.RobuxUpsell.Text.DisclosurePayment";
		DisclosureTerms = "IAPExperience.RobuxUpsell.Text.DisclosureTerms";
		RemainingBalance = "IAPExperience.RobuxUpsell.Text.RemainingBalance";
		BuyRobuxButton = "IAPExperience.RobuxUpsell.Action.BuyRobux";
		ButtonCancel = "IAPExperience.RobuxUpsell.Action.Cancel";
		LoadingText = "IAPExperience.RobuxUpsell.Text.Loading";
		NeedMoreRobux = "IAPExperience.RobuxUpsell.Text.NeedMoreRobux";
		BonusBannerV1 = "IAPExperience.RobuxUpsell.Text.BonusBannerV1";
		BonusBannerInfo = "IAPExperience.RobuxUpsell.Text.BonusBannerInfo";
	})(function(arg1_6) -- Line 403
		--[[ Upvalues[8]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: InteractiveAlert_upvr (copied, readonly)
			[5]: FitFrameVertical_upvr (copied, readonly)
			[6]: ProductDetails_upvr (copied, readonly)
			[7]: FitTextLabel_upvr (copied, readonly)
			[8]: ButtonType_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_7) -- Line 404
			--[[ Upvalues[8]:
				[1]: arg1_6 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: InteractiveAlert_upvr (copied, readonly)
				[5]: FitFrameVertical_upvr (copied, readonly)
				[6]: ProductDetails_upvr (copied, readonly)
				[7]: FitTextLabel_upvr (copied, readonly)
				[8]: ButtonType_upvr (copied, readonly)
			]]
			local var80_upvw = arg1_6.BuyRobuxQuestion..' '..utf8.char(57346)..tostring(arg1.props.robuxPurchaseAmount)
			local var81_upvw = ""
			if arg1.props.robuxPurchaseAmountBeforeBonus ~= nil then
				var80_upvw = arg1_6.BuyRobuxQuestion..' '..utf8.char(57346).."<s>"..tostring(arg1.props.robuxPurchaseAmountBeforeBonus).."</s>"..' '..utf8.char(57346)..tostring(arg1.props.robuxPurchaseAmount)
				var81_upvw = arg1_6.BonusBannerV1:gsub("{robux}", utf8.char(57346)..tostring(arg1.props.robuxPurchaseAmount - arg1.props.robuxPurchaseAmountBeforeBonus))
			end
			local module_2 = {
				screenSize = arg1.props.screenSize;
				position = arg1.props.position;
				anchorPoint = arg1.props.anchorPoint;
				title = arg1_6.NeedMoreRobux;
			}
			local Theme_upvr = arg1_7.Theme
			local Font_upvr_2 = arg1_7.Font
			function module_2.middleContent() -- Line 434
				--[[ Upvalues[9]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameVertical_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: ProductDetails_upvr (copied, readonly)
					[5]: Theme_upvr (readonly)
					[6]: FitTextLabel_upvr (copied, readonly)
					[7]: Font_upvr_2 (readonly)
					[8]: var80_upvw (read and write)
					[9]: arg1_6 (copied, readonly)
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
					ItemDetails = Roact_upvr.createElement(ProductDetails_upvr, {
						layoutOrder = 1;
						model = arg1.props.model;
						itemIcon = arg1.props.itemIcon;
						itemName = arg1.props.itemName;
						itemRobuxCost = arg1.props.itemRobuxCost;
					});
					Underline = Roact_upvr.createElement("Frame", {
						LayoutOrder = 2;
						BorderSizePixel = 0;
						BackgroundColor3 = Theme_upvr.Divider.Color;
						BackgroundTransparency = Theme_upvr.Divider.Transparency;
						Size = UDim2.new(1, 0, 0, 1);
					});
					ConfirmationFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
						LayoutOrder = 3;
						BackgroundTransparency = 1;
						width = UDim.new(1, 0);
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						contentPadding = UDim.new(0, 1);
					}, {
						WouldYouLikeText = Roact_upvr.createElement(FitTextLabel_upvr, {
							LayoutOrder = 1;
							BackgroundTransparency = 1;
							width = FitTextLabel_upvr.Width.FitToText;
							TextWrapped = true;
							maximumWidth = arg1.state.contentSize.X * 0.8;
							RichText = true;
							Font = Font_upvr_2.Body.Font;
							Text = var80_upvw;
							TextSize = Font_upvr_2.BaseSize * Font_upvr_2.Body.RelativeSize;
							TextColor3 = Theme_upvr.TextDefault.Color;
						});
					});
					DisclosureFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
						LayoutOrder = 4;
						BackgroundTransparency = 1;
						width = UDim.new(1, 0);
						FillDirection = Enum.FillDirection.Vertical;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						contentPadding = UDim.new(0, 1);
					}, {
						DisclosurePayment = Roact_upvr.createElement(FitTextLabel_upvr, {
							LayoutOrder = 1;
							BackgroundTransparency = 1;
							width = FitTextLabel_upvr.Width.FitToText;
							Font = Font_upvr_2.Footer.Font;
							Text = arg1_6.DisclosurePayment;
							TextSize = Font_upvr_2.BaseSize * Font_upvr_2.Footer.RelativeSize;
							TextColor3 = Theme_upvr.TextDefault.Color;
						});
						DisclosureTerms = Roact_upvr.createElement(FitTextLabel_upvr, {
							LayoutOrder = 2;
							BackgroundTransparency = 1;
							width = FitTextLabel_upvr.Width.FitToText;
							Font = Font_upvr_2.Footer.Font;
							Text = arg1_6.DisclosureTerms;
							TextSize = Font_upvr_2.BaseSize * Font_upvr_2.Footer.RelativeSize;
							TextColor3 = Theme_upvr.TextDefault.Color;
						});
					});
				})
			end
			module_2.buttonStackInfo = {
				buttons = {{
					props = {
						isDisabled = arg1.props.isDisabled;
						onActivated = arg1.props.cancelPurchaseActivated;
						text = arg1_6.ButtonCancel;
						inputIcon = arg1.props.cancelControllerIcon;
					};
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						isLoading = arg1.props.isLoading;
						isDisabled = arg1.props.isDisabled;
						isDelayedInput = arg1.props.isDelayedInput;
						enableInputDelayed = arg1.props.enableInputDelayed;
						delayInputSeconds = 3;
						onActivated = arg1.props.buyItemActivated;
						text = arg1_6.BuyRobuxButton;
						inputIcon = arg1.props.buyItemControllerIcon;
					};
				}};
			}
			function module_2.footerContent() -- Line 543
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_7 (readonly)
					[3]: var81_upvw (read and write)
					[4]: arg1_6 (copied, readonly)
				]]
				return arg1:renderFooterExperiment(arg1_7, var81_upvw, arg1_6.BonusBannerInfo)
			end
			return Roact_upvr.createElement(InteractiveAlert_upvr, module_2)
		end)
	end)
end
local Colors_upvr = require(Parent_3.Style).Colors
local FFlagLowCogsBannerInfoIcon_upvr = require(Parent_2.Flags.FFlagLowCogsBannerInfoIcon)
local InfoIconWithTooltip_upvr = require(Parent_2.Generic.InfoIconWithTooltip)
function any_extend_result1.renderFooterExperiment(arg1, arg2, arg3, arg4) -- Line 551
	--[[ Upvalues[5]:
		[1]: Colors_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FitFrameVertical_upvr (readonly)
		[4]: FFlagLowCogsBannerInfoIcon_upvr (readonly)
		[5]: InfoIconWithTooltip_upvr (readonly)
	]]
	local Font = arg2.Font
	local Flint = Colors_upvr.Flint
	if arg3 == "" then
		return nil
	end
	local module_3 = {}
	local tbl_4 = {}
	local tbl = {}
	local tbl_2 = {
		LayoutOrder = 1;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		RichText = true;
		Font = Font.Footer.Font;
	}
	tbl_2.Text = arg3
	tbl_2.TextSize = Font.BaseSize * Font.Footer.RelativeSize
	tbl_2.TextColor3 = Flint
	local any_createElement_result1 = Roact_upvr.createElement("TextLabel", tbl_2)
	tbl.BonusBefore = any_createElement_result1
	if FFlagLowCogsBannerInfoIcon_upvr then
		any_createElement_result1 = InfoIconWithTooltip_upvr
		local tbl_3 = {}
		tbl_3.text = arg4
		tbl_3.layoutOrder = 2
		tbl_3.color = Flint
		tbl_3.eventActivated = arg1.bonusBannerInfoIconStateChange
		any_createElement_result1 = any_createElement_result1(tbl_3)
	else
		any_createElement_result1 = nil
	end
	tbl.InfoIcon = any_createElement_result1
	tbl_4.BannerContent = Roact_upvr.createElement(FitFrameVertical_upvr, {
		LayoutOrder = 2;
		BackgroundTransparency = 1;
		width = UDim.new(1, 0);
		margin = {
			top = 12;
			bottom = 0;
			left = 0;
			right = 0;
		};
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}, tbl)
	module_3.Banner = Roact_upvr.createElement("ImageLabel", {
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Image = "rbxasset://textures/ui/BottomRoundedRect8px.png";
		ImageColor3 = Color3.fromRGB(239, 215, 140);
		Size = UDim2.new(1, 0, 0, 40);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 0, 24, 16);
	}, tbl_4)
	return Roact_upvr.createElement(FitFrameVertical_upvr, {
		BackgroundTransparency = 1;
		width = UDim.new(1, 0);
		margin = {
			top = 0;
			bottom = -24;
			left = -24;
			right = -24;
		};
		[Roact_upvr.Ref] = arg1.footerRef;
		[Roact_upvr.Change.AbsoluteSize] = arg1.changeFooterSize;
	}, module_3)
end
return any_extend_result1