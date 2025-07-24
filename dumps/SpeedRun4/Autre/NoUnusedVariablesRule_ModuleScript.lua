-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:25
-- Luau version 6, Types version 3
-- Time taken: 0.002117 seconds

local module_2 = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module_2.NoUnusedVariablesRule(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvw = {}
	local module = {
		OperationDefinition = {
			enter = function() -- Line 25, Named "enter"
				--[[ Upvalues[1]:
					[1]: tbl_upvw (read and write)
				]]
				tbl_upvw = {}
			end;
			leave = function(arg1_2, arg2) -- Line 28, Named "leave"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: tbl_upvw (read and write)
					[3]: GraphQLError_upvr (copied, readonly)
				]]
				local tbl = {}
				for _, v in ipairs(arg1:getRecursiveVariableUsages(arg2)) do
					tbl[v.node.name.value] = true
				end
				for _, v_2 in ipairs(tbl_upvw) do
					local value = v_2.variable.name.value
					local var22
					if tbl[value] ~= true then
						var22 = GraphQLError_upvr
						local function INLINED() -- Internal function, doesn't exist in bytecode
							var22 = "Variable \"$%s\" is never used in operation \"%s\".":format(value, arg2.name.value)
							return var22
						end
						if not arg2.name or not INLINED() then
							var22 = "Variable \"$%s\" is never used.":format(value)
						end
						arg1:reportError(var22.new(var22, v_2))
					end
				end
			end;
		};
	}
	function module.VariableDefinition(arg1_3, arg2) -- Line 55
		--[[ Upvalues[1]:
			[1]: tbl_upvw (read and write)
		]]
		table.insert(tbl_upvw, arg2)
	end
	return module
end
return module_2