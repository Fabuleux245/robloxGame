-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:45
-- Luau version 6, Types version 3
-- Time taken: 0.000311 seconds

local Http_upvr = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.Http)
return function(arg1) -- Line 5, Named "getAccounts"
	--[[ Upvalues[1]:
		[1]: Http_upvr (readonly)
	]]
	return arg1("%s/users/authenticated/app-launch-info":format(Http_upvr.Url.USERS_URL), "GET")
end