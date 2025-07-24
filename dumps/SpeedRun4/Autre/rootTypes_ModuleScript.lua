-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:42
-- Luau version 6, Types version 3
-- Time taken: 0.002431 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local Set_upvr = LuauPolyfill.Set
local module = {}
local memoize1 = require(script.Parent.memoize).memoize1
local var6_upvw
local Error_upvr = LuauPolyfill.Error
function module.getDefinedRootType(arg1, arg2) -- Line 32
	--[[ Upvalues[2]:
		[1]: var6_upvw (read and write)
		[2]: Error_upvr (readonly)
	]]
	local any_get_result1 = var6_upvw(arg1):get(arg2)
	if any_get_result1 == nil then
		error(Error_upvr.new("Root type for operation \"%s\" not defined by the given schema.":format(tostring(arg2))))
	end
	return any_get_result1
end
local function _(arg1) -- Line 47, Named "setToArray"
	local module_2_upvr = {}
	arg1:forEach(function(arg1_2) -- Line 49
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		table.insert(module_2_upvr, arg1_2)
	end)
	return module_2_upvr
end
local var12_upvw
local Array_upvr = LuauPolyfill.Array
module.getRootTypeNames = memoize1(function(arg1) -- Line 55
	--[[ Upvalues[3]:
		[1]: var12_upvw (read and write)
		[2]: Set_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local module_3_upvr = {}
	var12_upvw(arg1):forEach(function(arg1_3) -- Line 49
		--[[ Upvalues[1]:
			[1]: module_3_upvr (readonly)
		]]
		table.insert(module_3_upvr, arg1_3)
	end)
	return Set_upvr.new(Array_upvr.map(Array_upvr.concat({}, module_3_upvr), function(arg1_4) -- Line 59
		return arg1_4.name
	end))
end)
var12_upvw = memoize1(function(arg1) -- Line 67
	--[[ Upvalues[2]:
		[1]: var6_upvw (read and write)
		[2]: Set_upvr (readonly)
	]]
	return Set_upvr.new(var6_upvw(arg1):values())
end)
module.getRootTypes = var12_upvw
local Map_upvr = LuauPolyfill.Map
local Boolean_upvr = LuauPolyfill.Boolean
var6_upvw = memoize1(function(arg1) -- Line 75
	--[[ Upvalues[2]:
		[1]: Map_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local any_new_result1 = Map_upvr.new()
	local any_getQueryType_result1 = arg1:getQueryType()
	if Boolean_upvr.toJSBoolean(any_getQueryType_result1) then
		any_new_result1:set("query", any_getQueryType_result1)
	end
	local any_getMutationType_result1 = arg1:getMutationType()
	if Boolean_upvr.toJSBoolean(any_getMutationType_result1) then
		any_new_result1:set("mutation", any_getMutationType_result1)
	end
	local any_getSubscriptionType_result1 = arg1:getSubscriptionType()
	if Boolean_upvr.toJSBoolean(any_getSubscriptionType_result1) then
		any_new_result1:set("subscription", any_getSubscriptionType_result1)
	end
	return any_new_result1
end)
module.getRootTypeMap = var6_upvw
return module