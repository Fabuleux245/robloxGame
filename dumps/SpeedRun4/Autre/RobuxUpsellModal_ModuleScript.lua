-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:08
-- Luau version 6, Types version 3
-- Time taken: 0.005427 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local UIBlox = require(Parent_2.UIBlox)
local Foundation = require(Parent_2.Foundation)
local LocalizationService_upvr = game:GetService("LocalizationService")
local Localization = require(Parent_2.Localization)
local SinglePackageUpsellCounter = require(Parent.Generic.Events.SinglePackageUpsellCounter)
local View_upvr = Foundation.View
local ProductDetails_upvr = require(Parent.Generic.ProductDetails)
local Text_upvr = Foundation.Text
local formatNumber_upvr = require(Parent.Utility.formatNumber)
local function MiddleContent_upvr(arg1) -- Line 63, Named "MiddleContent"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: ProductDetails_upvr (readonly)
		[4]: Text_upvr (readonly)
		[5]: formatNumber_upvr (readonly)
		[6]: LocalizationService_upvr (readonly)
	]]
	local module_3 = {
		ProductDetails = React_upvr.createElement(ProductDetails_upvr, {
			layoutOrder = 1;
			isPortrait = arg1.isPortrait;
			model = arg1.product.model;
			itemIcon = arg1.product.itemIcon;
			itemName = arg1.product.itemName;
			itemRobuxCost = arg1.product.itemRobuxCost;
			badgeType = arg1.product.badgeType;
		});
	}
	local tbl_5 = {}
	local tbl_2 = {
		RobuxAmount = React_upvr.createElement(Text_upvr, {
			LayoutOrder = 1;
			Text = utf8.char(57346)..' '..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.upsell.robuxPurchaseAmount);
			tag = "auto-xy text-title-large content-emphasis text-align-x-left";
		});
	}
	local robuxPurchaseAmountBeforeBonus = arg1.upsell.robuxPurchaseAmountBeforeBonus
	if robuxPurchaseAmountBeforeBonus then
		robuxPurchaseAmountBeforeBonus = React_upvr.createElement
		robuxPurchaseAmountBeforeBonus = robuxPurchaseAmountBeforeBonus(Text_upvr, {
			LayoutOrder = 2;
			RichText = true;
			Text = "<s>"..utf8.char(57346)..formatNumber_upvr(LocalizationService_upvr.RobloxLocaleId, arg1.upsell.robuxPurchaseAmountBeforeBonus).."</s>";
			tag = "auto-xy text-title-large content-muted text-align-x-left";
		})
	end
	tbl_2.RobuxAmountBonus = robuxPurchaseAmountBeforeBonus
	tbl_5.RobuxAmountContainer = React_upvr.createElement(View_upvr, {
		tag = "auto-xy row gap-small";
	}, tbl_2)
	tbl_5.RobuxPrice = React_upvr.createElement(Text_upvr, {
		LayoutOrder = 2;
		Text = arg1.upsell.robuxPurchaseCost or "";
		tag = "auto-xy text-title-large content-emphasis text-align-x-right";
	})
	module_3.UpsellPackageDetails = React_upvr.createElement(View_upvr, {
		LayoutOrder = 2;
		tag = "row flex-between size-full-1400 align-y-center bg-surface-300 radius-medium padding-large stroke-system-contrast stroke-thick";
	}, tbl_5)
	return React_upvr.createElement(View_upvr, {
		tag = "col gap-xxlarge auto-y size-full-0 align-x-center align-y-center";
	}, module_3)
end
local useLocalization_upvr = Localization.Hooks.useLocalization
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function ButtonStackInfo_upvr(arg1) -- Line 125, Named "ButtonStackInfo"
	--[[ Upvalues[2]:
		[1]: useLocalization_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
	]]
	local tbl_3 = {}
	local var27
	if arg1.buttons.opensBuyRobuxPage then
		var27 = "IAPExperience.RobuxUpsell.Action.BuyRobux"
	else
		var27 = "IAPExperience.RobuxUpsell.Action.BuyRobuxAndItem"
	end
	tbl_3.BuyRobuxButton = var27
	var27 = "IAPExperience.RobuxUpsell.Action.Cancel"
	tbl_3.ButtonCancel = var27
	var27 = "IAPExperience.RobuxUpsell.Text.Loading"
	tbl_3.LoadingText = var27
	local module = {}
	var27 = Enum.FillDirection.Vertical
	module.forcedFillDirection = var27
	if arg1.isQuest then
		var27 = {}
		var27[1] = {
			props = {
				onActivated = arg1.buttons.cancelPurchaseActivated;
				text = useLocalization_upvr(tbl_3).ButtonCancel;
				inputIcon = arg1.buttons.cancelControllerIcon;
			};
		}
	else
		var27 = {}
		local tbl = {
			buttonType = ButtonType_upvr.PrimaryContextual;
		}
		local tbl_7 = {
			isDisabled = arg1.buttons.buyItemDisabled;
			isDelayedInput = arg1.buttons.buyItemisDelayedInput;
			enableInputDelayed = arg1.buttons.buyItemEnableInputDelayed;
			onActivated = arg1.buttons.buyItemActivated;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_7.text = useLocalization_upvr(tbl_3).BuyRobuxButton
		tbl_7.inputIcon = arg1.buttons.buyItemControllerIcon
		tbl.props = tbl_7
		var27[1] = tbl
	end
	module.buttons = var27
	return module
end
local logger_upvr = require(Parent.Utility.logger)
local default_upvr = require(Parent_2.LoggingProtocol).default
local SinglePackageUpsellShownCounter_upvr = SinglePackageUpsellCounter.SinglePackageUpsellShownCounter
local SinglePackageUpsellModalClosedCounter_upvr = SinglePackageUpsellCounter.SinglePackageUpsellModalClosedCounter
local SinglePackageUpsellModalBuyClickedCounter_upvr = SinglePackageUpsellCounter.SinglePackageUpsellModalBuyClickedCounter
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobuxUpsellModalTitle_upvr = require(script.Parent.RobuxUpsellModalTitle)
local RobuxUpsellModalFooter_upvr = require(script.Parent.RobuxUpsellModalFooter)
local function RobuxUpsellModal_upvr(arg1) -- Line 168, Named "RobuxUpsellModal"
	--[[ Upvalues[11]:
		[1]: React_upvr (readonly)
		[2]: logger_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: SinglePackageUpsellShownCounter_upvr (readonly)
		[5]: SinglePackageUpsellModalClosedCounter_upvr (readonly)
		[6]: SinglePackageUpsellModalBuyClickedCounter_upvr (readonly)
		[7]: InteractiveAlert_upvr (readonly)
		[8]: RobuxUpsellModalTitle_upvr (readonly)
		[9]: MiddleContent_upvr (readonly)
		[10]: ButtonStackInfo_upvr (readonly)
		[11]: RobuxUpsellModalFooter_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 170
		--[[ Upvalues[4]:
			[1]: logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: default_upvr (copied, readonly)
			[4]: SinglePackageUpsellShownCounter_upvr (copied, readonly)
		]]
		local tbl_4 = {
			message = "Single Package Upsell Modal Shown";
			screenHeight = arg1.screenSize.Y;
		}
		local X = arg1.screenSize.X
		tbl_4.screenWidth = X
		local var44
		if arg1.screenSize.X >= arg1.screenSize.Y then
			X = false
		else
			X = true
		end
		tbl_4.portrait = X
		logger_upvr.debug(tbl_4)
		local tbl_6 = {}
		var44 = arg1.screenSize.Y
		tbl_6.screenHeight = var44
		var44 = arg1.screenSize.X
		tbl_6.screenWidth = var44
		if arg1.screenSize.X >= arg1.screenSize.Y then
			var44 = false
		else
			var44 = true
		end
		tbl_6.portrait = var44
		default_upvr:logRobloxTelemetryCounter(SinglePackageUpsellShownCounter_upvr, 1, tbl_6)
	end, {})
	local function var46_upvr() -- Line 185
		--[[ Upvalues[4]:
			[1]: logger_upvr (copied, readonly)
			[2]: default_upvr (copied, readonly)
			[3]: SinglePackageUpsellModalClosedCounter_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		logger_upvr.debug({
			message = "Single Package Upsell Modal Closed";
		})
		default_upvr:logRobloxTelemetryCounter(SinglePackageUpsellModalClosedCounter_upvr, 1, {})
		arg1.buttons.cancelPurchaseActivated()
	end
	local buyItemActivated_upvr = arg1.buttons.buyItemActivated
	arg1.buttons.buyItemActivated = function() -- Line 195
		--[[ Upvalues[4]:
			[1]: logger_upvr (copied, readonly)
			[2]: default_upvr (copied, readonly)
			[3]: SinglePackageUpsellModalBuyClickedCounter_upvr (copied, readonly)
			[4]: buyItemActivated_upvr (readonly)
		]]
		logger_upvr.debug({
			message = "Single Package Upsell Modal Buy Clicked";
		})
		default_upvr:logRobloxTelemetryCounter(SinglePackageUpsellModalBuyClickedCounter_upvr, 1, {})
		buyItemActivated_upvr()
	end
	return React_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = arg1.screenSize;
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		title = "";
		titleContent = function() -- Line 209, Named "titleContent"
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: RobuxUpsellModalTitle_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: var46_upvr (readonly)
			]]
			return React_upvr.createElement(RobuxUpsellModalTitle_upvr, {
				balanceAmount = arg1.upsell.balanceAmount;
				cancelPurchaseActivated = var46_upvr;
			})
		end;
		middleContent = function() -- Line 215, Named "middleContent"
			--[[ Upvalues[3]:
				[1]: React_upvr (copied, readonly)
				[2]: MiddleContent_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			local module_2 = {
				product = arg1.product;
			}
			local upsell = arg1.upsell
			module_2.upsell = upsell
			if arg1.screenSize.X >= arg1.screenSize.Y then
				upsell = false
			else
				upsell = true
			end
			module_2.isPortrait = upsell
			return React_upvr.createElement(MiddleContent_upvr, module_2)
		end;
		buttonStackInfo = ButtonStackInfo_upvr({
			buttons = arg1.buttons;
			isQuest = arg1.isQuest;
		});
		footerContent = function() -- Line 226, Named "footerContent"
			--[[ Upvalues[2]:
				[1]: React_upvr (copied, readonly)
				[2]: RobuxUpsellModalFooter_upvr (copied, readonly)
			]]
			return React_upvr.createElement(RobuxUpsellModalFooter_upvr)
		end;
	})
end
local LocalizationProvider_upvr = Localization.LocalizationProvider
local Localization_upvr = require(Parent_2.AppLocales).Localization
return function(arg1) -- Line 232, Named "RobuxUpsellModalContainer"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: LocalizationProvider_upvr (readonly)
		[3]: Localization_upvr (readonly)
		[4]: LocalizationService_upvr (readonly)
		[5]: RobuxUpsellModal_upvr (readonly)
	]]
	return React_upvr.createElement(LocalizationProvider_upvr, {
		localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
	}, {
		RobuxUpsellModal = React_upvr.createElement(RobuxUpsellModal_upvr, arg1);
	})
end