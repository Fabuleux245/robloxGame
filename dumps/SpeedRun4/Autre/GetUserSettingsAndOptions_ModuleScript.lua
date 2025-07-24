-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:24
-- Luau version 6, Types version 3
-- Time taken: 0.000328 seconds

local Url_upvr = require(script:FindFirstAncestor("GameDetailRodux").Parent.Http).Url
return function(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return arg1(`{Url_upvr.APIS_URL}user-settings-api/v1/user-settings/settings-and-options`, "GET")
end