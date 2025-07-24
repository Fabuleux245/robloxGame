-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:11
-- Luau version 6, Types version 3
-- Time taken: 0.002720 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local UIBlox = require(Parent_2.UIBlox)
local Foundation = require(Parent_2.Foundation)
local LocalizationService_upvr = game:GetService("LocalizationService")
local Localization = require(Parent_2.Localization)
local useLocalization_upvr = Localization.Hooks.useLocalization
local formatNumber_upvr = require(Parent.Utility.formatNumber)
local View_upvr = Foundation.View
local ProductDetails_upvr = require(Parent.Generic.ProductDetails)
local Text_upvr = Foundation.Text
local function MiddleContent_upvr(arg1) -- Line 49, Named "MiddleContent"
	--[[ Upvalues[7]:
		[1]: useLocalization_upvr (readonly)
		[2]: formatNumber_upvr (readonly)
		[3]: LocalizationService_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: ProductDetails_upvr (readonly)
		[7]: Text_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "col gap-medium auto-y size-full-0 align-x-center align-y-center";
	}, {
		ProductDetails = React_upvr.createElement(ProductDetails_upvr, {
			layoutOrder = 1;
			isPortrait = arg1.isPortrait;
			model = arg1.product.model;
			itemIcon = arg1.product.itemIcon;
			itemName = arg1.product.itemName;
			itemRobuxCost = arg1.product.itemRobuxCost;
		});
		BuyRobuxDetails = React_upvr.createElement(Text_upvr, {
			LayoutOrder = 2;
			Text = useLocalization_upvr({
				YouNeed = "IAPExperience.InsufficientRobux.Text.YouNeed";
			}).YouNeed:gsub("{robux}", utf8.char(57346)..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.product.itemRobuxCost - arg1.balanceAmount));
			padding = {
				bottom = UDim.new(0, -12);
			};
			tag = "auto-xy text-body-medium content-emphasis text-align-x-left size-full-0 text-wrap padding-x-small line-height-";
		});
	})
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobuxUpsellModalTitle_upvr = require(script.Parent.RobuxUpsellModalTitle)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function RobuxUpsellModalTooExpensiveFallback_upvr(arg1) -- Line 88, Named "RobuxUpsellModalTooExpensiveFallback"
	--[[ Upvalues[6]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: InteractiveAlert_upvr (readonly)
		[4]: RobuxUpsellModalTitle_upvr (readonly)
		[5]: MiddleContent_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	return React_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = arg1.screenSize;
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		title = "";
		titleContent = function() -- Line 97, Named "titleContent"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: RobuxUpsellModalTitle_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			return React_upvr.createElement(RobuxUpsellModalTitle_upvr, {
				balanceAmount = arg1.balanceAmount;
				cancelPurchaseActivated = arg1.doneActivated;
			})
		end;
		middleContent = function() -- Line 103, Named "middleContent"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: MiddleContent_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			local module = {
				product = arg1.product;
				isQuest = arg1.isQuest;
			}
			local balanceAmount = arg1.balanceAmount
			module.balanceAmount = balanceAmount
			if arg1.screenSize.X >= arg1.screenSize.Y then
				balanceAmount = false
			else
				balanceAmount = true
			end
			module.isPortrait = balanceAmount
			return React_upvr.createElement(MiddleContent_upvr, module)
		end;
		buttonStackInfo = {
			buttons = {{
				buttonType = ButtonType_upvr.PrimaryContextual;
				props = {
					onActivated = arg1.doneActivated;
					text = useLocalization_upvr({
						OK = "IAPExperience.PurchaseError.Text.Ok";
					}).OK;
					inputIcon = arg1.doneControllerIcon;
				};
			}};
		};
	})
end
local LocalizationProvider_upvr = Localization.LocalizationProvider
local Localization_2_upvr = require(Parent_2.AppLocales).Localization
return function(arg1) -- Line 126, Named "RobuxUpsellModalTooExpensiveFallbackContainer"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_2_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: RobuxUpsellModalTooExpensiveFallback_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_2_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		RobuxUpsellModalTooExpensiveFallback = React_upvr.createElement(RobuxUpsellModalTooExpensiveFallback_upvr, arg1);
	})
end