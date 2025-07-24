-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:53
-- Luau version 6, Types version 3
-- Time taken: 0.000333 seconds

local Roact_upvr = require(script.Parent.Parent.Parent.Parent.Roact)
local SelectionImageContext_upvr = require(script.Parent.SelectionImageContext)
return function(arg1) -- Line 7, Named "SelectionCursorConsumer"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: SelectionImageContext_upvr (readonly)
	]]
	local module = {}
	module.render = arg1
	return Roact_upvr.createElement(SelectionImageContext_upvr.Consumer, module)
end