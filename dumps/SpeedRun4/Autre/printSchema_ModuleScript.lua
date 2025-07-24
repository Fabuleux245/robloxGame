-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:12
-- Luau version 6, Types version 3
-- Time taken: 0.007947 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local invariant_upvr = require(script.Parent.Parent.jsutils.invariant).invariant
local print_upvr = require(script.Parent.Parent.language.printer).print
local isIntrospectionType_upvr = require(script.Parent.Parent.type.introspection).isIntrospectionType
local GraphQLString_upvr = require(script.Parent.Parent.type.scalars).GraphQLString
local directives = require(script.Parent.Parent.type.directives)
local isSpecifiedDirective_upvr = directives.isSpecifiedDirective
local definition = require(script.Parent.Parent.type.definition)
local astFromValue_upvr = require(script.Parent.astFromValue).astFromValue
local isNillish = require(script.Parent.Parent.luaUtils.isNillish)
local isNillish_upvr = isNillish.isNillish
local isNotNillish_upvr = isNillish.isNotNillish
local printDescription_upvw
local printFilteredSchema_upvw
local printInputValue_upvw
local printDeprecated_upvw
local printBlock_upvw
local printFields_upvw
local isDefinedType_upvw
local isSpecifiedScalarType_upvr = require(script.Parent.Parent.type.scalars).isSpecifiedScalarType
function isDefinedType_upvw(arg1) -- Line 86, Named "isDefinedType"
	--[[ Upvalues[2]:
		[1]: isSpecifiedScalarType_upvr (readonly)
		[2]: isIntrospectionType_upvr (readonly)
	]]
	local var24 = not isSpecifiedScalarType_upvr(arg1)
	if var24 then
		var24 = not isIntrospectionType_upvr(arg1)
	end
	return var24
end
local printSchemaDefinition_upvw
local printDirective_upvw
local printType_upvw
function printFilteredSchema_upvw(arg1, arg2, arg3) -- Line 90, Named "printFilteredSchema"
	--[[ Upvalues[5]:
		[1]: Array_upvr (readonly)
		[2]: printSchemaDefinition_upvw (read and write)
		[3]: printDirective_upvw (read and write)
		[4]: printType_upvw (read and write)
		[5]: Boolean_upvr (readonly)
	]]
	return Array_upvr.join(Array_upvr.filter(Array_upvr.concat({printSchemaDefinition_upvw(arg1)}, Array_upvr.map(Array_upvr.filter(arg1:getDirectives(), arg2), function(arg1_3) -- Line 103
		--[[ Upvalues[1]:
			[1]: printDirective_upvw (copied, read and write)
		]]
		return printDirective_upvw(arg1_3)
	end), Array_upvr.map(Array_upvr.filter(arg1:getTypeMap():values(), arg3), function(arg1_4) -- Line 106
		--[[ Upvalues[1]:
			[1]: printType_upvw (copied, read and write)
		]]
		return printType_upvw(arg1_4)
	end)), function(arg1_5) -- Line 111
		--[[ Upvalues[1]:
			[1]: Boolean_upvr (copied, readonly)
		]]
		return Boolean_upvr.toJSBoolean(arg1_5)
	end), "\n\n")..'\n'
end
local isSchemaOfCommonNames_upvw
function printSchemaDefinition_upvw(arg1) -- Line 118, Named "printSchemaDefinition"
	--[[ Upvalues[5]:
		[1]: isNillish_upvr (readonly)
		[2]: isSchemaOfCommonNames_upvw (read and write)
		[3]: isNotNillish_upvr (readonly)
		[4]: printDescription_upvw (read and write)
		[5]: Array_upvr (readonly)
	]]
	if isNillish_upvr(arg1.description) and isSchemaOfCommonNames_upvw(arg1) then return end
	local module = {}
	local any_getQueryType_result1 = arg1:getQueryType()
	if isNotNillish_upvr(any_getQueryType_result1) then
		table.insert(module, "  query: %s":format(any_getQueryType_result1.name))
	end
	local any_getMutationType_result1 = arg1:getMutationType()
	if isNotNillish_upvr(any_getMutationType_result1) then
		table.insert(module, "  mutation: %s":format(any_getMutationType_result1.name))
	end
	local any_getSubscriptionType_result1 = arg1:getSubscriptionType()
	if isNotNillish_upvr(any_getSubscriptionType_result1) then
		table.insert(module, "  subscription: %s":format(any_getSubscriptionType_result1.name))
	end
	return printDescription_upvw(arg1).."schema {\n%s\n}":format(Array_upvr.join(module, '\n'))
end
function isSchemaOfCommonNames_upvw(arg1) -- Line 164, Named "isSchemaOfCommonNames"
	--[[ Upvalues[1]:
		[1]: isNotNillish_upvr (readonly)
	]]
	local any_getQueryType_result1_2 = arg1:getQueryType()
	if isNotNillish_upvr(any_getQueryType_result1_2) and any_getQueryType_result1_2.name ~= "Query" then
		return false
	end
	local any_getMutationType_result1_2 = arg1:getMutationType()
	if isNotNillish_upvr(any_getMutationType_result1_2) and any_getMutationType_result1_2.name ~= "Mutation" then
		return false
	end
	local any_getSubscriptionType_result1_2 = arg1:getSubscriptionType()
	if isNotNillish_upvr(any_getSubscriptionType_result1_2) and any_getSubscriptionType_result1_2.name ~= "Subscription" then
		return false
	end
	return true
end
local isScalarType_upvr = definition.isScalarType
local printScalar_upvw
local isObjectType_upvr = definition.isObjectType
local printObject_upvw
local isInterfaceType_upvr = definition.isInterfaceType
local printInterface_upvw
local isUnionType_upvr = definition.isUnionType
local printUnion_upvw
local isEnumType_upvr = definition.isEnumType
local printEnum_upvw
local isInputObjectType_upvr = definition.isInputObjectType
local printInputObject_upvw
local inspect_upvr = require(script.Parent.Parent.jsutils.inspect).inspect
function printType_upvw(arg1) -- Line 190, Named "printType"
	--[[ Upvalues[14]:
		[1]: isScalarType_upvr (readonly)
		[2]: printScalar_upvw (read and write)
		[3]: isObjectType_upvr (readonly)
		[4]: printObject_upvw (read and write)
		[5]: isInterfaceType_upvr (readonly)
		[6]: printInterface_upvw (read and write)
		[7]: isUnionType_upvr (readonly)
		[8]: printUnion_upvw (read and write)
		[9]: isEnumType_upvr (readonly)
		[10]: printEnum_upvw (read and write)
		[11]: isInputObjectType_upvr (readonly)
		[12]: printInputObject_upvw (read and write)
		[13]: invariant_upvr (readonly)
		[14]: inspect_upvr (readonly)
	]]
	if isScalarType_upvr(arg1) then
		return printScalar_upvw(arg1)
	end
	if isObjectType_upvr(arg1) then
		return printObject_upvw(arg1)
	end
	if isInterfaceType_upvr(arg1) then
		return printInterface_upvw(arg1)
	end
	if isUnionType_upvr(arg1) then
		return printUnion_upvw(arg1)
	end
	if isEnumType_upvr(arg1) then
		return printEnum_upvw(arg1)
	end
	if isInputObjectType_upvr(arg1) then
		return printInputObject_upvw(arg1)
	end
	invariant_upvr(false, "Unexpected type: "..inspect_upvr(arg1))
	return ""
end
local printSpecifiedByUrl_upvw
function printScalar_upvw(arg1) -- Line 218, Named "printScalar"
	--[[ Upvalues[2]:
		[1]: printDescription_upvw (read and write)
		[2]: printSpecifiedByUrl_upvw (read and write)
	]]
	return printDescription_upvw(arg1).."scalar %s":format(arg1.name)..printSpecifiedByUrl_upvw(arg1)
end
local function printImplementedInterfaces_upvr(arg1) -- Line 222, Named "printImplementedInterfaces"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local any_getInterfaces_result1 = arg1.getInterfaces(arg1)
	if 0 < #any_getInterfaces_result1 then
		return " implements "..Array_upvr.join(Array_upvr.map(any_getInterfaces_result1, function(arg1_6) -- Line 230
			return arg1_6.name
		end), " & ")
	end
	return ""
end
function printObject_upvw(arg1) -- Line 238, Named "printObject"
	--[[ Upvalues[3]:
		[1]: printDescription_upvw (read and write)
		[2]: printImplementedInterfaces_upvr (readonly)
		[3]: printFields_upvw (read and write)
	]]
	return printDescription_upvw(arg1).."type %s":format(arg1.name)..printImplementedInterfaces_upvr(arg1)..printFields_upvw(arg1)
end
function printInterface_upvw(arg1) -- Line 245, Named "printInterface"
	--[[ Upvalues[3]:
		[1]: printDescription_upvw (read and write)
		[2]: printImplementedInterfaces_upvr (readonly)
		[3]: printFields_upvw (read and write)
	]]
	return printDescription_upvw(arg1).."interface %s":format(arg1.name)..printImplementedInterfaces_upvr(arg1)..printFields_upvw(arg1)
end
function printUnion_upvw(arg1) -- Line 252, Named "printUnion"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: printDescription_upvw (read and write)
	]]
	local any_getTypes_result1 = arg1:getTypes()
	local var57
	if 0 < #any_getTypes_result1 then
		var57 = " = "..Array_upvr.join(any_getTypes_result1, " | ")
	else
		var57 = ""
	end
	return printDescription_upvw(arg1).."union "..arg1.name..var57
end
function printEnum_upvw(arg1) -- Line 259, Named "printEnum"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: printDescription_upvw (read and write)
		[3]: printDeprecated_upvw (read and write)
		[4]: printBlock_upvw (read and write)
	]]
	return printDescription_upvw(arg1).."enum %s":format(arg1.name)..printBlock_upvw(Array_upvr.map(arg1:getValues(), function(arg1_7, arg2) -- Line 261
		--[[ Upvalues[2]:
			[1]: printDescription_upvw (copied, read and write)
			[2]: printDeprecated_upvw (copied, read and write)
		]]
		local var59
		if arg2 ~= 1 then
			var59 = false
		else
			var59 = true
		end
		return printDescription_upvw(arg1_7, "  ", var59).."  "..arg1_7.name..printDeprecated_upvw(arg1_7.deprecationReason)
	end))
end
function printInputObject_upvw(arg1) -- Line 271, Named "printInputObject"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: printDescription_upvw (read and write)
		[3]: printInputValue_upvw (read and write)
		[4]: printBlock_upvw (read and write)
	]]
	return printDescription_upvw(arg1).."input %s":format(arg1.name)..printBlock_upvw(Array_upvr.map(arg1:getFields():values(), function(arg1_8, arg2) -- Line 274
		--[[ Upvalues[2]:
			[1]: printDescription_upvw (copied, read and write)
			[2]: printInputValue_upvw (copied, read and write)
		]]
		local var61
		if arg2 ~= 1 then
			var61 = false
		else
			var61 = true
		end
		return printDescription_upvw(arg1_8, "  ", var61).."  "..printInputValue_upvw(arg1_8)
	end))
end
local printArgs_upvw
function printFields_upvw(arg1) -- Line 281, Named "printFields"
	--[[ Upvalues[5]:
		[1]: Array_upvr (readonly)
		[2]: printDescription_upvw (read and write)
		[3]: printArgs_upvw (read and write)
		[4]: printDeprecated_upvw (read and write)
		[5]: printBlock_upvw (read and write)
	]]
	return printBlock_upvw(Array_upvr.map(arg1.getFields(arg1):values(), function(arg1_9, arg2) -- Line 287
		--[[ Upvalues[3]:
			[1]: printDescription_upvw (copied, read and write)
			[2]: printArgs_upvw (copied, read and write)
			[3]: printDeprecated_upvw (copied, read and write)
		]]
		local var64
		if arg2 ~= 1 then
			var64 = false
		else
			var64 = true
		end
		return printDescription_upvw(arg1_9, "  ", var64).."  "..arg1_9.name..printArgs_upvw(arg1_9.args, "  ")..": "..tostring(arg1_9.type)..printDeprecated_upvw(arg1_9.deprecationReason)
	end))
end
function printBlock_upvw(arg1) -- Line 301, Named "printBlock"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if #arg1 ~= 0 then
		return " {\n"..Array_upvr.join(arg1, '\n').."\n}"
	end
	return ""
end
function printArgs_upvw(arg1, arg2) -- Line 305, Named "printArgs"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: isNillish_upvr (readonly)
		[3]: printInputValue_upvw (read and write)
		[4]: printDescription_upvw (read and write)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	if #arg1 == 0 then
		return ""
	end
	if Array_upvr.every(arg1, function(arg1_10) -- Line 314
		--[[ Upvalues[1]:
			[1]: isNillish_upvr (copied, readonly)
		]]
		return isNillish_upvr(arg1_10.description)
	end) then
		return '('..Array_upvr.join(Array_upvr.map(arg1, printInputValue_upvw), ", ")..')'
	end
	local const_string_upvr = ""
	return "(\n"..Array_upvr.join(Array_upvr.map(arg1, function(arg1_11, arg2_2) -- Line 326
		--[[ Upvalues[3]:
			[1]: printDescription_upvw (copied, read and write)
			[2]: const_string_upvr (readonly)
			[3]: printInputValue_upvw (copied, read and write)
		]]
		local var69 = "  "
		if arg2_2 ~= 1 then
			var69 = false
		else
			var69 = true
		end
		return printDescription_upvw(arg1_11, var69..const_string_upvr, var69).."  "..const_string_upvr..printInputValue_upvw(arg1_11)
	end), '\n')..'\n'..const_string_upvr..')'
end
function printInputValue_upvw(arg1) -- Line 339, Named "printInputValue"
	--[[ Upvalues[4]:
		[1]: astFromValue_upvr (readonly)
		[2]: isNotNillish_upvr (readonly)
		[3]: print_upvr (readonly)
		[4]: printDeprecated_upvw (read and write)
	]]
	local var11_result1_2 = astFromValue_upvr(arg1.defaultValue, arg1.type)
	local var71 = arg1.name..": "..tostring(arg1.type)
	if isNotNillish_upvr(var11_result1_2) then
		var71 = var71.." = %s":format(print_upvr(var11_result1_2))
	end
	return var71..printDeprecated_upvw(arg1.deprecationReason)
end
function printDirective_upvw(arg1) -- Line 351, Named "printDirective"
	--[[ Upvalues[3]:
		[1]: printDescription_upvw (read and write)
		[2]: printArgs_upvw (read and write)
		[3]: Array_upvr (readonly)
	]]
	local var72
	if arg1.isRepeatable then
		var72 = " repeatable"
	else
		var72 = ""
	end
	return printDescription_upvw(arg1).."directive @"..arg1.name..printArgs_upvw(arg1.args)..var72.." on "..Array_upvr.join(arg1.locations, " | ")
end
local DEFAULT_DEPRECATION_REASON_upvr = directives.DEFAULT_DEPRECATION_REASON
function printDeprecated_upvw(arg1) -- Line 361, Named "printDeprecated"
	--[[ Upvalues[5]:
		[1]: isNillish_upvr (readonly)
		[2]: astFromValue_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: DEFAULT_DEPRECATION_REASON_upvr (readonly)
		[5]: print_upvr (readonly)
	]]
	if isNillish_upvr(arg1) then
		return ""
	end
	local var11_result1 = astFromValue_upvr(arg1, GraphQLString_upvr)
	if var11_result1 and arg1 ~= DEFAULT_DEPRECATION_REASON_upvr then
		return " @deprecated(reason: "..print_upvr(var11_result1)..')'
	end
	return " @deprecated"
end
function printSpecifiedByUrl_upvw(arg1) -- Line 376, Named "printSpecifiedByUrl"
	--[[ Upvalues[5]:
		[1]: isNillish_upvr (readonly)
		[2]: astFromValue_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: invariant_upvr (readonly)
		[5]: print_upvr (readonly)
	]]
	if isNillish_upvr(arg1.specifiedByUrl) then
		return ""
	end
	local astFromValue_upvr_result1 = astFromValue_upvr(arg1.specifiedByUrl, GraphQLString_upvr)
	invariant_upvr(astFromValue_upvr_result1, "Unexpected null value returned from `astFromValue` for specifiedByUrl")
	return " @specifiedBy(url: "..print_upvr(astFromValue_upvr_result1)..')'
end
local printBlockString_upvr = require(script.Parent.Parent.language.blockString).printBlockString
function printDescription_upvw(arg1, arg2, arg3) -- Line 390, Named "printDescription"
	--[[ Upvalues[3]:
		[1]: isNillish_upvr (readonly)
		[2]: printBlockString_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	if arg2 ~= nil then
		local _ = arg2
	else
	end
	if arg3 ~= nil then
	else
	end
	local description = arg1.description
	if isNillish_upvr(description) then
		return ""
	end
	if 70 >= string.len(description) then
	else
	end
	local var79
	var79 = description
	if Boolean_upvr.toJSBoolean("") and not true then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var79 = '\n'..""
	else
		var79 = ""
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local string_gsub_result1, _ = string.gsub(printBlockString_upvr(var79, "", true), '\n', '\n'.."")
	return var79..string_gsub_result1..'\n'
end
return {
	printSchema = function(arg1) -- Line 76, Named "printSchema"
		--[[ Upvalues[3]:
			[1]: printFilteredSchema_upvw (read and write)
			[2]: isSpecifiedDirective_upvr (readonly)
			[3]: isDefinedType_upvw (read and write)
		]]
		return printFilteredSchema_upvw(arg1, function(arg1_2) -- Line 77
			--[[ Upvalues[1]:
				[1]: isSpecifiedDirective_upvr (copied, readonly)
			]]
			return not isSpecifiedDirective_upvr(arg1_2)
		end, isDefinedType_upvw)
	end;
	printIntrospectionSchema = function(arg1) -- Line 82, Named "printIntrospectionSchema"
		--[[ Upvalues[3]:
			[1]: printFilteredSchema_upvw (read and write)
			[2]: isSpecifiedDirective_upvr (readonly)
			[3]: isIntrospectionType_upvr (readonly)
		]]
		return printFilteredSchema_upvw(arg1, isSpecifiedDirective_upvr, isIntrospectionType_upvr)
	end;
	printType = printType_upvw;
	NULL = require(script.Parent.astFromValue).NULL;
}