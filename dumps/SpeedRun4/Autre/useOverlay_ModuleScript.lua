-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:13
-- Luau version 6, Types version 3
-- Time taken: 0.000318 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local OverlayContext_upvr = require(script.Parent.OverlayContext)
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: OverlayContext_upvr (readonly)
	]]
	return React_upvr.useContext(OverlayContext_upvr).instance
end