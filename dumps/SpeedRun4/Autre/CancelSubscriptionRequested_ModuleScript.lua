-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:25
-- Luau version 6, Types version 3
-- Time taken: 0.000433 seconds

return require(script:FindFirstAncestor("CancelSubscriptionApp").Parent.Rodux).makeActionCreator("CancelSubscriptionRequested", function(arg1) -- Line 10
	local module = {}
	module.subscriptionId = arg1
	return module
end)