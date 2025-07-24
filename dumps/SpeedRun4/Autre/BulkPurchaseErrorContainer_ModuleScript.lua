-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:35
-- Luau version 6, Types version 3
-- Time taken: 0.000374 seconds

local useBulkPurchaseErrorProps_upvr = require(script.Parent.useBulkPurchaseErrorProps)
local React_upvr = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.React)
local BulkPurchaseError_upvr = require(script.Parent.BulkPurchaseError)
return function() -- Line 8, Named "BulkPurchaseErrorContainer"
	--[[ Upvalues[3]:
		[1]: useBulkPurchaseErrorProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: BulkPurchaseError_upvr (readonly)
	]]
	return React_upvr.createElement(BulkPurchaseError_upvr, useBulkPurchaseErrorProps_upvr())
end