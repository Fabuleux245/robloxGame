-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:08
-- Luau version 6, Types version 3
-- Time taken: 0.000471 seconds

local Url_upvr = require(script:FindFirstAncestor("Achievements").Parent.Http).Url
return function(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(string.format("%svoting-api/user/get-vote-count?targetType=Place", Url_upvr.APIS_URL), "GET")
end