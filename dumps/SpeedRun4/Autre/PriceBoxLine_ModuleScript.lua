-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:29
-- Luau version 6, Types version 3
-- Time taken: 0.002055 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local PriceBoxLineVariantEnum_upvr = require(BulkPurchaseApp.Enums.PriceBoxLineVariantEnum)
local React_upvr = require(Parent.React)
local LineItemLayout_upvr = require(script.Parent.LineItemLayout)
local StyledTextLabel_upvr = require(Parent.UIBlox).App.Text.StyledTextLabel
local Price_upvr = require(script.Parent.Price)
return function(arg1) -- Line 20, Named "PriceBoxLine"
	--[[ Upvalues[6]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: PriceBoxLineVariantEnum_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LineItemLayout_upvr (readonly)
		[5]: StyledTextLabel_upvr (readonly)
		[6]: Price_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	local var10
	if arg1.variant == PriceBoxLineVariantEnum_upvr.Danger then
		var10 = {}
		var10.LineHeight = useDesignTokens_upvr_result1.Semantic.Typography.Body.LineHeight
		var10.Font = useDesignTokens_upvr_result1.Semantic.Typography.Subheader.Font
		var10.FontSize = useDesignTokens_upvr_result1.Semantic.Typography.Body.FontSize
		var10.LetterSpacing = useDesignTokens_upvr_result1.Semantic.Typography.Body.LetterSpacing
	else
		var10 = useDesignTokens_upvr_result1.Semantic.Typography.Body
	end
	local Default = useDesignTokens_upvr_result1.Semantic.Color.Text.Default
	if arg1.variant == PriceBoxLineVariantEnum_upvr.Highlight then
		Default = useDesignTokens_upvr_result1.Semantic.Color.Text.Emphasis
	elseif arg1.variant == PriceBoxLineVariantEnum_upvr.Danger then
		Default = useDesignTokens_upvr_result1.Semantic.Color.Common.Alert
	end
	return React_upvr.createElement(LineItemLayout_upvr, {
		LayoutOrder = arg1.LayoutOrder;
		startSlot = React_upvr.createElement(StyledTextLabel_upvr, {
			fontStyle = var10;
			colorStyle = Default;
			text = arg1.text;
		});
		endSlot = React_upvr.createElement(Price_upvr, {
			colorStyle = Default;
			fontStyle = var10;
			amount = arg1.amount;
		});
	})
end