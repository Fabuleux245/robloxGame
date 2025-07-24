-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:13
-- Luau version 6, Types version 3
-- Time taken: 0.001825 seconds

local Parent = script.Parent.Parent
local definition = require(Parent.type.definition)
local isListType_upvr = definition.isListType
local isNonNullType_upvr = definition.isNonNullType
local isAbstractType_upvr = definition.isAbstractType
local function isEqualType_upvr(arg1, arg2) -- Line 24, Named "isEqualType"
	--[[ Upvalues[3]:
		[1]: isNonNullType_upvr (readonly)
		[2]: isEqualType_upvr (readonly)
		[3]: isListType_upvr (readonly)
	]]
	if arg1 == arg2 then
		return true
	end
	if isNonNullType_upvr(arg1) and isNonNullType_upvr(arg2) then
		return isEqualType_upvr(arg1.ofType, arg2.ofType)
	end
	if isListType_upvr(arg1) and isListType_upvr(arg2) then
		return isEqualType_upvr(arg1.ofType, arg2.ofType)
	end
	return false
end
local isInterfaceType_upvr = definition.isInterfaceType
local isObjectType_upvr = definition.isObjectType
local function isTypeSubTypeOf_upvr(arg1, arg2, arg3) -- Line 48, Named "isTypeSubTypeOf"
	--[[ Upvalues[6]:
		[1]: isNonNullType_upvr (readonly)
		[2]: isTypeSubTypeOf_upvr (readonly)
		[3]: isListType_upvr (readonly)
		[4]: isAbstractType_upvr (readonly)
		[5]: isInterfaceType_upvr (readonly)
		[6]: isObjectType_upvr (readonly)
	]]
	if arg2 == arg3 then
		return true
	end
	if isNonNullType_upvr(arg3) then
		if isNonNullType_upvr(arg2) then
			return isTypeSubTypeOf_upvr(arg1, arg2.ofType, arg3.ofType)
		end
		return false
	end
	if isNonNullType_upvr(arg2) then
		return isTypeSubTypeOf_upvr(arg1, arg2.ofType, arg3)
	end
	if isListType_upvr(arg3) then
		if isListType_upvr(arg2) then
			return isTypeSubTypeOf_upvr(arg1, arg2.ofType, arg3.ofType)
		end
		return false
	end
	if isListType_upvr(arg2) then
		return false
	end
	local var8
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var8 = isObjectType_upvr(arg2)
		return var8
	end
	if var8 and (isInterfaceType_upvr(arg2) or INLINED()) then
		var8 = arg1:isSubType(arg3, arg2)
	end
	return var8
end
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
return {
	isEqualType = isEqualType_upvr;
	isTypeSubTypeOf = isTypeSubTypeOf_upvr;
	doTypesOverlap = function(arg1, arg2, arg3) -- Line 97, Named "doTypesOverlap"
		--[[ Upvalues[2]:
			[1]: isAbstractType_upvr (readonly)
			[2]: Array_upvr (readonly)
		]]
		if arg2 == arg3 then
			return true
		end
		if isAbstractType_upvr(arg2) then
			if isAbstractType_upvr(arg3) then
				return Array_upvr.some(arg1:getPossibleTypes(arg2), function(arg1_2) -- Line 106
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: arg3 (readonly)
					]]
					return arg1:isSubType(arg3, arg1_2)
				end)
			end
			return arg1:isSubType(arg2, arg3)
		end
		if isAbstractType_upvr(arg3) then
			return arg1:isSubType(arg3, arg2)
		end
		return false
	end;
}