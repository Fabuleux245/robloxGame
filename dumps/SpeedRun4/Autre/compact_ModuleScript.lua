-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:06
-- Luau version 6, Types version 3
-- Time taken: 0.000310 seconds

local module = {}
local Object_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Object
function module.compact(...) -- Line 13
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	return Object_upvr.assign({}, ...)
end
return module