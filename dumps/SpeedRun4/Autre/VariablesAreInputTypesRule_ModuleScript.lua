-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:36
-- Luau version 6, Types version 3
-- Time taken: 0.000766 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local typeFromAST_upvr = require(Parent.utilities.typeFromAST).typeFromAST
local isInputType_upvr = require(Parent.type.definition).isInputType
local print_upvr = require(Parent.language.printer).print
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.VariablesAreInputTypesRule(arg1) -- Line 24
	--[[ Upvalues[4]:
		[1]: typeFromAST_upvr (readonly)
		[2]: isInputType_upvr (readonly)
		[3]: print_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
	]]
	return {
		VariableDefinition = function(arg1_2, arg2) -- Line 26, Named "VariableDefinition"
			--[[ Upvalues[5]:
				[1]: typeFromAST_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isInputType_upvr (copied, readonly)
				[4]: print_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local typeFromAST_upvr_result1 = typeFromAST_upvr(arg1:getSchema(), arg2.type)
			if typeFromAST_upvr_result1 and not isInputType_upvr(typeFromAST_upvr_result1) then
				arg1:reportError(GraphQLError_upvr.new("Variable \"$%s\" cannot be non-input type \"%s\".":format(arg2.variable.name.value, print_upvr(arg2.type)), arg2.type))
			end
		end;
	}
end
return module