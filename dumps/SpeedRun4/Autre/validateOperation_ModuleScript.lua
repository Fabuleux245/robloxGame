-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:38
-- Luau version 6, Types version 3
-- Time taken: 0.001095 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local InvariantError_upvr = require(Parent.jsutils.invariant).InvariantError
function module.validateOperation(arg1) -- Line 19
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: InvariantError_upvr (readonly)
	]]
	for _, v in ipairs(Object_upvr.keys(arg1)) do
		if Array_upvr.indexOf({"query", "operationName", "variables", "extensions", "context"}, v) < 0 then
			error(InvariantError_upvr.new("illegal argument: %s":format(v)))
		end
	end
	return arg1
end
return module