-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:04
-- Luau version 6, Types version 3
-- Time taken: 0.006117 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local luaUtils = Parent_2.luaUtils
local LuauPolyfill = require(Parent.LuauPolyfill)
local definition = require(Parent_2.type.definition)
local null_upvr = require(luaUtils.null)
local isNillish = require(luaUtils.isNillish)
local isNonNullType_upvr = definition.isNonNullType
local Kind_upvr = require(Parent_2.language.kinds).Kind
local isListType_upvr = definition.isListType
local isIteratableObject_upvr = require(Parent_2.jsutils.isIteratableObject).isIteratableObject
local isNotNillish_upvr = isNillish.isNotNillish
local isInputObjectType_upvr = definition.isInputObjectType
local isObjectLike_upvr = require(Parent_2.jsutils.isObjectLike).isObjectLike
local isLeafType_upvr = definition.isLeafType
local isNillish_upvr = isNillish.isNillish
local Number_upvr = LuauPolyfill.Number
local var18_upvw
local isEnumType_upvr = definition.isEnumType
local GraphQLID_upvr = require(Parent_2.type.scalars).GraphQLID
local Error_upvr = LuauPolyfill.Error
local inspect_upvr = require(Parent_2.jsutils.inspect).inspect
local invariant_upvr = require(Parent_2.jsutils.invariant).invariant
local function astFromValue_upvr(arg1, arg2) -- Line 70, Named "astFromValue"
	--[[ Upvalues[18]:
		[1]: isNonNullType_upvr (readonly)
		[2]: astFromValue_upvr (readonly)
		[3]: null_upvr (readonly)
		[4]: Kind_upvr (readonly)
		[5]: isListType_upvr (readonly)
		[6]: isIteratableObject_upvr (readonly)
		[7]: isNotNillish_upvr (readonly)
		[8]: isInputObjectType_upvr (readonly)
		[9]: isObjectLike_upvr (readonly)
		[10]: isLeafType_upvr (readonly)
		[11]: isNillish_upvr (readonly)
		[12]: Number_upvr (readonly)
		[13]: var18_upvw (read and write)
		[14]: isEnumType_upvr (readonly)
		[15]: GraphQLID_upvr (readonly)
		[16]: Error_upvr (readonly)
		[17]: inspect_upvr (readonly)
		[18]: invariant_upvr (readonly)
	]]
	if isNonNullType_upvr(arg2) then
		local astFromValue_result1 = astFromValue_upvr(arg1, arg2.ofType)
		local var64 = false
		if astFromValue_result1 ~= nil then
			var64 = false
			if astFromValue_result1 ~= null_upvr then
				var64 = astFromValue_result1.kind
			end
		end
		if var64 == Kind_upvr.NULL then
			return null_upvr
		end
		return astFromValue_result1
	end
	if arg1 == null_upvr then
		return {
			kind = Kind_upvr.NULL;
		}
	end
	if arg1 == nil then
		return null_upvr
	end
	if isListType_upvr(arg2) then
		if isIteratableObject_upvr(arg1) then
			for _, v in pairs(arg1) do
				local astFromValue_upvr_result1_3 = astFromValue_upvr(v, arg2.ofType)
				if isNotNillish_upvr(astFromValue_upvr_result1_3) then
					table.insert({}, astFromValue_upvr_result1_3)
				end
			end
			local module_8 = {
				kind = Kind_upvr.LIST;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_8.values = {}
			return module_8
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return astFromValue_upvr(arg1, arg2.ofType)
	end
	if isInputObjectType_upvr(arg2) then
		if not isObjectLike_upvr(arg1) then
			return null_upvr
		end
		for i_2, _ in ipairs(arg2:getFields():values()) do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.7]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local astFromValue_upvr_result1_4 = astFromValue_upvr(arg1[nil.name], nil.type)
			if isNotNillish_upvr(astFromValue_upvr_result1_4) then
				local tbl_4 = {
					kind = Kind_upvr.OBJECT_FIELD;
				}
				local tbl = {
					kind = Kind_upvr.NAME;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl.value = nil.name
				tbl_4.name = tbl
				tbl_4.value = astFromValue_upvr_result1_4
				table.insert({}, tbl_4)
			end
		end
		local module_2 = {
			kind = Kind_upvr.OBJECT;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_2.fields = {}
		return module_2
	end
	if isLeafType_upvr(arg2) then
		local any_serialize_result1_2 = arg2:serialize(arg1)
		if isNillish_upvr(any_serialize_result1_2) then
			return null_upvr
		end
		if typeof(any_serialize_result1_2) == "boolean" then
			return {
				kind = Kind_upvr.BOOLEAN;
				value = any_serialize_result1_2;
			}
		end
		if typeof(any_serialize_result1_2) == "number" and Number_upvr.isFinite(any_serialize_result1_2) then
			local tostring_result1_2 = tostring(any_serialize_result1_2)
			if var18_upvw:test(tostring_result1_2) then
				local module_12 = {}
				i_2 = Kind_upvr
				module_12.kind = i_2.INT
				module_12.value = tostring_result1_2
				return module_12
			end
			local module_11 = {}
			i_2 = Kind_upvr
			module_11.kind = i_2.FLOAT
			module_11.value = tostring_result1_2
			return module_11
		end
		if typeof(any_serialize_result1_2) == "string" then
			if isEnumType_upvr(arg2) then
				return {
					kind = Kind_upvr.ENUM;
					value = any_serialize_result1_2;
				}
			end
			if arg2 == GraphQLID_upvr and var18_upvw:test(any_serialize_result1_2) then
				return {
					kind = Kind_upvr.INT;
					value = any_serialize_result1_2;
				}
			end
			return {
				kind = Kind_upvr.STRING;
				value = any_serialize_result1_2;
			}
		end
		error(Error_upvr.new("Cannot convert value to AST: %s.":format(inspect_upvr(any_serialize_result1_2))))
	end
	invariant_upvr(false, "Unexpected input type: "..inspect_upvr(arg2))
end
var18_upvw = require(Parent.RegExp)("^-?(?:0|[1-9][0-9]*)$")
return {
	astFromValue = astFromValue_upvr;
	NULL = null_upvr;
}