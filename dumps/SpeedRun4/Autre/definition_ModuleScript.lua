-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:59
-- Luau version 6, Types version 3
-- Time taken: 0.029287 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Error_upvr = LuauPolyfill.Error
local Map_upvr = LuauPolyfill.Map
local coerceToMap_upvr = LuauPolyfill.coerceToMap
local null_upvr = require(Parent.luaUtils.null)
local any_freeze_result1_upvr = LuauPolyfill.Object.freeze({})
local jsutils = Parent.jsutils
local inspect_upvr = require(jsutils.inspect).inspect
local toObjMap_upvr = require(jsutils.toObjMap).toObjMap
local keyValMap_upvr = require(jsutils.keyValMap).keyValMap
local devAssert_upvr = require(jsutils.devAssert).devAssert
local instanceOf_upvr = require(jsutils.instanceOf)
local mapValueOrdered_upvr = require(Parent.luaUtils.mapValueOrdered).mapValueOrdered
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local language = Parent.language
local isWrappingType_upvw
local didYouMeanEnumValue_upvw
local tbl_3_upvr = {}
local tbl_upvr_3 = {}
local tbl_upvr_6 = {}
local tbl_upvr = {}
local tbl_upvr_5 = {}
local tbl_upvr_2 = {}
local isScalarType_upvw
local isObjectType_upvw
local isInterfaceType_upvw
local isUnionType_upvw
local isEnumType_upvw
local isInputObjectType_upvw
local isListType_upvw
local isNonNullType_upvw
local function isType_upvw(arg1) -- Line 167, Named "isType"
	--[[ Upvalues[8]:
		[1]: isScalarType_upvw (read and write)
		[2]: isObjectType_upvw (read and write)
		[3]: isInterfaceType_upvw (read and write)
		[4]: isUnionType_upvw (read and write)
		[5]: isEnumType_upvw (read and write)
		[6]: isInputObjectType_upvw (read and write)
		[7]: isListType_upvw (read and write)
		[8]: isNonNullType_upvw (read and write)
	]]
	local isScalarType_result1 = isScalarType_upvw(arg1)
	if not isScalarType_result1 then
		isScalarType_result1 = isObjectType_upvw(arg1)
		if not isScalarType_result1 then
			isScalarType_result1 = isInterfaceType_upvw(arg1)
			if not isScalarType_result1 then
				isScalarType_result1 = isUnionType_upvw(arg1)
				if not isScalarType_result1 then
					isScalarType_result1 = isEnumType_upvw(arg1)
					if not isScalarType_result1 then
						isScalarType_result1 = isInputObjectType_upvw(arg1)
						if not isScalarType_result1 then
							isScalarType_result1 = isListType_upvw(arg1)
							if not isScalarType_result1 then
								isScalarType_result1 = isNonNullType_upvw(arg1)
							end
						end
					end
				end
			end
		end
	end
	return isScalarType_result1
end
function isScalarType_upvw(arg1) -- Line 190, Named "isScalarType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_3_upvr)
end
local var41_upvw = isScalarType_upvw
function isObjectType_upvw(arg1) -- Line 202, Named "isObjectType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_upvr_3)
end
local var42_upvw = isObjectType_upvw
function isInterfaceType_upvw(arg1) -- Line 214, Named "isInterfaceType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_upvr_6 (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_upvr_6)
end
local var43_upvw = isInterfaceType_upvw
function isUnionType_upvw(arg1) -- Line 226, Named "isUnionType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_upvr)
end
local var44_upvw = isUnionType_upvw
function isEnumType_upvw(arg1) -- Line 238, Named "isEnumType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_upvr_5 (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_upvr_5)
end
local var45_upvw = isEnumType_upvw
function isInputObjectType_upvw(arg1) -- Line 250, Named "isInputObjectType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	return instanceOf_upvr(arg1, tbl_upvr_2)
end
local var46_upvw = isInputObjectType_upvw
function isListType_upvw(arg1) -- Line 262, Named "isListType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: var48_upvw (read and write)
	]]
	return instanceOf_upvr(arg1, var48_upvw)
end
local var48_upvw
local var47_upvw = isListType_upvw
function isNonNullType_upvw(arg1) -- Line 274, Named "isNonNullType"
	--[[ Upvalues[2]:
		[1]: instanceOf_upvr (readonly)
		[2]: var50_upvw (read and write)
	]]
	return instanceOf_upvr(arg1, var50_upvw)
end
local var50_upvw
local var49_upvw = isNonNullType_upvw
local function isInputType_upvw(arg1) -- Line 324, Named "isInputType"
	--[[ Upvalues[5]:
		[1]: var41_upvw (read and write)
		[2]: var45_upvw (read and write)
		[3]: var46_upvw (read and write)
		[4]: isWrappingType_upvw (read and write)
		[5]: isInputType_upvw (read and write)
	]]
	local var41_upvw_result1_3 = var41_upvw(arg1)
	if not var41_upvw_result1_3 then
		var41_upvw_result1_3 = var45_upvw(arg1)
		if not var41_upvw_result1_3 then
			var41_upvw_result1_3 = var46_upvw(arg1)
			if not var41_upvw_result1_3 then
				var41_upvw_result1_3 = isWrappingType_upvw(arg1)
				if var41_upvw_result1_3 then
					var41_upvw_result1_3 = isInputType_upvw(arg1.ofType)
				end
			end
		end
	end
	return var41_upvw_result1_3
end
local function isOutputType_upvw(arg1) -- Line 358, Named "isOutputType"
	--[[ Upvalues[7]:
		[1]: var41_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: var43_upvw (read and write)
		[4]: var44_upvw (read and write)
		[5]: var45_upvw (read and write)
		[6]: isWrappingType_upvw (read and write)
		[7]: isOutputType_upvw (read and write)
	]]
	local var41_upvw_result1 = var41_upvw(arg1)
	if not var41_upvw_result1 then
		var41_upvw_result1 = var42_upvw(arg1)
		if not var41_upvw_result1 then
			var41_upvw_result1 = var43_upvw(arg1)
			if not var41_upvw_result1 then
				var41_upvw_result1 = var44_upvw(arg1)
				if not var41_upvw_result1 then
					var41_upvw_result1 = var45_upvw(arg1)
					if not var41_upvw_result1 then
						var41_upvw_result1 = isWrappingType_upvw(arg1)
						if var41_upvw_result1 then
							var41_upvw_result1 = isOutputType_upvw(arg1.ofType)
						end
					end
				end
			end
		end
	end
	return var41_upvw_result1
end
local function isLeafType_upvw(arg1) -- Line 380, Named "isLeafType"
	--[[ Upvalues[2]:
		[1]: var41_upvw (read and write)
		[2]: var45_upvw (read and write)
	]]
	local var41_result1 = var41_upvw(arg1)
	if not var41_result1 then
		var41_result1 = var45_upvw(arg1)
	end
	return var41_result1
end
local function isCompositeType_upvw(arg1) -- Line 397, Named "isCompositeType"
	--[[ Upvalues[3]:
		[1]: var42_upvw (read and write)
		[2]: var43_upvw (read and write)
		[3]: var44_upvw (read and write)
	]]
	local var42_result1 = var42_upvw(arg1)
	if not var42_result1 then
		var42_result1 = var43_upvw(arg1)
		if not var42_result1 then
			var42_result1 = var44_upvw(arg1)
		end
	end
	return var42_result1
end
local function isAbstractType_upvw(arg1) -- Line 414, Named "isAbstractType"
	--[[ Upvalues[2]:
		[1]: var43_upvw (read and write)
		[2]: var44_upvw (read and write)
	]]
	local var43_upvw_result1 = var43_upvw(arg1)
	if not var43_upvw_result1 then
		var43_upvw_result1 = var44_upvw(arg1)
	end
	return var43_upvw_result1
end
var48_upvw = {}
local var56_upvw = var48_upvw
var56_upvw.__index = var56_upvw
local function new(arg1) -- Line 452
	--[[ Upvalues[4]:
		[1]: devAssert_upvr (readonly)
		[2]: isType_upvw (read and write)
		[3]: inspect_upvr (readonly)
		[4]: var56_upvw (read and write)
	]]
	local module_15 = {}
	devAssert_upvr(isType_upvw(arg1), "Expected %s to be a GraphQL type.":format(inspect_upvr(arg1)))
	module_15.ofType = arg1
	return setmetatable(module_15, var56_upvw)
end
var56_upvw.new = new
local function __tostring(arg1) -- Line 462
	return arg1:toString()
end
var56_upvw.__tostring = __tostring
local function toString(arg1) -- Line 466
	return '['..tostring(arg1.ofType)..']'
end
var56_upvw.toString = toString
local function toJSON(arg1) -- Line 470
	return arg1:toString()
end
var56_upvw.toJSON = toJSON
var50_upvw = {}
local var58_upvw = var50_upvw
var58_upvw.__index = var58_upvw
local isNullableType_upvw
local function new(arg1) -- Line 509
	--[[ Upvalues[4]:
		[1]: devAssert_upvr (readonly)
		[2]: isNullableType_upvw (read and write)
		[3]: inspect_upvr (readonly)
		[4]: var58_upvw (read and write)
	]]
	local module_9 = {}
	devAssert_upvr(isNullableType_upvw(arg1), "Expected %s to be a GraphQL nullable type.":format(inspect_upvr(arg1)))
	module_9.ofType = arg1
	return setmetatable(module_9, var58_upvw)
end
var58_upvw.new = new
local function __tostring(arg1) -- Line 520
	return arg1:toString()
end
var58_upvw.__tostring = __tostring
local function toString(arg1) -- Line 524
	return tostring(arg1.ofType)..'!'
end
var58_upvw.toString = toString
local function toJSON(arg1) -- Line 528
	return arg1:toString()
end
var58_upvw.toJSON = toJSON
function isWrappingType_upvw(arg1) -- Line 545, Named "isWrappingType"
	--[[ Upvalues[2]:
		[1]: var47_upvw (read and write)
		[2]: var49_upvw (read and write)
	]]
	local var47_upvw_result1 = var47_upvw(arg1)
	if not var47_upvw_result1 then
		var47_upvw_result1 = var49_upvw(arg1)
	end
	return var47_upvw_result1
end
local var61_upvw = isWrappingType_upvw
function isNullableType_upvw(arg1) -- Line 569, Named "isNullableType"
	--[[ Upvalues[2]:
		[1]: isType_upvw (read and write)
		[2]: var49_upvw (read and write)
	]]
	local isType_upvw_result1 = isType_upvw(arg1)
	if isType_upvw_result1 then
		isType_upvw_result1 = not var49_upvw(arg1)
	end
	return isType_upvw_result1
end
local var63_upvw = isNullableType_upvw
local function isNamedType_upvw(arg1) -- Line 604, Named "isNamedType"
	--[[ Upvalues[6]:
		[1]: var41_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: var43_upvw (read and write)
		[4]: var44_upvw (read and write)
		[5]: var45_upvw (read and write)
		[6]: var46_upvw (read and write)
	]]
	local var41_upvw_result1_2 = var41_upvw(arg1)
	if not var41_upvw_result1_2 then
		var41_upvw_result1_2 = var42_upvw(arg1)
		if not var41_upvw_result1_2 then
			var41_upvw_result1_2 = var43_upvw(arg1)
			if not var41_upvw_result1_2 then
				var41_upvw_result1_2 = var44_upvw(arg1)
				if not var41_upvw_result1_2 then
					var41_upvw_result1_2 = var45_upvw(arg1)
					if not var41_upvw_result1_2 then
						var41_upvw_result1_2 = var46_upvw(arg1)
					end
				end
			end
		end
	end
	return var41_upvw_result1_2
end
local function _(arg1) -- Line 643, Named "resolveThunk"
	if typeof(arg1) == "function" then
		return arg1()
	end
	return arg1
end
local function _(arg1) -- Line 647, Named "undefineIfEmpty"
	if arg1 and 0 < #arg1 then
		return arg1
	end
	return nil
end
tbl_3_upvr.__index = tbl_3_upvr
local identityFunc_upvr = require(jsutils.identityFunc).identityFunc
local valueFromASTUntyped_upvr = require(Parent.utilities.valueFromASTUntyped).valueFromASTUntyped
local isNillish_upvr = require(Parent.luaUtils.isNillish).isNillish
local function new(arg1) -- Line 702
	--[[ Upvalues[7]:
		[1]: identityFunc_upvr (readonly)
		[2]: valueFromASTUntyped_upvr (readonly)
		[3]: toObjMap_upvr (readonly)
		[4]: devAssert_upvr (readonly)
		[5]: isNillish_upvr (readonly)
		[6]: inspect_upvr (readonly)
		[7]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 62 start (CF ANALYSIS FAILED)
	local tbl = {}
	local var71_upvr
	if arg1.parseValue then
		var71_upvr = arg1.parseValue
	else
		var71_upvr = identityFunc_upvr
	end
	tbl.name = arg1.name
	tbl.description = arg1.description
	tbl.specifiedByUrl = arg1.specifiedByUrl
	if arg1.serialize then
		-- KONSTANTWARNING: GOTO [28] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 62 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 17. Error Block 65 start (CF ANALYSIS FAILED)
	function tbl.serialize(arg1_2, ...) -- Line 716
		--[[ Upvalues[1]:
			[1]: identityFunc_upvr (readonly)
		]]
		return identityFunc_upvr(...)
	end
	function tbl.parseValue(arg1_3, ...) -- Line 720
		--[[ Upvalues[1]:
			[1]: var71_upvr (readonly)
		]]
		return var71_upvr(...)
	end
	if arg1.parseLiteral then
		-- KONSTANTWARNING: GOTO [45] #31
	end
	-- KONSTANTERROR: [27] 17. Error Block 65 end (CF ANALYSIS FAILED)
end
tbl_3_upvr.new = new
local function toConfig(arg1) -- Line 761
	local module_6 = {
		name = arg1.name;
		description = arg1.description;
		specifiedByUrl = arg1.specifiedByUrl;
		serialize = arg1.serialize;
		parseValue = arg1.parseValue;
		parseLiteral = arg1.parseLiteral;
		extensions = arg1.extensions;
	}
	local astNode = arg1.astNode
	module_6.astNode = astNode
	if arg1.extensionASTNodes then
		astNode = arg1.extensionASTNodes
	else
		astNode = {}
	end
	module_6.extensionASTNodes = astNode
	return module_6
end
tbl_3_upvr.toConfig = toConfig
local function __tostring(arg1) -- Line 775
	return arg1:toString()
end
tbl_3_upvr.__tostring = __tostring
local function toString(arg1) -- Line 779
	return arg1.name
end
tbl_3_upvr.toString = toString
local function toJSON(arg1) -- Line 783
	return arg1:toString()
end
tbl_3_upvr.toJSON = toJSON
tbl_upvr_3.__index = tbl_upvr_3
local defineFieldMap_upvw
local defineInterfaces_upvw
local function new(arg1) -- Line 917
	--[[ Upvalues[6]:
		[1]: toObjMap_upvr (readonly)
		[2]: defineFieldMap_upvw (read and write)
		[3]: defineInterfaces_upvw (read and write)
		[4]: devAssert_upvr (readonly)
		[5]: inspect_upvr (readonly)
		[6]: tbl_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_7 = {
		name = arg1.name;
		description = arg1.description;
		isTypeOf = arg1.isTypeOf;
	}
	local var82
	if arg1.extensions then
		var82 = toObjMap_upvr(arg1.extensions)
	else
		var82 = nil
	end
	module_7.extensions = var82
	var82 = arg1.astNode
	module_7.astNode = var82
	local extensionASTNodes_9 = arg1.extensionASTNodes
	if extensionASTNodes_9 and 0 < #extensionASTNodes_9 then
		var82 = extensionASTNodes_9
	else
		var82 = nil
	end
	module_7.extensionASTNodes = var82
	function var82() -- Line 928
		--[[ Upvalues[2]:
			[1]: defineFieldMap_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return defineFieldMap_upvw(arg1)
	end
	module_7._fields = var82
	function var82() -- Line 931
		--[[ Upvalues[2]:
			[1]: defineInterfaces_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return defineInterfaces_upvw(arg1)
	end
	module_7._interfaces = var82
	var82 = devAssert_upvr
	if typeof(arg1.name) ~= "string" then
	else
	end
	var82(true, "Must provide name.")
	var82 = devAssert_upvr
	if arg1.isTypeOf ~= nil then
		if typeof(arg1.isTypeOf) ~= "function" then
		else
		end
	end
	var82(true, "%s must provide \"isTypeOf\" as a function, ".."but got: %s.":format(module_7.name, inspect_upvr(arg1.isTypeOf)))
	return setmetatable(module_7, tbl_upvr_3)
end
tbl_upvr_3.new = new
local function getFields(arg1) -- Line 946
	if typeof(arg1._fields) == "function" then
		arg1._fields = arg1._fields()
	end
	return arg1._fields
end
tbl_upvr_3.getFields = getFields
local function getInterfaces(arg1) -- Line 953
	if typeof(arg1._interfaces) == "function" then
		arg1._interfaces = arg1._interfaces()
	end
	return arg1._interfaces
end
tbl_upvr_3.getInterfaces = getInterfaces
local fieldsToFieldsConfig_upvw
local function toConfig(arg1) -- Line 960
	--[[ Upvalues[1]:
		[1]: fieldsToFieldsConfig_upvw (read and write)
	]]
	local module_2 = {
		name = arg1.name;
		description = arg1.description;
		interfaces = arg1:getInterfaces();
		fields = fieldsToFieldsConfig_upvw(arg1:getFields());
		isTypeOf = arg1.isTypeOf;
		extensions = arg1.extensions;
		astNode = arg1.astNode;
	}
	local extensionASTNodes_6 = arg1.extensionASTNodes
	if not extensionASTNodes_6 then
		extensionASTNodes_6 = {}
	end
	module_2.extensionASTNodes = extensionASTNodes_6
	return module_2
end
tbl_upvr_3.toConfig = toConfig
local function __tostring(arg1) -- Line 973
	return arg1:toString()
end
tbl_upvr_3.__tostring = __tostring
local function toString(arg1) -- Line 977
	return arg1.name
end
tbl_upvr_3.toString = toString
local function toJSON(arg1) -- Line 981
	return arg1:toString()
end
tbl_upvr_3.toJSON = toJSON
function defineInterfaces_upvw(arg1) -- Line 992, Named "defineInterfaces"
	--[[ Upvalues[2]:
		[1]: devAssert_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local interfaces = arg1.interfaces
	local var87
	if typeof(interfaces) == "function" then
		var87 = interfaces()
	else
		var87 = interfaces
	end
	if var87 then
		local _ = var87
	else
	end
	devAssert_upvr(Array_upvr.isArray({}), "%s interfaces must be an Array or a function which returns an Array.":format(arg1.name))
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local isPlainObj_upvw
function defineFieldMap_upvw(arg1) -- Line 1006, Named "defineFieldMap"
	--[[ Upvalues[9]:
		[1]: devAssert_upvr (readonly)
		[2]: isPlainObj_upvw (read and write)
		[3]: instanceOf_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: coerceToMap_upvr (readonly)
		[6]: mapValueOrdered_upvr (readonly)
		[7]: inspect_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: toObjMap_upvr (readonly)
	]]
	local fields_2 = arg1.fields
	local var91
	if typeof(fields_2) == "function" then
		var91 = fields_2()
	else
		var91 = fields_2
	end
	local isPlainObj_result1 = isPlainObj_upvw(var91)
	if not isPlainObj_result1 then
		isPlainObj_result1 = instanceOf_upvr(var91, Map_upvr)
	end
	devAssert_upvr(isPlainObj_result1, "%s fields must be an object with field names as keys or a function which returns such an object.":format(arg1.name))
	return mapValueOrdered_upvr(coerceToMap_upvr(var91), function(arg1_4, arg2) -- Line 1022
		--[[ Upvalues[9]:
			[1]: devAssert_upvr (copied, readonly)
			[2]: isPlainObj_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: inspect_upvr (copied, readonly)
			[5]: instanceOf_upvr (copied, readonly)
			[6]: Map_upvr (copied, readonly)
			[7]: Array_upvr (copied, readonly)
			[8]: coerceToMap_upvr (copied, readonly)
			[9]: toObjMap_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		devAssert_upvr(isPlainObj_upvw(arg1_4), "%s.%s field config must be an object.":format(arg1.name, arg2))
		local var94 = true
		local var95
		if arg1_4.resolve ~= nil then
			if typeof(arg1_4.resolve) ~= "function" then
				var94 = false
			else
				var94 = true
			end
		end
		var95(var94, "%s.%s field resolver must be a function if ":format(arg1.name, arg2).."provided, but got: %s.":format(inspect_upvr(arg1_4.resolve)))
		if arg1_4.args then
			var95 = arg1_4.args
		else
			var95 = {}
		end
		if not isPlainObj_upvw(var95) then
		end
		devAssert_upvr(instanceOf_upvr(var95, Map_upvr), "%s.%s args must be an object with argument names as keys.":format(arg1.name, arg2))
		local module = {}
		module.name = arg2
		module.description = arg1_4.description
		module.type = arg1_4.type
		module.args = Array_upvr.map(coerceToMap_upvr(var95):entries(), function(arg1_5) -- Line 1043
			--[[ Upvalues[1]:
				[1]: toObjMap_upvr (copied, readonly)
			]]
			local _2_2 = arg1_5[2]
			local module_8 = {
				name = arg1_5[1];
				description = _2_2.description;
				type = _2_2.type;
				defaultValue = _2_2.defaultValue;
			}
			local deprecationReason_2 = _2_2.deprecationReason
			module_8.deprecationReason = deprecationReason_2
			if _2_2.extensions then
				deprecationReason_2 = toObjMap_upvr(_2_2.extensions)
			else
				deprecationReason_2 = nil
			end
			module_8.extensions = deprecationReason_2
			module_8.astNode = _2_2.astNode
			return module_8
		end)
		module.resolve = arg1_4.resolve
		module.subscribe = arg1_4.subscribe
		local deprecationReason = arg1_4.deprecationReason
		module.deprecationReason = deprecationReason
		if arg1_4.extensions then
			deprecationReason = toObjMap_upvr(arg1_4.extensions)
		else
			deprecationReason = nil
		end
		module.extensions = deprecationReason
		module.astNode = arg1_4.astNode
		return module
	end)
end
function isPlainObj_upvw(arg1) -- Line 1071, Named "isPlainObj"
	--[[ Upvalues[3]:
		[1]: null_upvr (readonly)
		[2]: isObjectLike_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local var106 = false
	if arg1 ~= null_upvr then
		var106 = isObjectLike_upvr(arg1)
		if var106 then
			var106 = not Array_upvr.isArray(arg1)
			if not var106 then
				if next(arg1) ~= nil then
					var106 = false
				else
					var106 = true
				end
			end
		end
	end
	return var106
end
local isObjectLike_upvr = require(jsutils.isObjectLike).isObjectLike
local var102_upvw = isPlainObj_upvw
local argsToArgsConfig_upvw
function fieldsToFieldsConfig_upvw(arg1) -- Line 1080, Named "fieldsToFieldsConfig"
	--[[ Upvalues[2]:
		[1]: mapValueOrdered_upvr (readonly)
		[2]: argsToArgsConfig_upvw (read and write)
	]]
	return mapValueOrdered_upvr(arg1, function(arg1_6) -- Line 1084
		--[[ Upvalues[1]:
			[1]: argsToArgsConfig_upvw (copied, read and write)
		]]
		return {
			description = arg1_6.description;
			type = arg1_6.type;
			args = argsToArgsConfig_upvw(arg1_6.args);
			resolve = arg1_6.resolve;
			subscribe = arg1_6.subscribe;
			deprecationReason = arg1_6.deprecationReason;
			extensions = arg1_6.extensions;
			astNode = arg1_6.astNode;
		}
	end)
end
function argsToArgsConfig_upvw(arg1) -- Line 1101, Named "argsToArgsConfig"
	--[[ Upvalues[1]:
		[1]: keyValMap_upvr (readonly)
	]]
	return keyValMap_upvr(arg1, function(arg1_7) -- Line 1102
		return arg1_7.name
	end, function(arg1_8) -- Line 1104
		return {
			description = arg1_8.description;
			type = arg1_8.type;
			defaultValue = arg1_8.defaultValue;
			deprecationReason = arg1_8.deprecationReason;
			extensions = arg1_8.extensions;
			astNode = arg1_8.astNode;
		}
	end)
end
tbl_upvr_6.__index = tbl_upvr_6
local function new(arg1) -- Line 1277
	--[[ Upvalues[6]:
		[1]: toObjMap_upvr (readonly)
		[2]: defineFieldMap_upvw (read and write)
		[3]: defineInterfaces_upvw (read and write)
		[4]: devAssert_upvr (readonly)
		[5]: inspect_upvr (readonly)
		[6]: tbl_upvr_6 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_3 = {
		name = arg1.name;
		description = arg1.description;
		resolveType = arg1.resolveType;
	}
	local var118
	if arg1.extensions then
		var118 = toObjMap_upvr(arg1.extensions)
	else
		var118 = nil
	end
	module_3.extensions = var118
	var118 = arg1.astNode
	module_3.astNode = var118
	local extensionASTNodes_4 = arg1.extensionASTNodes
	if extensionASTNodes_4 and 0 < #extensionASTNodes_4 then
		var118 = extensionASTNodes_4
	else
		var118 = nil
	end
	module_3.extensionASTNodes = var118
	function var118() -- Line 1288
		--[[ Upvalues[2]:
			[1]: defineFieldMap_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return defineFieldMap_upvw(arg1)
	end
	module_3._fields = var118
	function var118() -- Line 1291
		--[[ Upvalues[2]:
			[1]: defineInterfaces_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return defineInterfaces_upvw(arg1)
	end
	module_3._interfaces = var118
	var118 = devAssert_upvr
	if typeof(arg1.name) ~= "string" then
	else
	end
	var118(true, "Must provide name.")
	var118 = devAssert_upvr
	if arg1.resolveType ~= nil then
		if typeof(arg1.resolveType) ~= "function" then
		else
		end
	end
	var118(true, "%s must provide \"resolveType\" as a function, ".."but got: %s.":format(module_3.name, inspect_upvr(arg1.resolveType)))
	return setmetatable(module_3, tbl_upvr_6)
end
tbl_upvr_6.new = new
local function getFields(arg1) -- Line 1306
	if typeof(arg1._fields) == "function" then
		arg1._fields = arg1._fields()
	end
	return arg1._fields
end
tbl_upvr_6.getFields = getFields
function tbl_upvr_6.getInterfaces(arg1) -- Line 1313
	if typeof(arg1._interfaces) == "function" then
		arg1._interfaces = arg1._interfaces()
	end
	return arg1._interfaces
end
local function toConfig(arg1) -- Line 1320
	--[[ Upvalues[1]:
		[1]: fieldsToFieldsConfig_upvw (read and write)
	]]
	local module_13 = {
		name = arg1.name;
		description = arg1.description;
		interfaces = arg1:getInterfaces();
		fields = fieldsToFieldsConfig_upvw(arg1:getFields());
		resolveType = arg1.resolveType;
		extensions = arg1.extensions;
		astNode = arg1.astNode;
	}
	local extensionASTNodes_8 = arg1.extensionASTNodes
	if not extensionASTNodes_8 then
		extensionASTNodes_8 = {}
	end
	module_13.extensionASTNodes = extensionASTNodes_8
	return module_13
end
tbl_upvr_6.toConfig = toConfig
local function __tostring(arg1) -- Line 1333
	return arg1:toString()
end
tbl_upvr_6.__tostring = __tostring
local function toString(arg1) -- Line 1337
	return arg1.name
end
tbl_upvr_6.toString = toString
local function toJSON(arg1) -- Line 1341
	return arg1:toString()
end
tbl_upvr_6.toJSON = toJSON
tbl_upvr.__index = tbl_upvr
local defineTypes_upvw
local function new(arg1) -- Line 1452
	--[[ Upvalues[5]:
		[1]: toObjMap_upvr (readonly)
		[2]: defineTypes_upvw (read and write)
		[3]: devAssert_upvr (readonly)
		[4]: inspect_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_14 = {
		name = arg1.name;
		description = arg1.description;
		resolveType = arg1.resolveType;
	}
	local var125
	if arg1.extensions then
		var125 = toObjMap_upvr(arg1.extensions)
	else
		var125 = nil
	end
	module_14.extensions = var125
	var125 = arg1.astNode
	module_14.astNode = var125
	local extensionASTNodes = arg1.extensionASTNodes
	if extensionASTNodes and 0 < #extensionASTNodes then
		var125 = extensionASTNodes
	else
		var125 = nil
	end
	module_14.extensionASTNodes = var125
	function var125() -- Line 1461
		--[[ Upvalues[2]:
			[1]: defineTypes_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return defineTypes_upvw(arg1)
	end
	module_14._types = var125
	var125 = devAssert_upvr
	if typeof(arg1.name) ~= "string" then
	else
	end
	var125(true, "Must provide name.")
	var125 = devAssert_upvr
	if arg1.resolveType ~= nil then
		if typeof(arg1.resolveType) ~= "function" then
		else
		end
	end
	var125(true, "%s must provide \"resolveType\" as a function, ".."but got: %s.":format(module_14.name, inspect_upvr(arg1.resolveType)))
	return setmetatable(module_14, tbl_upvr)
end
tbl_upvr.new = new
function tbl_upvr.getTypes(arg1) -- Line 1476
	if typeof(arg1._types) == "function" then
		arg1._types = arg1._types()
	end
	return arg1._types
end
local function toConfig(arg1) -- Line 1483
	local module_4 = {
		name = arg1.name;
		description = arg1.description;
		types = arg1:getTypes();
		resolveType = arg1.resolveType;
		extensions = arg1.extensions;
		astNode = arg1.astNode;
	}
	local extensionASTNodes_3 = arg1.extensionASTNodes
	if not extensionASTNodes_3 then
		extensionASTNodes_3 = {}
	end
	module_4.extensionASTNodes = extensionASTNodes_3
	return module_4
end
tbl_upvr.toConfig = toConfig
local function __tostring(arg1) -- Line 1495
	return arg1:toString()
end
tbl_upvr.__tostring = __tostring
local function toString(arg1) -- Line 1499
	return arg1.name
end
tbl_upvr.toString = toString
local function toJSON(arg1) -- Line 1503
	return arg1:toString()
end
tbl_upvr.toJSON = toJSON
function defineTypes_upvw(arg1) -- Line 1514, Named "defineTypes"
	--[[ Upvalues[2]:
		[1]: devAssert_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	local types = arg1.types
	local var129
	if typeof(types) == "function" then
		var129 = types()
	else
		var129 = types
	end
	devAssert_upvr(Array_upvr.isArray(var129), "Must provide Array of types or a function which returns such an array for Union %s.":format(arg1.name))
	return var129
end
tbl_upvr_5.__index = tbl_upvr_5
local defineEnumValues_upvw
local keyMap_upvr = require(jsutils.keyMap).keyMap
local function new(arg1) -- Line 1601
	--[[ Upvalues[7]:
		[1]: toObjMap_upvr (readonly)
		[2]: defineEnumValues_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: any_freeze_result1_upvr (readonly)
		[5]: keyMap_upvr (readonly)
		[6]: devAssert_upvr (readonly)
		[7]: tbl_upvr_5 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_upvr_4 = {
		name = arg1.name;
		description = arg1.description;
	}
	local var133
	if arg1.extensions then
		var133 = toObjMap_upvr(arg1.extensions)
	else
		var133 = nil
	end
	tbl_upvr_4.extensions = var133
	var133 = arg1.astNode
	tbl_upvr_4.astNode = var133
	local extensionASTNodes_10 = arg1.extensionASTNodes
	if extensionASTNodes_10 and 0 < #extensionASTNodes_10 then
		var133 = extensionASTNodes_10
	else
		var133 = nil
	end
	tbl_upvr_4.extensionASTNodes = var133
	var133 = defineEnumValues_upvw(tbl_upvr_4.name, arg1.values)
	tbl_upvr_4._values = var133
	var133 = {}
	tbl_upvr_4._valueLookup = var133
	var133 = Array_upvr.forEach
	var133(tbl_upvr_4._values, function(arg1_9) -- Line 1612
		--[[ Upvalues[2]:
			[1]: tbl_upvr_4 (readonly)
			[2]: any_freeze_result1_upvr (copied, readonly)
		]]
		if arg1_9.value == arg1_9.value then
			tbl_upvr_4._valueLookup[arg1_9.value] = arg1_9
		else
			tbl_upvr_4._valueLookup[any_freeze_result1_upvr] = arg1_9
		end
	end)
	var133 = keyMap_upvr
	var133 = var133(tbl_upvr_4._values, function(arg1_10) -- Line 1624
		return arg1_10.name
	end)
	tbl_upvr_4._nameLookup = var133
	var133 = devAssert_upvr
	if typeof(arg1.name) ~= "string" then
	else
	end
	var133(true, "Must provide name.")
	var133 = setmetatable(tbl_upvr_4, tbl_upvr_5)
	return var133
end
tbl_upvr_5.new = new
function tbl_upvr_5.getValues(arg1) -- Line 1633
	return arg1._values
end
function tbl_upvr_5.getValue(arg1, arg2) -- Line 1637
	return arg1._nameLookup[arg2]
end
function tbl_upvr_5.serialize(arg1, arg2) -- Line 1641
	--[[ Upvalues[3]:
		[1]: any_freeze_result1_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: inspect_upvr (readonly)
	]]
	local var137
	if arg2 == arg2 then
		var137 = arg1._valueLookup[arg2]
	else
		var137 = arg1._valueLookup[any_freeze_result1_upvr]
	end
	if var137 == nil then
		error(GraphQLError_upvr.new("Enum \"%s\" cannot represent value: %s":format(arg1.name, inspect_upvr(arg2))))
	end
	return var137.name
end
function tbl_upvr_5.parseValue(arg1, arg2) -- Line 1663
	--[[ Upvalues[3]:
		[1]: inspect_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: didYouMeanEnumValue_upvw (read and write)
	]]
	if typeof(arg2) ~= "string" then
		local inspect_upvr_result1 = inspect_upvr(arg2)
		error(GraphQLError_upvr.new("Enum \"%s\" cannot represent non-string value: %s."..didYouMeanEnumValue_upvw(arg1, inspect_upvr_result1):format(arg1.name, inspect_upvr_result1)))
	end
	local any_getValue_result1 = arg1:getValue(arg2)
	if any_getValue_result1 == nil then
		error(GraphQLError_upvr.new("Value \"%s\" does not exist in \"%s\" enum.":format(arg2, arg1.name)..didYouMeanEnumValue_upvw(arg1, arg2)))
	end
	return any_getValue_result1.value
end
local Kind_upvr = require(language.kinds).Kind
local print_upvr = require(language.printer).print
function tbl_upvr_5.parseLiteral(arg1, arg2, arg3) -- Line 1688
	--[[ Upvalues[4]:
		[1]: Kind_upvr (readonly)
		[2]: print_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
		[4]: didYouMeanEnumValue_upvw (read and write)
	]]
	if arg2.kind ~= Kind_upvr.ENUM then
		local print_upvr_result1 = print_upvr(arg2)
		error(GraphQLError_upvr.new("Enum \"%s\" cannot represent non-enum value: %s.":format(arg1.name, print_upvr_result1)..didYouMeanEnumValue_upvw(arg1, print_upvr_result1), arg2))
	end
	local any_getValue_result1_2 = arg1:getValue(arg2.value)
	if any_getValue_result1_2 == nil then
		local print_upvr_result1_2 = print_upvr(arg2)
		error(GraphQLError_upvr.new("Value \"%s\" does not exist in \"%s\" enum.":format(print_upvr_result1_2, arg1.name)..didYouMeanEnumValue_upvw(arg1, print_upvr_result1_2), arg2))
	end
	return any_getValue_result1_2.value
end
local function toConfig(arg1) -- Line 1715
	--[[ Upvalues[1]:
		[1]: keyValMap_upvr (readonly)
	]]
	local module_5 = {
		name = arg1.name;
		description = arg1.description;
		values = keyValMap_upvr(arg1:getValues(), function(arg1_11) -- Line 1717
			return arg1_11.name
		end, function(arg1_12) -- Line 1719
			return {
				description = arg1_12.description;
				value = arg1_12.value;
				deprecationReason = arg1_12.deprecationReason;
				extensions = arg1_12.extensions;
				astNode = arg1_12.astNode;
			}
		end);
		extensions = arg1.extensions;
		astNode = arg1.astNode;
	}
	local extensionASTNodes_2 = arg1.extensionASTNodes
	if not extensionASTNodes_2 then
		extensionASTNodes_2 = {}
	end
	module_5.extensionASTNodes = extensionASTNodes_2
	return module_5
end
tbl_upvr_5.toConfig = toConfig
local function __tostring(arg1) -- Line 1741
	return arg1:toString()
end
tbl_upvr_5.__tostring = __tostring
local function toString(arg1) -- Line 1745
	return arg1.name
end
tbl_upvr_5.toString = toString
local function toJSON(arg1) -- Line 1749
	return arg1:toString()
end
tbl_upvr_5.toJSON = toJSON
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
function didYouMeanEnumValue_upvw(arg1, arg2) -- Line 1760, Named "didYouMeanEnumValue"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: suggestionList_upvr (readonly)
		[3]: didYouMean_upvr (readonly)
	]]
	return didYouMean_upvr("the enum value", suggestionList_upvr(arg2, Array_upvr.map(arg1:getValues(), function(arg1_13) -- Line 1761
		return arg1_13.name
	end)))
end
function defineEnumValues_upvw(arg1, arg2) -- Line 1770, Named "defineEnumValues"
	--[[ Upvalues[8]:
		[1]: devAssert_upvr (readonly)
		[2]: var102_upvw (read and write)
		[3]: instanceOf_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: coerceToMap_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: inspect_upvr (readonly)
		[8]: toObjMap_upvr (readonly)
	]]
	local var102_result1 = var102_upvw(arg2)
	if not var102_result1 then
		var102_result1 = instanceOf_upvr(arg2, Map_upvr)
	end
	devAssert_upvr(var102_result1, "%s values must be an object with value names as keys.":format(tostring(arg1)))
	return Array_upvr.map(coerceToMap_upvr(arg2):entries(), function(arg1_14) -- Line 1781
		--[[ Upvalues[5]:
			[1]: devAssert_upvr (copied, readonly)
			[2]: var102_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: inspect_upvr (copied, readonly)
			[5]: toObjMap_upvr (copied, readonly)
		]]
		local _1 = arg1_14[1]
		local _2 = arg1_14[2]
		devAssert_upvr(var102_upvw(_2), "%s.%s must refer to an object with a \"value\" key ":format(tostring(arg1), tostring(_1)).."representing an internal value but got: %s.":format(inspect_upvr(_2)))
		local module_11 = {
			name = tostring(_1);
		}
		local description = _2.description
		module_11.description = description
		if _2.value ~= nil then
			description = _2.value
		else
			description = _1
		end
		module_11.value = description
		description = _2.deprecationReason
		module_11.deprecationReason = description
		if _2.extensions then
			description = toObjMap_upvr(_2.extensions)
		else
			description = nil
		end
		module_11.extensions = description
		description = _2.astNode
		module_11.astNode = description
		return module_11
	end)
end
tbl_upvr_2.__index = tbl_upvr_2
local defineInputFieldMap_upvw
local function new(arg1) -- Line 1883
	--[[ Upvalues[4]:
		[1]: toObjMap_upvr (readonly)
		[2]: defineInputFieldMap_upvw (read and write)
		[3]: devAssert_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_2 = {
		name = arg1.name;
		description = arg1.description;
	}
	local var163
	if arg1.extensions then
		var163 = toObjMap_upvr(arg1.extensions)
	else
		var163 = nil
	end
	tbl_2.extensions = var163
	var163 = arg1.astNode
	tbl_2.astNode = var163
	local extensionASTNodes_7 = arg1.extensionASTNodes
	if extensionASTNodes_7 and 0 < #extensionASTNodes_7 then
		var163 = extensionASTNodes_7
	else
		var163 = nil
	end
	tbl_2.extensionASTNodes = var163
	function var163() -- Line 1891
		--[[ Upvalues[2]:
			[1]: defineInputFieldMap_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return defineInputFieldMap_upvw(arg1)
	end
	tbl_2._fields = var163
	var163 = devAssert_upvr
	if typeof(arg1.name) ~= "string" then
	else
	end
	var163(true, "Must provide name.")
	var163 = setmetatable(tbl_2, tbl_upvr_2)
	return var163
end
tbl_upvr_2.new = new
function tbl_upvr_2.getFields(arg1) -- Line 1898
	if typeof(arg1._fields) == "function" then
		arg1._fields = arg1._fields()
	end
	return arg1._fields
end
function tbl_upvr_2.toConfig(arg1) -- Line 1905
	--[[ Upvalues[1]:
		[1]: mapValueOrdered_upvr (readonly)
	]]
	local module_12 = {
		name = arg1.name;
		description = arg1.description;
		fields = mapValueOrdered_upvr(arg1:getFields(), function(arg1_15) -- Line 1907
			return {
				description = arg1_15.description;
				type = arg1_15.type;
				defaultValue = arg1_15.defaultValue;
				extensions = arg1_15.extensions;
				astNode = arg1_15.astNode;
			}
		end);
		extensions = arg1.extensions;
		astNode = arg1.astNode;
	}
	local extensionASTNodes_5 = arg1.extensionASTNodes
	if not extensionASTNodes_5 then
		extensionASTNodes_5 = {}
	end
	module_12.extensionASTNodes = extensionASTNodes_5
	return module_12
end
function tbl_upvr_2.__tostring(arg1) -- Line 1927
	return arg1:toString()
end
function tbl_upvr_2.toString(arg1) -- Line 1931
	return arg1.name
end
function tbl_upvr_2.toJSON(arg1) -- Line 1935
	return arg1:toString()
end
function defineInputFieldMap_upvw(arg1) -- Line 1946, Named "defineInputFieldMap"
	--[[ Upvalues[7]:
		[1]: devAssert_upvr (readonly)
		[2]: var102_upvw (read and write)
		[3]: instanceOf_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: coerceToMap_upvr (readonly)
		[6]: mapValueOrdered_upvr (readonly)
		[7]: toObjMap_upvr (readonly)
	]]
	local fields = arg1.fields
	local var169
	if typeof(fields) == "function" then
		var169 = fields()
	else
		var169 = fields
	end
	local var102_result1_2 = var102_upvw(var169)
	if not var102_result1_2 then
		var102_result1_2 = instanceOf_upvr(var169, Map_upvr)
	end
	devAssert_upvr(var102_result1_2, "%s fields must be an object with field names as keys or a function which returns such an object.":format(arg1.name))
	return mapValueOrdered_upvr(coerceToMap_upvr(var169), function(arg1_16, arg2) -- Line 1960
		--[[ Upvalues[3]:
			[1]: devAssert_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: toObjMap_upvr (copied, readonly)
		]]
		local var172
		if arg1_16.resolve ~= nil then
			var172 = false
		else
			var172 = true
		end
		devAssert_upvr(var172, "%s.%s field has a resolve property, but Input Types cannot define resolvers.":format(arg1.name, arg2))
		local module_10 = {}
		module_10.name = arg2
		var172 = arg1_16.description
		module_10.description = var172
		var172 = arg1_16.type
		module_10.type = var172
		var172 = arg1_16.defaultValue
		module_10.defaultValue = var172
		var172 = arg1_16.deprecationReason
		module_10.deprecationReason = var172
		if arg1_16.extensions then
			var172 = toObjMap_upvr(arg1_16.extensions)
		else
			var172 = nil
		end
		module_10.extensions = var172
		var172 = arg1_16.astNode
		module_10.astNode = var172
		return module_10
	end)
end
;({}).new = function() -- Line 2030, Named "new"
	return {}
end
return {
	GraphQLList = var56_upvw;
	GraphQLNonNull = var58_upvw;
	GraphQLScalarType = tbl_3_upvr;
	GraphQLObjectType = tbl_upvr_3;
	GraphQLInterfaceType = tbl_upvr_6;
	GraphQLUnionType = tbl_upvr;
	GraphQLEnumType = tbl_upvr_5;
	GraphQLInputObjectType = tbl_upvr_2;
	isType = isType_upvw;
	assertType = function(arg1) -- Line 178, Named "assertType"
		--[[ Upvalues[3]:
			[1]: isType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isScalarType = var41_upvw;
	assertScalarType = function(arg1) -- Line 194, Named "assertScalarType"
		--[[ Upvalues[3]:
			[1]: var41_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var41_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Scalar type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isObjectType = var42_upvw;
	assertObjectType = function(arg1) -- Line 206, Named "assertObjectType"
		--[[ Upvalues[3]:
			[1]: var42_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var42_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Object type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isInterfaceType = var43_upvw;
	assertInterfaceType = function(arg1) -- Line 218, Named "assertInterfaceType"
		--[[ Upvalues[3]:
			[1]: var43_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var43_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Interface type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isUnionType = var44_upvw;
	assertUnionType = function(arg1) -- Line 230, Named "assertUnionType"
		--[[ Upvalues[3]:
			[1]: var44_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var44_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Union type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isEnumType = var45_upvw;
	assertEnumType = function(arg1) -- Line 242, Named "assertEnumType"
		--[[ Upvalues[3]:
			[1]: var45_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var45_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Enum type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isInputObjectType = var46_upvw;
	assertInputObjectType = function(arg1) -- Line 254, Named "assertInputObjectType"
		--[[ Upvalues[3]:
			[1]: var46_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var46_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Input Object type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isListType = var47_upvw;
	assertListType = function(arg1) -- Line 266, Named "assertListType"
		--[[ Upvalues[3]:
			[1]: var47_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var47_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL List type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isNonNullType = var49_upvw;
	assertNonNullType = function(arg1) -- Line 278, Named "assertNonNullType"
		--[[ Upvalues[3]:
			[1]: var49_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var49_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL Non-Null type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isInputType = isInputType_upvw;
	assertInputType = function(arg1) -- Line 331, Named "assertInputType"
		--[[ Upvalues[3]:
			[1]: isInputType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isInputType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL input type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isOutputType = isOutputType_upvw;
	assertOutputType = function(arg1) -- Line 367, Named "assertOutputType"
		--[[ Upvalues[3]:
			[1]: isOutputType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isOutputType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL output type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isLeafType = isLeafType_upvw;
	assertLeafType = function(arg1) -- Line 384, Named "assertLeafType"
		--[[ Upvalues[3]:
			[1]: isLeafType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isLeafType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL leaf type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isCompositeType = isCompositeType_upvw;
	assertCompositeType = function(arg1) -- Line 401, Named "assertCompositeType"
		--[[ Upvalues[3]:
			[1]: isCompositeType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isCompositeType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL composite type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isAbstractType = isAbstractType_upvw;
	assertAbstractType = function(arg1) -- Line 418, Named "assertAbstractType"
		--[[ Upvalues[3]:
			[1]: isAbstractType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isAbstractType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL abstract type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isWrappingType = var61_upvw;
	assertWrappingType = function(arg1) -- Line 549, Named "assertWrappingType"
		--[[ Upvalues[3]:
			[1]: var61_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var61_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL wrapping type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	isNullableType = var63_upvw;
	assertNullableType = function(arg1) -- Line 573, Named "assertNullableType"
		--[[ Upvalues[3]:
			[1]: var63_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not var63_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL nullable type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	getNullableType = function(arg1) -- Line 581, Named "getNullableType"
		--[[ Upvalues[1]:
			[1]: var49_upvw (read and write)
		]]
		if arg1 then
			if var49_upvw(arg1) then
				return arg1.ofType
			end
			return arg1
		end
		return nil
	end;
	isNamedType = isNamedType_upvw;
	assertNamedType = function(arg1) -- Line 613, Named "assertNamedType"
		--[[ Upvalues[3]:
			[1]: isNamedType_upvw (read and write)
			[2]: Error_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		if not isNamedType_upvw(arg1) then
			error(Error_upvr.new("Expected %s to be a GraphQL named type.":format(inspect_upvr(arg1))))
		end
		return arg1
	end;
	getNamedType = function(arg1) -- Line 621, Named "getNamedType"
		--[[ Upvalues[1]:
			[1]: var61_upvw (read and write)
		]]
		if arg1 then
			local var66 = arg1
			repeat
			until not var61_upvw(var66)
			return var66.ofType
		end
		return nil
	end;
	argsToArgsConfig = argsToArgsConfig_upvw;
	isRequiredArgument = function(arg1) -- Line 1228, Named "isRequiredArgument"
		--[[ Upvalues[1]:
			[1]: var49_upvw (read and write)
		]]
		local var49_upvw_result1_2 = var49_upvw(arg1.type)
		if var49_upvw_result1_2 then
			if arg1.defaultValue ~= nil then
				var49_upvw_result1_2 = false
			else
				var49_upvw_result1_2 = true
			end
		end
		return var49_upvw_result1_2
	end;
	isRequiredInputField = function(arg1) -- Line 2020, Named "isRequiredInputField"
		--[[ Upvalues[1]:
			[1]: var49_upvw (read and write)
		]]
		local var49_upvw_result1 = var49_upvw(arg1.type)
		if var49_upvw_result1 then
			if arg1.defaultValue ~= nil then
				var49_upvw_result1 = false
			else
				var49_upvw_result1 = true
			end
		end
		return var49_upvw_result1
	end;
	NULL = null_upvr;
}