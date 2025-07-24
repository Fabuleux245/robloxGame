-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:33
-- Luau version 6, Types version 3
-- Time taken: 0.000778 seconds

local module_2 = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module_2.UniqueOperationNamesRule(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local module = {}
	local tbl_upvr = {}
	function module.OperationDefinition(arg1_2, arg2) -- Line 22
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: GraphQLError_upvr (copied, readonly)
		]]
		local name = arg2.name
		if name then
			if tbl_upvr[name.value] then
				arg1:reportError(GraphQLError_upvr.new("There can be only one operation named \"%s\".":format(name.value), {tbl_upvr[name.value], name}))
			else
				tbl_upvr[name.value] = name
			end
		end
		return false
	end
	function module.FragmentDefinition() -- Line 40
		return false
	end
	return module
end
return module_2