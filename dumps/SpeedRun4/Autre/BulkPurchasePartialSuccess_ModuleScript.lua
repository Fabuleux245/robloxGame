-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:36
-- Luau version 6, Types version 3
-- Time taken: 0.003336 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	heading = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.Heading";
	unsuccessfulHeading = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorHeading";
	notice = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.Notice";
	itemListSuccessfulCount = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemListSuccessfulCount";
	itemListUnsuccessfulCount = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemListUnsuccessfulCount";
	itemListSuccessfulHeading = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemListSuccessfulHeading";
	itemListUnsuccessfulHeading = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.ItemListUnsuccessfulHeading";
	robuxSpent = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.PriceBox.RobuxSpent";
	currentBalance = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.PriceBox.CurrentBalance";
	dismissCTA = "CoreScripts.BulkPurchasePrompt.PartialPurchaseCompletedPrompt.PriceBox.DismissCTA";
}
local function mapTokens_upvr(arg1) -- Line 41, Named "mapTokens"
	return {
		boxBackground = arg1.Semantic.Color.Background.Contrast.Color3;
		boxPadding = arg1.Global.Space_300;
		boxCornerRadius = arg1.Semantic.Radius.Medium;
		buttonMarginTop = arg1.Global.Space_200;
		buttonHeight = arg1.Global.Size_450;
		lineItemSpacing = arg1.Global.Space_50;
		noticeFontStyle = arg1.Semantic.Typography.Body;
		noticeColorStyle = arg1.Semantic.Color.Text.Muted;
		noticeMarginBottom = arg1.Global.Space_300;
	}
end
local ItemStatus_upvr = require(BulkPurchaseApp.Components.ItemStatus)
local function mapBulkPurchasePartialSuccessItemsToPresentation_upvr(arg1) -- Line 55, Named "mapBulkPurchasePartialSuccessItemsToPresentation"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ItemStatus_upvr (readonly)
	]]
	local module = {}
	for _, v in arg1 do
		table.insert(module, {
			id = v.id;
			image = v.image;
			name = v.name;
			endSlot = React_upvr.createElement(ItemStatus_upvr, {
				status = v.status;
			});
		})
	end
	return module
end
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FullPagePrompt_upvr = require(BulkPurchaseApp.Components.FullPagePrompt)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local FullPagePromptTwoPanelLayout_upvr = require(BulkPurchaseApp.Components.FullPagePromptTwoPanelLayout)
local FullPagePromptScrollList_upvr = require(BulkPurchaseApp.Components.FullPagePromptScrollList)
local ItemListHeader_upvr = require(BulkPurchaseApp.Components.ItemListHeader)
local ItemList_upvr = require(BulkPurchaseApp.Components.ItemList)
local Divider_upvr = require(BulkPurchaseApp.Components.Divider)
local Box_upvr = require(BulkPurchaseApp.Components.Box)
local PriceBoxLine_upvr = require(BulkPurchaseApp.Components.PriceBoxLine)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 76, Named "BulkPurchasePartialSuccess"
	--[[ Upvalues[17]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: mapTokens_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: FullPagePrompt_upvr (readonly)
		[7]: StyledTextLabel_upvr (readonly)
		[8]: FullPagePromptTwoPanelLayout_upvr (readonly)
		[9]: FullPagePromptScrollList_upvr (readonly)
		[10]: ItemListHeader_upvr (readonly)
		[11]: ItemList_upvr (readonly)
		[12]: mapBulkPurchasePartialSuccessItemsToPresentation_upvr (readonly)
		[13]: Divider_upvr (readonly)
		[14]: Box_upvr (readonly)
		[15]: PriceBoxLine_upvr (readonly)
		[16]: Button_upvr (readonly)
		[17]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local useDesignTokens_upvr_result1_upvr = useDesignTokens_upvr(mapTokens_upvr)
	local var16_result1 = useLocalization_upvr(tbl_upvr)
	local var30 = 0
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(Vector2.new(var30, 0))
	if 0 >= #arg1.successfulItems then
		var30 = false
	else
		var30 = true
	end
	if var30 then
		-- KONSTANTWARNING: GOTO [38] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 29. Error Block 31 start (CF ANALYSIS FAILED)
	;({
		onClose = arg1.onDismiss;
	}).title = var16_result1.unsuccessfulHeading
	local _ = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		Padding = UDim.new(0, useDesignTokens_upvr_result1_upvr.noticeMarginBottom);
	}
	;({
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	})[React_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 101
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		any_useBinding_result2_upvr(arg1_2.AbsoluteSize)
	end
	local _ = {
		fontStyle = useDesignTokens_upvr_result1_upvr.noticeFontStyle;
		colorStyle = useDesignTokens_upvr_result1_upvr.noticeColorStyle;
		text = var16_result1.notice;
		layoutOrder = 1;
		automaticSize = Enum.AutomaticSize.XY;
	}
	;({
		LayoutOrder = 2;
	}).size = any_useBinding_result1:map(function(arg1_3) -- Line 115
		--[[ Upvalues[1]:
			[1]: useDesignTokens_upvr_result1_upvr (readonly)
		]]
		return UDim2.new(1, 0, 1, -(arg1_3.Y + useDesignTokens_upvr_result1_upvr.noticeMarginBottom))
	end)
	local tbl = {
		LayoutOrder = 1;
		size = React_upvr.createBinding(UDim2.fromScale(1, 1));
	}
	local _ = {
		heading = var16_result1.itemListUnsuccessfulHeading;
		itemCount = var16_result1.itemListUnsuccessfulCount:gsub("{.*}", tostring(#arg1.unsuccessfulItems));
		LayoutOrder = 1;
	}
	local _ = {
		items = mapBulkPurchasePartialSuccessItemsToPresentation_upvr(arg1.unsuccessfulItems);
		LayoutOrder = 2;
	}
	if var30 then
		local _ = {
			LayoutOrder = 3;
		}
		-- KONSTANTWARNING: GOTO [212] #149
	end
	-- KONSTANTERROR: [36] 29. Error Block 31 end (CF ANALYSIS FAILED)
end