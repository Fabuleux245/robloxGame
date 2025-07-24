-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:00
-- Luau version 6, Types version 3
-- Time taken: 0.003369 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local LocalizationService_upvr = game:GetService("LocalizationService")
local Localization = require(Parent.Localization)
local useLocalization_upvr = Localization.Hooks.useLocalization
local formatNumber_upvr = require(Parent_2.Utility.formatNumber)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ProductDetails_upvr = require(Parent_2.Generic.ProductDetails)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Text_upvr = require(Parent.Foundation).Text
local function ProductPurchaseModal_upvr(arg1) -- Line 51, Named "ProductPurchaseModal"
	--[[ Upvalues[8]:
		[1]: useLocalization_upvr (readonly)
		[2]: formatNumber_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: ProductDetails_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: Text_upvr (readonly)
	]]
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		BuyItem = "IAPExperience.PurchasePrompt.Title.BuyItem";
		RemainingBalance = "IAPExperience.PurchasePrompt.Text.RemainingBalanceV2";
	})
	local module = {
		screenSize = arg1.screenSize;
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		title = useLocalization_upvr_result1_upvr.BuyItem;
		onCloseClicked = function() -- Line 70, Named "onCloseClicked"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if not arg1.buttons.isDisabled then
				arg1.buttons.cancelActivated()
			end
		end;
		middleContent = function() -- Line 75, Named "middleContent"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: ProductDetails_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			return React_upvr.createElement(ProductDetails_upvr, {
				isPortrait = false;
				layoutOrder = 1;
				itemIcon = arg1.product.itemIcon;
				itemName = arg1.product.itemName;
			})
		end;
		buttonStackInfo = {
			forcedFillDirection = Enum.FillDirection.Vertical;
			buttons = {{
				buttonType = ButtonType_upvr.PrimaryContextual;
				props = {
					isDisabled = arg1.buttons.isDisabled;
					isDelayedInput = arg1.buttons.buyItemIsDelayedInput;
					enableInputDelayed = arg1.buttons.buyItemEnableInputDelayed;
					onActivated = arg1.buttons.buyItemActivated;
					text = utf8.char(57346)..' '..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.product.itemRobuxCost);
					inputIcon = arg1.buttons.buyItemControllerIcon;
				};
			}};
		};
	}
	local var21_upvr = utf8.char(57346)..' '..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.balanceAmount - arg1.product.itemRobuxCost)
	function module.footerContent() -- Line 99
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: Text_upvr (copied, readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
			[4]: var21_upvr (readonly)
		]]
		return React_upvr.createElement(Text_upvr, {
			Text = useLocalization_upvr_result1_upvr.RemainingBalance:gsub("{robux}", var21_upvr);
			tag = "content-muted text-caption-small size-full align-x-center margin-top-small";
		})
	end
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end
local LocalizationProvider_upvr = Localization.LocalizationProvider
local Localization_upvr = require(Parent.AppLocales).Localization
return function(arg1) -- Line 108, Named "ProductPurchaseModalContainer"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: ProductPurchaseModal_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		ProductPurchaseModal = React_upvr.createElement(ProductPurchaseModal_upvr, arg1);
	})
end