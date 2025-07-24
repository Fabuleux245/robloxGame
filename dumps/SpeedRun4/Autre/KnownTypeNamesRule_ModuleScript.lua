-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:22
-- Luau version 6, Types version 3
-- Time taken: 0.004643 seconds

local Parent = script.Parent.Parent.Parent
local jsutils = Parent.jsutils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local predicates = require(Parent.language.predicates)
local type = Parent.type
local module = {}
local Map_upvr = LuauPolyfill.Map
local isTypeDefinitionNode_upvr = predicates.isTypeDefinitionNode
local Object_upvr = LuauPolyfill.Object
local isSDLNode_upvw
local isStandardTypeName_upvw
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
local var15_upvw
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
function module.KnownTypeNamesRule(arg1) -- Line 43
	--[[ Upvalues[10]:
		[1]: Map_upvr (readonly)
		[2]: isTypeDefinitionNode_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: isSDLNode_upvw (read and write)
		[6]: isStandardTypeName_upvw (read and write)
		[7]: suggestionList_upvr (readonly)
		[8]: var15_upvw (read and write)
		[9]: GraphQLError_upvr (readonly)
		[10]: didYouMean_upvr (readonly)
	]]
	local any_getSchema_result1 = arg1:getSchema()
	local any_new_result1_upvw = Map_upvr.new()
	if any_getSchema_result1 then
		any_new_result1_upvw = any_getSchema_result1:getTypeMap()
	end
	local tbl_upvr = {}
	for _, v in ipairs(arg1:getDocument().definitions) do
		if isTypeDefinitionNode_upvr(v) then
			tbl_upvr[v.name.value] = true
		end
	end
	local module_2 = {}
	local any_concat_result1_upvr = Array_upvr.concat(any_new_result1_upvw:keys(), Object_upvr.keys(tbl_upvr))
	function module_2.NamedType(arg1_2, arg2, arg3, arg4, arg5, arg6) -- Line 65
		--[[ Upvalues[11]:
			[1]: any_new_result1_upvw (read and write)
			[2]: tbl_upvr (readonly)
			[3]: isSDLNode_upvw (copied, read and write)
			[4]: isStandardTypeName_upvw (copied, read and write)
			[5]: suggestionList_upvr (copied, readonly)
			[6]: Array_upvr (copied, readonly)
			[7]: var15_upvw (copied, read and write)
			[8]: any_concat_result1_upvr (readonly)
			[9]: arg1 (readonly)
			[10]: GraphQLError_upvr (copied, readonly)
			[11]: didYouMean_upvr (copied, readonly)
		]]
		local value = arg2.name.value
		if not any_new_result1_upvw:get(value) then
			local var35
			if not tbl_upvr[value] then
				var35 = arg6[3]
				local var36 = var35 or arg4
				var35 = false
				if var36 ~= nil then
					var35 = isSDLNode_upvw(var36)
					local var37
				end
				if var35 and isStandardTypeName_upvw(value) then return end
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var37 = Array_upvr.concat(var15_upvw, any_concat_result1_upvr)
					return var37
				end
				if not var35 or not INLINED_2() then
					var37 = any_concat_result1_upvr
				end
				arg1:reportError(GraphQLError_upvr.new("Unknown type \"%s\".":format(value)..didYouMean_upvr(suggestionList_upvr(value, var37)), arg2))
			end
		end
	end
	return module_2
end
var15_upvw = Array_upvr.map(Array_upvr.concat(require(type.scalars).specifiedScalarTypes, require(type.introspection).introspectionTypes), function(arg1) -- Line 93
	return arg1.name
end)
function isStandardTypeName_upvw(arg1) -- Line 98, Named "isStandardTypeName"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: var15_upvw (read and write)
	]]
	local var39
	if Array_upvr.indexOf(var15_upvw, arg1) == -1 then
		var39 = false
	else
		var39 = true
	end
	return var39
end
local isTypeSystemDefinitionNode_upvr = predicates.isTypeSystemDefinitionNode
local isTypeSystemExtensionNode_upvr = predicates.isTypeSystemExtensionNode
function isSDLNode_upvw(arg1) -- Line 102, Named "isSDLNode"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: isTypeSystemDefinitionNode_upvr (readonly)
		[3]: isTypeSystemExtensionNode_upvr (readonly)
	]]
	local var43 = not Array_upvr.isArray(arg1)
	if var43 then
		var43 = isTypeSystemDefinitionNode_upvr(arg1)
		if not var43 then
			var43 = isTypeSystemExtensionNode_upvr(arg1)
		end
	end
	return var43
end
return module