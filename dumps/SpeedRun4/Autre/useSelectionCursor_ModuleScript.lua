-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:53
-- Luau version 6, Types version 3
-- Time taken: 0.000422 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.Parent.React)
local SelectionImageContext_upvr = require(Parent.SelectionImageContext)
return function(arg1) -- Line 12, Named "useSelectionCursor"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: SelectionImageContext_upvr (readonly)
	]]
	return React_upvr.useContext(SelectionImageContext_upvr)(arg1)
end