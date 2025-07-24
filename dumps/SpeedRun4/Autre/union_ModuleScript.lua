-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:20
-- Luau version 6, Types version 3
-- Time taken: 0.001962 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local Boolean_upvr = LuauPolyfill.Boolean
local mergeDirectives_upvr = require(script.Parent.directives).mergeDirectives
local Kind_upvr = require(Parent.GraphQL).Kind
local mergeNamedTypeArray_upvr = require(script.Parent["merge-named-type-array"]).mergeNamedTypeArray
local Object_upvr = LuauPolyfill.Object
function module.mergeUnion(arg1, arg2, arg3) -- Line 26
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: mergeDirectives_upvr (readonly)
		[3]: Kind_upvr (readonly)
		[4]: mergeNamedTypeArray_upvr (readonly)
		[5]: Object_upvr (readonly)
	]]
	if arg2 then
		local module_2 = {
			name = arg1.name;
		}
		if Boolean_upvr.toJSBoolean(arg1.description) then
		else
		end
		module_2.description = arg2.description
		module_2.directives = mergeDirectives_upvr(arg1.directives, arg2.directives, arg3)
		if arg3 and Boolean_upvr.toJSBoolean(arg3.convertExtensions) or arg1.kind == "UnionTypeDefinition" or arg2.kind == "UnionTypeDefinition" then
		else
		end
		module_2.kind = Kind_upvr.UNION_TYPE_EXTENSION
		module_2.loc = arg1.loc
		module_2.types = mergeNamedTypeArray_upvr(arg1.types, arg2.types, arg3)
		return module_2
	end
	if arg3 and Boolean_upvr.toJSBoolean(arg3.convertExtensions) then
		return Object_upvr.assign({}, arg1, {
			kind = Kind_upvr.UNION_TYPE_DEFINITION;
		})
	end
	return arg1
end
return module