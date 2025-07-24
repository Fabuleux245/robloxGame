-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:41
-- Luau version 6, Types version 3
-- Time taken: 0.001540 seconds

local module_upvr = {
	new = function() -- Line 18, Named "new"
		return {}
	end;
}
function module_upvr.mock(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2.universeId = arg1
	any_new_result1_2.isForSale = true
	any_new_result1_2.productId = 12345
	any_new_result1_2.price = 5
	any_new_result1_2.sellerId = 6789
	return any_new_result1_2
end
local Result_upvr = require(script:FindFirstAncestor("GameProductInfoRodux").Parent.Result)
function module_upvr.fromJsonData(arg1) -- Line 33
	--[[ Upvalues[2]:
		[1]: Result_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if type(arg1.universeId) ~= "number" or type(arg1.isForSale) ~= "boolean" or type(arg1.productId) ~= "number" or type(arg1.price) ~= "number" or type(arg1.sellerId) ~= "number" then
		return Result_upvr.error("invalid data type")
	end
	local any_new_result1 = module_upvr.new()
	any_new_result1.universeId = tostring(arg1.universeId)
	any_new_result1.isForSale = arg1.isForSale
	any_new_result1.productId = arg1.productId
	any_new_result1.price = arg1.price
	any_new_result1.sellerId = arg1.sellerId
	if arg1.fiatPurchaseData then
		any_new_result1.localizedFiatPrice = arg1.fiatPurchaseData.localizedFiatPrice
		any_new_result1.fiatBasePriceId = arg1.fiatPurchaseData.basePriceId
	end
	return Result_upvr.success(any_new_result1)
end
return module_upvr