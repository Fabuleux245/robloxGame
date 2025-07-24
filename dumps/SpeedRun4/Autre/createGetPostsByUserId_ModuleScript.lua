-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:21
-- Luau version 6, Types version 3
-- Time taken: 0.000773 seconds

local API_URL_upvr = require(script.Parent.Parent.API_URL)
return function(arg1) -- Line 13
	--[[ Upvalues[1]:
		[1]: API_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.GET({
		Name = "GetPostsByUserId";
	}, function(arg1_2, arg2) -- Line 16
		--[[ Upvalues[1]:
			[1]: API_URL_upvr (copied, readonly)
		]]
		return arg1_2(API_URL_upvr):path("posts-api"):path("v1"):path("content-posts"):path("findByUser"):queryArgs({
			limit = arg2.limit;
			userId = arg2.userId;
		})
	end)
end