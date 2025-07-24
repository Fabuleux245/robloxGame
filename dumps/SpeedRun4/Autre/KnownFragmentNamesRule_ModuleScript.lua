-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.000549 seconds

local module = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module.KnownFragmentNamesRule(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	return {
		FragmentSpread = function(arg1_2, arg2) -- Line 21, Named "FragmentSpread"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GraphQLError_upvr (copied, readonly)
			]]
			local value = arg2.name.value
			if not arg1:getFragment(value) then
				arg1:reportError(GraphQLError_upvr.new("Unknown fragment \"%s\".":format(value), arg2.name))
			end
		end;
	}
end
return module