-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:40
-- Luau version 6, Types version 3
-- Time taken: 0.000374 seconds

local useBulkPurchaseSuccessProps_upvr = require(script.Parent.useBulkPurchaseSuccessProps)
local React_upvr = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.React)
local BulkPurchaseSuccess_upvr = require(script.Parent.BulkPurchaseSuccess)
return function() -- Line 8, Named "BulkPurchaseSuccessContainer"
	--[[ Upvalues[3]:
		[1]: useBulkPurchaseSuccessProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: BulkPurchaseSuccess_upvr (readonly)
	]]
	return React_upvr.createElement(BulkPurchaseSuccess_upvr, useBulkPurchaseSuccessProps_upvr())
end