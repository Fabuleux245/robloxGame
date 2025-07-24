-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:43
-- Luau version 6, Types version 3
-- Time taken: 0.000312 seconds

local StartPurchase_upvr = require(script.Parent.Parent.Actions.StartPurchase)
return function(arg1, arg2) -- Line 5, Named "PurchasingStartTimeReducer"
	--[[ Upvalues[1]:
		[1]: StartPurchase_upvr (readonly)
	]]
	if arg2.type == StartPurchase_upvr.name then
		return arg2.purchasingStartTime
	end
	return arg1 or -1
end