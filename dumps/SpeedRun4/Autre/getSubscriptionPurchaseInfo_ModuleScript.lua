-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:28
-- Luau version 6, Types version 3
-- Time taken: 0.000658 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Promise)
local parseSubscriptionError_upvr = require(Parent.Utils.parseSubscriptionError)
return function(arg1, arg2) -- Line 5, Named "getSubscriptionPurchaseInfo"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: parseSubscriptionError_upvr (readonly)
	]]
	return arg1.getSubscriptionPurchaseInfo(arg2):catch(function(arg1_2) -- Line 7
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: parseSubscriptionError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(parseSubscriptionError_upvr(arg1_2))
	end)
end