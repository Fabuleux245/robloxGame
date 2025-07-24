-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:26
-- Luau version 6, Types version 3
-- Time taken: 0.001277 seconds

local Parent = script:FindFirstAncestor("BulkPurchaseApp").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local LineItemLayout_upvr = require(script.Parent.LineItemLayout)
local StyledTextLabel_upvr = require(Parent.UIBlox).App.Text.StyledTextLabel
return function(arg1) -- Line 16, Named "ItemListHeader"
	--[[ Upvalues[4]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: LineItemLayout_upvr (readonly)
		[4]: StyledTextLabel_upvr (readonly)
	]]
	local var2_result1 = useDesignTokens_upvr()
	local tbl = {
		LineHeight = var2_result1.Semantic.Typography.Body.LineHeight;
		Font = var2_result1.Semantic.Typography.Subheader.Font;
		FontSize = var2_result1.Semantic.Typography.Body.FontSize;
		LetterSpacing = var2_result1.Semantic.Typography.Body.LetterSpacing;
	}
	local Emphasis = var2_result1.Semantic.Color.Text.Emphasis
	return React_upvr.createElement(LineItemLayout_upvr, {
		startSlot = React_upvr.createElement(StyledTextLabel_upvr, {
			fontStyle = tbl;
			colorStyle = Emphasis;
			text = arg1.heading;
		});
		endSlot = React_upvr.createElement(StyledTextLabel_upvr, {
			fontStyle = tbl;
			colorStyle = Emphasis;
			text = arg1.itemCount;
		});
		LayoutOrder = arg1.LayoutOrder;
	})
end