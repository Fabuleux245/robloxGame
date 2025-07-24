-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:40
-- Luau version 6, Types version 3
-- Time taken: 0.006024 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local module_3 = {}
local GraphQL = require(Parent.GraphQL)
local getNamedType_upvr = GraphQL.getNamedType
local isObjectType_upvr = GraphQL.isObjectType
local isInterfaceType_upvr = GraphQL.isInterfaceType
local isUnionType_upvr = GraphQL.isUnionType
local visitQueue_upvw
local visitSchema_upvw
local String_upvr = LuauPolyfill.String
local mapSchema_upvr = require(script.Parent.mapSchema).mapSchema
local MapperKind_upvr = require(script.Parent.Interfaces).MapperKind
local isSpecifiedScalarType_upvr = GraphQL.isSpecifiedScalarType
local isInputObjectType_upvr = GraphQL.isInputObjectType
local isScalarType_upvr = GraphQL.isScalarType
local Object_upvr = LuauPolyfill.Object
function module_3.pruneSchema(arg1, arg2) -- Line 69
	--[[ Upvalues[13]:
		[1]: visitSchema_upvw (read and write)
		[2]: String_upvr (readonly)
		[3]: visitQueue_upvw (read and write)
		[4]: mapSchema_upvr (readonly)
		[5]: MapperKind_upvr (readonly)
		[6]: Boolean_upvr (readonly)
		[7]: isSpecifiedScalarType_upvr (readonly)
		[8]: isUnionType_upvr (readonly)
		[9]: isInputObjectType_upvr (readonly)
		[10]: isInterfaceType_upvr (readonly)
		[11]: isObjectType_upvr (readonly)
		[12]: isScalarType_upvr (readonly)
		[13]: Object_upvr (readonly)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local skipPruning = ({}).skipPruning
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	local var46 = arg1
	repeat
		local visitSchema_result1_upvw = visitSchema_upvw(var46)
		if skipPruning then
			for _, v in var46:getTypeMap() do
				local _1 = v[1]
				if not String_upvr.startsWith(_1, "__") then
					local any_getType_result1 = var46:getType(_1)
					if any_getType_result1 and skipPruning(any_getType_result1) then
						table.insert({}, _1)
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			visitSchema_result1_upvw = visitQueue_upvw({}, var46, visitSchema_result1_upvw)
		end
		local tbl_upvw = {}
		local module_4 = {}
		local skipUnusedTypesPruning_upvr = ({}).skipUnusedTypesPruning
		local skipEmptyUnionPruning_upvr_2 = ({}).skipEmptyUnionPruning
		local skipEmptyCompositeTypePruning_upvr = ({}).skipEmptyCompositeTypePruning
		local skipUnimplementedInterfacesPruning_upvr = ({}).skipUnimplementedInterfacesPruning
		module_4[MapperKind_upvr.TYPE] = function(arg1_3) -- Line 111
			--[[ Upvalues[14]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: visitSchema_result1_upvw (read and write)
				[3]: isSpecifiedScalarType_upvr (copied, readonly)
				[4]: isUnionType_upvr (copied, readonly)
				[5]: isInputObjectType_upvr (copied, readonly)
				[6]: isInterfaceType_upvr (copied, readonly)
				[7]: isObjectType_upvr (copied, readonly)
				[8]: isScalarType_upvr (copied, readonly)
				[9]: skipUnusedTypesPruning_upvr (readonly)
				[10]: skipEmptyUnionPruning_upvr_2 (readonly)
				[11]: skipEmptyCompositeTypePruning_upvr (readonly)
				[12]: skipUnimplementedInterfacesPruning_upvr (readonly)
				[13]: tbl_upvw (read and write)
				[14]: Object_upvr (copied, readonly)
			]]
			if not Boolean_upvr.toJSBoolean(visitSchema_result1_upvw:has(arg1_3.name)) and not Boolean_upvr.toJSBoolean(isSpecifiedScalarType_upvr(arg1_3)) then
				if isUnionType_upvr(arg1_3) or isInputObjectType_upvr(arg1_3) or isInterfaceType_upvr(arg1_3) or isObjectType_upvr(arg1_3) or isScalarType_upvr(arg1_3) then
					if Boolean_upvr.toJSBoolean(skipUnusedTypesPruning_upvr) then
						return arg1_3
					end
					if isUnionType_upvr(arg1_3) and skipEmptyUnionPruning_upvr_2 and not Boolean_upvr.toJSBoolean(#arg1_3.getTypes(arg1_3)) then
						return arg1_3
					end
					if isInputObjectType_upvr(arg1_3) or isInterfaceType_upvr(arg1_3) or isObjectType_upvr(arg1_3) then
						if skipEmptyCompositeTypePruning_upvr and not Boolean_upvr.toJSBoolean(#arg1_3.getFields(arg1_3):keys()) then
							return arg1_3
						end
					end
					if isInterfaceType_upvr(arg1_3) and skipUnimplementedInterfacesPruning_upvr then
						return arg1_3
					end
				end
				table.insert(tbl_upvw, arg1_3.name)
				visitSchema_result1_upvw:delete(arg1_3.name)
				return Object_upvr.None
			end
			return arg1_3
		end
	until #tbl_upvw == 0
	return mapSchema_upvr(var46, module_4)
end
local getRootTypes_upvr = require(script.Parent.rootTypes).getRootTypes
function visitSchema_upvw(arg1) -- Line 216, Named "visitSchema"
	--[[ Upvalues[2]:
		[1]: getRootTypes_upvr (readonly)
		[2]: visitQueue_upvw (read and write)
	]]
	local module_2 = {}
	for _, v_2 in getRootTypes_upvr(arg1) do
		table.insert(module_2, v_2.name)
	end
	return visitQueue_upvw(module_2, arg1)
end
local Set_upvr = LuauPolyfill.Set
local Map_upvr = LuauPolyfill.Map
local getImplementingTypes_upvr = require(script.Parent["get-implementing-types"]).getImplementingTypes
local isEnumType_upvr = GraphQL.isEnumType
local getDirectivesArgumentsTypeNames_upvw
function visitQueue_upvw(arg1, arg2, arg3) -- Line 227, Named "visitQueue"
	--[[ Upvalues[11]:
		[1]: Set_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: isUnionType_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: isInterfaceType_upvr (readonly)
		[7]: getImplementingTypes_upvr (readonly)
		[8]: isEnumType_upvr (readonly)
		[9]: getDirectivesArgumentsTypeNames_upvw (read and write)
		[10]: isObjectType_upvr (readonly)
		[11]: getNamedType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	if arg3 ~= nil then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [242] 190. Error Block 36 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [242] 190. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 10. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [12] 10. Error Block 6 end (CF ANALYSIS FAILED)
end
function getDirectivesArgumentsTypeNames_upvw(arg1, arg2) -- Line 421, Named "getDirectivesArgumentsTypeNames"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: getNamedType_upvr (readonly)
	]]
	local directives = arg2.directives
	if not directives then
		directives = {}
	end
	return Array_upvr.flatMap(directives, function(arg1_4) -- Line 432
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: getNamedType_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_getDirective_result1 = arg1:getDirective(arg1_4.name.value)
		local var77
		if typeof(any_getDirective_result1) == "table" then
			var77 = any_getDirective_result1.args
		else
			var77 = nil
		end
		if var77 ~= nil then
			local _ = Array_upvr.map(var77, function(arg1_5) -- Line 436
				--[[ Upvalues[1]:
					[1]: getNamedType_upvr (copied, readonly)
				]]
				return getNamedType_upvr(arg1_5.type).name
			end)
		else
		end
		if nil ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return nil
		end
		return {}
	end)
end
return module_3