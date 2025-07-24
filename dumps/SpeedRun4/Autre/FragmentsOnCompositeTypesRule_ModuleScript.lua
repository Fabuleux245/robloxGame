-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:20
-- Luau version 6, Types version 3
-- Time taken: 0.001281 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local typeFromAST_upvr = require(Parent.utilities.typeFromAST).typeFromAST
local isCompositeType_upvr = require(Parent.type.definition).isCompositeType
local print_upvr = require(Parent.language.printer).print
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.FragmentsOnCompositeTypesRule(arg1) -- Line 24
	--[[ Upvalues[4]:
		[1]: typeFromAST_upvr (readonly)
		[2]: isCompositeType_upvr (readonly)
		[3]: print_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
	]]
	return {
		InlineFragment = function(arg1_2, arg2) -- Line 26, Named "InlineFragment"
			--[[ Upvalues[5]:
				[1]: typeFromAST_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isCompositeType_upvr (copied, readonly)
				[4]: print_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local typeCondition = arg2.typeCondition
			if typeCondition then
				local typeFromAST_upvr_result1_2 = typeFromAST_upvr(arg1:getSchema(), typeCondition)
				if typeFromAST_upvr_result1_2 and not isCompositeType_upvr(typeFromAST_upvr_result1_2) then
					arg1:reportError(GraphQLError_upvr.new("Fragment cannot condition on non composite type \"%s\".":format(print_upvr(typeCondition)), typeCondition))
				end
			end
		end;
		FragmentDefinition = function(arg1_3, arg2) -- Line 43, Named "FragmentDefinition"
			--[[ Upvalues[5]:
				[1]: typeFromAST_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isCompositeType_upvr (copied, readonly)
				[4]: print_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local typeFromAST_upvr_result1 = typeFromAST_upvr(arg1:getSchema(), arg2.typeCondition)
			if typeFromAST_upvr_result1 and not isCompositeType_upvr(typeFromAST_upvr_result1) then
				arg1:reportError(GraphQLError_upvr.new("Fragment \"%s\" cannot condition on non composite type \"%s\".":format(arg2.name.value, print_upvr(arg2.typeCondition)), arg2.typeCondition))
			end
		end;
	}
end
return module