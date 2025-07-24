-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:32
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(Parent.Promise)
local parseSubscriptionError_upvr = require(Parent.Utils.parseSubscriptionError)
return function(arg1, arg2, arg3) -- Line 5, Named "performSubscriptionPurchase"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: parseSubscriptionError_upvr (readonly)
	]]
	return arg1.performSubscriptionPurchase(arg2, arg3):catch(function(arg1_2) -- Line 6
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: parseSubscriptionError_upvr (copied, readonly)
		]]
		return Promise_upvr.reject(parseSubscriptionError_upvr(arg1_2))
	end)
end