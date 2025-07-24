-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:58
-- Luau version 6, Types version 3
-- Time taken: 0.012799 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local FitFrameVertical_upvr = require(Parent_2.RoactFitComponents).FitFrameVertical
local UIBlox = require(Parent_2.UIBlox)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local getPartialPageModalMiddleContentWidth_upvr = UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Images_upvr = UIBlox.App.ImageSet.Images
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local withStyle_upvr = UIBlox.Style.withStyle
local BulletPoint_upvr = require(Parent_3.BulletPoint)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
function any_extend_result1.init(arg1) -- Line 47
	arg1.isCondensed = false
	arg1.contentSize = Vector2.new(0, 0)
	arg1.state = {
		padding = UDim.new(0, 24);
		iconSize = UDim2.new(1, 0, 0, 80);
	}
	function arg1.updateContentSizes(arg1_2, arg2) -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 50 start (CF ANALYSIS FAILED)
		if arg2.X < 200 or 1000 < arg2.Y then return end
		arg1.contentSize = arg2
		if arg2.X == 0 and arg2.Y == 0 then return end
		if arg1_2.X == 0 and arg1_2.Y == 0 then return end
		if arg2 == arg1.contentSize and arg1_2 == arg1.props.screenSize then return end
		if arg1.isCondensed then
			if arg1_2.Y >= arg2.Y + 120 + 80 - 48 + 24 then
			else
			end
			-- KONSTANTWARNING: GOTO [71] #47
		end
		if arg1_2.Y >= arg2.Y + 120 then
			-- KONSTANTWARNING: GOTO [71] #47
		end
		-- KONSTANTERROR: [0] 1. Error Block 50 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [70] 46. Error Block 52 start (CF ANALYSIS FAILED)
		local var17 = true
		arg1.isCondensed = var17
		if var17 then
			-- KONSTANTWARNING: GOTO [83] #57
		end
		-- KONSTANTERROR: [70] 46. Error Block 52 end (CF ANALYSIS FAILED)
	end
end
function any_extend_result1.willUpdate(arg1, arg2) -- Line 98
	if arg1.props.screenSize ~= arg2.screenSize then
		arg1.updateContentSizes(arg2.screenSize, arg1.contentSize)
	end
end
local MultiTextLocalizer_upvr = require(Parent.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 104
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
	]]
	local props = arg1.props
	local module = {}
	local tbl_2 = {
		titleLocalizedText = {
			key = "IAPExperience.SubscriptionPurchasePrompt.Label.GetSubscription";
		};
		monthlyLocalizedText = {
			key = "IAPExperience.PremiumUpsell.Action.Subscribe";
		};
		descLocalizedText = {
			key = "IAPExperience.PremiumUpsell.Label.PremiumBenefitListDesc";
		};
	}
	local tbl = {
		key = "IAPExperience.PremiumUpsell.Label.RobuxPerMonth";
		params = {
			robux = utf8.char(57346)..tostring(props.robuxAmount);
		};
	}
	tbl_2.bulletPoint1Text = tbl
	tbl = {}
	local var27 = tbl
	var27.key = "IAPExperience.PremiumUpsell.Label.PremiumOnlyBenefits"
	tbl_2.bulletPoint2Text = var27
	if props.isCatalog then
		var27 = {}
		var27.key = "IAPExperience.PremiumUpsell.Label.AvatarShopBenefits"
	else
		var27 = {}
		var27.key = "IAPExperience.PremiumUpsell.Body.RobuxDiscount"
	end
	tbl_2.bulletPoint3Text = var27
	tbl_2.disclosure = {
		key = "IAPExperience.PremiumUpsell.Label.Disclosure";
		params = {
			currencySymbol = props.currencySymbol;
			price = tostring(props.robuxPrice);
		};
	}
	tbl_2.shortDisclosure = {
		key = "IAPExperience.PremiumUpsell.Label.ShortDisclosure";
	}
	tbl_2.priceLocalizedText = {
		key = "IAPExperience.PremiumUpsell.Label.PremiumPrice";
		params = {
			currencySymbol = props.currencySymbol;
			price = tostring(props.robuxPrice);
		};
	}
	tbl_2.headerLocalizedText = {
		key = "IAPExperience.PremiumUpsell.Label.RobloxPremium";
	}
	tbl_2.policyLocalizedText = {
		key = "IAPExperience.PremiumUpsell.Label.PremiumPolicy";
	}
	module.keys = tbl_2
	function module.render(arg1_3) -- Line 158
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderPrompt(arg1_3)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1.render = render
function any_extend_result1.renderCondensedPremiumInfo(arg1, arg2) -- Line 164
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 165
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetLabel_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		local Theme_3 = arg1_4.Theme
		local Font = arg1_4.Font
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 12);
				PaddingBottom = UDim.new(0, 12);
			});
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			IconContainer = Roact_upvr.createElement("Frame", {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 96, 0, 96);
				AutomaticSize = Enum.AutomaticSize.Y;
				AnchorPoint = Vector2.new(0, 0);
				Position = UDim2.new(0, 0, 0, 0);
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingRight = UDim.new(0, 12);
				});
				Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 1, 0);
					ScaleType = Enum.ScaleType.Fit;
					Image = Images_upvr["icons/graphic/premium_large"];
				});
			});
			PremiumInfoContainer = Roact_upvr.createElement("Frame", {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -80, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 6);
				});
				ListLayout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					SortOrder = Enum.SortOrder.LayoutOrder;
					Padding = UDim.new(0, 12);
				});
				PremiumHeader = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Font = Font.Header2.Font;
					RichText = true;
					Text = arg2.headerLocalizedText;
					TextSize = Font.BaseSize * Font.Header2.RelativeSize;
					TextColor3 = Theme_3.TextEmphasis.Color;
					TextTransparency = Theme_3.TextDefault.Transparency;
				});
				CostPerMonth = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Font = Font.Body.Font;
					RichText = true;
					Text = arg2.priceLocalizedText;
					TextSize = Font.BaseSize;
					TextColor3 = Theme_3.TextEmphasis.Color;
					TextTransparency = Theme_3.TextDefault.Transparency;
				});
				RenewAndCancelText = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Font = Font.Body.Font;
					Text = arg2.policyLocalizedText;
					TextSize = Font.BaseSize;
					TextColor3 = Theme_3.TextDefault.Color;
					TextTransparency = Theme_3.TextDefault.Transparency;
				});
			});
		})
	end)
end
function any_extend_result1.renderBulletInfo(arg1, arg2) -- Line 261
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FitFrameVertical_upvr (readonly)
		[5]: BulletPoint_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 262
		--[[ Upvalues[6]:
			[1]: getPartialPageModalMiddleContentWidth_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: FitFrameVertical_upvr (copied, readonly)
			[6]: BulletPoint_upvr (copied, readonly)
		]]
		local Theme = arg1_5.Theme
		local Font_4 = arg1_5.Font
		local var8_result1_2 = getPartialPageModalMiddleContentWidth_upvr(arg1.props.screenSize.X)
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = 2;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 12);
			});
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 12);
			});
			BulletListText = Roact_upvr.createElement("TextLabel", {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, var8_result1_2, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				TextXAlignment = Enum.TextXAlignment.Left;
				Font = Font_4.Body.Font;
				Text = arg2.descLocalizedText;
				TextSize = Font_4.BaseSize * Font_4.Body.RelativeSize;
				TextColor3 = Theme.TextDefault.Color;
				TextTransparency = Theme.TextDefault.Transparency;
			});
			BulletList = Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				contentPadding = UDim.new(0, 12);
			}, {
				BulletText1 = Roact_upvr.createElement(BulletPoint_upvr, {
					text = arg2.bulletPoint1Text;
					width = var8_result1_2;
					layoutOrder = 1;
				});
				BulletText2 = Roact_upvr.createElement(BulletPoint_upvr, {
					text = arg2.bulletPoint2Text;
					width = var8_result1_2;
					layoutOrder = 2;
				});
				BulletText3 = Roact_upvr.createElement(BulletPoint_upvr, {
					text = arg2.bulletPoint3Text;
					width = var8_result1_2;
					layoutOrder = 3;
				});
			});
		})
	end)
end
function any_extend_result1.renderDisclosure(arg1, arg2) -- Line 321
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_6) -- Line 322
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local Theme_4 = arg1_6.Theme
		local Font_2 = arg1_6.Font
		return Roact_upvr.createElement("Frame", {
			LayoutOrder = 5;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 12);
			});
			Disclosure = Roact_upvr.createElement("TextLabel", {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
				TextXAlignment = Enum.TextXAlignment.Left;
				RichText = true;
				TextWrapped = true;
				Font = Font_2.Body.Font;
				Text = arg2.shortDisclosure;
				TextSize = Font_2.BaseSize * Font_2.Body.RelativeSize;
				TextColor3 = Theme_4.TextDefault.Color;
				TextTransparency = Theme_4.TextDefault.Transparency;
			});
		})
	end)
end
function any_extend_result1.renderLandscapePrompt(arg1, arg2) -- Line 352
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: PartialPageModal_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local props_5_upvr = arg1.props
	return withStyle_upvr(function(arg1_7) -- Line 355
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: PartialPageModal_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: props_5_upvr (readonly)
			[5]: ButtonType_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(PartialPageModal_upvr, {
			title = arg2.titleLocalizedText;
			screenSize = props_5_upvr.screenSize;
			buttonStackProps = {
				buttons = {{
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = props_5_upvr.purchasePremiumActivated;
						text = arg2.monthlyLocalizedText;
						inputIcon = props_5_upvr.acceptControllerIcon;
					};
				}};
				buttonHeight = 48;
			};
			onCloseClicked = props_5_upvr.cancelPurchaseActivated;
		}, {Roact_upvr.createElement("ScrollingFrame", {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, props_5_upvr.screenSize.Y / 2);
			BorderSizePixel = 0;
			ZIndex = 2;
			ScrollingEnabled = true;
			ScrollBarThickness = 5;
			ScrollingDirection = Enum.ScrollingDirection.Y;
			Selectable = false;
			CanvasSize = UDim2.new(1, 0, 0, math.min(props_5_upvr.screenSize.Y / 2 + 96 + 12, 450));
		}, {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			IconAndPremiumInfoContainer = arg1:renderCondensedPremiumInfo(arg2);
			BulletList = arg1:renderBulletInfo(arg2);
			Disclosure = arg1:renderDisclosure(arg2);
		})})
	end)
end
function any_extend_result1.renderPortraitPrompt(arg1, arg2) -- Line 403
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: PartialPageModal_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local props_3_upvr = arg1.props
	return withStyle_upvr(function(arg1_8) -- Line 406
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: PartialPageModal_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: props_3_upvr (readonly)
			[5]: ButtonType_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(PartialPageModal_upvr, {
			title = arg2.titleLocalizedText;
			screenSize = props_3_upvr.screenSize;
			buttonStackProps = {
				buttons = {{
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = props_3_upvr.purchasePremiumActivated;
						text = arg2.monthlyLocalizedText;
						inputIcon = props_3_upvr.acceptControllerIcon;
					};
				}};
				buttonHeight = 48;
			};
			onCloseClicked = props_3_upvr.cancelPurchaseActivated;
		}, {Roact_upvr.createElement("Frame", {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			IconAndPremiumInfoContainer = arg1:renderCondensedPremiumInfo(arg2);
			BulletList = arg1:renderBulletInfo(arg2);
			Disclosure = arg1:renderDisclosure(arg2);
		})})
	end)
end
function any_extend_result1.renderUpdatedPrompt(arg1, arg2) -- Line 443
	--[[ Upvalues[9]:
		[1]: withStyle_upvr (readonly)
		[2]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: PartialPageModal_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: FitFrameVertical_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: BulletPoint_upvr (readonly)
	]]
	local props_4_upvr = arg1.props
	return withStyle_upvr(function(arg1_9) -- Line 446
		--[[ Upvalues[11]:
			[1]: getPartialPageModalMiddleContentWidth_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: PartialPageModal_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: props_4_upvr (readonly)
			[7]: ButtonType_upvr (copied, readonly)
			[8]: FitFrameVertical_upvr (copied, readonly)
			[9]: ImageSetLabel_upvr (copied, readonly)
			[10]: Images_upvr (copied, readonly)
			[11]: BulletPoint_upvr (copied, readonly)
		]]
		local Theme_2 = arg1_9.Theme
		local Font_3 = arg1_9.Font
		local var8_result1 = getPartialPageModalMiddleContentWidth_upvr(arg1.props.screenSize.X)
		return Roact_upvr.createElement(PartialPageModal_upvr, {
			title = arg2.titleLocalizedText;
			screenSize = props_4_upvr.screenSize;
			buttonStackProps = {
				buttons = {{
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						onActivated = props_4_upvr.purchasePremiumActivated;
						text = arg2.monthlyLocalizedText;
						inputIcon = props_4_upvr.acceptControllerIcon;
					};
				}};
				buttonHeight = 48;
			};
			onCloseClicked = props_4_upvr.cancelPurchaseActivated;
		}, {Roact_upvr.createElement(FitFrameVertical_upvr, {
			BackgroundTransparency = 1;
			width = UDim.new(1, 0);
			contentPadding = UDim.new(0, 12);
			margin = {
				top = 12;
				bottom = 12;
			};
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_10) -- Line 479
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.contentSize.X ~= arg1_10.AbsoluteSize.X or arg1.contentSize.Y ~= arg1_10.AbsoluteSize.Y then
					arg1.updateContentSizes(arg1.props.screenSize, arg1_10.AbsoluteSize)
				end
			end;
		}, {
			Icon = Roact_upvr.createElement(ImageSetLabel_upvr, {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				Size = arg1.state.iconSize;
				ScaleType = Enum.ScaleType.Fit;
				Image = Images_upvr["icons/graphic/premium_large"];
			});
			PremiumInfoContainer = Roact_upvr.createElement("Frame", {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 12);
				});
				ListLayout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					SortOrder = Enum.SortOrder.LayoutOrder;
					Padding = UDim.new(0, 12);
				});
				PremiumHeader = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextXAlignment = Enum.TextXAlignment.Center;
					Font = Font_3.Header2.Font;
					RichText = true;
					Text = arg2.headerLocalizedText;
					TextSize = Font_3.BaseSize * Font_3.Header2.RelativeSize;
					TextColor3 = Theme_2.TextEmphasis.Color;
					TextTransparency = Theme_2.TextDefault.Transparency;
				});
				CostPerMonth = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextXAlignment = Enum.TextXAlignment.Center;
					Font = Font_3.Body.Font;
					RichText = true;
					Text = arg2.priceLocalizedText;
					TextSize = Font_3.BaseSize;
					TextColor3 = Theme_2.TextEmphasis.Color;
					TextTransparency = Theme_2.TextDefault.Transparency;
				});
				CancelText = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					TextXAlignment = Enum.TextXAlignment.Center;
					Font = Font_3.Body.Font;
					Text = arg2.policyLocalizedText;
					TextSize = Font_3.BaseSize;
					TextColor3 = Theme_2.TextDefault.Color;
					TextTransparency = Theme_2.TextDefault.Transparency;
				});
			});
			BulletListText = Roact_upvr.createElement("TextLabel", {
				LayoutOrder = 3;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, var8_result1, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				TextXAlignment = Enum.TextXAlignment.Left;
				Font = Font_3.Body.Font;
				Text = arg2.descLocalizedText;
				TextSize = Font_3.BaseSize * Font_3.Body.RelativeSize;
				TextColor3 = Theme_2.TextDefault.Color;
				TextTransparency = Theme_2.TextDefault.Transparency;
			});
			BulletList = Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = 4;
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				contentPadding = UDim.new(0, 12);
			}, {
				BulletText1 = Roact_upvr.createElement(BulletPoint_upvr, {
					text = arg2.bulletPoint1Text;
					width = var8_result1;
					layoutOrder = 1;
				});
				BulletText2 = Roact_upvr.createElement(BulletPoint_upvr, {
					text = arg2.bulletPoint2Text;
					width = var8_result1;
					layoutOrder = 2;
				});
				BulletText3 = Roact_upvr.createElement(BulletPoint_upvr, {
					text = arg2.bulletPoint3Text;
					width = var8_result1;
					layoutOrder = 3;
				});
			});
			Disclosure = arg1:renderDisclosure(arg2);
		})})
	end)
end
function any_extend_result1.renderPrompt(arg1, arg2) -- Line 585
	local props_2 = arg1.props
	if props_2.screenSize.Y < 450 then
		return arg1:renderLandscapePrompt(arg2)
	end
	if props_2.screenSize.X < 450 then
		return arg1:renderPortraitPrompt(arg2)
	end
	return arg1:renderUpdatedPrompt(arg2)
end
return any_extend_result1