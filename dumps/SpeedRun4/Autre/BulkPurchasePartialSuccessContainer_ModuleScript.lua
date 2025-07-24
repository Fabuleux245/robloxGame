-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:37
-- Luau version 6, Types version 3
-- Time taken: 0.000365 seconds

local useBulkPurchasePartialSuccessProps_upvr = require(script.Parent.useBulkPurchasePartialSuccessProps)
local React_upvr = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.React)
local BulkPurchasePartialSuccess_upvr = require(script.Parent.BulkPurchasePartialSuccess)
return function() -- Line 8, Named "BulkPurchasePartialSuccessContainer"
	--[[ Upvalues[3]:
		[1]: useBulkPurchasePartialSuccessProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: BulkPurchasePartialSuccess_upvr (readonly)
	]]
	return React_upvr.createElement(BulkPurchasePartialSuccess_upvr, useBulkPurchasePartialSuccessProps_upvr())
end