-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:28
-- Luau version 6, Types version 3
-- Time taken: 0.000833 seconds

local Parent = script.Parent.Parent.Parent
local definition = require(Parent.type.definition)
local module = {}
local isLeafType_upvr = definition.isLeafType
local getNamedType_upvr = definition.getNamedType
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.ScalarLeafsRule(arg1) -- Line 25
	--[[ Upvalues[4]:
		[1]: isLeafType_upvr (readonly)
		[2]: getNamedType_upvr (readonly)
		[3]: inspect_upvr (readonly)
		[4]: GraphQLError_upvr (readonly)
	]]
	return {
		Field = function(arg1_2, arg2) -- Line 27, Named "Field"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: isLeafType_upvr (copied, readonly)
				[3]: getNamedType_upvr (copied, readonly)
				[4]: inspect_upvr (copied, readonly)
				[5]: GraphQLError_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local any_getType_result1 = arg1:getType()
			local selectionSet = arg2.selectionSet
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [13] 12. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [13] 12. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [37] 31. Error Block 8 start (CF ANALYSIS FAILED)
			if not selectionSet then
				local value = arg2.name.value
				arg1:reportError(GraphQLError_upvr.new("Field \"%s\" of type \"%s\" must have a selection of subfields. Did you mean \"%s { ... }\"?":format(value, inspect_upvr(any_getType_result1), value), arg2))
			end
			-- KONSTANTERROR: [37] 31. Error Block 8 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [61] 50. Error Block 7 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [61] 50. Error Block 7 end (CF ANALYSIS FAILED)
		end;
	}
end
return module