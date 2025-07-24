-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:59
-- Luau version 6, Types version 3
-- Time taken: 0.000383 seconds

local useCommercePurchaseErrorProps_upvr = require(script.Parent.useCommercePurchaseErrorProps)
local React_upvr = require(script:FindFirstAncestor("CommercePurchaseApp").Parent.React)
local CommercePurchaseError_upvr = require(script.Parent.CommercePurchaseError)
return function() -- Line 8, Named "CommercePurchaseErrorContainer"
	--[[ Upvalues[3]:
		[1]: useCommercePurchaseErrorProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CommercePurchaseError_upvr (readonly)
	]]
	return React_upvr.createElement(CommercePurchaseError_upvr, useCommercePurchaseErrorProps_upvr())
end