-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:26
-- Luau version 6, Types version 3
-- Time taken: 0.001433 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module_2 = {}
local GraphQL = require(Parent.GraphQL)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Boolean_upvr = LuauPolyfill.Boolean
local isNonNullType_upvr = GraphQL.isNonNullType
local createGraphQLError_upvr = require(script.Parent.errors).createGraphQLError
local inspect_upvr = require(script.Parent.inspect).inspect
local Kind_upvr = GraphQL.Kind
local valueFromAST_upvr = GraphQL.valueFromAST
local print_upvr = GraphQL.print
function module_2.getArgumentValues(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[9]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: isNonNullType_upvr (readonly)
		[5]: createGraphQLError_upvr (readonly)
		[6]: inspect_upvr (readonly)
		[7]: Kind_upvr (readonly)
		[8]: valueFromAST_upvr (readonly)
		[9]: print_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
	if arg3 ~= nil then
	else
	end
	local function _(arg1_2, arg2_2) -- Line 58
		--[[ Upvalues[1]:
			[1]: Object_upvr (copied, readonly)
		]]
		local unpacked_value_1, unpacked_value_2 = table.unpack(arg2_2, 1, 2)
		return Object_upvr.assign({}, arg1_2, {
			[tostring(unpacked_value_1)] = unpacked_value_2;
		})
	end
	if arg2.arguments ~= nil then
	else
	end
	local function _(arg1_3, arg2_3) -- Line 71
		--[[ Upvalues[1]:
			[1]: Object_upvr (copied, readonly)
		]]
		local module = {}
		module[tostring(arg2_3.name.value)] = arg2_3
		return Object_upvr.assign({}, arg1_3, module)
	end
	-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [291] 222. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [291] 222. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [44] 32. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [291.17]
	-- KONSTANTERROR: [44] 32. Error Block 10 end (CF ANALYSIS FAILED)
end
return module_2