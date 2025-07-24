-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:06
-- Luau version 6, Types version 3
-- Time taken: 0.001912 seconds

local Parent = script.Parent.Parent
local jsutils = Parent.jsutils
local luaUtils = Parent.luaUtils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local inspect_upvr = require(jsutils.inspect).inspect
local isNillish = require(luaUtils.isNillish)
local definition = require(Parent.type.definition)
local defaultOnError_upvw
local coerceInputValueImpl_upvw
local printPathArray_upvr = require(jsutils.printPathArray).printPathArray
function defaultOnError_upvw(arg1, arg2, arg3) -- Line 60, Named "defaultOnError"
	--[[ Upvalues[2]:
		[1]: inspect_upvr (readonly)
		[2]: printPathArray_upvr (readonly)
	]]
	local var11 = "Invalid value "..inspect_upvr(arg2)
	if 0 < #arg1 then
		var11 = var11.." at \"value"..printPathArray_upvr(arg1)..'"'
	end
	arg3.message = var11..": "..arg3.message
	error(arg3)
end
local isNonNullType_upvr = definition.isNonNullType
local isNotNillish_upvr = isNillish.isNotNillish
local pathToArray_upvr = require(jsutils.Path).pathToArray
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local isNillish_upvr = isNillish.isNillish
local null_upvr = require(luaUtils.null)
local isListType_upvr = definition.isListType
local isIteratableObject_upvr = require(jsutils.isIteratableObject).isIteratableObject
local Array_upvr = LuauPolyfill.Array
local addPath_upvr = require(jsutils.Path).addPath
local isInputObjectType_upvr = definition.isInputObjectType
local isObjectLike_upvr = require(jsutils.isObjectLike).isObjectLike
local Object_upvr = LuauPolyfill.Object
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
local isLeafType_upvr = definition.isLeafType
local instanceOf_upvr = require(jsutils.instanceOf)
local invariant_upvr = require(jsutils.invariant).invariant
function coerceInputValueImpl_upvw(arg1, arg2, arg3, arg4) -- Line 69, Named "coerceInputValueImpl"
	--[[ Upvalues[20]:
		[1]: isNonNullType_upvr (readonly)
		[2]: isNotNillish_upvr (readonly)
		[3]: coerceInputValueImpl_upvw (read and write)
		[4]: pathToArray_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
		[6]: inspect_upvr (readonly)
		[7]: isNillish_upvr (readonly)
		[8]: null_upvr (readonly)
		[9]: isListType_upvr (readonly)
		[10]: isIteratableObject_upvr (readonly)
		[11]: Array_upvr (readonly)
		[12]: addPath_upvr (readonly)
		[13]: isInputObjectType_upvr (readonly)
		[14]: isObjectLike_upvr (readonly)
		[15]: Object_upvr (readonly)
		[16]: suggestionList_upvr (readonly)
		[17]: didYouMean_upvr (readonly)
		[18]: isLeafType_upvr (readonly)
		[19]: instanceOf_upvr (readonly)
		[20]: invariant_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 44 start (CF ANALYSIS FAILED)
	if isNotNillish_upvr(arg1) then
		return coerceInputValueImpl_upvw(arg1, arg2.ofType, arg3, arg4)
	end
	arg3(pathToArray_upvr(arg4), arg1, GraphQLError_upvr.new("Expected non-nullable type \""..inspect_upvr(arg2).."\" not to be null."))
	do
		return
	end
	-- KONSTANTERROR: [4] 5. Error Block 44 end (CF ANALYSIS FAILED)
end
return {
	coerceInputValue = function(arg1, arg2, arg3) -- Line 55, Named "coerceInputValue"
		--[[ Upvalues[2]:
			[1]: defaultOnError_upvw (read and write)
			[2]: coerceInputValueImpl_upvw (read and write)
		]]
		if arg3 then
		else
		end
		return coerceInputValueImpl_upvw(arg1, arg2, defaultOnError_upvw)
	end;
}