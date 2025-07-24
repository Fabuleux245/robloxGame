-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:32
-- Luau version 6, Types version 3
-- Time taken: 0.000748 seconds

local module_2 = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module_2.UniqueFragmentNamesRule(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local module = {
		OperationDefinition = function() -- Line 23, Named "OperationDefinition"
			return false
		end;
	}
	local tbl_upvr = {}
	function module.FragmentDefinition(arg1_2, arg2) -- Line 26
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: GraphQLError_upvr (copied, readonly)
		]]
		local value = arg2.name.value
		if tbl_upvr[value] then
			arg1:reportError(GraphQLError_upvr.new("There can be only one fragment named \"%s\".":format(value), {tbl_upvr[value], arg2.name}))
		else
			tbl_upvr[value] = arg2.name
		end
		return false
	end
	return module
end
return module_2