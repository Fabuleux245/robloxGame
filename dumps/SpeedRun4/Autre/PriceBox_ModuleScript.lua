-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:28
-- Luau version 6, Types version 3
-- Time taken: 0.002581 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_4_upvr = {
	heading = "CoreScripts.BulkPurchasePrompt.RequestPrompt.PriceBox.TotalCost";
	currentBalanceLine = "CoreScripts.BulkPurchasePrompt.RequestPrompt.PriceBox.CurrentBalance";
	projectedBalanceLine = "CoreScripts.BulkPurchasePrompt.RequestPrompt.PriceBox.NewBalance";
	missingRobuxLine = "CoreScripts.BulkPurchasePrompt.RequestPrompt.PriceBox.MissingRobux";
	confirmCTA = "CoreScripts.BulkPurchasePrompt.RequestPrompt.PriceBox.ConfirmCTA";
	buyRobuxCTA = "CoreScripts.BulkPurchasePrompt.RequestPrompt.PriceBox.BuyRobuxCTA";
}
local function mapTokens_upvr(arg1) -- Line 25, Named "mapTokens"
	return {
		background = arg1.Semantic.Color.Background.Contrast.Color3;
		padding = arg1.Global.Space_300;
		cornerRadius = arg1.Semantic.Radius.Medium;
		buttonMarginTop = arg1.Global.Space_300;
		headerMarginBottom = arg1.Global.Space_200;
		lineItemSpacing = arg1.Global.Space_50;
		buttonHeight = arg1.Global.Size_450;
	}
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local Box_upvr = require(script.Parent.Box)
local PriceBoxLine_upvr = require(script.Parent.PriceBoxLine)
local PriceBoxLineVariantEnum_upvr = require(BulkPurchaseApp.Enums.PriceBoxLineVariantEnum)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local FFlagAddTimerToBulkPurchaseBuyButton_upvr = require(BulkPurchaseApp.Flags.FFlagAddTimerToBulkPurchaseBuyButton)
local FIntBulkPurchaseEnabledCountdownMS_upvr = require(BulkPurchaseApp.Flags.FIntBulkPurchaseEnabledCountdownMS)
return function(arg1) -- Line 46, Named "PriceBox"
	--[[ Upvalues[12]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: mapTokens_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Box_upvr (readonly)
		[7]: PriceBoxLine_upvr (readonly)
		[8]: PriceBoxLineVariantEnum_upvr (readonly)
		[9]: Button_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: FFlagAddTimerToBulkPurchaseBuyButton_upvr (readonly)
		[12]: FIntBulkPurchaseEnabledCountdownMS_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
	local var6_result1 = useDesignTokens_upvr(mapTokens_upvr)
	local var7_result1 = useLocalization_upvr(tbl_4_upvr)
	local tbl_6 = {
		padding = var6_result1.padding;
		cornerRadius = UDim.new(0, var6_result1.cornerRadius);
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = var6_result1.background;
		BorderSizePixel = 0;
	}
	local tbl_2 = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
			Padding = UDim.new(0, var6_result1.headerMarginBottom);
		});
		PriceBoxHeader = React_upvr.createElement(PriceBoxLine_upvr, {
			text = var7_result1.heading;
			amount = arg1.totalCost;
			highlight = true;
			LayoutOrder = 1;
		});
	}
	local tbl = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
			Padding = UDim.new(0, var6_result1.lineItemSpacing);
		});
	}
	local tbl_5 = {
		text = var7_result1.currentBalanceLine;
		amount = arg1.currentBalance;
	}
	local var29 = 1
	tbl_5.LayoutOrder = var29
	tbl.PriceBoxCurrentBalance = React_upvr.createElement(PriceBoxLine_upvr, tbl_5)
	local tbl_3 = {}
	if arg1.missingRobux then
		var29 = var7_result1.missingRobuxLine
	else
		var29 = var7_result1.projectedBalanceLine
	end
	tbl_3.text = var29
	tbl_3.amount = math.abs(arg1.totalCost - arg1.currentBalance)
	if arg1.missingRobux then
		-- KONSTANTWARNING: GOTO [250] #164
	end
	-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [249] 163. Error Block 43 start (CF ANALYSIS FAILED)
	tbl_3.variant = nil
	tbl_3.LayoutOrder = 2
	tbl.PriceBoxProjectedBalance = React_upvr.createElement(PriceBoxLine_upvr, tbl_3)
	tbl_2.Something = React_upvr.createElement("Frame", {
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}, tbl)
	;({
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
			Padding = UDim.new(0, var6_result1.buttonMarginTop);
		});
	}).LineItems = React_upvr.createElement("Frame", {
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, tbl_2)
	if arg1.missingRobux then
		-- KONSTANTWARNING: GOTO [277] #182
	end
	-- KONSTANTERROR: [249] 163. Error Block 43 end (CF ANALYSIS FAILED)
end