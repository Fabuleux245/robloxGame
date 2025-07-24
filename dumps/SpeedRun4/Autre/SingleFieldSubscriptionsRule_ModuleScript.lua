-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:29
-- Luau version 6, Types version 3
-- Time taken: 0.001196 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
function module.SingleFieldSubscriptionsRule(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: GraphQLError_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	return {
		OperationDefinition = function(arg1_2, arg2) -- Line 25, Named "OperationDefinition"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: GraphQLError_upvr (copied, readonly)
				[3]: Array_upvr (copied, readonly)
			]]
			if arg2.operation == "subscription" then
				local var8
				if #arg2.selectionSet.selections ~= 1 then
					var8 = GraphQLError_upvr
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var8 = "Subscription \"%s\" must select only one top level field.":format(arg2.name.value)
						return var8
					end
					if not arg2.name or not INLINED_2() then
						var8 = "Anonymous Subscription must select only one top level field."
					end
					arg1:reportError(var8.new(var8, Array_upvr.slice(arg2.selectionSet.selections, 2)))
				end
			end
		end;
	}
end
return module