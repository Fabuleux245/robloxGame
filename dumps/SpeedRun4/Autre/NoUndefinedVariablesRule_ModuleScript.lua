-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:24
-- Luau version 6, Types version 3
-- Time taken: 0.002005 seconds

local module = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module.NoUndefinedVariablesRule(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvw = {}
	local module_2 = {
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
				for _, v in ipairs(arg1:getRecursiveVariableUsages(arg2)) do
					local node = v.node
					local value = node.name.value
					local var16
					if tbl_upvw[value] ~= true then
						var16 = GraphQLError_upvr
						local function INLINED() -- Internal function, doesn't exist in bytecode
							var16 = "Variable \"$%s\" is not defined by operation \"%s\".":format(value, arg2.name.value)
							return var16
						end
						if not arg2.name or not INLINED() then
							var16 = "Variable \"$%s\" is not defined.":format(value)
						end
						local tbl = {node}
						tbl[2] = arg2
						arg1:reportError(var16.new(var16, tbl))
					end
				end
			end;
		};
	}
	function module_2.VariableDefinition(arg1_3, arg2) -- Line 50
		--[[ Upvalues[1]:
			[1]: tbl_upvw (read and write)
		]]
		tbl_upvw[arg2.variable.name.value] = true
	end
	return module_2
end
return module