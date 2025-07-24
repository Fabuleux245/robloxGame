-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:09
-- Luau version 6, Types version 3
-- Time taken: 0.009534 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local View_upvr = Foundation.View
local LocalizationService_upvr = game:GetService("LocalizationService")
local Localization = require(Parent.Localization)
local useLocalization_upvr = Localization.Hooks.useLocalization
local MultiplePackageUpsellCounter = require(Parent_2.Generic.Events.MultiplePackageUpsellCounter)
local BadgeType_upvr = require(Parent_2.Enums.BadgeType)
local Text_upvr = Foundation.Text
local formatNumber_upvr = require(Parent_2.Utility.formatNumber)
local YellowBadge_upvr = require(Parent_2.Generic.YellowBadge)
local function UpsellProductDetails_upvr(arg1) -- Line 56, Named "UpsellProductDetails"
	--[[ Upvalues[8]:
		[1]: useLocalization_upvr (readonly)
		[2]: BadgeType_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: Text_upvr (readonly)
		[6]: formatNumber_upvr (readonly)
		[7]: LocalizationService_upvr (readonly)
		[8]: YellowBadge_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		Popular = "IAPExperience.RobuxUpsell.Text.PopularItem";
		LastPurchased = "IAPExperience.RobuxUpsell.Text.LastPurchased";
	})
	if arg1.badgeType == BadgeType_upvr.Popular then
		-- KONSTANTWARNING: GOTO [30] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 28 start (CF ANALYSIS FAILED)
	if arg1.badgeType == BadgeType_upvr.LastPurchased then
		-- KONSTANTWARNING: GOTO [30] #21
	end
	-- KONSTANTERROR: [19] 14. Error Block 28 end (CF ANALYSIS FAILED)
end
local ProductDetails_upvr = require(Parent_2.Generic.ProductDetails)
local function MiddleContent_upvr(arg1) -- Line 141, Named "MiddleContent"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: View_upvr (readonly)
		[3]: ProductDetails_upvr (readonly)
		[4]: UpsellProductDetails_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_9 = {
		layoutOrder = 1;
	}
	local isPortrait = arg1.isPortrait
	if isPortrait then
		if #arg1.upsellSuggestions ~= 1 then
			isPortrait = false
		else
			isPortrait = true
		end
	end
	tbl_9.isPortrait = isPortrait
	tbl_9.model = arg1.product.model
	tbl_9.itemIcon = arg1.product.itemIcon
	tbl_9.itemName = arg1.product.itemName
	tbl_9.itemRobuxCost = arg1.product.itemRobuxCost
	tbl_9.badgeType = arg1.product.badgeType
	module.ProductDetails = React_upvr.createElement(ProductDetails_upvr, tbl_9)
	local tbl_3 = {}
	local tbl_8 = {
		layoutOrder = 1;
		product = arg1.upsellSuggestions[1];
	}
	if arg1.selectedUpsellIndex ~= 1 then
	else
	end
	tbl_8.selected = true
	local function onSelected() -- Line 162
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.onUpsellSuggestionsSelected(1)
	end
	tbl_8.onSelected = onSelected
	tbl_3.UpsellPackage1 = React_upvr.createElement(UpsellProductDetails_upvr, tbl_8)
	if 1 < #arg1.upsellSuggestions then
		local tbl_10 = {
			layoutOrder = 2;
			product = arg1.upsellSuggestions[2];
		}
		if arg1.selectedUpsellIndex ~= 2 then
		else
		end
		tbl_10.selected = true
		function tbl_10.onSelected() -- Line 171
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.onUpsellSuggestionsSelected(2)
		end
		tbl_10.badgeType = arg1.upsellSuggestions[2].badgeType
	else
	end
	tbl_3.UpsellPackage2 = nil
	module.UpsellSuggestions = React_upvr.createElement(View_upvr, {
		LayoutOrder = 2;
		tag = "col gap-medium auto-y size-full-0 align-x-center align-y-center";
	}, tbl_3)
	return React_upvr.createElement(View_upvr, {
		tag = "col gap-xxlarge auto-y size-full-0 align-x-center align-y-center";
	}, module)
end
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function ButtonStackInfo_upvr(arg1) -- Line 195, Named "ButtonStackInfo"
	--[[ Upvalues[2]:
		[1]: useLocalization_upvr (readonly)
		[2]: ButtonType_upvr (readonly)
	]]
	local tbl_6 = {
		BuyRobuxButton = "IAPExperience.RobuxUpsell.Action.BuyRobuxAndItem";
		ButtonCancel = "IAPExperience.RobuxUpsell.Action.Cancel";
		LoadingText = "IAPExperience.RobuxUpsell.Text.Loading";
	}
	local module_3 = {}
	local Vertical = Enum.FillDirection.Vertical
	module_3.forcedFillDirection = Vertical
	if arg1.isQuest then
		Vertical = {}
		Vertical[1] = {
			props = {
				onActivated = arg1.buttons.cancelPurchaseActivated;
				text = useLocalization_upvr(tbl_6).ButtonCancel;
				inputIcon = arg1.buttons.cancelControllerIcon;
			};
		}
	else
		Vertical = {}
		local tbl_11 = {
			buttonType = ButtonType_upvr.PrimaryContextual;
		}
		local tbl_4 = {
			isDelayedInput = arg1.buttons.buyItemisDelayedInput;
			enableInputDelayed = arg1.buttons.buyItemEnableInputDelayed;
			onActivated = arg1.buttons.buyItemActivated;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.text = useLocalization_upvr(tbl_6).BuyRobuxButton
		tbl_4.inputIcon = arg1.buttons.buyItemControllerIcon
		tbl_11.props = tbl_4
		Vertical[1] = tbl_11
	end
	module_3.buttons = Vertical
	return module_3
end
local logger_upvr = require(Parent_2.Utility.logger)
local default_upvr = require(Parent.LoggingProtocol).default
local MultiplePackageUpsellShownCounter_upvr = MultiplePackageUpsellCounter.MultiplePackageUpsellShownCounter
local MultiplePackageUpsellSelectedCounter_upvr = MultiplePackageUpsellCounter.MultiplePackageUpsellSelectedCounter
local MultiplePackageUpsellModalClosedCounter_upvr = MultiplePackageUpsellCounter.MultiplePackageUpsellModalClosedCounter
local MultiplePackageUpsellModalBuyClickedCounter_upvr = MultiplePackageUpsellCounter.MultiplePackageUpsellModalBuyClickedCounter
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local RobuxUpsellModalTitle_upvr = require(script.Parent.RobuxUpsellModalTitle)
local RobuxUpsellModalFooter_upvr = require(script.Parent.RobuxUpsellModalFooter)
local function RobuxUpsellModal_upvr(arg1) -- Line 240, Named "RobuxUpsellModal"
	--[[ Upvalues[12]:
		[1]: React_upvr (readonly)
		[2]: logger_upvr (readonly)
		[3]: default_upvr (readonly)
		[4]: MultiplePackageUpsellShownCounter_upvr (readonly)
		[5]: MultiplePackageUpsellSelectedCounter_upvr (readonly)
		[6]: MultiplePackageUpsellModalClosedCounter_upvr (readonly)
		[7]: MultiplePackageUpsellModalBuyClickedCounter_upvr (readonly)
		[8]: InteractiveAlert_upvr (readonly)
		[9]: RobuxUpsellModalTitle_upvr (readonly)
		[10]: MiddleContent_upvr (readonly)
		[11]: ButtonStackInfo_upvr (readonly)
		[12]: RobuxUpsellModalFooter_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 242
		--[[ Upvalues[4]:
			[1]: logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: default_upvr (copied, readonly)
			[4]: MultiplePackageUpsellShownCounter_upvr (copied, readonly)
		]]
		local tbl_7 = {
			message = "Multiple Package Upsell Modal Shown";
			suggestionCount = #arg1.upsellSuggestions;
			screenHeight = arg1.screenSize.Y;
		}
		local X = arg1.screenSize.X
		tbl_7.screenWidth = X
		local var46
		if arg1.screenSize.X >= arg1.screenSize.Y then
			X = false
		else
			X = true
		end
		tbl_7.portrait = X
		logger_upvr.debug(tbl_7)
		local tbl = {}
		var46 = #arg1.upsellSuggestions
		tbl.suggestionCount = var46
		var46 = arg1.screenSize.Y
		tbl.screenHeight = var46
		var46 = arg1.screenSize.X
		tbl.screenWidth = var46
		if arg1.screenSize.X >= arg1.screenSize.Y then
			var46 = false
		else
			var46 = true
		end
		tbl.portrait = var46
		default_upvr:logRobloxTelemetryCounter(MultiplePackageUpsellShownCounter_upvr, 1, tbl)
	end, {arg1.upsellSuggestions})
	local function var49_upvr(arg1_2) -- Line 259
		--[[ Upvalues[4]:
			[1]: logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: default_upvr (copied, readonly)
			[4]: MultiplePackageUpsellSelectedCounter_upvr (copied, readonly)
		]]
		local tbl_5 = {
			message = "Multiple Package Upsell Option Selected";
			suggestionCount = #arg1.upsellSuggestions;
			previousIndex = arg1.selectedUpsellIndex;
		}
		tbl_5.selectedIndex = arg1_2
		logger_upvr.debug(tbl_5)
		local tbl_2 = {
			suggestionCount = #arg1.upsellSuggestions;
			previousIndex = arg1.selectedUpsellIndex;
		}
		tbl_2.selectedIndex = arg1_2
		default_upvr:logRobloxTelemetryCounter(MultiplePackageUpsellSelectedCounter_upvr, 1, tbl_2)
		arg1.onUpsellSuggestionsSelected(arg1_2)
	end
	local function var52_upvr() -- Line 275
		--[[ Upvalues[4]:
			[1]: logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: default_upvr (copied, readonly)
			[4]: MultiplePackageUpsellModalClosedCounter_upvr (copied, readonly)
		]]
		logger_upvr.debug({
			message = "Multiple Package Upsell Modal Closed";
			suggestionCount = #arg1.upsellSuggestions;
		})
		default_upvr:logRobloxTelemetryCounter(MultiplePackageUpsellModalClosedCounter_upvr, 1, {
			suggestionCount = #arg1.upsellSuggestions;
		})
		arg1.buttons.cancelPurchaseActivated()
	end
	local buyItemActivated_upvr = arg1.buttons.buyItemActivated
	arg1.buttons.buyItemActivated = function() -- Line 288
		--[[ Upvalues[5]:
			[1]: logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: default_upvr (copied, readonly)
			[4]: MultiplePackageUpsellModalBuyClickedCounter_upvr (copied, readonly)
			[5]: buyItemActivated_upvr (readonly)
		]]
		logger_upvr.debug({
			message = "Multiple Package Upsell Modal Buy Clicked";
			suggestionCount = #arg1.upsellSuggestions;
			selectedIndex = arg1.selectedUpsellIndex;
		})
		default_upvr:logRobloxTelemetryCounter(MultiplePackageUpsellModalBuyClickedCounter_upvr, 1, {
			suggestionCount = #arg1.upsellSuggestions;
			selectedIndex = arg1.selectedUpsellIndex;
		})
		buyItemActivated_upvr()
	end
	return React_upvr.createElement(InteractiveAlert_upvr, {
		screenSize = arg1.screenSize;
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		title = "";
		titleContent = function() -- Line 307, Named "titleContent"
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: RobuxUpsellModalTitle_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: var52_upvr (readonly)
			]]
			return React_upvr.createElement(RobuxUpsellModalTitle_upvr, {
				balanceAmount = arg1.userBalance;
				cancelPurchaseActivated = var52_upvr;
			})
		end;
		middleContent = function() -- Line 313, Named "middleContent"
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: MiddleContent_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: var49_upvr (readonly)
			]]
			local module_2 = {
				product = arg1.product;
				upsellSuggestions = arg1.upsellSuggestions;
				selectedUpsellIndex = arg1.selectedUpsellIndex;
			}
			local var62 = var49_upvr
			module_2.onUpsellSuggestionsSelected = var62
			if arg1.screenSize.X >= arg1.screenSize.Y then
				var62 = false
			else
				var62 = true
			end
			module_2.isPortrait = var62
			return React_upvr.createElement(MiddleContent_upvr, module_2)
		end;
		buttonStackInfo = ButtonStackInfo_upvr({
			buttons = arg1.buttons;
			isQuest = arg1.isQuest;
		});
		footerContent = function() -- Line 326, Named "footerContent"
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
return function(arg1) -- Line 332, Named "RobuxUpsellModalContainer"
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