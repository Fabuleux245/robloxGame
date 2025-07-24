-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:02
-- Luau version 6, Types version 3
-- Time taken: 0.010617 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Error_upvr = LuauPolyfill.Error
local isNillish = require(Parent.luaUtils.isNillish)
local jsutils = Parent.jsutils
local inspect_upvr = require(jsutils.inspect).inspect
local instanceOf_upvr = require(jsutils.instanceOf)
local directives = require(script.Parent.directives)
local definition = require(script.Parent.definition)
local isObjectType_upvr = definition.isObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local isUnionType_upvr = definition.isUnionType
local var15_upvw
var15_upvw = {}
local var16_upvw = var15_upvw
var16_upvw.__index = var16_upvw
local devAssert_upvr = require(jsutils.devAssert).devAssert
local isObjectLike_upvr = require(jsutils.isObjectLike).isObjectLike
local toObjMap_upvr = require(jsutils.toObjMap).toObjMap
local specifiedDirectives_upvr = directives.specifiedDirectives
local Set_upvr = LuauPolyfill.Set
local collectReferencedTypes_upvw
local isNotNillish_upvr = isNillish.isNotNillish
local isDirective_upvr = directives.isDirective
local __Schema_upvr = require(script.Parent.introspection).__Schema
local Map_upvr = LuauPolyfill.Map
local isNillish_2_upvr = isNillish.isNillish
function var16_upvw.new(arg1) -- Line 200
	--[[ Upvalues[17]:
		[1]: var16_upvw (read and write)
		[2]: devAssert_upvr (readonly)
		[3]: isObjectLike_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: inspect_upvr (readonly)
		[6]: toObjMap_upvr (readonly)
		[7]: specifiedDirectives_upvr (readonly)
		[8]: Set_upvr (readonly)
		[9]: collectReferencedTypes_upvw (read and write)
		[10]: isNotNillish_upvr (readonly)
		[11]: isDirective_upvr (readonly)
		[12]: __Schema_upvr (readonly)
		[13]: Map_upvr (readonly)
		[14]: isNillish_2_upvr (readonly)
		[15]: Error_upvr (readonly)
		[16]: isInterfaceType_upvr (readonly)
		[17]: isObjectType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local setmetatable_result1 = setmetatable({}, var16_upvw)
	setmetatable_result1.__validationErrors = nil
	if arg1.assumeValid == true then
		setmetatable_result1.__validationErrors = {}
	end
	devAssert_upvr(isObjectLike_upvr(arg1), "Must provide configuration object.")
	local var85 = not arg1.types
	if not var85 then
		var85 = Array_upvr.isArray(arg1.types)
	end
	devAssert_upvr(var85, "\"types\" must be Array if provided but got: %s.":format(inspect_upvr(arg1.types)))
	var85 = not arg1.directives
	local var86 = var85
	if not var86 then
		var86 = Array_upvr.isArray(arg1.directives)
	end
	devAssert_upvr(var86, "\"directives\" must be Array if provided but got: ".."%s.":format(inspect_upvr(arg1.directives)))
	local description = arg1.description
	setmetatable_result1.description = description
	if arg1.extensions then
		description = toObjMap_upvr(arg1.extensions)
	else
		description = nil
	end
	setmetatable_result1.extensions = description
	setmetatable_result1.astNode = arg1.astNode
	setmetatable_result1.extensionASTNodes = arg1.extensionASTNodes
	setmetatable_result1._queryType = arg1.query
	setmetatable_result1._mutationType = arg1.mutation
	setmetatable_result1._subscriptionType = arg1.subscription
	local directives_2 = arg1.directives
	if not directives_2 then
		directives_2 = specifiedDirectives_upvr
	end
	setmetatable_result1._directives = directives_2
	local types = arg1.types
	if not types then
		types = {}
	end
	for _, v in ipairs(types) do
		Set_upvr.new():add(v)
		local var94
	end
	if arg1.types ~= nil then
		for _, v_2 in ipairs(arg1.types) do
			var94:delete(v_2)
			collectReferencedTypes_upvw(v_2, var94)
		end
	end
	if isNotNillish_upvr(setmetatable_result1._queryType) then
		collectReferencedTypes_upvw(setmetatable_result1._queryType, var94)
	end
	if isNotNillish_upvr(setmetatable_result1._mutationType) then
		collectReferencedTypes_upvw(setmetatable_result1._mutationType, var94)
	end
	if isNotNillish_upvr(setmetatable_result1._subscriptionType) then
		collectReferencedTypes_upvw(setmetatable_result1._subscriptionType, var94)
	end
	for _, v_3 in ipairs(setmetatable_result1._directives) do
		if isDirective_upvr(v_3) then
			for _, v_4 in ipairs(v_3.args) do
				collectReferencedTypes_upvw(v_4.type, var94)
				local var104
			end
		end
	end
	collectReferencedTypes_upvw(__Schema_upvr, var104)
	setmetatable_result1._typeMap = Map_upvr.new()
	setmetatable_result1._subTypeMap = Map_upvr.new()
	setmetatable_result1._implementationsMap = Map_upvr.new()
	for _, v_5 in var104 do
		local var105
		if not var105 then
			var105 = nil
			if typeof(v_5) == "table" then
				var105 = v_5.name
			else
				var105 = tostring(v_5)
			end
			if var105 then
				if var105 == "" then
				else
				end
			end
			devAssert_upvr(true, "One of the provided types for building the Schema is missing a name.")
			if setmetatable_result1._typeMap:has(var105) then
				error(Error_upvr.new("Schema must contain uniquely named types but contains multiple types named \"%s\".":format(var105)))
			end
			setmetatable_result1._typeMap:set(var105, v_5)
			if isInterfaceType_upvr(v_5) then
				for _, v_6 in ipairs(v_5:getInterfaces()) do
					if isInterfaceType_upvr(v_6) then
						local any_get_result1_2 = setmetatable_result1._implementationsMap:get(v_6.name)
						if any_get_result1_2 == nil then
							any_get_result1_2 = {
								objects = {};
								interfaces = {};
							}
							setmetatable_result1._implementationsMap:set(v_6.name, any_get_result1_2)
						end
						table.insert(any_get_result1_2.interfaces, v_5)
					end
				end
			elseif isObjectType_upvr(v_5) then
				for _, v_15 in ipairs(v_5:getInterfaces()) do
					if isInterfaceType_upvr(v_15) then
						local any_get_result1 = setmetatable_result1._implementationsMap:get(v_15.name)
						if any_get_result1 == nil then
							any_get_result1 = {
								objects = {};
								interfaces = {};
							}
							setmetatable_result1._implementationsMap:set(v_15.name, any_get_result1)
						end
						table.insert(any_get_result1.objects, v_5)
					end
				end
			end
		end
	end
	return setmetatable_result1
end
function var16_upvw.getQueryType(arg1) -- Line 349
	return arg1._queryType
end
function var16_upvw.getMutationType(arg1) -- Line 353
	return arg1._mutationType
end
function var16_upvw.getSubscriptionType(arg1) -- Line 357
	return arg1._subscriptionType
end
function var16_upvw.getTypeMap(arg1) -- Line 361
	return arg1._typeMap
end
function var16_upvw.getType(arg1, arg2) -- Line 365
	return arg1:getTypeMap()[arg2]
end
function var16_upvw.getPossibleTypes(arg1, arg2) -- Line 369
	--[[ Upvalues[1]:
		[1]: isUnionType_upvr (readonly)
	]]
	if isUnionType_upvr(arg2) then
		return arg2:getTypes()
	end
	return arg1:getImplementations(arg2).objects
end
function var16_upvw.getImplementations(arg1, arg2) -- Line 378
	if not arg1._implementationsMap:get(arg2.name) then
	end
	return {
		objects = {};
		interfaces = {};
	}
end
function var16_upvw.isSubType(arg1, arg2, arg3) -- Line 388
	--[[ Upvalues[1]:
		[1]: isUnionType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var141 = arg1._subTypeMap[arg2.name]
	if var141 == nil then
		var141 = {}
		if isUnionType_upvr(arg2) then
			for _, v_7 in ipairs(arg2:getTypes()) do
				var141[v_7.name] = true
			end
		else
			local any_getImplementations_result1 = arg1:getImplementations(arg2)
			for _, v_8 in ipairs(any_getImplementations_result1.objects) do
				var141[v_8.name] = true
			end
			for _, v_9 in ipairs(any_getImplementations_result1.interfaces) do
				var141[v_9.name] = true
			end
		end
		arg1._subTypeMap:set(arg2.name, var141)
	end
	if var141[arg3.name] == nil then
	else
	end
	return true
end
function var16_upvw.getDirectives(arg1) -- Line 417
	return arg1._directives
end
function var16_upvw.getDirective(arg1, arg2) -- Line 421
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return Array_upvr.find(arg1:getDirectives(), function(arg1_2) -- Line 422
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var153
		if arg1_2.name ~= arg2 then
			var153 = false
		else
			var153 = true
		end
		return var153
	end)
end
function var16_upvw.toConfig(arg1) -- Line 427
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local module = {
		description = arg1.description;
		query = arg1:getQueryType();
		mutation = arg1:getMutationType();
		subscription = arg1:getSubscriptionType();
		types = arg1:getTypeMap():values();
		directives = Array_upvr.slice(arg1:getDirectives());
		extensions = arg1.extensions;
		astNode = arg1.astNode;
	}
	local var155
	if not var155 then
		var155 = {}
	end
	module.extensionASTNodes = var155
	if arg1.__validationErrors == nil then
		var155 = false
	else
		var155 = true
	end
	module.assumeValid = var155
	return module
end
function var16_upvw.__tostring(arg1) -- Line 443
	return "GraphQLSchema"
end
local getNamedType_upvr = definition.getNamedType
local isInputObjectType_upvr = definition.isInputObjectType
function collectReferencedTypes_upvw(arg1, arg2) -- Line 485, Named "collectReferencedTypes"
	--[[ Upvalues[6]:
		[1]: getNamedType_upvr (readonly)
		[2]: isUnionType_upvr (readonly)
		[3]: collectReferencedTypes_upvw (read and write)
		[4]: isObjectType_upvr (readonly)
		[5]: isInterfaceType_upvr (readonly)
		[6]: isInputObjectType_upvr (readonly)
	]]
	local var156_result1 = getNamedType_upvr(arg1)
	if not arg2:has(var156_result1) then
		arg2:add(var156_result1)
		if isUnionType_upvr(var156_result1) then
			for _, v_10 in ipairs(var156_result1:getTypes()) do
				collectReferencedTypes_upvw(v_10, arg2)
			end
			return arg2
		end
		if isObjectType_upvr(var156_result1) or isInterfaceType_upvr(var156_result1) then
			for _, v_11 in ipairs(var156_result1:getInterfaces()) do
				collectReferencedTypes_upvw(v_11, arg2)
			end
			for _, v_12 in ipairs(var156_result1:getFields():values()) do
				collectReferencedTypes_upvw(v_12.type, arg2)
				for _, v_13 in ipairs(v_12.args) do
					collectReferencedTypes_upvw(v_13.type, arg2)
				end
			end
			return arg2
		end
		if isInputObjectType_upvr(var156_result1) then
			for _, v_14 in ipairs(var156_result1:getFields():values()) do
				collectReferencedTypes_upvw(v_14.type, arg2)
			end
		end
	end
	return arg2
end
return {
	isSchema = function(arg1) -- Line 74, Named "isSchema"
		--[[ Upvalues[2]:
			[1]: instanceOf_upvr (readonly)
			[2]: var15_upvw (read and write)
		]]
		return instanceOf_upvr(arg1, var15_upvw)
	end;
	assertSchema = function(arg1) -- Line 78, Named "assertSchema"
		--[[ Upvalues[4]:
			[1]: instanceOf_upvr (readonly)
			[2]: var15_upvw (read and write)
			[3]: Error_upvr (readonly)
			[4]: inspect_upvr (readonly)
		]]
		if not instanceOf_upvr(arg1, var15_upvw) then
			error(Error_upvr.new("Expected %s to be a GraphQL schema.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	GraphQLSchema = var16_upvw;
}