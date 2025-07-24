-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:39
-- Luau version 6, Types version 3
-- Time taken: 0.000543 seconds

local useBulkPurchaseRequestProps_upvr = require(script.Parent.useBulkPurchaseRequestProps)
local React_upvr = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.React)
local BulkPurchaseRequest_upvr = require(script.Parent.BulkPurchaseRequest)
return function() -- Line 8, Named "BulkPurchaseRequestContainer"
	--[[ Upvalues[3]:
		[1]: useBulkPurchaseRequestProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: BulkPurchaseRequest_upvr (readonly)
	]]
	return React_upvr.createElement(BulkPurchaseRequest_upvr, useBulkPurchaseRequestProps_upvr())
end