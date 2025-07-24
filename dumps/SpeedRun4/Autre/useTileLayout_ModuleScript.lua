-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:34
-- Luau version 6, Types version 3
-- Time taken: 0.000515 seconds

local React_upvr = require(script:FindFirstAncestor("Foundation").Parent.React)
local TileLayoutContext_upvr = require(script.Parent.TileLayoutContext)
return function() -- Line 16
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: TileLayoutContext_upvr (readonly)
	]]
	return React_upvr.useContext(TileLayoutContext_upvr)
end