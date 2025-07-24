-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:07
-- Luau version 6, Types version 3
-- Time taken: 0.000468 seconds

local module = {}
local Boolean_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Boolean
function module.graphQLResultHasError(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var4
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var4 = true
		return 0 >= #arg1.errors
	end
	if not Boolean_upvr.toJSBoolean(arg1.errors) or INLINED() then
		var4 = false
	end
	return var4
end
return module