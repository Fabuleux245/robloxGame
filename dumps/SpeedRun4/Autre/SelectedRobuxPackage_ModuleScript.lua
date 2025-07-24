-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:23
-- Luau version 6, Types version 3
-- Time taken: 0.004556 seconds

local FFlagEnableUpsellSuggestionsAPI_upvr = require(game:GetService("CorePackages").Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAPI
local function _(arg1) -- Line 6, Named "getSelectedRobuxPackage"
	--[[ Upvalues[1]:
		[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
	]]
	if not FFlagEnableUpsellSuggestionsAPI_upvr then
		return arg1.nativeUpsell
	end
	if not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
		return nil
	end
	return arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
end
return {
	getRobuxProductId = function(arg1) -- Line 19, Named "getRobuxProductId"
		--[[ Upvalues[1]:
			[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
		local var2
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			var2 = arg1.nativeUpsell
			-- KONSTANTWARNING: GOTO [29] #20
		end
		-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 24 start (CF ANALYSIS FAILED)
		if not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
			var2 = nil
		else
			var2 = arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
		end
		if not var2 then
			return nil
		end
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			return var2.robuxProductId
		end
		do
			return var2.providerId
		end
		-- KONSTANTERROR: [5] 5. Error Block 24 end (CF ANALYSIS FAILED)
	end;
	getProductId = function(arg1) -- Line 34, Named "getProductId"
		--[[ Upvalues[1]:
			[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		]]
		local var3
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			var3 = arg1.nativeUpsell
		elseif not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
			var3 = nil
		else
			var3 = arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
		end
		if not var3 then
			return nil
		end
		return var3.productId
	end;
	getProductName = function(arg1) -- Line 43, Named "getProductName"
		--[[ Upvalues[1]:
			[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var4
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			var4 = arg1.nativeUpsell
			-- KONSTANTWARNING: GOTO [29] #20
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 21 start (CF ANALYSIS FAILED)
		if not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
			var4 = nil
		else
			var4 = arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
		end
		if not var4 then
			return nil
		end
		do
			return var4.productName
		end
		-- KONSTANTERROR: [5] 5. Error Block 21 end (CF ANALYSIS FAILED)
	end;
	getRobuxPurchaseAmount = function(arg1) -- Line 52, Named "getRobuxPurchaseAmount"
		--[[ Upvalues[1]:
			[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		]]
		local var5
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			var5 = arg1.nativeUpsell
		elseif not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
			var5 = nil
		else
			var5 = arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
		end
		if not var5 then
			return nil
		end
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			return var5.robuxPurchaseAmount
		end
		return var5.robuxAmount
	end;
	getRobuxAmountBeforeBonus = function(arg1) -- Line 76, Named "getRobuxAmountBeforeBonus"
		--[[ Upvalues[1]:
			[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var7
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			var7 = arg1.nativeUpsell
			-- KONSTANTWARNING: GOTO [29] #20
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 21 start (CF ANALYSIS FAILED)
		if not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
			var7 = nil
		else
			var7 = arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
		end
		if not var7 then
			return nil
		end
		do
			return var7.robuxAmountBeforeBonus
		end
		-- KONSTANTERROR: [5] 5. Error Block 21 end (CF ANALYSIS FAILED)
	end;
	getPrice = function(arg1) -- Line 67, Named "getPrice"
		--[[ Upvalues[1]:
			[1]: FFlagEnableUpsellSuggestionsAPI_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local var6
		if not FFlagEnableUpsellSuggestionsAPI_upvr then
			var6 = arg1.nativeUpsell
			-- KONSTANTWARNING: GOTO [29] #20
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 21 start (CF ANALYSIS FAILED)
		if not arg1.robuxUpsellSuggestions or not arg1.robuxUpsellSuggestions.products or not arg1.robuxUpsellSuggestions.selection then
			var6 = nil
		else
			var6 = arg1.robuxUpsellSuggestions.products[arg1.robuxUpsellSuggestions.selection]
		end
		if not var6 then
			return nil
		end
		do
			return var6.price
		end
		-- KONSTANTERROR: [5] 5. Error Block 21 end (CF ANALYSIS FAILED)
	end;
}