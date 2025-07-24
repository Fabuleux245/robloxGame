-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:43
-- Luau version 6, Types version 3
-- Time taken: 0.002104 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local GraphQL = require(Parent.GraphQL)
local getNullableType_upvr = GraphQL.getNullableType
local Boolean_upvr = LuauPolyfill.Boolean
local isLeafType_upvr = GraphQL.isLeafType
local isListType_upvr = GraphQL.isListType
local Array_upvr = LuauPolyfill.Array
local isInputObjectType_upvr = GraphQL.isInputObjectType
local function transformInputValue_upvr(arg1, arg2, arg3, arg4) -- Line 34, Named "transformInputValue"
	--[[ Upvalues[7]:
		[1]: getNullableType_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: isLeafType_upvr (readonly)
		[4]: isListType_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: transformInputValue_upvr (readonly)
		[7]: isInputObjectType_upvr (readonly)
	]]
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	if arg4 ~= nil then
		local _ = arg4
	else
	end
	if arg2 == nil then
		return arg2
	end
	local var5_result1_upvr = getNullableType_upvr(arg1)
	if Boolean_upvr.toJSBoolean(isLeafType_upvr(var5_result1_upvr)) then
		if nil ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return nil(var5_result1_upvr, arg2)
		end
		return arg2
	end
	if Boolean_upvr.toJSBoolean(isListType_upvr(var5_result1_upvr)) then
		local var17_upvr
		local var18_upvr
		return Array_upvr.map(arg2, function(arg1_2) -- Line 61
			--[[ Upvalues[4]:
				[1]: transformInputValue_upvr (copied, readonly)
				[2]: var5_result1_upvr (readonly)
				[3]: var17_upvr (readonly)
				[4]: var18_upvr (readonly)
			]]
			return transformInputValue_upvr(var5_result1_upvr.ofType, arg1_2, var17_upvr, var18_upvr)
		end)
	end
	if Boolean_upvr.toJSBoolean(isInputObjectType_upvr(var5_result1_upvr)) then
		local module_2 = {}
		for i in arg2 do
			local var20 = var5_result1_upvr:getFields()[tostring(i)]
			if var20 ~= nil then
				module_2[tostring(i)] = transformInputValue_upvr(var20.type, arg2[tostring(i)], var17_upvr, var18_upvr)
			end
		end
		if var18_upvr ~= nil then
			return var18_upvr(var5_result1_upvr, module_2)
		end
		return module_2
	end
	return nil
end
module.transformInputValue = transformInputValue_upvr
function module.serializeInputValue(arg1, arg2) -- Line 95
	--[[ Upvalues[1]:
		[1]: transformInputValue_upvr (readonly)
	]]
	return transformInputValue_upvr(arg1, arg2, function(arg1_3, arg2_2) -- Line 96
		local pcall_result1, pcall_result2 = pcall(arg1_3.serialize, arg1_3, arg2_2)
		if not pcall_result1 then
			return arg2_2
		end
		return pcall_result2
	end)
end
function module.parseInputValue(arg1, arg2) -- Line 117
	--[[ Upvalues[1]:
		[1]: transformInputValue_upvr (readonly)
	]]
	return transformInputValue_upvr(arg1, arg2, function(arg1_4, arg2_3) -- Line 118
		local pcall_result1_2, pcall_result2_2 = pcall(arg1_4.parseValue, arg1_4, arg2_3)
		if not pcall_result1_2 then
			return arg2_3
		end
		return pcall_result2_2
	end)
end
function module.parseInputValueLiteral(arg1, arg2) -- Line 139
	--[[ Upvalues[1]:
		[1]: transformInputValue_upvr (readonly)
	]]
	return transformInputValue_upvr(arg1, arg2, function(arg1_5, arg2_4) -- Line 140
		return arg1_5:parseLiteral(arg2_4, {})
	end)
end
return module