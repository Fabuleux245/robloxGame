-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:15
-- Luau version 6, Types version 3
-- Time taken: 0.006386 seconds

local Parent = script.Parent.Parent
local null_upvr = require(Parent.luaUtils.null)
local language = Parent.language
local type = Parent.type
local Kind_upvr = require(language.kinds).Kind
local definition = require(type.definition)
local isObjectType_upvr = definition.isObjectType
local isCompositeType_upvr = definition.isCompositeType
local isInputType_upvr = definition.isInputType
local isOutputType_upvr = definition.isOutputType
local introspection = require(type.introspection)
local function _(arg1) -- Line 79, Named "unwrapNull"
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if arg1 == null_upvr then
		return nil
	end
	return arg1
end
local tbl = {}
local tbl_upvr = {
	__index = tbl;
}
local getFieldDef_upvw
function tbl.new(arg1, arg2, arg3) -- Line 132
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: getFieldDef_upvw (read and write)
		[3]: isInputType_upvr (readonly)
		[4]: isCompositeType_upvr (readonly)
		[5]: isOutputType_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1._schema = arg1
	setmetatable_result1._typeStack = {}
	setmetatable_result1._parentTypeStack = {}
	setmetatable_result1._inputTypeStack = {}
	setmetatable_result1._fieldDefStack = {}
	setmetatable_result1._defaultValueStack = {}
	setmetatable_result1._directive = nil
	setmetatable_result1._argument = nil
	setmetatable_result1._enumValue = nil
	local var16 = arg2
	if not var16 then
		var16 = getFieldDef_upvw
	end
	setmetatable_result1._getFieldDef = var16
	if arg3 then
		if isInputType_upvr(arg3) then
			table.insert(setmetatable_result1._inputTypeStack, arg3)
		end
		if isCompositeType_upvr(arg3) then
			table.insert(setmetatable_result1._parentTypeStack, arg3)
		end
		if isOutputType_upvr(arg3) then
			table.insert(setmetatable_result1._typeStack, arg3)
		end
	end
	return setmetatable_result1
end
function tbl.getType(arg1) -- Line 169
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if 0 < #arg1._typeStack then
		local var17 = arg1._typeStack[#arg1._typeStack]
		if var17 == null_upvr then
			return nil
		end
		return var17
	end
	return nil
end
function tbl.getParentType(arg1) -- Line 176
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if 0 < #arg1._parentTypeStack then
		local var18 = arg1._parentTypeStack[#arg1._parentTypeStack]
		if var18 == null_upvr then
			return nil
		end
		return var18
	end
	return nil
end
function tbl.getInputType(arg1) -- Line 183
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if 0 < #arg1._inputTypeStack then
		local var19 = arg1._inputTypeStack[#arg1._inputTypeStack]
		if var19 == null_upvr then
			return nil
		end
		return var19
	end
	return nil
end
function tbl.getParentInputType(arg1) -- Line 190
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if 1 < #arg1._inputTypeStack then
		local var20 = arg1._inputTypeStack[#arg1._inputTypeStack - 1]
		if var20 == null_upvr then
			return nil
		end
		return var20
	end
	return nil
end
local function getFieldDef(arg1) -- Line 197
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if 0 < #arg1._fieldDefStack then
		local var21 = arg1._fieldDefStack[#arg1._fieldDefStack]
		if var21 == null_upvr then
			return nil
		end
		return var21
	end
	return nil
end
tbl.getFieldDef = getFieldDef
function tbl.getDefaultValue(arg1) -- Line 204
	--[[ Upvalues[1]:
		[1]: null_upvr (readonly)
	]]
	if 0 < #arg1._defaultValueStack then
		local var22 = arg1._defaultValueStack[#arg1._defaultValueStack]
		if var22 == null_upvr then
			return nil
		end
		return var22
	end
	return nil
end
function tbl.getDirective(arg1) -- Line 211
	return arg1._directive
end
function tbl.getArgument(arg1) -- Line 215
	return arg1._argument
end
function tbl.getEnumValue(arg1) -- Line 219
	return arg1._enumValue
end
local getNamedType_upvr = definition.getNamedType
local typeFromAST_upvr = require(Parent.utilities.typeFromAST).typeFromAST
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local getNullableType_upvr = definition.getNullableType
local isListType_upvr = definition.isListType
local isInputObjectType_upvr = definition.isInputObjectType
local isEnumType_upvr = definition.isEnumType
local function enter(arg1, arg2) -- Line 223
	--[[ Upvalues[13]:
		[1]: Kind_upvr (readonly)
		[2]: getNamedType_upvr (readonly)
		[3]: isCompositeType_upvr (readonly)
		[4]: null_upvr (readonly)
		[5]: isOutputType_upvr (readonly)
		[6]: isObjectType_upvr (readonly)
		[7]: typeFromAST_upvr (readonly)
		[8]: isInputType_upvr (readonly)
		[9]: Array_upvr (readonly)
		[10]: getNullableType_upvr (readonly)
		[11]: isListType_upvr (readonly)
		[12]: isInputObjectType_upvr (readonly)
		[13]: isEnumType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var30
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 6. Error Block 136 start (CF ANALYSIS FAILED)
	local var23_result1 = getNamedType_upvr(arg1:getType())
	if isCompositeType_upvr(var23_result1) then
		var30 = var23_result1
	else
		var30 = null_upvr
	end
	table.insert(arg1._parentTypeStack, var30)
	do
		return
	end
	-- KONSTANTERROR: [9] 6. Error Block 136 end (CF ANALYSIS FAILED)
end
tbl.enter = enter
local function leave(arg1, arg2) -- Line 343
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local kind = arg2.kind
	if kind == Kind_upvr.SELECTION_SET then
		table.remove(arg1._parentTypeStack)
	else
		if kind == Kind_upvr.FIELD then
			table.remove(arg1._fieldDefStack)
			table.remove(arg1._typeStack)
			return
		end
		if kind == Kind_upvr.DIRECTIVE then
			arg1._directive = nil
			return
		end
		if kind == Kind_upvr.OPERATION_DEFINITION or kind == Kind_upvr.INLINE_FRAGMENT or kind == Kind_upvr.FRAGMENT_DEFINITION then
			table.remove(arg1._typeStack)
			return
		end
		if kind == Kind_upvr.VARIABLE_DEFINITION then
			table.remove(arg1._inputTypeStack)
			return
		end
		if kind == Kind_upvr.ARGUMENT then
			arg1._argument = nil
			table.remove(arg1._defaultValueStack)
			table.remove(arg1._inputTypeStack)
			return
		end
		if kind == Kind_upvr.LIST or kind == Kind_upvr.OBJECT_FIELD then
			table.remove(arg1._defaultValueStack)
			table.remove(arg1._inputTypeStack)
			return
		end
		if kind == Kind_upvr.ENUM then
			arg1._enumValue = nil
		end
	end
end
tbl.leave = leave
local SchemaMetaFieldDef_upvr = introspection.SchemaMetaFieldDef
local TypeMetaFieldDef_upvr = introspection.TypeMetaFieldDef
local TypeNameMetaFieldDef_upvr = introspection.TypeNameMetaFieldDef
local isInterfaceType_upvr = definition.isInterfaceType
function getFieldDef_upvw(arg1, arg2, arg3) -- Line 377, Named "getFieldDef"
	--[[ Upvalues[6]:
		[1]: SchemaMetaFieldDef_upvr (readonly)
		[2]: TypeMetaFieldDef_upvr (readonly)
		[3]: TypeNameMetaFieldDef_upvr (readonly)
		[4]: isCompositeType_upvr (readonly)
		[5]: isObjectType_upvr (readonly)
		[6]: isInterfaceType_upvr (readonly)
	]]
	local value = arg3.name.value
	if value == SchemaMetaFieldDef_upvr.name and arg1:getQueryType() == arg2 then
		return SchemaMetaFieldDef_upvr
	end
	if value == TypeMetaFieldDef_upvr.name and arg1:getQueryType() == arg2 then
		return TypeMetaFieldDef_upvr
	end
	if value == TypeNameMetaFieldDef_upvr.name and isCompositeType_upvr(arg2) then
		return TypeNameMetaFieldDef_upvr
	end
	if isObjectType_upvr(arg2) or isInterfaceType_upvr(arg2) then
		return arg2:getFields():get(value)
	end
	return nil
end
local getVisitFn_upvr = require(language.visitor).getVisitFn
local isNode_upvr = require(language.ast).isNode
return {
	TypeInfo = tbl;
	visitWithTypeInfo = function(arg1, arg2) -- Line 404, Named "visitWithTypeInfo"
		--[[ Upvalues[2]:
			[1]: getVisitFn_upvr (readonly)
			[2]: isNode_upvr (readonly)
		]]
		return {
			enter = function(arg1_2, arg2_2, ...) -- Line 409, Named "enter"
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: getVisitFn_upvr (copied, readonly)
					[3]: arg2 (readonly)
					[4]: isNode_upvr (copied, readonly)
				]]
				arg1:enter(arg2_2)
				local getVisitFn_upvr_result1_3 = getVisitFn_upvr(arg2, arg2_2.kind, false)
				if getVisitFn_upvr_result1_3 then
					local var43_result1 = getVisitFn_upvr_result1_3(arg2, arg2_2, ...)
					if var43_result1 ~= nil then
						arg1:leave(arg2_2)
						if isNode_upvr(var43_result1) then
							arg1:enter(var43_result1)
						end
					end
					return var43_result1
				end
				return nil
			end;
			leave = function(arg1_3, arg2_3, ...) -- Line 428, Named "leave"
				--[[ Upvalues[3]:
					[1]: getVisitFn_upvr (copied, readonly)
					[2]: arg2 (readonly)
					[3]: arg1 (readonly)
				]]
				local getVisitFn_upvr_result1 = getVisitFn_upvr(arg2, arg2_3.kind, true)
				local var46
				if getVisitFn_upvr_result1 then
					var46 = getVisitFn_upvr_result1(arg2, arg2_3, ...)
				end
				arg1:leave(arg2_3)
				return var46
			end;
		}
	end;
}