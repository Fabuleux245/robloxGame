-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:20
-- Luau version 6, Types version 3
-- Time taken: 0.002424 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local jsutils = Parent.jsutils
local didYouMean_upvr = require(jsutils.didYouMean).didYouMean
local suggestionList_upvr = require(jsutils.suggestionList).suggestionList
local module_upvr = {}
local Object_upvr = LuauPolyfill.Object
function module_upvr.KnownArgumentNamesRule(arg1) -- Line 31
	--[[ Upvalues[6]:
		[1]: Object_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: suggestionList_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
		[6]: didYouMean_upvr (readonly)
	]]
	return Object_upvr.assign({}, module_upvr.KnownArgumentNamesOnDirectivesRule(arg1), {
		Argument = function(arg1_2, arg2) -- Line 33, Named "Argument"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: suggestionList_upvr (copied, readonly)
				[4]: GraphQLError_upvr (copied, readonly)
				[5]: didYouMean_upvr (copied, readonly)
			]]
			local any_getFieldDef_result1 = arg1:getFieldDef()
			if not arg1:getArgument() and any_getFieldDef_result1 and arg1:getParentType() then
				local value_2 = arg2.name.value
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1:reportError(GraphQLError_upvr.new("Unknown argument \"%s\" on field \"%s.%s\".":format(value_2, arg1:getParentType().name, any_getFieldDef_result1.name)..didYouMean_upvr(suggestionList_upvr(value_2, Array_upvr.map(any_getFieldDef_result1.args, function(arg1_3) -- Line 40
					return arg1_3.name
				end))), arg2))
			end
		end;
	})
end
local specifiedDirectives_upvr = require(Parent.type.directives).specifiedDirectives
local Kind_upvr = require(Parent.language.kinds).Kind
function module_upvr.KnownArgumentNamesOnDirectivesRule(arg1) -- Line 62
	--[[ Upvalues[6]:
		[1]: specifiedDirectives_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Kind_upvr (readonly)
		[4]: suggestionList_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
		[6]: didYouMean_upvr (readonly)
	]]
	local tbl_upvr = {}
	local any_getSchema_result1 = arg1:getSchema()
	local var26 = specifiedDirectives_upvr
	if any_getSchema_result1 then
		var26 = any_getSchema_result1:getDirectives()
	end
	for _, v in ipairs(var26) do
		tbl_upvr[v.name] = Array_upvr.map(v.args, function(arg1_4) -- Line 71
			return arg1_4.name
		end)
	end
	for _, v_2 in ipairs(arg1:getDocument().definitions) do
		if v_2.kind == Kind_upvr.DIRECTIVE_DEFINITION then
			local arguments = v_2.arguments
			if not arguments then
				arguments = {}
			end
			tbl_upvr[v_2.name.value] = Array_upvr.map(arguments, function(arg1_5) -- Line 82
				return arg1_5.name.value
			end)
		end
	end
	return {
		Directive = function(arg1_6, arg2) -- Line 89, Named "Directive"
			--[[ Upvalues[6]:
				[1]: tbl_upvr (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: suggestionList_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: GraphQLError_upvr (copied, readonly)
				[6]: didYouMean_upvr (copied, readonly)
			]]
			local value_3 = arg2.name.value
			local var40 = tbl_upvr[value_3]
			if arg2.arguments and var40 then
				for _, v_3 in ipairs(arg2.arguments) do
					local value = v_3.name.value
					if Array_upvr.indexOf(var40, value) == -1 then
						arg1:reportError(GraphQLError_upvr.new("Unknown argument \"%s\" on directive \"@%s\".":format(value, value_3)..didYouMean_upvr(suggestionList_upvr(value, var40)), v_3))
					end
				end
			end
			return false
		end;
	}
end
return module_upvr