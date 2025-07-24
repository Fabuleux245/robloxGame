-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:08
-- Luau version 6, Types version 3
-- Time taken: 0.017640 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local jsutils = Parent.jsutils
local invariant_upvr = require(jsutils.invariant).invariant
local language = Parent.language
local type = Parent.type
local definition = require(type.definition)
local isObjectType_upvr = definition.isObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local isUnionType_upvr = definition.isUnionType
local isEnumType_upvr = definition.isEnumType
local isInputObjectType_upvr = definition.isInputObjectType
local isNonNullType_upvr = definition.isNonNullType
local isListType_upvr = definition.isListType
local isNamedType_upvr = definition.isNamedType
local isRequiredArgument_upvr = definition.isRequiredArgument
local findSchemaChanges_upvw
local diff_upvw
local isChangeSafeForInputObjectFieldOrFieldArg_upvw
local any_freeze_result1_upvr = Object_upvr.freeze({
	TYPE_REMOVED = "TYPE_REMOVED";
	TYPE_CHANGED_KIND = "TYPE_CHANGED_KIND";
	TYPE_REMOVED_FROM_UNION = "TYPE_REMOVED_FROM_UNION";
	VALUE_REMOVED_FROM_ENUM = "VALUE_REMOVED_FROM_ENUM";
	REQUIRED_INPUT_FIELD_ADDED = "REQUIRED_INPUT_FIELD_ADDED";
	IMPLEMENTED_INTERFACE_REMOVED = "IMPLEMENTED_INTERFACE_REMOVED";
	FIELD_REMOVED = "FIELD_REMOVED";
	FIELD_CHANGED_KIND = "FIELD_CHANGED_KIND";
	REQUIRED_ARG_ADDED = "REQUIRED_ARG_ADDED";
	ARG_REMOVED = "ARG_REMOVED";
	ARG_CHANGED_KIND = "ARG_CHANGED_KIND";
	DIRECTIVE_REMOVED = "DIRECTIVE_REMOVED";
	DIRECTIVE_ARG_REMOVED = "DIRECTIVE_ARG_REMOVED";
	REQUIRED_DIRECTIVE_ARG_ADDED = "REQUIRED_DIRECTIVE_ARG_ADDED";
	DIRECTIVE_REPEATABLE_REMOVED = "DIRECTIVE_REPEATABLE_REMOVED";
	DIRECTIVE_LOCATION_REMOVED = "DIRECTIVE_LOCATION_REMOVED";
})
local any_freeze_result1_upvr_2 = Object_upvr.freeze({
	VALUE_ADDED_TO_ENUM = "VALUE_ADDED_TO_ENUM";
	TYPE_ADDED_TO_UNION = "TYPE_ADDED_TO_UNION";
	OPTIONAL_INPUT_FIELD_ADDED = "OPTIONAL_INPUT_FIELD_ADDED";
	OPTIONAL_ARG_ADDED = "OPTIONAL_ARG_ADDED";
	IMPLEMENTED_INTERFACE_ADDED = "IMPLEMENTED_INTERFACE_ADDED";
	ARG_DEFAULT_VALUE_CHANGE = "ARG_DEFAULT_VALUE_CHANGE";
})
local findTypeChanges_upvw
local findDirectiveChanges_upvw
function findSchemaChanges_upvw(arg1, arg2) -- Line 146, Named "findSchemaChanges"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: findTypeChanges_upvw (read and write)
		[3]: findDirectiveChanges_upvw (read and write)
	]]
	return Array_upvr.concat(findTypeChanges_upvw(arg1, arg2), findDirectiveChanges_upvw(arg1, arg2))
end
function findDirectiveChanges_upvw(arg1, arg2) -- Line 156, Named "findDirectiveChanges"
	--[[ Upvalues[3]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr (readonly)
		[3]: isRequiredArgument_upvr (readonly)
	]]
	local module_3 = {}
	local diff_result1 = diff_upvw(arg1:getDirectives(), arg2:getDirectives())
	for _, v in ipairs(diff_result1.removed) do
		table.insert(module_3, {
			type = any_freeze_result1_upvr.DIRECTIVE_REMOVED;
			description = "%s was removed.":format(v.name);
		})
	end
	for _, v_2 in ipairs(diff_result1.persisted) do
		local _1_4 = v_2[1]
		local _2_2 = v_2[2]
		local diff_result1_3 = diff_upvw(_1_4.args, _2_2.args)
		for _, v_3 in ipairs(diff_result1_3.added) do
			if isRequiredArgument_upvr(v_3) then
				table.insert(module_3, {
					type = any_freeze_result1_upvr.REQUIRED_DIRECTIVE_ARG_ADDED;
					description = "A required arg %s on directive %s was added.":format(v_3.name, _1_4.name);
				})
			end
		end
		for i_4, v_4 in ipairs(diff_result1_3.removed) do
			table.insert(module_3, {
				type = any_freeze_result1_upvr.DIRECTIVE_ARG_REMOVED;
				description = "%s was removed from %s.":format(v_4.name, _1_4.name);
			})
		end
		if _1_4.isRepeatable and not _2_2.isRepeatable then
			local tbl_4 = {}
			v_4 = any_freeze_result1_upvr
			i_4 = v_4.DIRECTIVE_REPEATABLE_REMOVED
			tbl_4.type = i_4
			i_4 = "Repeatable flag was removed from %s.":format(_1_4.name)
			tbl_4.description = i_4
			table.insert(module_3, tbl_4)
		end
		for _, v_5 in ipairs(_1_4.locations) do
			if table.find(_2_2.locations, v_5) == nil then
				table.insert(module_3, {
					type = any_freeze_result1_upvr.DIRECTIVE_LOCATION_REMOVED;
					description = "%s was removed from %s.":format(v_5, _1_4.name);
				})
			end
		end
	end
	return module_3
end
local isSpecifiedScalarType_upvr = require(type.scalars).isSpecifiedScalarType
local findEnumTypeChanges_upvw
local findUnionTypeChanges_upvw
local findInputObjectTypeChanges_upvw
local findFieldChanges_upvw
local findImplementedInterfacesChanges_upvw
local typeKindName_upvw
function findTypeChanges_upvw(arg1, arg2) -- Line 215, Named "findTypeChanges"
	--[[ Upvalues[15]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr (readonly)
		[3]: isSpecifiedScalarType_upvr (readonly)
		[4]: isEnumType_upvr (readonly)
		[5]: findEnumTypeChanges_upvw (read and write)
		[6]: isUnionType_upvr (readonly)
		[7]: findUnionTypeChanges_upvw (read and write)
		[8]: isInputObjectType_upvr (readonly)
		[9]: findInputObjectTypeChanges_upvw (read and write)
		[10]: isObjectType_upvr (readonly)
		[11]: Array_upvr (readonly)
		[12]: findFieldChanges_upvw (read and write)
		[13]: findImplementedInterfacesChanges_upvw (read and write)
		[14]: isInterfaceType_upvr (readonly)
		[15]: typeKindName_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 68 start (CF ANALYSIS FAILED)
	local diff_upvw_result1_4 = diff_upvw(arg1:getTypeMap():values(), arg2:getTypeMap():values())
	for _, v_6 in ipairs(diff_upvw_result1_4.removed) do
		local tbl = {
			type = any_freeze_result1_upvr.TYPE_REMOVED;
		}
		local var149
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var149 = "Standard scalar %s was removed because it is not referenced anymore.":format(v_6.name)
			return var149
		end
		if not isSpecifiedScalarType_upvr(v_6) or not INLINED_2() then
			var149 = "%s was removed.":format(v_6.name)
		end
		tbl.description = var149
		table.insert({}, tbl)
	end
	local ipairs_result1_3, ipairs_result2, ipairs_result3_4 = ipairs(diff_upvw_result1_4.persisted)
	-- KONSTANTERROR: [0] 1. Error Block 68 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [241] 191. Error Block 40 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [241] 191. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 43. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 43. Error Block 8 end (CF ANALYSIS FAILED)
end
local isRequiredInputField_upvr = definition.isRequiredInputField
function findInputObjectTypeChanges_upvw(arg1, arg2) -- Line 284, Named "findInputObjectTypeChanges"
	--[[ Upvalues[5]:
		[1]: diff_upvw (read and write)
		[2]: isRequiredInputField_upvr (readonly)
		[3]: any_freeze_result1_upvr (readonly)
		[4]: any_freeze_result1_upvr_2 (readonly)
		[5]: isChangeSafeForInputObjectFieldOrFieldArg_upvw (read and write)
	]]
	local module_6 = {}
	local diff_result1_4 = diff_upvw(arg1:getFields():values(), arg2:getFields():values())
	for _, v_7 in ipairs(diff_result1_4.added) do
		if isRequiredInputField_upvr(v_7) then
			table.insert(module_6, {
				type = any_freeze_result1_upvr.REQUIRED_INPUT_FIELD_ADDED;
				description = "A required field %s on input type %s was added.":format(v_7.name, arg1.name);
			})
		else
			table.insert(module_6, {
				type = any_freeze_result1_upvr_2.OPTIONAL_INPUT_FIELD_ADDED;
				description = "An optional field %s on input type %s was added.":format(v_7.name, arg1.name);
			})
		end
	end
	for _, v_8 in ipairs(diff_result1_4.removed) do
		table.insert(module_6, {
			type = any_freeze_result1_upvr.FIELD_REMOVED;
			description = "%s.%s was removed.":format(arg1.name, v_8.name);
		})
	end
	for _, v_9 in ipairs(diff_result1_4.persisted) do
		local _1_5 = v_9[1]
		local _2_5 = v_9[2]
		if not isChangeSafeForInputObjectFieldOrFieldArg_upvw(_1_5.type, _2_5.type) then
			table.insert(module_6, {
				type = any_freeze_result1_upvr.FIELD_CHANGED_KIND;
				description = "%s.%s changed type from %s to %s.":format(arg1.name, _1_5.name, tostring(_1_5.type), tostring(_2_5.type));
			})
		end
	end
	return module_6
end
function findUnionTypeChanges_upvw(arg1, arg2) -- Line 339, Named "findUnionTypeChanges"
	--[[ Upvalues[3]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr_2 (readonly)
		[3]: any_freeze_result1_upvr (readonly)
	]]
	local module_2 = {}
	local diff_upvw_result1_2 = diff_upvw(arg1:getTypes(), arg2:getTypes())
	for _, v_10 in ipairs(diff_upvw_result1_2.added) do
		table.insert(module_2, {
			type = any_freeze_result1_upvr_2.TYPE_ADDED_TO_UNION;
			description = "%s was added to union type %s.":format(v_10.name, arg1.name);
		})
	end
	for _, v_11 in ipairs(diff_upvw_result1_2.removed) do
		table.insert(module_2, {
			type = any_freeze_result1_upvr.TYPE_REMOVED_FROM_UNION;
			description = "%s was removed from union type %s.":format(v_11.name, arg1.name);
		})
	end
	return module_2
end
function findEnumTypeChanges_upvw(arg1, arg2) -- Line 368, Named "findEnumTypeChanges"
	--[[ Upvalues[3]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr_2 (readonly)
		[3]: any_freeze_result1_upvr (readonly)
	]]
	local module_9 = {}
	local diff_upvw_result1_5 = diff_upvw(arg1:getValues(), arg2:getValues())
	for _, v_12 in ipairs(diff_upvw_result1_5.added) do
		table.insert(module_9, {
			type = any_freeze_result1_upvr_2.VALUE_ADDED_TO_ENUM;
			description = "%s was added to enum type %s.":format(v_12.name, arg1.name);
		})
	end
	for _, v_13 in ipairs(diff_upvw_result1_5.removed) do
		table.insert(module_9, {
			type = any_freeze_result1_upvr.VALUE_REMOVED_FROM_ENUM;
			description = "%s was removed from enum type %s.":format(v_13.name, arg1.name);
		})
	end
	return module_9
end
function findImplementedInterfacesChanges_upvw(arg1, arg2) -- Line 390, Named "findImplementedInterfacesChanges"
	--[[ Upvalues[3]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr_2 (readonly)
		[3]: any_freeze_result1_upvr (readonly)
	]]
	local module_8 = {}
	local diff_upvw_result1 = diff_upvw(arg1:getInterfaces(), arg2:getInterfaces())
	for _, v_14 in ipairs(diff_upvw_result1.added) do
		table.insert(module_8, {
			type = any_freeze_result1_upvr_2.IMPLEMENTED_INTERFACE_ADDED;
			description = "%s added to interfaces implemented by %s.":format(v_14.name, arg1.name);
		})
	end
	for _, v_15 in ipairs(diff_upvw_result1.removed) do
		table.insert(module_8, {
			type = any_freeze_result1_upvr.IMPLEMENTED_INTERFACE_REMOVED;
			description = "%s no longer implements interface %s.":format(arg1.name, v_15.name);
		})
	end
	return module_8
end
local findArgChanges_upvw
local isChangeSafeForObjectOrInterfaceField_upvw
function findFieldChanges_upvw(arg1, arg2) -- Line 420, Named "findFieldChanges"
	--[[ Upvalues[4]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr (readonly)
		[3]: findArgChanges_upvw (read and write)
		[4]: isChangeSafeForObjectOrInterfaceField_upvw (read and write)
	]]
	local module_7 = {}
	local diff_result1_2 = diff_upvw(arg1:getFields():values(), arg2:getFields():values())
	for _, v_16 in ipairs(diff_result1_2.removed) do
		table.insert(module_7, {
			type = any_freeze_result1_upvr.FIELD_REMOVED;
			description = "%s.%s was removed.":format(arg1.name, v_16.name);
		})
	end
	for _, v_17 in ipairs(diff_result1_2.persisted) do
		local _1_3 = v_17[1]
		local _2 = v_17[2]
		for i_18, v_18 in ipairs(findArgChanges_upvw(arg1, _1_3, _2)) do
			table.insert(module_7, v_18)
		end
		if not isChangeSafeForObjectOrInterfaceField_upvw(_1_3.type, _2.type) then
			i_18 = {}
			v_18 = any_freeze_result1_upvr.FIELD_CHANGED_KIND
			i_18.type = v_18
			v_18 = "%s.%s changed type from ":format(arg1.name, _1_3.name).."%s to %s.":format(tostring(_1_3.type), tostring(_2.type))
			i_18.description = v_18
			table.insert(module_7, i_18)
		end
	end
	return module_7
end
local stringifyValue_upvw
function findArgChanges_upvw(arg1, arg2, arg3) -- Line 461, Named "findArgChanges"
	--[[ Upvalues[6]:
		[1]: diff_upvw (read and write)
		[2]: any_freeze_result1_upvr (readonly)
		[3]: isChangeSafeForInputObjectFieldOrFieldArg_upvw (read and write)
		[4]: any_freeze_result1_upvr_2 (readonly)
		[5]: stringifyValue_upvw (read and write)
		[6]: isRequiredArgument_upvr (readonly)
	]]
	local module = {}
	local diff_result1_5 = diff_upvw(arg2.args, arg3.args)
	for _, v_19 in ipairs(diff_result1_5.removed) do
		table.insert(module, {
			type = any_freeze_result1_upvr.ARG_REMOVED;
			description = "%s.%s arg %s was removed.":format(arg1.name, arg2.name, v_19.name);
		})
	end
	for _, v_20 in ipairs(diff_result1_5.persisted) do
		local _1 = v_20[1]
		local _2_4 = v_20[2]
		if not isChangeSafeForInputObjectFieldOrFieldArg_upvw(_1.type, _2_4.type) then
			table.insert(module, {
				type = any_freeze_result1_upvr.ARG_CHANGED_KIND;
				description = "%s.%s arg %s has changed type from ":format(arg1.name, arg2.name, _1.name).."%s to %s.":format(tostring(_1.type), tostring(_2_4.type));
			})
		elseif _1.defaultValue ~= nil then
			if _2_4.defaultValue == nil then
				table.insert(module, {
					type = any_freeze_result1_upvr_2.ARG_DEFAULT_VALUE_CHANGE;
					description = "%s.%s arg %s defaultValue was removed.":format(arg1.name, arg2.name, _1.name);
				})
			else
				local stringifyValue_upvw_result1_2 = stringifyValue_upvw(_1.defaultValue, _1.type)
				local stringifyValue_upvw_result1 = stringifyValue_upvw(_2_4.defaultValue, _2_4.type)
				if stringifyValue_upvw_result1_2 ~= stringifyValue_upvw_result1 then
					table.insert(module, {
						type = any_freeze_result1_upvr_2.ARG_DEFAULT_VALUE_CHANGE;
						description = "%s.%s arg %s has changed defaultValue from %s to %s.":format(arg1.name, arg2.name, _1.name, stringifyValue_upvw_result1_2, stringifyValue_upvw_result1);
					})
				end
			end
		end
	end
	for _, v_21 in ipairs(diff_result1_5.added) do
		if isRequiredArgument_upvr(v_21) then
			table.insert(module, {
				type = any_freeze_result1_upvr.REQUIRED_ARG_ADDED;
				description = "A required arg %s on %s.%s was added.":format(v_21.name, arg1.name, arg2.name);
			})
		else
			table.insert(module, {
				type = any_freeze_result1_upvr_2.OPTIONAL_ARG_ADDED;
				description = "An optional arg %s on %s.%s was added.":format(v_21.name, arg1.name, arg2.name);
			})
		end
	end
	return module
end
function isChangeSafeForObjectOrInterfaceField_upvw(arg1, arg2) -- Line 550, Named "isChangeSafeForObjectOrInterfaceField"
	--[[ Upvalues[4]:
		[1]: isListType_upvr (readonly)
		[2]: isChangeSafeForObjectOrInterfaceField_upvw (read and write)
		[3]: isNonNullType_upvr (readonly)
		[4]: isNamedType_upvr (readonly)
	]]
	local var299
	if var299 then
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var299 = isChangeSafeForObjectOrInterfaceField_upvw(arg1.ofType, arg2.ofType)
			return var299
		end
		if not isListType_upvr(arg2) or not INLINED_3() then
			var299 = isNonNullType_upvr(arg2)
			if var299 then
				var299 = isChangeSafeForObjectOrInterfaceField_upvw(arg1, arg2.ofType)
			end
		end
		return var299
	end
	var299 = isNonNullType_upvr(arg1)
	if var299 then
		var299 = isNonNullType_upvr(arg2)
		if var299 then
			var299 = isChangeSafeForObjectOrInterfaceField_upvw(arg1.ofType, arg2.ofType)
		end
		return var299
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var299 = true
		return arg1.name ~= arg2.name
	end
	if not isNamedType_upvr(arg2) or INLINED_4() then
		var299 = isNonNullType_upvr(arg2)
		if var299 then
			var299 = isChangeSafeForObjectOrInterfaceField_upvw(arg1, arg2.ofType)
		end
	end
	return var299
end
function isChangeSafeForInputObjectFieldOrFieldArg_upvw(arg1, arg2) -- Line 572, Named "isChangeSafeForInputObjectFieldOrFieldArg"
	--[[ Upvalues[4]:
		[1]: isListType_upvr (readonly)
		[2]: isChangeSafeForInputObjectFieldOrFieldArg_upvw (read and write)
		[3]: isNonNullType_upvr (readonly)
		[4]: isNamedType_upvr (readonly)
	]]
	if isListType_upvr(arg1) then
		local isListType_upvr_result1 = isListType_upvr(arg2)
		if isListType_upvr_result1 then
			isListType_upvr_result1 = isChangeSafeForInputObjectFieldOrFieldArg_upvw(arg1.ofType, arg2.ofType)
		end
		return isListType_upvr_result1
	end
	local var301
	if var301 then
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var301 = isChangeSafeForInputObjectFieldOrFieldArg_upvw(arg1.ofType, arg2.ofType)
			return var301
		end
		if not isNonNullType_upvr(arg2) or not INLINED_5() then
			var301 = not isNonNullType_upvr(arg2)
			if var301 then
				var301 = isChangeSafeForInputObjectFieldOrFieldArg_upvw(arg1.ofType, arg2)
			end
		end
		return var301
	end
	local isNamedType_upvr_result1 = isNamedType_upvr(arg2)
	if isNamedType_upvr_result1 then
		if arg1.name ~= arg2.name then
			isNamedType_upvr_result1 = false
		else
			isNamedType_upvr_result1 = true
		end
	end
	return isNamedType_upvr_result1
end
local isScalarType_upvr = definition.isScalarType
local inspect_upvr = require(jsutils.inspect).inspect
function typeKindName_upvw(arg1) -- Line 593, Named "typeKindName"
	--[[ Upvalues[8]:
		[1]: isScalarType_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: isInterfaceType_upvr (readonly)
		[4]: isUnionType_upvr (readonly)
		[5]: isEnumType_upvr (readonly)
		[6]: isInputObjectType_upvr (readonly)
		[7]: invariant_upvr (readonly)
		[8]: inspect_upvr (readonly)
	]]
	if isScalarType_upvr(arg1) then
		return "a Scalar type"
	end
	if isObjectType_upvr(arg1) then
		return "an Object type"
	end
	if isInterfaceType_upvr(arg1) then
		return "an Interface type"
	end
	if isUnionType_upvr(arg1) then
		return "a Union type"
	end
	if isEnumType_upvr(arg1) then
		return "an Enum type"
	end
	if isInputObjectType_upvr(arg1) then
		return "an Input type"
	end
	invariant_upvr(false, "Unexpected type: "..inspect_upvr(arg1))
	return ""
end
local astFromValue_upvr = require(script.Parent.astFromValue).astFromValue
local visit_upvr = require(language.visitor).visit
local naturalCompare_upvr = require(jsutils.naturalCompare).naturalCompare
local print_upvr = require(language.printer).print
function stringifyValue_upvw(arg1, arg2) -- Line 620, Named "stringifyValue"
	--[[ Upvalues[7]:
		[1]: astFromValue_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: visit_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: naturalCompare_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: print_upvr (readonly)
	]]
	local var309 = arg2
	local var305_result1 = astFromValue_upvr(arg1, var309)
	if var305_result1 == nil then
		var309 = false
	else
		var309 = true
	end
	invariant_upvr(var309)
	return print_upvr(visit_upvr(var305_result1, {
		ObjectValue = function(arg1_4, arg2_2) -- Line 628, Named "ObjectValue"
			--[[ Upvalues[3]:
				[1]: Array_upvr (copied, readonly)
				[2]: naturalCompare_upvr (copied, readonly)
				[3]: Object_upvr (copied, readonly)
			]]
			local any_concat_result1 = Array_upvr.concat({}, arg2_2.fields)
			Array_upvr.sort(any_concat_result1, function(arg1_5, arg2_3) -- Line 632
				--[[ Upvalues[1]:
					[1]: naturalCompare_upvr (copied, readonly)
				]]
				return naturalCompare_upvr(arg1_5.name.value, arg2_3.name.value)
			end)
			return Object_upvr.assign({}, arg2_2, {
				fields = any_concat_result1;
			})
		end;
	}))
end
local keyMapOrdered_upvr = require(Parent.luaUtils.keyMapOrdered).keyMapOrdered
function diff_upvw(arg1, arg2) -- Line 645, Named "diff"
	--[[ Upvalues[1]:
		[1]: keyMapOrdered_upvr (readonly)
	]]
	for _, v_22 in ipairs(arg1) do
		local any_get_result1 = keyMapOrdered_upvr(arg2, function(arg1_7) -- Line 659
			return arg1_7.name
		end):get(v_22.name)
		if any_get_result1 == nil then
			table.insert({}, v_22)
		else
			table.insert({}, {v_22, any_get_result1})
		end
	end
	for _, v_23 in ipairs(arg2) do
		if keyMapOrdered_upvr(arg1, function(arg1_6) -- Line 656
			return arg1_6.name
		end):get(v_23.name) == nil then
			table.insert({}, v_23)
		end
	end
	local module_5 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_5.added = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_5.persisted = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_5.removed = {}
	return module_5
end
return {
	BreakingChangeType = any_freeze_result1_upvr;
	DangerousChangeType = any_freeze_result1_upvr_2;
	findBreakingChanges = function(arg1, arg2) -- Line 122, Named "findBreakingChanges"
		--[[ Upvalues[3]:
			[1]: Array_upvr (readonly)
			[2]: findSchemaChanges_upvw (read and write)
			[3]: any_freeze_result1_upvr (readonly)
		]]
		return Array_upvr.filter(findSchemaChanges_upvw(arg1, arg2), function(arg1_2) -- Line 126
			--[[ Upvalues[1]:
				[1]: any_freeze_result1_upvr (copied, readonly)
			]]
			local var27
			if any_freeze_result1_upvr[arg1_2.type] == nil then
				var27 = false
			else
				var27 = true
			end
			return var27
		end)
	end;
	findDangerousChanges = function(arg1, arg2) -- Line 136, Named "findDangerousChanges"
		--[[ Upvalues[3]:
			[1]: Array_upvr (readonly)
			[2]: findSchemaChanges_upvw (read and write)
			[3]: any_freeze_result1_upvr_2 (readonly)
		]]
		return Array_upvr.filter(findSchemaChanges_upvw(arg1, arg2), function(arg1_3) -- Line 140
			--[[ Upvalues[1]:
				[1]: any_freeze_result1_upvr_2 (copied, readonly)
			]]
			local var29
			if any_freeze_result1_upvr_2[arg1_3.type] == nil then
				var29 = false
			else
				var29 = true
			end
			return var29
		end)
	end;
}