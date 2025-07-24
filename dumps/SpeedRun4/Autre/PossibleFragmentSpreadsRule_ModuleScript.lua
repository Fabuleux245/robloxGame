-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:26
-- Luau version 6, Types version 3
-- Time taken: 0.001648 seconds

local Parent = script.Parent.Parent.Parent
local isCompositeType_upvr = require(Parent.type.definition).isCompositeType
local utilities = Parent.utilities
local module = {}
local doTypesOverlap_upvr = require(utilities.typeComparators).doTypesOverlap
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local getFragmentType_upvw
function module.PossibleFragmentSpreadsRule(arg1) -- Line 31
	--[[ Upvalues[5]:
		[1]: isCompositeType_upvr (readonly)
		[2]: doTypesOverlap_upvr (readonly)
		[3]: inspect_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
		[5]: getFragmentType_upvw (read and write)
	]]
	return {
		InlineFragment = function(arg1_2, arg2) -- Line 33, Named "InlineFragment"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: isCompositeType_upvr (copied, readonly)
				[3]: doTypesOverlap_upvr (copied, readonly)
				[4]: inspect_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local any_getType_result1 = arg1:getType()
			local any_getParentType_result1_2 = arg1:getParentType()
			if isCompositeType_upvr(any_getType_result1) and isCompositeType_upvr(any_getParentType_result1_2) and not doTypesOverlap_upvr(arg1:getSchema(), any_getType_result1, any_getParentType_result1_2) then
				arg1:reportError(GraphQLError_upvr.new("Fragment cannot be spread here as objects of type \"%s\" can never be of type \"%s\".":format(inspect_upvr(any_getParentType_result1_2), inspect_upvr(any_getType_result1)), arg2))
			end
		end;
		FragmentSpread = function(arg1_3, arg2) -- Line 54, Named "FragmentSpread"
			--[[ Upvalues[5]:
				[1]: getFragmentType_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: doTypesOverlap_upvr (copied, readonly)
				[4]: inspect_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			local value = arg2.name.value
			local getFragmentType_upvw_result1 = getFragmentType_upvw(arg1, value)
			local any_getParentType_result1 = arg1:getParentType()
			if getFragmentType_upvw_result1 and any_getParentType_result1 and not doTypesOverlap_upvr(arg1:getSchema(), getFragmentType_upvw_result1, any_getParentType_result1) then
				arg1:reportError(GraphQLError_upvr.new("Fragment \"%s\" cannot be spread here as objects of type \"%s\" can never be of type \"%s\".":format(value, inspect_upvr(any_getParentType_result1), inspect_upvr(getFragmentType_upvw_result1)), arg2))
			end
		end;
	}
end
local typeFromAST_upvr = require(utilities.typeFromAST).typeFromAST
function getFragmentType_upvw(arg1, arg2) -- Line 78, Named "getFragmentType"
	--[[ Upvalues[2]:
		[1]: typeFromAST_upvr (readonly)
		[2]: isCompositeType_upvr (readonly)
	]]
	local any_getFragment_result1 = arg1:getFragment(arg2)
	if any_getFragment_result1 then
		local typeFromAST_upvr_result1 = typeFromAST_upvr(arg1:getSchema(), any_getFragment_result1.typeCondition)
		if isCompositeType_upvr(typeFromAST_upvr_result1) then
			return typeFromAST_upvr_result1
		end
	end
	return nil
end
return module