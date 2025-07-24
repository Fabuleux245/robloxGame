-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:33
-- Luau version 6, Types version 3
-- Time taken: 0.001036 seconds

local module = {}
local Boolean_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Boolean
function module.selectURI(arg1, arg2) -- Line 19
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var4
	if var4 then
		return arg1:getContext().uri
	end
	var4 = typeof(arg2)
	if var4 == "function" then
		var4 = arg2(arg1)
		return var4
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var4 = arg2
		return var4
	end
	if not Boolean_upvr.toJSBoolean(arg2) or not INLINED() then
		var4 = "/graphql"
	end
	return var4
end
return module