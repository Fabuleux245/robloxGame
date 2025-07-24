-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:48
-- Luau version 6, Types version 3
-- Time taken: 0.000484 seconds

return require(script:FindFirstAncestor("BulkPurchaseApp").Parent.Rodux).makeActionCreator("BulkPurchaseSucceeded", function(arg1, arg2) -- Line 15
	local module = {}
	module.promptState = arg1
	module.itemStatuses = arg2
	return module
end)