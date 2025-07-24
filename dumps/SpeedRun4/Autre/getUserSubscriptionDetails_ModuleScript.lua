-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:23
-- Luau version 6, Types version 3
-- Time taken: 0.000883 seconds

local Promise_upvr = require(script:FindFirstAncestor("CancelSubscriptionApp").Parent.Promise)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
return function(arg1, arg2) -- Line 6, Named "getUserSubscriptionDetails"
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 7
		--[[ Upvalues[2]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 8
			--[[ Upvalues[2]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
			]]
			return MarketplaceService_upvr:GetUserSubscriptionDetailsInternalAsync(arg2)
		end)
		if pcall_result1 then
			arg1_2(pcall_result2)
		else
			arg2_2(pcall_result2)
		end
	end)
end