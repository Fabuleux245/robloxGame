-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:00
-- Luau version 6, Types version 3
-- Time taken: 0.000744 seconds

local API_URL_upvr = require(script.Parent.Parent.API_URL)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: API_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "resolve";
	}, function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[1]:
			[1]: API_URL_upvr (copied, readonly)
		]]
		return arg1_2(API_URL_upvr):path("deeplinks"):path("v2"):path("resolve"):body({
			linkId = arg2.linkId;
		})
	end)
end