-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:38
-- Luau version 6, Types version 3
-- Time taken: 0.004391 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local React_upvr = require(Parent.React)
local StyledTextLabel_upvr = require(Parent.UIBlox).App.Text.StyledTextLabel
local tbl_2_upvr = {
	heading = "CoreScripts.BulkPurchasePrompt.RequestPrompt.Heading";
	listHeading = "CoreScripts.BulkPurchasePrompt.RequestPrompt.ItemListPurchaseHeading";
	itemCount = "CoreScripts.BulkPurchasePrompt.RequestPrompt.ItemListPurchaseCount";
	itemOwned = "CoreScripts.BulkPurchasePrompt.RequestPrompt.ItemOwned";
}
local Price_upvr = require(BulkPurchaseApp.Components.Price)
local function mapItemsToPresentation_upvr(arg1, arg2, arg3) -- Line 28, Named "mapItemsToPresentation"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Price_upvr (readonly)
	]]
	local module_2 = {}
	for _, v in arg1 do
		local tbl_7 = {
			id = v.id;
			name = v.name;
			image = v.image;
		}
		local tbl = {
			amount = v.cost;
		}
		tbl.fontStyle = arg2
		tbl.colorStyle = arg3
		tbl_7.endSlot = React_upvr.createElement(Price_upvr, tbl)
		table.insert(module_2, tbl_7)
	end
	return module_2
end
local function mapOwnedItemsToPresentation_upvr(arg1, arg2, arg3, arg4) -- Line 44, Named "mapOwnedItemsToPresentation"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StyledTextLabel_upvr (readonly)
	]]
	local module = {}
	for _, v_2 in arg1 do
		local tbl_3 = {
			id = v_2.id;
			name = v_2.name;
			image = v_2.image;
		}
		local tbl_6 = {}
		tbl_6.fontStyle = arg2
		tbl_6.colorStyle = arg3
		tbl_6.textXAlignment = Enum.TextXAlignment.Right
		tbl_6.textYAlignment = Enum.TextYAlignment.Top
		tbl_6.lineHeight = arg2.LineHeight
		tbl_6.size = UDim2.fromScale(1, 1)
		tbl_6.text = arg4.itemOwned:gsub("{.*}", tostring(v_2.ownedCount))
		tbl_3.endSlot = React_upvr.createElement(StyledTextLabel_upvr, tbl_6)
		table.insert(module, tbl_3)
	end
	return module
end
local ItemStatus_upvr = require(BulkPurchaseApp.Components.ItemStatus)
local function mapUnpurchasableItemsToPresentation_upvr(arg1) -- Line 65, Named "mapUnpurchasableItemsToPresentation"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ItemStatus_upvr (readonly)
	]]
	local module_3 = {}
	for _, v_3 in arg1 do
		table.insert(module_3, {
			id = v_3.id;
			name = v_3.name;
			image = v_3.image;
			endSlot = React_upvr.createElement(ItemStatus_upvr, {
				status = v_3.status;
			});
		})
	end
	return module_3
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local FFlagFixVP8143_upvr = require(BulkPurchaseApp.Flags.FFlagFixVP8143)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local FullPagePrompt_upvr = require(BulkPurchaseApp.Components.FullPagePrompt)
local FullPagePromptTwoPanelLayout_upvr = require(BulkPurchaseApp.Components.FullPagePromptTwoPanelLayout)
local LineItemLayout_upvr = require(BulkPurchaseApp.Components.LineItemLayout)
local FullPagePromptScrollList_upvr = require(BulkPurchaseApp.Components.FullPagePromptScrollList)
local ItemList_upvr = require(BulkPurchaseApp.Components.ItemList)
local Divider_upvr = require(BulkPurchaseApp.Components.Divider)
local PriceBox_upvr = require(BulkPurchaseApp.Components.PriceBox)
return function(arg1) -- Line 113, Named "BulkPurchaseRequest"
	--[[ Upvalues[17]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: ReactFocusNavigation_upvr (readonly)
		[4]: FFlagFixVP8143_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: useDesignTokens_upvr (readonly)
		[7]: mapItemsToPresentation_upvr (readonly)
		[8]: mapOwnedItemsToPresentation_upvr (readonly)
		[9]: mapUnpurchasableItemsToPresentation_upvr (readonly)
		[10]: FullPagePrompt_upvr (readonly)
		[11]: FullPagePromptTwoPanelLayout_upvr (readonly)
		[12]: LineItemLayout_upvr (readonly)
		[13]: StyledTextLabel_upvr (readonly)
		[14]: FullPagePromptScrollList_upvr (readonly)
		[15]: ItemList_upvr (readonly)
		[16]: Divider_upvr (readonly)
		[17]: PriceBox_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	local var29_result1 = useLocalization_upvr(tbl_2_upvr)
	local any_useDefaultFocusBehavior_result1_upvr, any_useDefaultFocusBehavior_result2 = ReactFocusNavigation_upvr.useDefaultFocusBehavior()
	if FFlagFixVP8143_upvr then
		local function _(arg1_2) -- Line 117
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useDefaultFocusBehavior_result1_upvr (readonly)
			]]
			if typeof(arg1.purchaseButtonRef) == "table" then
				arg1.purchaseButtonRef.current = arg1_2
			end
			if typeof(any_useDefaultFocusBehavior_result1_upvr) == "function" then
				any_useDefaultFocusBehavior_result1_upvr(arg1_2)
			elseif typeof(any_useDefaultFocusBehavior_result1_upvr) == "table" then
				any_useDefaultFocusBehavior_result1_upvr.current = arg1_2
			end
		end
		local _ = {arg1.purchaseButtonRef}
	else
	end
	local var32_result1_upvr = useDesignTokens_upvr()
	local tbl_4 = {
		LineHeight = var32_result1_upvr.Semantic.Typography.Body.LineHeight;
		Font = var32_result1_upvr.Semantic.Typography.Subheader.Font;
		FontSize = var32_result1_upvr.Semantic.Typography.Body.FontSize;
		LetterSpacing = var32_result1_upvr.Semantic.Typography.Body.LetterSpacing;
	}
	local Emphasis = var32_result1_upvr.Semantic.Color.Text.Emphasis
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(Vector2.new(0, 0))
	local mapOwnedItemsToPresentation_upvr_result1 = mapOwnedItemsToPresentation_upvr(arg1.ownedItems, var32_result1_upvr.Semantic.Typography.Body, Emphasis, var29_result1)
	local mapUnpurchasableItemsToPresentation_result1 = mapUnpurchasableItemsToPresentation_upvr(arg1.unpurchasableItems)
	local tbl_5 = {}
	table.move(mapOwnedItemsToPresentation_upvr_result1, 1, #mapOwnedItemsToPresentation_upvr_result1, #tbl_5 + 1, tbl_5)
	table.move(mapUnpurchasableItemsToPresentation_result1, 1, #mapUnpurchasableItemsToPresentation_result1, #tbl_5 + 1, tbl_5)
	if 0 < #tbl_5 then
		-- KONSTANTWARNING: GOTO [134] #94
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [133] 93. Error Block 41 start (CF ANALYSIS FAILED)
	local _ = {
		onClose = arg1.onClose;
		title = var29_result1.heading;
		ref = any_useDefaultFocusBehavior_result2;
	}
	;({}).size = React_upvr.createBinding(UDim2.fromScale(1, 1))
	local _ = {
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
	}
	local _ = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		Padding = UDim.new(0, var32_result1_upvr.Global.Space_300);
	}
	;({
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
	})[React_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 175
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		any_useBinding_result2_upvr(arg1_3.AbsoluteSize)
	end
	local _ = {
		PaddingRight = UDim.new(0, var32_result1_upvr.Global.Space_125);
	}
	local tbl_8 = {
		startSlot = React_upvr.createElement(StyledTextLabel_upvr, {
			fontStyle = tbl_4;
			colorStyle = Emphasis;
			text = var29_result1.listHeading;
		});
		endSlot = React_upvr.createElement(StyledTextLabel_upvr, {
			fontStyle = tbl_4;
			colorStyle = Emphasis;
			text = var29_result1.itemCount:gsub("{.*}", tostring(#arg1.items));
		});
		LayoutOrder = 1;
	}
	;({
		LayoutOrder = 2;
	}).size = any_useBinding_result1:map(function(arg1_4) -- Line 197
		--[[ Upvalues[1]:
			[1]: var32_result1_upvr (readonly)
		]]
		return UDim2.new(1, 0, 1, -(arg1_4.Y + var32_result1_upvr.Global.Space_300))
	end)
	local _ = {
		items = mapItemsToPresentation_upvr(arg1.items, tbl_4, Emphasis);
	}
	if false then
		-- KONSTANTWARNING: GOTO [345] #239
	end
	-- KONSTANTERROR: [133] 93. Error Block 41 end (CF ANALYSIS FAILED)
end