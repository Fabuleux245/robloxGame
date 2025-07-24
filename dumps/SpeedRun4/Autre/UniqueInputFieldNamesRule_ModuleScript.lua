-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:32
-- Luau version 6, Types version 3
-- Time taken: 0.000953 seconds

local module_2 = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module_2.UniqueInputFieldNamesRule(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvr = {}
	local tbl_upvw = {}
	local module = {
		ObjectValue = {
			enter = function() -- Line 36, Named "enter"
				--[[ Upvalues[2]:
					[1]: tbl_upvr (readonly)
					[2]: tbl_upvw (read and write)
				]]
				table.insert(tbl_upvr, tbl_upvw)
				tbl_upvw = {}
			end;
			leave = function() -- Line 40, Named "leave"
				--[[ Upvalues[2]:
					[1]: tbl_upvw (read and write)
					[2]: tbl_upvr (readonly)
				]]
				tbl_upvw = table.remove(tbl_upvr)
			end;
		};
	}
	function module.ObjectField(arg1_2, arg2) -- Line 45
		--[[ Upvalues[3]:
			[1]: tbl_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: GraphQLError_upvr (copied, readonly)
		]]
		local value = arg2.name.value
		if tbl_upvw[value] then
			arg1:reportError(GraphQLError_upvr.new("There can be only one input field named \"%s\".":format(value), {tbl_upvw[value], arg2.name}))
		else
			tbl_upvw[value] = arg2.name
		end
	end
	return module
end
return module_2