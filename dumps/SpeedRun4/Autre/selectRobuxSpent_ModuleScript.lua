-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:53
-- Luau version 6, Types version 3
-- Time taken: 0.000537 seconds

return function(arg1) -- Line 7, Named "selectRobuxSpent"
	local var5
	if arg1.itemData and arg1.itemStatuses then
		for _, v in arg1.itemData do
			if arg1.itemStatuses[v.id] == Enum.MarketplaceItemPurchaseStatus.Success then
				var5 += v.priceRobux
			end
		end
	end
	return var5
end