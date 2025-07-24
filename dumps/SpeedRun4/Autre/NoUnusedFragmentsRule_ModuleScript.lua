-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:25
-- Luau version 6, Types version 3
-- Time taken: 0.002079 seconds

local module = {}
local GraphQLError_upvr = require(script.Parent.Parent.Parent.error.GraphQLError).GraphQLError
function module.NoUnusedFragmentsRule(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: GraphQLError_upvr (readonly)
	]]
	local tbl_2_upvr = {}
	local tbl_3_upvr = {}
	return {
		OperationDefinition = function(arg1_2, arg2) -- Line 25, Named "OperationDefinition"
			--[[ Upvalues[1]:
				[1]: tbl_2_upvr (readonly)
			]]
			table.insert(tbl_2_upvr, arg2)
			return false
		end;
		FragmentDefinition = function(arg1_3, arg2) -- Line 29, Named "FragmentDefinition"
			--[[ Upvalues[1]:
				[1]: tbl_3_upvr (readonly)
			]]
			table.insert(tbl_3_upvr, arg2)
			return false
		end;
		Document = {
			leave = function() -- Line 34, Named "leave"
				--[[ Upvalues[4]:
					[1]: tbl_2_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: tbl_3_upvr (readonly)
					[4]: GraphQLError_upvr (copied, readonly)
				]]
				local tbl = {}
				for _, v in ipairs(tbl_2_upvr) do
					for i_2, v_2 in ipairs(arg1:getRecursivelyReferencedFragments(v)) do
						tbl[v_2.name.value] = true
					end
				end
				for _, v_3 in ipairs(tbl_3_upvr) do
					local value = v_3.name.value
					if tbl[value] ~= true then
						v_2 = GraphQLError_upvr
						i_2 = v_2.new
						v_2 = "Fragment \"%s\" is never used.":format(value)
						i_2 = i_2(v_2, v_3)
						arg1:reportError(i_2)
					end
				end
			end;
		};
	}
end
return module