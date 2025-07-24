-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:36
-- Luau version 6, Types version 3
-- Time taken: 0.000790 seconds

local API_URL_upvr = require(script.Parent.Parent.API_URL)
return function(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: API_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "UnblockUserById";
	}, function(arg1_2, arg2) -- Line 16
		--[[ Upvalues[1]:
			[1]: API_URL_upvr (copied, readonly)
		]]
		return arg1_2(API_URL_upvr, {
			params = arg2.currentUserId;
		}):path("user-blocking-api"):path("v1"):path("users"):id(arg2.userId):path("unblock-user"):body({})
	end)
end