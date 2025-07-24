-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:42
-- Luau version 6, Types version 3
-- Time taken: 0.000343 seconds

local Url_upvr = require(script:FindFirstAncestor("AuthCommon").Parent.Http).Url
return function(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(string.format("%s/users/authenticated/app-launch-info", Url_upvr.USERS_URL), "GET", {
		maxRetryCount = 0;
	})
end