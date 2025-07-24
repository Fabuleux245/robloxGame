-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:25
-- Luau version 6, Types version 3
-- Time taken: 0.001530 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local Foundation_upvr = require(Parent.Foundation)
local tbl_upvr = {
	anchorPoint = Vector2.new(0, 0);
	layoutOrder = 1;
	position = UDim2.fromScale(0, 0);
}
local Cryo_upvr = require(Parent.Cryo)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local React_upvr = require(Parent.React)
local CardComponent_upvr = require(Parent_2.utils).CardsHelper.CardComponent
local AltTextCard_upvr = require(Parent_2.Components).AltTextCard.AltTextCard
return function(arg1) -- Line 30, Named "Cards"
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: CardComponent_upvr (readonly)
		[6]: AltTextCard_upvr (readonly)
		[7]: Foundation_upvr (readonly)
	]]
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local var6_result1_upvr = useTokens_upvr()
	local function var15(arg1_2) -- Line 34
		--[[ Upvalues[7]:
			[1]: CardComponent_upvr (copied, readonly)
			[2]: any_union_result1_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: React_upvr (copied, readonly)
			[5]: AltTextCard_upvr (copied, readonly)
			[6]: Foundation_upvr (copied, readonly)
			[7]: var6_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
		local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1_2.components)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [9.6]
		if CardComponent_upvr[nil.type] then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local data = nil.data
			if any_union_result1_upvr.analyticsInfo then
				data = Cryo_upvr.Dictionary.join(data, any_union_result1_upvr.analyticsInfo)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, React_upvr.createElement(CardComponent_upvr[nil.type], data))
			-- KONSTANTWARNING: GOTO [8] #6
		end
		-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [45] 34. Error Block 15 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		do
			return React_upvr.createElement(Foundation_upvr.View, {
				AutomaticSize = Enum.AutomaticSize.XY;
				backgroundStyle = var6_result1_upvr.Color.Shift.Shift_200;
				cornerRadius = UDim.new(0, var6_result1_upvr.Radius.Large);
			}, {})
		end
		-- KONSTANTERROR: [45] 34. Error Block 15 end (CF ANALYSIS FAILED)
	end
	local any_useCallback_result1 = React_upvr.useCallback(var15, {})
	var15 = {}
	local var23 = var15
	for _, v in pairs(any_union_result1_upvr.cards) do
		table.insert(var23, any_useCallback_result1(v))
	end
	return React_upvr.createElement(Foundation_upvr.View, {
		AutomaticSize = Enum.AutomaticSize.XY;
		AnchorPoint = any_union_result1_upvr.anchorPoint;
		Position = any_union_result1_upvr.position;
		LayoutOrder = any_union_result1_upvr.layoutOrder;
	}, var23)
end