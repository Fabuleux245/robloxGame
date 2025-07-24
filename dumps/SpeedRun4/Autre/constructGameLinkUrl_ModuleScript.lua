-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:37
-- Luau version 6, Types version 3
-- Time taken: 0.000292 seconds

local Url_upvr = require(script.Parent.Parent.Network.Url)
return function(arg1) -- Line 4, Named "constructGameLinkUrl"
	--[[ Upvalues[1]:
		[1]: Url_upvr (readonly)
	]]
	return `{Url_upvr.DOMAIN}games/{arg1}`
end