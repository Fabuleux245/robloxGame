-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:27
-- Luau version 6, Types version 3
-- Time taken: 0.003586 seconds

local Parent = script.Parent.Parent.Parent
local jsutils = Parent.jsutils
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local inspect_upvr = require(jsutils.inspect).inspect
local keyMap_upvr = require(jsutils.keyMap).keyMap
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local language = Parent.language
local Kind_upvr = require(language.kinds).Kind
local definition = require(Parent.type.definition)
local isRequiredArgument_upvr = definition.isRequiredArgument
local module_2_upvr = {}
function module_2_upvr.ProvidedRequiredArgumentsRule(arg1) -- Line 36
	--[[ Upvalues[6]:
		[1]: Object_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: keyMap_upvr (readonly)
		[4]: isRequiredArgument_upvr (readonly)
		[5]: inspect_upvr (readonly)
		[6]: GraphQLError_upvr (readonly)
	]]
	local module = {}
	local tbl = {}
	local function leave(arg1_2, arg2) -- Line 40
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: keyMap_upvr (copied, readonly)
			[3]: isRequiredArgument_upvr (copied, readonly)
			[4]: inspect_upvr (copied, readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local any_getFieldDef_result1 = arg1:getFieldDef()
		if not any_getFieldDef_result1 then
			return false
		end
		local arguments_3 = arg2.arguments
		if not arguments_3 then
			arguments_3 = {}
		end
		for _, v in ipairs(any_getFieldDef_result1.args) do
			if not keyMap_upvr(arguments_3, function(arg1_3) -- Line 48
				return arg1_3.name.value
			end)[v.name] and isRequiredArgument_upvr(v) then
				arg1:reportError(GraphQLError_upvr.new("Field \"%s\" argument \"%s\" of type \"%s\" is required, but it was not provided.":format(any_getFieldDef_result1.name, v.name, inspect_upvr(v.type)), arg2))
			end
		end
	end
	tbl.leave = leave
	module.Field = tbl
	return Object_upvr.assign({}, module_2_upvr.ProvidedRequiredArgumentsOnDirectivesRule(arg1), module)
end
local specifiedDirectives_upvr = require(Parent.type.directives).specifiedDirectives
local Array_upvr = LuauPolyfill.Array
local isType_upvr = definition.isType
local print_upvr = require(language.printer).print
function module_2_upvr.ProvidedRequiredArgumentsOnDirectivesRule(arg1) -- Line 74
	--[[ Upvalues[10]:
		[1]: specifiedDirectives_upvr (readonly)
		[2]: keyMap_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: isRequiredArgument_upvr (readonly)
		[5]: Kind_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: isType_upvr (readonly)
		[8]: inspect_upvr (readonly)
		[9]: print_upvr (readonly)
		[10]: GraphQLError_upvr (readonly)
	]]
	local tbl_2_upvr = {}
	local any_getSchema_result1 = arg1:getSchema()
	local var39 = specifiedDirectives_upvr
	if any_getSchema_result1 then
		var39 = any_getSchema_result1:getDirectives()
	end
	for _, v_2 in ipairs(var39) do
		tbl_2_upvr[v_2.name] = keyMap_upvr(Array_upvr.filter(v_2.args, isRequiredArgument_upvr), function(arg1_4) -- Line 85
			return arg1_4.name
		end)
	end
	for _, v_3 in ipairs(arg1:getDocument().definitions) do
		if v_3.kind == Kind_upvr.DIRECTIVE_DEFINITION then
			local arguments = v_3.arguments
			if not arguments then
				arguments = {}
			end
			tbl_2_upvr[v_3.name.value] = keyMap_upvr(Array_upvr.filter(arguments, isRequiredArgumentNode), function(arg1_5) -- Line 99
				return arg1_5.name.value
			end)
		end
	end
	return {
		Directive = {
			leave = function(arg1_6, arg2) -- Line 109, Named "leave"
				--[[ Upvalues[8]:
					[1]: tbl_2_upvr (readonly)
					[2]: keyMap_upvr (copied, readonly)
					[3]: Object_upvr (copied, readonly)
					[4]: isType_upvr (copied, readonly)
					[5]: inspect_upvr (copied, readonly)
					[6]: print_upvr (copied, readonly)
					[7]: arg1 (readonly)
					[8]: GraphQLError_upvr (copied, readonly)
				]]
				local value = arg2.name.value
				local var56 = tbl_2_upvr[value]
				if var56 then
					local arguments_2 = arg2.arguments
					if not arguments_2 then
						arguments_2 = {}
					end
					for _, v_4 in ipairs(Object_upvr.keys(var56)) do
						local var62
						if not keyMap_upvr(arguments_2, function(arg1_7) -- Line 116
							return arg1_7.name.value
						end)[v_4] then
							var62 = var56[v_4]
							local type = var62.type
							local function INLINED() -- Internal function, doesn't exist in bytecode
								var62 = inspect_upvr(type)
								return var62
							end
							if not isType_upvr(type) or not INLINED() then
								var62 = print_upvr(type)
							end
							arg1:reportError(GraphQLError_upvr.new("Directive \"@%s\" argument \"%s\" of type \"%s\" is required, but it was not provided.":format(value, v_4, var62), arg2))
						end
					end
				end
			end;
		};
	}
end
function isRequiredArgumentNode(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var64 = false
	if arg1.type.kind == Kind_upvr.NON_NULL_TYPE then
		if arg1.defaultValue ~= nil then
			var64 = false
		else
			var64 = true
		end
	end
	return var64
end
return module_2_upvr