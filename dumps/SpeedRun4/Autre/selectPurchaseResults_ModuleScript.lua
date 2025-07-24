-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:52
-- Luau version 6, Types version 3
-- Time taken: 0.000383 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local selectRobuxSpent_upvr = require(BulkPurchaseApp.Store.Selectors.selectRobuxSpent)
local selectResultItems_upvr = require(BulkPurchaseApp.Store.Selectors.selectResultItems)
return function(arg1) -- Line 14, Named "selectPurchaseResults"
	--[[ Upvalues[2]:
		[1]: selectRobuxSpent_upvr (readonly)
		[2]: selectResultItems_upvr (readonly)
	]]
	return {
		RobuxSpent = selectRobuxSpent_upvr(arg1);
		Items = selectResultItems_upvr(arg1);
	}
end