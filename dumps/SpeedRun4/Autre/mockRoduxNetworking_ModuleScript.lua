-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:25
-- Luau version 6, Types version 3
-- Time taken: 0.000367 seconds

local RoduxNetworking_upvr = require(script.Parent.RoduxNetworking)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: RoduxNetworking_upvr (readonly)
	]]
	RoduxNetworking_upvr.setNetworkImpl(arg1)
	local any_getNetworkImpl_result1_upvr = RoduxNetworking_upvr.getNetworkImpl()
	return function() -- Line 7
		--[[ Upvalues[2]:
			[1]: RoduxNetworking_upvr (copied, readonly)
			[2]: any_getNetworkImpl_result1_upvr (readonly)
		]]
		RoduxNetworking_upvr.setNetworkImpl(any_getNetworkImpl_result1_upvr)
	end
end