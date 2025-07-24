-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:29
-- Luau version 6, Types version 3
-- Time taken: 0.000861 seconds

local module = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module.UniqueArgumentNamesRule(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvw = {}
	return {
		Field = function() -- Line 24, Named "Field"
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			tbl_upvw = {}
		end;
		Directive = function() -- Line 27, Named "Directive"
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			tbl_upvw = {}
		end;
		Argument = function(arg1_2, arg2) -- Line 30, Named "Argument"
			--[[ Upvalues[3]:
				[1]: tbl_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: GraphQLError_upvr (copied, readonly)
			]]
			local value = arg2.name.value
			if tbl_upvw[value] then
				arg1:reportError(GraphQLError_upvr.new("There can be only one argument named \"%s\".":format(value), {tbl_upvw[value], arg2.name}))
			else
				tbl_upvw[value] = arg2.name
			end
			return false
		end;
	}
end
return module