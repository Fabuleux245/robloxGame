-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:10
-- Luau version 6, Types version 3
-- Time taken: 0.004150 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local LocalizationService_upvr = game:GetService("LocalizationService")
local Localization = require(Parent.Localization)
local useLocalization_upvr = Localization.Hooks.useLocalization
local formatNumber_upvr = require(Parent_2.Utility.formatNumber)
local View_upvr = Foundation.View
local ProductDetails_upvr = require(Parent_2.Generic.ProductDetails)
local Text_upvr = Foundation.Text
local function MiddleContent_upvr(arg1) -- Line 51, Named "MiddleContent"
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
		tag = "col gap-xxlarge auto-y size-full-0 align-x-center align-y-center";
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
				DontHaveEnough = "IAPExperience.InsufficientRobux.Text.BuyRobux";
			}).DontHaveEnough:gsub("{robux}", utf8.char(57346)..' '..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.product.itemRobuxCost - arg1.balanceAmount));
			padding = {
				bottom = UDim.new(0, -12);
			};
			tag = "auto-xy text-label-medium content-emphasis text-align-x-center size-full-0";
		});
	})
end
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function ButtonStackInfo_upvr(arg1) -- Line 86, Named "ButtonStackInfo"
	--[[ Upvalues[2]:
		[1]: useLocalization_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
	]]
	local tbl_2 = {
		RobuxStoreButton = "IAPExperience.InsufficientRobux.Action.RobuxStore";
		ButtonCancel = "IAPExperience.InsufficientRobux.Action.Cancel";
	}
	local module = {}
	local Vertical = Enum.FillDirection.Vertical
	module.forcedFillDirection = Vertical
	if arg1.isQuest then
		Vertical = {}
		Vertical[1] = {
			props = {
				onActivated = arg1.buttons.cancelPurchaseActivated;
				text = useLocalization_upvr(tbl_2).ButtonCancel;
				inputIcon = arg1.buttons.cancelControllerIcon;
			};
		}
	else
		Vertical = {}
		local tbl = {
			buttonType = ButtonType_upvr.PrimaryContextual;
		}
		local tbl_3 = {
			onActivated = arg1.buttons.buyItemActivated;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.text = useLocalization_upvr(tbl_2).RobuxStoreButton
		tbl_3.inputIcon = arg1.buttons.buyItemControllerIcon
		tbl.props = tbl_3
		Vertical[1] = tbl
	end
	module.buttons = Vertical
	return module
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobuxUpsellModalTitle_upvr = require(script.Parent.RobuxUpsellModalTitle)
local RobuxUpsellModalFooter_upvr = require(script.Parent.RobuxUpsellModalFooter)
local function RobuxUpsellModalTooExpensive_upvr(arg1) -- Line 123, Named "RobuxUpsellModalTooExpensive"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: RobuxUpsellModalTitle_upvr (readonly)
		[4]: MiddleContent_upvr (readonly)
		[5]: ButtonStackInfo_upvr (readonly)
		[6]: RobuxUpsellModalFooter_upvr (readonly)
	]]
	return React_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = arg1.screenSize;
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		title = "";
		titleContent = function() -- Line 129, Named "titleContent"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: RobuxUpsellModalTitle_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			return React_upvr.createElement(RobuxUpsellModalTitle_upvr, {
				balanceAmount = arg1.balanceAmount;
				cancelPurchaseActivated = arg1.buttons.cancelPurchaseActivated;
			})
		end;
		middleContent = function() -- Line 135, Named "middleContent"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: MiddleContent_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			local module_2 = {
				product = arg1.product;
				balanceAmount = arg1.balanceAmount;
			}
			local isQuest = arg1.isQuest
			module_2.isQuest = isQuest
			if arg1.screenSize.X >= arg1.screenSize.Y then
				isQuest = false
			else
				isQuest = true
			end
			module_2.isPortrait = isQuest
			return React_upvr.createElement(MiddleContent_upvr, module_2)
		end;
		buttonStackInfo = ButtonStackInfo_upvr({
			buttons = arg1.buttons;
			isQuest = arg1.isQuest;
		});
		footerContent = function() -- Line 147, Named "footerContent"
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: RobuxUpsellModalFooter_upvr (copied, readonly)
			]]
			return React_upvr.createElement(RobuxUpsellModalFooter_upvr)
		end;
	})
end
local LocalizationProvider_upvr = Localization.LocalizationProvider
local Localization_upvr = require(Parent.AppLocales).Localization
return function(arg1) -- Line 153, Named "RobuxUpsellModalTooExpensiveContainer"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: RobuxUpsellModalTooExpensive_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		RobuxUpsellModalTooExpensive = React_upvr.createElement(RobuxUpsellModalTooExpensive_upvr, arg1);
	})
end