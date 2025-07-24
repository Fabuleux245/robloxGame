-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:35
-- Luau version 6, Types version 3
-- Time taken: 0.005163 seconds

local Parent = script.Parent.Parent.Parent
local jsutils = Parent.jsutils
local inspect_upvr = require(jsutils.inspect).inspect
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local print_upvr = require(Parent.language.printer).print
local definition = require(Parent.type.definition)
local getNamedType_upvr = definition.getNamedType
local module = {}
local getNullableType_upvr = definition.getNullableType
local isListType_upvr = definition.isListType
local isValidValueNode_upvw
local isInputObjectType_upvr = definition.isInputObjectType
local keyMap_upvr = require(jsutils.keyMap).keyMap
local isRequiredInputField_upvr = definition.isRequiredInputField
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
local isNonNullType_upvr = definition.isNonNullType
function module.ValuesOfCorrectTypeRule(arg1) -- Line 41
	--[[ Upvalues[13]:
		[1]: getNullableType_upvr (readonly)
		[2]: isListType_upvr (readonly)
		[3]: isValidValueNode_upvw (read and write)
		[4]: getNamedType_upvr (readonly)
		[5]: isInputObjectType_upvr (readonly)
		[6]: keyMap_upvr (readonly)
		[7]: isRequiredInputField_upvr (readonly)
		[8]: inspect_upvr (readonly)
		[9]: GraphQLError_upvr (readonly)
		[10]: suggestionList_upvr (readonly)
		[11]: didYouMean_upvr (readonly)
		[12]: isNonNullType_upvr (readonly)
		[13]: print_upvr (readonly)
	]]
	return {
		ListValue = function(arg1_2, arg2) -- Line 43, Named "ListValue"
			--[[ Upvalues[4]:
				[1]: getNullableType_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isListType_upvr (copied, readonly)
				[4]: isValidValueNode_upvw (copied, read and write)
			]]
			if not isListType_upvr(getNullableType_upvr(arg1:getParentInputType())) then
				isValidValueNode_upvw(arg1, arg2)
				return false
			end
		end;
		ObjectValue = function(arg1_3, arg2) -- Line 53, Named "ObjectValue"
			--[[ Upvalues[8]:
				[1]: getNamedType_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isInputObjectType_upvr (copied, readonly)
				[4]: isValidValueNode_upvw (copied, read and write)
				[5]: keyMap_upvr (copied, readonly)
				[6]: isRequiredInputField_upvr (copied, readonly)
				[7]: inspect_upvr (copied, readonly)
				[8]: GraphQLError_upvr (copied, readonly)
			]]
			local var7_result1_2 = getNamedType_upvr(arg1:getInputType())
			if not isInputObjectType_upvr(var7_result1_2) then
				isValidValueNode_upvw(arg1, arg2)
				return false
			end
			for _, v in ipairs(var7_result1_2:getFields():values()) do
				if not keyMap_upvr(arg2.fields, function(arg1_4) -- Line 60
					return arg1_4.name.value
				end)[v.name] and isRequiredInputField_upvr(v) then
					arg1:reportError(GraphQLError_upvr.new("Field \"%s.%s\" of required type \"%s\" was not provided.":format(var7_result1_2.name, v.name, inspect_upvr(v.type)), arg2))
				end
			end
		end;
		ObjectField = function(arg1_5, arg2) -- Line 82, Named "ObjectField"
			--[[ Upvalues[6]:
				[1]: getNamedType_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isInputObjectType_upvr (copied, readonly)
				[4]: suggestionList_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
				[6]: didYouMean_upvr (copied, readonly)
			]]
			local var7_result1 = getNamedType_upvr(arg1:getParentInputType())
			if not arg1:getInputType() and isInputObjectType_upvr(var7_result1) then
				arg1:reportError(GraphQLError_upvr.new("Field \"%s\" is not defined by type \"%s\".":format(arg2.name.value, var7_result1.name)..didYouMean_upvr(suggestionList_upvr(arg2.name.value, var7_result1:getFields():keys())), arg2))
			end
		end;
		NullValue = function(arg1_6, arg2) -- Line 102, Named "NullValue"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: isNonNullType_upvr (copied, readonly)
				[3]: GraphQLError_upvr (copied, readonly)
				[4]: inspect_upvr (copied, readonly)
				[5]: print_upvr (copied, readonly)
			]]
			local any_getInputType_result1 = arg1:getInputType()
			if isNonNullType_upvr(any_getInputType_result1) then
				arg1:reportError(GraphQLError_upvr.new("Expected value of type \"%s\", found %s.":format(inspect_upvr(any_getInputType_result1), print_upvr(arg2)), arg2))
			end
		end;
		EnumValue = function(arg1_7, arg2) -- Line 116, Named "EnumValue"
			--[[ Upvalues[2]:
				[1]: isValidValueNode_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return isValidValueNode_upvw(arg1, arg2)
		end;
		IntValue = function(arg1_8, arg2) -- Line 119, Named "IntValue"
			--[[ Upvalues[2]:
				[1]: isValidValueNode_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return isValidValueNode_upvw(arg1, arg2)
		end;
		FloatValue = function(arg1_9, arg2) -- Line 122, Named "FloatValue"
			--[[ Upvalues[2]:
				[1]: isValidValueNode_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return isValidValueNode_upvw(arg1, arg2)
		end;
		StringValue = function(arg1_10, arg2) -- Line 125, Named "StringValue"
			--[[ Upvalues[2]:
				[1]: isValidValueNode_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return isValidValueNode_upvw(arg1, arg2)
		end;
		BooleanValue = function(arg1_11, arg2) -- Line 128, Named "BooleanValue"
			--[[ Upvalues[2]:
				[1]: isValidValueNode_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			return isValidValueNode_upvw(arg1, arg2)
		end;
	}
end
local isLeafType_upvr = definition.isLeafType
local instanceOf_upvr = require(jsutils.instanceOf)
function isValidValueNode_upvw(arg1, arg2) -- Line 138, Named "isValidValueNode"
	--[[ Upvalues[6]:
		[1]: getNamedType_upvr (readonly)
		[2]: isLeafType_upvr (readonly)
		[3]: inspect_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
		[5]: print_upvr (readonly)
		[6]: instanceOf_upvr (readonly)
	]]
	local any_getInputType_result1_upvr = arg1:getInputType()
	if not any_getInputType_result1_upvr then
	else
		local getNamedType_upvr_result1_upvr = getNamedType_upvr(any_getInputType_result1_upvr)
		if not isLeafType_upvr(getNamedType_upvr_result1_upvr) then
			arg1:reportError(GraphQLError_upvr.new("Expected value of type \"%s\", found %s.":format(inspect_upvr(any_getInputType_result1_upvr), print_upvr(arg2)), arg2))
			return
		end
		xpcall(function() -- Line 160
			--[[ Upvalues[7]:
				[1]: getNamedType_upvr_result1_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: inspect_upvr (copied, readonly)
				[4]: any_getInputType_result1_upvr (readonly)
				[5]: arg1 (readonly)
				[6]: GraphQLError_upvr (copied, readonly)
				[7]: print_upvr (copied, readonly)
			]]
			if getNamedType_upvr_result1_upvr:parseLiteral(arg2, nil) == nil then
				arg1:reportError(GraphQLError_upvr.new("Expected value of type \"%s\", found %s.":format(inspect_upvr(any_getInputType_result1_upvr), print_upvr(arg2)), arg2))
			end
		end, function(arg1_12) -- Line 173
			--[[ Upvalues[7]:
				[1]: inspect_upvr (copied, readonly)
				[2]: any_getInputType_result1_upvr (readonly)
				[3]: instanceOf_upvr (copied, readonly)
				[4]: GraphQLError_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: print_upvr (copied, readonly)
				[7]: arg2 (readonly)
			]]
			if instanceOf_upvr(arg1_12, GraphQLError_upvr) then
				arg1:reportError(arg1_12)
			else
				arg1:reportError(GraphQLError_upvr.new("Expected value of type \"%s\", found %s; ":format(inspect_upvr(any_getInputType_result1_upvr), print_upvr(arg2))..arg1_12.message, arg2, nil, nil, nil, arg1_12))
			end
		end)
	end
end
return module