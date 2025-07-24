-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:30
-- Luau version 6, Types version 3
-- Time taken: 0.000848 seconds

local module_2 = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module_2.UniqueDirectiveNamesRule(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local module = {}
	local any_getSchema_result1_upvr = arg1:getSchema()
	local tbl_upvr = {}
	function module.DirectiveDefinition(arg1_2, arg2) -- Line 24
		--[[ Upvalues[4]:
			[1]: any_getSchema_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: GraphQLError_upvr (copied, readonly)
			[4]: tbl_upvr (readonly)
		]]
		local value = arg2.name.value
		if any_getSchema_result1_upvr and any_getSchema_result1_upvr:getDirective(value) then
			arg1:reportError(GraphQLError_upvr.new("Directive \"@%s\" already exists in the schema. It cannot be redefined.":format(value), arg2.name))
			return
		end
		if tbl_upvr[value] then
			arg1:reportError(GraphQLError_upvr.new("There can be only one directive named \"@%s\".":format(value), {tbl_upvr[value], arg2.name}))
		else
			tbl_upvr[value] = arg2.name
		end
		return false
	end
	return module
end
return module_2