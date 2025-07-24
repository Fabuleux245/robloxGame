-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:25
-- Luau version 6, Types version 3
-- Time taken: 0.000296 seconds

return require(script:FindFirstAncestor("CancelSubscriptionApp").Parent.Rodux).makeActionCreator("CancelSubscriptionStarted", function(arg1, arg2) -- Line 11
	local module = {}
	module.subscriptionId = arg1
	module.expirationDate = arg2
	return module
end)