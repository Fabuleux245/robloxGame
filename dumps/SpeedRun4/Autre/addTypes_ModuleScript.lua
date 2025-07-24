-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:13
-- Luau version 6, Types version 3
-- Time taken: 0.001437 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local GraphQL = require(Parent.GraphQL)
local Map_upvr = LuauPolyfill.Map
local Boolean_upvr = LuauPolyfill.Boolean
local isNamedType_upvr = GraphQL.isNamedType
local isDirective_upvr = GraphQL.isDirective
local rewireTypes_upvr = require(script.Parent.rewire).rewireTypes
local Object_upvr = LuauPolyfill.Object
local GraphQLSchema_upvr = GraphQL.GraphQLSchema
local getObjectTypeFromTypeMap_upvr = require(script.Parent.getObjectTypeFromTypeMap).getObjectTypeFromTypeMap
function module.addTypes(arg1, arg2) -- Line 61
	--[[ Upvalues[8]:
		[1]: Map_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: isNamedType_upvr (readonly)
		[4]: isDirective_upvr (readonly)
		[5]: rewireTypes_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: GraphQLSchema_upvr (readonly)
		[8]: getObjectTypeFromTypeMap_upvr (readonly)
	]]
	local any_toConfig_result1 = arg1:toConfig()
	local any_new_result1 = Map_upvr.new()
	for _, v in any_toConfig_result1.types do
		any_new_result1:set(v.name, v)
	end
	for _, v_2 in any_toConfig_result1.directives do
		({})[tostring(v_2.name)] = v_2
		local var27
	end
	for _, v_3 in arg2 do
		if Boolean_upvr.toJSBoolean(isNamedType_upvr(v_3)) then
			any_new_result1:set(v_3.name, v_3)
		elseif Boolean_upvr.toJSBoolean(isDirective_upvr(v_3)) then
			var27[v_3.name] = v_3
		end
	end
	local rewireTypes_upvr_result1 = rewireTypes_upvr(any_new_result1, Object_upvr.values(var27))
	local typeMap = rewireTypes_upvr_result1.typeMap
	return GraphQLSchema_upvr.new(Object_upvr.assign({}, any_toConfig_result1, {
		query = getObjectTypeFromTypeMap_upvr(typeMap, arg1:getQueryType());
		mutation = getObjectTypeFromTypeMap_upvr(typeMap, arg1:getMutationType());
		subscription = getObjectTypeFromTypeMap_upvr(typeMap, arg1:getSubscriptionType());
		types = typeMap:values();
		directives = rewireTypes_upvr_result1.directives;
	}))
end
return module