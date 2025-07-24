-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:41
-- Luau version 6, Types version 3
-- Time taken: 0.000452 seconds

local React_upvr = require(script:FindFirstAncestor("PlayerContextualMenu").Parent.React)
local HttpRequestContext_upvr = require(script.Parent.HttpRequestContext)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: HttpRequestContext_upvr (readonly)
	]]
	return React_upvr.useContext(HttpRequestContext_upvr)
end