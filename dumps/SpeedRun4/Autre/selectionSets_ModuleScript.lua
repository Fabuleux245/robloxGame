-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:42
-- Luau version 6, Types version 3
-- Time taken: 0.000381 seconds

local module = {}
local parse_upvr = require(script.Parent.Parent.GraphQL).parse
function module.parseSelectionSet(arg1, arg2) -- Line 17
	--[[ Upvalues[1]:
		[1]: parse_upvr (readonly)
	]]
	return parse_upvr(arg1, arg2).definitions[1].selectionSet
end
return module