-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:47
-- Luau version 6, Types version 3
-- Time taken: 0.000555 seconds

return require(script:FindFirstAncestor("BulkPurchaseApp").Parent.Rodux).makeActionCreator("BulkPurchaseRequested", function(arg1, arg2, arg3, arg4, arg5) -- Line 22
	local module = {}
	module.itemData = arg1
	module.balance = arg3
	module.totalCost = arg4
	module.orderRequest = arg2
	module.options = arg5
	return module
end)