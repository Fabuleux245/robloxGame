-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:18
-- Luau version 6, Types version 3
-- Time taken: 0.001156 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_2 = {}
local Boolean_upvr = LuauPolyfill.Boolean
local mergeDirectives_upvr = require(script.Parent.directives).mergeDirectives
local Object_upvr = LuauPolyfill.Object
local Kind_upvr = require(Parent.GraphQL).Kind
function module_2.mergeScalar(arg1, arg2, arg3) -- Line 24
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: mergeDirectives_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Kind_upvr (readonly)
	]]
	if arg2 then
		local module = {
			name = arg1.name;
		}
		if Boolean_upvr.toJSBoolean(arg1.description) then
		else
		end
		module.description = arg2.description
		if arg3 and Boolean_upvr.toJSBoolean(arg3.convertExtensions) or arg1.kind == "ScalarTypeDefinition" or arg2.kind == "ScalarTypeDefinition" then
		else
		end
		module.kind = "ScalarTypeExtension"
		module.loc = arg1.loc
		module.directives = mergeDirectives_upvr(arg1.directives, arg2.directives, arg3)
		return module
	end
	if arg3 and Boolean_upvr.toJSBoolean(arg3.convertExtensions) then
		return Object_upvr.assign({}, arg1, {
			kind = Kind_upvr.SCALAR_TYPE_DEFINITION;
		})
	end
	return arg1
end
return module_2