-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:17
-- Luau version 6, Types version 3
-- Time taken: 0.005370 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local TextService_upvr = game:GetService("TextService")
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local function generateFooter_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 45, Named "generateFooter"
	--[[ Upvalues[2]:
		[1]: TextService_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	if not arg1 then
		return nil
	end
	local module_4 = {}
	local tbl_10 = {
		LayoutOrder = 1;
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, TextService_upvr:GetTextSize(arg2, 12, arg3.Footer.Font, Vector2.new(arg5, math.huge)).Y + 2);
		Font = arg3.Footer.Font;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextWrapped = true;
	}
	tbl_10.Text = arg2
	tbl_10.TextSize = 12
	tbl_10.TextColor3 = arg4.TextDefault.Color
	module_4.DisclaimerText = React_upvr.createElement("TextLabel", tbl_10)
	return React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0, 16);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Size = UDim2.new(1, -48, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
	}, module_4)
end
local function generatePromptText_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 78, Named "generatePromptText"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: TextService_upvr (readonly)
	]]
	return React_upvr.createElement("TextLabel", {
		LayoutOrder = 2;
		BackgroundTransparency = 1;
		Size = UDim2.new(0, arg4, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = arg2.Body.Font;
		Text = arg1.description;
		TextSize = 16;
		TextWrapped = true;
		TextColor3 = arg3.TextDefault.Color;
		TextTransparency = arg3.TextDefault.Transparency;
		RichText = true;
		[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 92
			--[[ Upvalues[2]:
				[1]: TextService_upvr (copied, readonly)
				[2]: arg5 (readonly)
			]]
			arg5(TextService_upvr:GetTextSize(arg1_2.Text, arg1_2.TextSize, arg1_2.Font, Vector2.new(arg1_2.AbsoluteSize.X, math.huge)).Y)
		end;
	})
end
local getEnableDisableSubPurchase_upvr = require(Parent_2.Flags.getEnableDisableSubPurchase)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function createSubscribeButtonStacks_upvr(arg1, arg2) -- Line 100, Named "createSubscribeButtonStacks"
	--[[ Upvalues[2]:
		[1]: getEnableDisableSubPurchase_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
	]]
	if getEnableDisableSubPurchase_upvr() and arg1.disablePurchase then
		local module = {}
		local tbl_7 = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_9 = {}
		local function onActivated() -- Line 106
		end
		tbl_9.onActivated = onActivated
		tbl_9.isDisabled = true
		tbl_9.text = arg1.disablePurchaseText
		tbl_9.layoutOrder = 0
		tbl_7.props = tbl_9
		module[1] = tbl_7
		return module
	end
	if arg1.secondaryPaymentMethod == nil or arg1.secondaryPaymentMethod == "" then
		local tbl_6 = {}
		local tbl_8 = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_2 = {}
		local function onActivated() -- Line 120
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.purchaseSubscriptionActivated(arg1.primaryPaymentMethod)
		end
		tbl_2.onActivated = onActivated
		tbl_2.text = arg2.subscribe
		tbl_2.layoutOrder = 0
		tbl_8.props = tbl_2
		tbl_6[1] = tbl_8
		return tbl_6
	end
	tbl_6 = nil
	local var19 = tbl_6
	if arg1.primaryPaymentMethod == "Stripe" then
		var19 = arg2.subscribeWithCreditDebitCard
	elseif arg1.primaryPaymentMethod == "CreditBalance" then
		var19 = arg2.subscribeWithRobloxCredit
	end
	local module_2 = {}
	local tbl_4 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_3 = {}
	local function onActivated() -- Line 141
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.purchaseSubscriptionActivated(arg1.primaryPaymentMethod)
	end
	tbl_3.onActivated = onActivated
	tbl_3.text = var19
	tbl_3.layoutOrder = 0
	tbl_4.props = tbl_3
	module_2[1] = tbl_4
	module_2[2] = {
		buttonType = ButtonType_upvr.Secondary;
		props = {
			onActivated = function() -- Line 151, Named "onActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.purchaseSubscriptionActivated(arg1.secondaryPaymentMethod)
			end;
			text = arg2.payAnotherWay;
			layoutOrder = 1;
		};
	}
	return module_2
end
local SubscriptionTitle_upvr = require(Parent_2.Subscription.SubscriptionTitle)
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local withStyle_upvr = UIBlox.Style.withStyle
local getPartialPageModalMiddleContentWidth_upvr = UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
return function(arg1) -- Line 161, Named "SubscriptionPurchasePrompt"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: SubscriptionTitle_upvr (readonly)
		[3]: MultiTextLocalizer_upvr (readonly)
		[4]: withStyle_upvr (readonly)
		[5]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[6]: PartialPageModal_upvr (readonly)
		[7]: createSubscribeButtonStacks_upvr (readonly)
		[8]: generateFooter_upvr (readonly)
		[9]: generatePromptText_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	local function calculatePromptHeight_upvr(arg1_3) -- Line 163, Named "calculatePromptHeight"
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: SubscriptionTitle_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		any_useState_result2_upvr(24 + SubscriptionTitle_upvr:getTitleHeight(arg1.screenSize.Y - 240) + 24 + arg1_3)
	end
	local module_5 = {
		keys = {
			titleText = {
				key = "IAPExperience.SubscriptionPurchasePrompt.Label.GetSubscription";
			};
			subscribe = {
				key = "Feature.Subscription.Action.Subscribe";
			};
			subscribeWithCreditDebitCard = {
				key = "Feature.Subscription.Action.SubscribeWithCreditDebitCard";
			};
			subscribeWithRobloxCredit = {
				key = "Feature.Subscription.Action.SubscribeWithRobloxCredit";
			};
			payAnotherWay = {
				key = "Feature.Subscription.Action.SubscribePayAnotherWay";
			};
			footerText = {
				key = "IAPExperience.SubscriptionPurchasePrompt.Label.TestFlowDisclaimer";
			};
		};
	}
	function module_5.render(arg1_4) -- Line 181
		--[[ Upvalues[11]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: getPartialPageModalMiddleContentWidth_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: PartialPageModal_upvr (copied, readonly)
			[6]: createSubscribeButtonStacks_upvr (copied, readonly)
			[7]: generateFooter_upvr (copied, readonly)
			[8]: any_useState_result1_upvr (readonly)
			[9]: SubscriptionTitle_upvr (copied, readonly)
			[10]: generatePromptText_upvr (copied, readonly)
			[11]: calculatePromptHeight_upvr (readonly)
		]]
		return withStyle_upvr(function(arg1_5) -- Line 182
			--[[ Upvalues[11]:
				[1]: getPartialPageModalMiddleContentWidth_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: React_upvr (copied, readonly)
				[4]: PartialPageModal_upvr (copied, readonly)
				[5]: arg1_4 (readonly)
				[6]: createSubscribeButtonStacks_upvr (copied, readonly)
				[7]: generateFooter_upvr (copied, readonly)
				[8]: any_useState_result1_upvr (copied, readonly)
				[9]: SubscriptionTitle_upvr (copied, readonly)
				[10]: generatePromptText_upvr (copied, readonly)
				[11]: calculatePromptHeight_upvr (copied, readonly)
			]]
			local Theme_upvr = arg1_5.Theme
			local Font_upvr = arg1_5.Font
			local getPartialPageModalMiddleContentWidth_upvr_result1_upvr = getPartialPageModalMiddleContentWidth_upvr(arg1.screenSize.X)
			local module_3 = {}
			local tbl_5 = {}
			local tbl = {
				BackgroundTransparency = 1;
				LayoutOrder = 3;
				Size = UDim2.new(1, 0, 0, math.min(any_useState_result1_upvr, arg1.screenSize.Y - 240));
				BorderSizePixel = 0;
			}
			local var50 = 2
			tbl.ZIndex = var50
			if arg1.screenSize.Y - 240 >= any_useState_result1_upvr then
				var50 = false
			else
				var50 = true
			end
			tbl.ScrollingEnabled = var50
			if arg1.screenSize.Y - 240 < any_useState_result1_upvr then
				var50 = 5
			else
				var50 = nil
			end
			tbl.ScrollBarThickness = var50
			var50 = Enum.ScrollingDirection.Y
			tbl.ScrollingDirection = var50
			var50 = false
			tbl.Selectable = var50
			var50 = UDim2.new(1, 0, 0, any_useState_result1_upvr)
			tbl.CanvasSize = var50
			var50 = {}
			var50.Padding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 24);
				PaddingBottom = UDim.new(0, 24);
			})
			var50.Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = UDim.new(0, 24);
			})
			var50.SubscriptionTitleSection = React_upvr.createElement(SubscriptionTitle_upvr, {
				subscriptionProviderName = arg1.subscriptionProviderName;
				name = arg1.name;
				displayPrice = arg1.displayPrice;
				period = arg1.period;
				disclaimerText = arg1.disclaimerText;
				layoutOrder = 2;
				contentHeight = arg1.screenSize.Y - 240;
				itemIcon = arg1.itemIcon;
			})
			var50[1] = generatePromptText_upvr(arg1, Font_upvr, Theme_upvr, getPartialPageModalMiddleContentWidth_upvr_result1_upvr, calculatePromptHeight_upvr)
			tbl_5.PromptScroll = React_upvr.createElement("ScrollingFrame", tbl, var50)
			module_3[1] = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			}, tbl_5)
			return React_upvr.createElement(PartialPageModal_upvr, {
				title = arg1_4.titleText;
				screenSize = arg1.screenSize;
				contentPadding = UDim.new(0, 24);
				buttonStackProps = {
					buttons = createSubscribeButtonStacks_upvr(arg1, arg1_4);
					buttonHeight = 48;
					forcedFillDirection = Enum.FillDirection.Vertical;
				};
				onCloseClicked = arg1.cancelPurchaseActivated;
				footerContent = function() -- Line 197, Named "footerContent"
					--[[ Upvalues[6]:
						[1]: generateFooter_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
						[3]: arg1_4 (copied, readonly)
						[4]: Font_upvr (readonly)
						[5]: Theme_upvr (readonly)
						[6]: getPartialPageModalMiddleContentWidth_upvr_result1_upvr (readonly)
					]]
					return generateFooter_upvr(arg1.isTestingMode, arg1_4.footerText, Font_upvr, Theme_upvr, getPartialPageModalMiddleContentWidth_upvr_result1_upvr)
				end;
			}, module_3)
		end)
	end
	return React_upvr.createElement(MultiTextLocalizer_upvr, module_5)
end