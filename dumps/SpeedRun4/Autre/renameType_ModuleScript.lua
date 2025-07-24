-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:40
-- Luau version 6, Types version 3
-- Time taken: 0.004502 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_7 = {}
local GraphQL = require(Parent.GraphQL)
local Boolean_upvr = LuauPolyfill.Boolean
local isObjectType_upvr = GraphQL.isObjectType
local GraphQLObjectType_upvr = GraphQL.GraphQLObjectType
local Object_upvr = LuauPolyfill.Object
local Array_upvr = LuauPolyfill.Array
local isInterfaceType_upvr = GraphQL.isInterfaceType
local GraphQLInterfaceType_upvr = GraphQL.GraphQLInterfaceType
local isUnionType_upvr = GraphQL.isUnionType
local GraphQLUnionType_upvr = GraphQL.GraphQLUnionType
local isInputObjectType_upvr = GraphQL.isInputObjectType
local GraphQLInputObjectType_upvr = GraphQL.GraphQLInputObjectType
local isEnumType_upvr = GraphQL.isEnumType
local GraphQLEnumType_upvr = GraphQL.GraphQLEnumType
local isScalarType_upvr = GraphQL.isScalarType
local GraphQLScalarType_upvr = GraphQL.GraphQLScalarType
local Error_upvr = LuauPolyfill.Error
function module_7.renameType(arg1, arg2) -- Line 52
	--[[ Upvalues[16]:
		[1]: Boolean_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: GraphQLObjectType_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: isInterfaceType_upvr (readonly)
		[7]: GraphQLInterfaceType_upvr (readonly)
		[8]: isUnionType_upvr (readonly)
		[9]: GraphQLUnionType_upvr (readonly)
		[10]: isInputObjectType_upvr (readonly)
		[11]: GraphQLInputObjectType_upvr (readonly)
		[12]: isEnumType_upvr (readonly)
		[13]: GraphQLEnumType_upvr (readonly)
		[14]: isScalarType_upvr (readonly)
		[15]: GraphQLScalarType_upvr (readonly)
		[16]: Error_upvr (readonly)
	]]
	local var21
	if Boolean_upvr.toJSBoolean(isObjectType_upvr(arg1)) then
		local module_10 = {}
		module_10.name = arg2
		if arg1.astNode == nil then
			var21 = arg1.astNode
		else
			var21 = Object_upvr.assign
			local tbl_10 = {}
			local tbl_14 = {}
			tbl_14.value = arg2
			tbl_10.name = Object_upvr.assign({}, arg1.astNode.name, tbl_14)
			var21 = var21({}, arg1.astNode, tbl_10)
		end
		module_10.astNode = var21
		if arg1.extensionASTNodes == nil then
			var21 = arg1.extensionASTNodes
		else
			var21 = Array_upvr.map
			var21 = var21(arg1.extensionASTNodes, function(arg1_2) -- Line 68
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local module_2 = {}
				local tbl_6 = {}
				tbl_6.value = arg2
				module_2.name = Object_upvr.assign({}, arg1_2.name, tbl_6)
				return Object_upvr.assign({}, arg1_2, module_2)
			end)
		end
		module_10.extensionASTNodes = var21
		return GraphQLObjectType_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_10))
	end
	if Boolean_upvr.toJSBoolean(isInterfaceType_upvr(arg1)) then
		local module_11 = {}
		module_11.name = arg2
		if arg1.astNode == nil then
			var21 = arg1.astNode
		else
			var21 = Object_upvr.assign
			local tbl_5 = {}
			local tbl_15 = {}
			tbl_15.value = arg2
			tbl_5.name = Object_upvr.assign({}, arg1.astNode.name, tbl_15)
			var21 = var21({}, arg1.astNode, tbl_5)
		end
		module_11.astNode = var21
		if arg1.extensionASTNodes == nil then
			var21 = arg1.extensionASTNodes
		else
			var21 = Array_upvr.map
			var21 = var21(arg1.extensionASTNodes, function(arg1_3) -- Line 88
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local module_13 = {}
				local tbl_2 = {}
				tbl_2.value = arg2
				module_13.name = Object_upvr.assign({}, arg1_3.name, tbl_2)
				return Object_upvr.assign({}, arg1_3, module_13)
			end)
		end
		module_11.extensionASTNodes = var21
		return GraphQLInterfaceType_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_11))
	end
	if Boolean_upvr.toJSBoolean(isUnionType_upvr(arg1)) then
		local module_4 = {}
		module_4.name = arg2
		if arg1.astNode == nil then
			var21 = arg1.astNode
		else
			var21 = Object_upvr.assign
			local tbl_9 = {}
			local tbl_7 = {}
			tbl_7.value = arg2
			tbl_9.name = Object_upvr.assign({}, arg1.astNode.name, tbl_7)
			var21 = var21({}, arg1.astNode, tbl_9)
		end
		module_4.astNode = var21
		if arg1.extensionASTNodes == nil then
			var21 = arg1.extensionASTNodes
		else
			var21 = Array_upvr.map
			var21 = var21(arg1.extensionASTNodes, function(arg1_4) -- Line 108
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local module_5 = {}
				local tbl_18 = {}
				tbl_18.value = arg2
				module_5.name = Object_upvr.assign({}, arg1_4.name, tbl_18)
				return Object_upvr.assign({}, arg1_4, module_5)
			end)
		end
		module_4.extensionASTNodes = var21
		return GraphQLUnionType_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_4))
	end
	if Boolean_upvr.toJSBoolean(isInputObjectType_upvr(arg1)) then
		local module_6 = {}
		module_6.name = arg2
		if arg1.astNode == nil then
			var21 = arg1.astNode
		else
			var21 = Object_upvr.assign
			local tbl_11 = {}
			local tbl_8 = {}
			tbl_8.value = arg2
			tbl_11.name = Object_upvr.assign({}, arg1.astNode.name, tbl_8)
			var21 = var21({}, arg1.astNode, tbl_11)
		end
		module_6.astNode = var21
		if arg1.extensionASTNodes == nil then
			var21 = arg1.extensionASTNodes
		else
			var21 = Array_upvr.map
			var21 = var21(arg1.extensionASTNodes, function(arg1_5) -- Line 128
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local module = {}
				local tbl_13 = {}
				tbl_13.value = arg2
				module.name = Object_upvr.assign({}, arg1_5.name, tbl_13)
				return Object_upvr.assign({}, arg1_5, module)
			end)
		end
		module_6.extensionASTNodes = var21
		return GraphQLInputObjectType_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_6))
	end
	if Boolean_upvr.toJSBoolean(isEnumType_upvr(arg1)) then
		local module_12 = {}
		module_12.name = arg2
		if arg1.astNode == nil then
			var21 = arg1.astNode
		else
			var21 = Object_upvr.assign
			local tbl_3 = {}
			local tbl_16 = {}
			tbl_16.value = arg2
			tbl_3.name = Object_upvr.assign({}, arg1.astNode.name, tbl_16)
			var21 = var21({}, arg1.astNode, tbl_3)
		end
		module_12.astNode = var21
		if arg1.extensionASTNodes == nil then
			var21 = arg1.extensionASTNodes
		else
			var21 = Array_upvr.map
			var21 = var21(arg1.extensionASTNodes, function(arg1_6) -- Line 148
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local module_3 = {}
				local tbl_4 = {}
				tbl_4.value = arg2
				module_3.name = Object_upvr.assign({}, arg1_6.name, tbl_4)
				return Object_upvr.assign({}, arg1_6, module_3)
			end)
		end
		module_12.extensionASTNodes = var21
		return GraphQLEnumType_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_12))
	end
	if Boolean_upvr.toJSBoolean(isScalarType_upvr(arg1)) then
		local module_9 = {}
		module_9.name = arg2
		if arg1.astNode == nil then
			var21 = arg1.astNode
		else
			var21 = Object_upvr.assign
			local tbl_17 = {}
			local tbl = {}
			tbl.value = arg2
			tbl_17.name = Object_upvr.assign({}, arg1.astNode.name, tbl)
			var21 = var21({}, arg1.astNode, tbl_17)
		end
		module_9.astNode = var21
		if arg1.extensionASTNodes == nil then
			var21 = arg1.extensionASTNodes
		else
			var21 = Array_upvr.map
			var21 = var21(arg1.extensionASTNodes, function(arg1_7) -- Line 168
				--[[ Upvalues[2]:
					[1]: Object_upvr (copied, readonly)
					[2]: arg2 (readonly)
				]]
				local module_8 = {}
				local tbl_12 = {}
				tbl_12.value = arg2
				module_8.name = Object_upvr.assign({}, arg1_7.name, tbl_12)
				return Object_upvr.assign({}, arg1_7, module_8)
			end)
		end
		module_9.extensionASTNodes = var21
		return GraphQLScalarType_upvr.new(Object_upvr.assign({}, arg1:toConfig(), module_9))
	end
	error(Error_upvr.new("Unknown type %s.":format(tostring(arg1))))
end
return module_7