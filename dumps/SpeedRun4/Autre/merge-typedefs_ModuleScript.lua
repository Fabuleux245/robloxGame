-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:17
-- Luau version 6, Types version 3
-- Time taken: 0.007580 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local GraphQL = require(Parent.GraphQL)
local Kind_upvr = GraphQL.Kind
local utils = require(script.Parent.utils)
local merge-nodes = require(script.Parent["merge-nodes"])
local Utils = require(Parent.Utils)
local resetComments_upvr = Utils.resetComments
local mergeGraphQLTypes_upvw
local Object_upvr = LuauPolyfill.Object
local printWithComments_upvr = Utils.printWithComments
function module.mergeTypeDefs(arg1, arg2) -- Line 159
	--[[ Upvalues[5]:
		[1]: resetComments_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: mergeGraphQLTypes_upvw (read and write)
		[4]: Object_upvr (readonly)
		[5]: printWithComments_upvr (readonly)
	]]
	resetComments_upvr()
	local tbl_11 = {
		kind = Kind_upvr.DOCUMENT;
		definitions = mergeGraphQLTypes_upvw(arg1, Object_upvr.assign({}, {
			useSchemaDefinition = true;
			forceSchemaDefinition = false;
			throwOnConflict = false;
			commentDescriptions = false;
		}, arg2));
	}
	local var17
	if arg2 and arg2.commentDescriptions then
		var17 = printWithComments_upvr(tbl_11)
	else
		var17 = tbl_11
	end
	resetComments_upvr()
	return var17
end
local Set_upvr = LuauPolyfill.Set
local isSchema_upvr = GraphQL.isSchema
local getDocumentNodeFromSchema_upvr = Utils.getDocumentNodeFromSchema
local isStringTypes_upvr = utils.isStringTypes
local isSourceTypes_upvr = utils.isSourceTypes
local parse_upvr = GraphQL.parse
local isDefinitionNode_upvr = GraphQL.isDefinitionNode
local isDocumentNode_upvr = Utils.isDocumentNode
local Error_upvr = LuauPolyfill.Error
local function visitTypeSources_upvr(arg1, arg2, arg3, arg4) -- Line 188, Named "visitTypeSources"
	--[[ Upvalues[12]:
		[1]: Set_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: visitTypeSources_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: isSchema_upvr (readonly)
		[6]: getDocumentNodeFromSchema_upvr (readonly)
		[7]: isStringTypes_upvr (readonly)
		[8]: isSourceTypes_upvr (readonly)
		[9]: parse_upvr (readonly)
		[10]: isDefinitionNode_upvr (readonly)
		[11]: isDocumentNode_upvr (readonly)
		[12]: Error_upvr (readonly)
	]]
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	if arg4 ~= nil then
		local _ = arg4
	else
	end
	local var33 = Boolean_upvr
	if Boolean_upvr.toJSBoolean(arg1) then
		var33 = not Boolean_upvr.toJSBoolean(Set_upvr.new():has(arg1))
	else
		var33 = arg1
	end
	if var33.toJSBoolean(var33) then
		Set_upvr.new():add(arg1)
		if typeof(arg1) == "function" then
			visitTypeSources_upvr(arg1(), arg2, {}, Set_upvr.new())
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		if Boolean_upvr.toJSBoolean(Array_upvr.isArray(arg1)) then
			for _, v in arg1 do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				visitTypeSources_upvr(v, arg2, {}, Set_upvr.new())
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		if Boolean_upvr.toJSBoolean(isSchema_upvr(arg1)) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			visitTypeSources_upvr(getDocumentNodeFromSchema_upvr(arg1, arg2).definitions, arg2, {}, Set_upvr.new())
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		local var21_result1 = isStringTypes_upvr(arg1)
		if not Boolean_upvr.toJSBoolean(var21_result1) or not var21_result1 then
		end
		if Boolean_upvr.toJSBoolean(isSourceTypes_upvr(arg1)) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			visitTypeSources_upvr(parse_upvr(arg1, arg2).definitions, arg2, {}, Set_upvr.new())
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		local var35 = false
		if typeof(arg1) == "table" then
			var35 = isDefinitionNode_upvr(arg1)
		end
		if Boolean_upvr.toJSBoolean(var35) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, arg1)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		if isDocumentNode_upvr(arg1) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			visitTypeSources_upvr(arg1.definitions, arg2, {}, Set_upvr.new())
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return {}
		end
		error(Error_upvr.new("typeDefs must contain only strings, documents, schemas, or functions, got %s":format(tostring(typeof(arg1)))))
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local mergeGraphQLNodes_upvr = merge-nodes.mergeGraphQLNodes
local schemaDefSymbol_upvr = merge-nodes.schemaDefSymbol
local DEFAULT_OPERATION_TYPE_NAME_MAP_upvr = require(script.Parent["schema-def"]).DEFAULT_OPERATION_TYPE_NAME_MAP
local defaultStringComparator_upvr = utils.defaultStringComparator
function mergeGraphQLTypes_upvw(arg1, arg2) -- Line 262, Named "mergeGraphQLTypes"
	--[[ Upvalues[9]:
		[1]: resetComments_upvr (readonly)
		[2]: visitTypeSources_upvr (readonly)
		[3]: mergeGraphQLNodes_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: schemaDefSymbol_upvr (readonly)
		[6]: Kind_upvr (readonly)
		[7]: DEFAULT_OPERATION_TYPE_NAME_MAP_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: defaultStringComparator_upvr (readonly)
	]]
	resetComments_upvr()
	local var36_result1 = mergeGraphQLNodes_upvr(visitTypeSources_upvr(arg1, arg2), arg2)
	if arg2 and Boolean_upvr.toJSBoolean(arg2.useSchemaDefinition) then
		if not Boolean_upvr.toJSBoolean(var36_result1:get(schemaDefSymbol_upvr)) or not var36_result1:get(schemaDefSymbol_upvr) then
			local tbl_10 = {
				kind = Kind_upvr.SCHEMA_DEFINITION;
				operationTypes = {};
			}
		end
		local operationTypes = tbl_10.operationTypes
		for i_2_upvr in DEFAULT_OPERATION_TYPE_NAME_MAP_upvr do
			if not Boolean_upvr.toJSBoolean(Array_upvr.find(operationTypes, function(arg1_4) -- Line 288
				--[[ Upvalues[1]:
					[1]: i_2_upvr (readonly)
				]]
				local var64
				if arg1_4.operation ~= i_2_upvr then
					var64 = false
				else
					var64 = true
				end
				return var64
			end)) then
				local any_get_result1 = var36_result1:get(DEFAULT_OPERATION_TYPE_NAME_MAP_upvr[tostring(i_2_upvr)])
				if any_get_result1 ~= nil and any_get_result1.name ~= nil then
					table.insert(operationTypes, {
						kind = Kind_upvr.OPERATION_TYPE_DEFINITION;
						type = {
							kind = Kind_upvr.NAMED_TYPE;
							name = any_get_result1.name;
						};
						operation = i_2_upvr;
					})
				end
			end
		end
		if typeof(tbl_10) == "table" and typeof(tbl_10.operationTypes) == "table" and 0 < #tbl_10.operationTypes then
			i_2_upvr = tbl_10
			var36_result1:set(schemaDefSymbol_upvr, i_2_upvr)
		end
	end
	if arg2 and Boolean_upvr.toJSBoolean(arg2.forceSchemaDefinition) and (typeof(var36_result1:get(schemaDefSymbol_upvr)) ~= "table" or typeof(var36_result1:get(schemaDefSymbol_upvr).operationTypes) ~= "table" or 0 >= #var36_result1:get(schemaDefSymbol_upvr).operationTypes) then
		local tbl_9 = {}
		i_2_upvr = Kind_upvr
		tbl_9.kind = i_2_upvr.SCHEMA_DEFINITION
		local tbl_8 = {}
		i_2_upvr = {}
		i_2_upvr.kind = Kind_upvr.OPERATION_TYPE_DEFINITION
		i_2_upvr.operation = "query"
		i_2_upvr.type = {
			kind = Kind_upvr.NAMED_TYPE;
			name = {
				kind = Kind_upvr.NAME;
				value = "Query";
			};
		}
		tbl_8[1] = i_2_upvr
		tbl_9.operationTypes = tbl_8
		var36_result1:set(schemaDefSymbol_upvr, tbl_9)
	end
	if arg2 then
		local any_toJSBoolean_result1_upvr = Boolean_upvr.toJSBoolean(arg2.sort)
		if any_toJSBoolean_result1_upvr then
			if typeof(arg2.sort) == "function" then
				any_toJSBoolean_result1_upvr = arg2.sort
			else
				any_toJSBoolean_result1_upvr = defaultStringComparator_upvr
			end
			Array_upvr.sort(var36_result1:values(), function(arg1_5, arg2_3) -- Line 392
				--[[ Upvalues[1]:
					[1]: any_toJSBoolean_result1_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var74
				if typeof(arg1_5.name) == "table" then
					var74 = arg1_5.name.value
				else
					var74 = nil
				end
				if typeof(arg2_3.name) == "table" then
				else
				end
				return any_toJSBoolean_result1_upvr(var74, nil)
			end)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var36_result1:values()
end
module.mergeGraphQLTypes = mergeGraphQLTypes_upvw
return module