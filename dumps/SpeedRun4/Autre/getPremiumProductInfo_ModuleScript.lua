-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:24
-- Luau version 6, Types version 3
-- Time taken: 0.000613 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Promise)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
return function(arg1) -- Line 5, Named "getPremiumProductInfo"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: PurchaseError_upvr (readonly)
	]]
	return arg1.getPremiumProductInfo():catch(function(arg1_2) -- Line 7
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: PurchaseError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(PurchaseError_upvr.UnknownFailureNoItemName)
	end)
end