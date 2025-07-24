-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:22
-- Luau version 6, Types version 3
-- Time taken: 0.000974 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local Kind_upvr = require(Parent.language.kinds).Kind
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.LoneAnonymousOperationRule(arg1) -- Line 26
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
	]]
	local var7_upvw = 0
	return {
		Document = function(arg1_2, arg2) -- Line 29, Named "Document"
			--[[ Upvalues[3]:
				[1]: var7_upvw (read and write)
				[2]: Array_upvr (copied, readonly)
				[3]: Kind_upvr (copied, readonly)
			]]
			var7_upvw = #Array_upvr.filter(arg2.definitions, function(arg1_3) -- Line 30
				--[[ Upvalues[1]:
					[1]: Kind_upvr (copied, readonly)
				]]
				local var10
				if arg1_3.kind ~= Kind_upvr.OPERATION_DEFINITION then
					var10 = false
				else
					var10 = true
				end
				return var10
			end)
		end;
		OperationDefinition = function(arg1_4, arg2) -- Line 34, Named "OperationDefinition"
			--[[ Upvalues[3]:
				[1]: var7_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: GraphQLError_upvr (copied, readonly)
			]]
			if not arg2.name and 1 < var7_upvw then
				arg1:reportError(GraphQLError_upvr.new("This anonymous operation must be the only defined operation.", arg2))
			end
		end;
	}
end
return module