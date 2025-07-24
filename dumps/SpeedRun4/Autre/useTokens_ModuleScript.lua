-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:23
-- Luau version 6, Types version 3
-- Time taken: 0.000428 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local TokensContext_upvr = require(script.Parent.TokensContext)
return function() -- Line 10, Named "useTokens"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: TokensContext_upvr (readonly)
	]]
	return React_upvr.useContext(TokensContext_upvr)
end