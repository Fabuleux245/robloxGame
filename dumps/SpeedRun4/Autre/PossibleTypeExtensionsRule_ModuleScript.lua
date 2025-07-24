-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:27
-- Luau version 6, Types version 3
-- Time taken: 0.003593 seconds

local Parent = script.Parent.Parent.Parent
local jsutils = Parent.jsutils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local inspect_upvr = require(jsutils.inspect).inspect
local invariant_upvr = require(jsutils.invariant).invariant
local language = Parent.language
local Kind_upvr = require(language.kinds).Kind
local definition = require(Parent.type.definition)
local module = {}
local isTypeDefinitionNode_upvr = require(language.predicates).isTypeDefinitionNode
local var12_upvw
local typeToExtKind_upvw
local extensionKindToTypeName_upvw
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
function module.PossibleTypeExtensionsRule(arg1) -- Line 45
	--[[ Upvalues[9]:
		[1]: isTypeDefinitionNode_upvr (readonly)
		[2]: var12_upvw (read and write)
		[3]: typeToExtKind_upvw (read and write)
		[4]: extensionKindToTypeName_upvw (read and write)
		[5]: GraphQLError_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: Array_upvr (readonly)
		[8]: suggestionList_upvr (readonly)
		[9]: didYouMean_upvr (readonly)
	]]
	for _, v in ipairs(arg1:getDocument().definitions) do
		if isTypeDefinitionNode_upvr(v) then
			({})[v.name.value] = v
		end
	end
	local tbl_upvr = {}
	local any_getSchema_result1_upvr = arg1:getSchema()
	local function checkExtension_upvr(arg1_2) -- Line 55, Named "checkExtension"
		--[[ Upvalues[11]:
			[1]: tbl_upvr (readonly)
			[2]: any_getSchema_result1_upvr (readonly)
			[3]: var12_upvw (copied, read and write)
			[4]: typeToExtKind_upvw (copied, read and write)
			[5]: extensionKindToTypeName_upvw (copied, read and write)
			[6]: arg1 (readonly)
			[7]: GraphQLError_upvr (copied, readonly)
			[8]: Object_upvr (copied, readonly)
			[9]: Array_upvr (copied, readonly)
			[10]: suggestionList_upvr (copied, readonly)
			[11]: didYouMean_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 13. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 13. Error Block 3 end (CF ANALYSIS FAILED)
	end
	local function var28(arg1_3, ...) -- Line 100
		--[[ Upvalues[1]:
			[1]: checkExtension_upvr (readonly)
		]]
		return checkExtension_upvr(...)
	end
	return {
		ScalarTypeExtension = var28;
		ObjectTypeExtension = var28;
		InterfaceTypeExtension = var28;
		UnionTypeExtension = var28;
		EnumTypeExtension = var28;
		InputObjectTypeExtension = var28;
	}
end
var12_upvw = {
	[Kind_upvr.SCALAR_TYPE_DEFINITION] = Kind_upvr.SCALAR_TYPE_EXTENSION;
	[Kind_upvr.OBJECT_TYPE_DEFINITION] = Kind_upvr.OBJECT_TYPE_EXTENSION;
	[Kind_upvr.INTERFACE_TYPE_DEFINITION] = Kind_upvr.INTERFACE_TYPE_EXTENSION;
	[Kind_upvr.UNION_TYPE_DEFINITION] = Kind_upvr.UNION_TYPE_EXTENSION;
	[Kind_upvr.ENUM_TYPE_DEFINITION] = Kind_upvr.ENUM_TYPE_EXTENSION;
	[Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION] = Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION;
}
local isScalarType_upvr = definition.isScalarType
local isObjectType_upvr = definition.isObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local isUnionType_upvr = definition.isUnionType
local isEnumType_upvr = definition.isEnumType
local isInputObjectType_upvr = definition.isInputObjectType
function typeToExtKind_upvw(arg1) -- Line 122, Named "typeToExtKind"
	--[[ Upvalues[9]:
		[1]: isScalarType_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: isObjectType_upvr (readonly)
		[4]: isInterfaceType_upvr (readonly)
		[5]: isUnionType_upvr (readonly)
		[6]: isEnumType_upvr (readonly)
		[7]: isInputObjectType_upvr (readonly)
		[8]: invariant_upvr (readonly)
		[9]: inspect_upvr (readonly)
	]]
	if isScalarType_upvr(arg1) then
		return Kind_upvr.SCALAR_TYPE_EXTENSION
	end
	if isObjectType_upvr(arg1) then
		return Kind_upvr.OBJECT_TYPE_EXTENSION
	end
	if isInterfaceType_upvr(arg1) then
		return Kind_upvr.INTERFACE_TYPE_EXTENSION
	end
	if isUnionType_upvr(arg1) then
		return Kind_upvr.UNION_TYPE_EXTENSION
	end
	if isEnumType_upvr(arg1) then
		return Kind_upvr.ENUM_TYPE_EXTENSION
	end
	if isInputObjectType_upvr(arg1) then
		return Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION
	end
	invariant_upvr(false, "Unexpected type: "..inspect_upvr(arg1))
	return nil
end
function extensionKindToTypeName_upvw(arg1) -- Line 150, Named "extensionKindToTypeName"
	--[[ Upvalues[3]:
		[1]: Kind_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: inspect_upvr (readonly)
	]]
	if arg1 == Kind_upvr.SCALAR_TYPE_EXTENSION then
		return "scalar"
	end
	if arg1 == Kind_upvr.OBJECT_TYPE_EXTENSION then
		return "object"
	end
	if arg1 == Kind_upvr.INTERFACE_TYPE_EXTENSION then
		return "interface"
	end
	if arg1 == Kind_upvr.UNION_TYPE_EXTENSION then
		return "union"
	end
	if arg1 == Kind_upvr.ENUM_TYPE_EXTENSION then
		return "enum"
	end
	if arg1 == Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION then
		return "input object"
	end
	invariant_upvr(false, "Unexpected kind: "..inspect_upvr(arg1))
	return ""
end
return module