-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:05
-- Luau version 6, Types version 3
-- Time taken: 0.000303 seconds

return require(script:FindFirstAncestor("CommercePurchaseApp").Parent.Rodux).makeActionCreator("CommercePurchaseFailed", function(arg1) -- Line 12
	local module = {}
	module.errorCode = arg1
	return module
end)