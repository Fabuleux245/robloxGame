-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:27
-- Luau version 6, Types version 3
-- Time taken: 0.004677 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Error_upvr = LuauPolyfill.Error
local module = {}
local GraphQL = require(Parent.GraphQL)
local GraphQLScalarType = GraphQL.GraphQLScalarType
local Kind_upvr = GraphQL.Kind
local print_upvr = GraphQL.print
local function _(arg1, arg2) -- Line 32, Named "parseFloat"
	return tonumber(arg1, arg2)
end
local function identity(arg1) -- Line 36
	return arg1
end
local function ensureObject(arg1) -- Line 40
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Error_upvr (readonly)
	]]
	local var12 = true
	if typeof(arg1) == "table" then
		var12 = true
		if arg1 ~= nil then
			var12 = Array_upvr.isArray(arg1)
		end
	end
	if Boolean_upvr.toJSBoolean(var12) then
		error(Error_upvr.new("JSONObject cannot represent non-object value: %s":format(tostring(arg1))))
	end
	return arg1
end
local parseLiteral
local function _(arg1, arg2, arg3) -- Line 47, Named "parseObject"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: parseLiteral (read and write)
	]]
	local module_2_upvr = {}
	Array_upvr.forEach(arg2.fields, function(arg1_2) -- Line 49
		--[[ Upvalues[4]:
			[1]: module_2_upvr (readonly)
			[2]: parseLiteral (copied, read and write)
			[3]: arg1 (readonly)
			[4]: arg3 (readonly)
		]]
		module_2_upvr[arg1_2.name.value] = parseLiteral(arg1, arg1_2.value, arg3)
	end)
	return module_2_upvr
end
function parseLiteral(arg1, arg2, arg3) -- Line 56
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: var16_upvw (read and write)
		[4]: Boolean_upvr (readonly)
		[5]: Error_upvr (readonly)
		[6]: print_upvr (readonly)
	]]
	local kind = arg2.kind
	if kind == Kind_upvr.STRING or kind == Kind_upvr.BOOLEAN then
		return arg2.value
	end
	if kind == Kind_upvr.INT or kind == Kind_upvr.FLOAT then
		return tonumber(arg2.value, nil)
	end
	if kind == Kind_upvr.OBJECT then
		local tbl_upvr = {}
		Array_upvr.forEach(arg2.fields, function(arg1_3) -- Line 49
			--[[ Upvalues[4]:
				[1]: tbl_upvr (readonly)
				[2]: var16_upvw (copied, read and write)
				[3]: arg1 (readonly)
				[4]: arg3 (readonly)
			]]
			tbl_upvr[arg1_3.name.value] = var16_upvw(arg1, arg1_3.value, arg3)
		end)
		return tbl_upvr
	end
	tbl_upvr = Kind_upvr
	if kind == tbl_upvr.LIST then
		tbl_upvr = Array_upvr
		tbl_upvr = arg2.values
		return tbl_upvr.map(tbl_upvr, function(arg1_4) -- Line 65
			--[[ Upvalues[3]:
				[1]: var16_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: arg3 (readonly)
			]]
			return var16_upvw(arg1, arg1_4, arg3)
		end)
	end
	tbl_upvr = Kind_upvr
	if kind == tbl_upvr.NULL then
		return nil
	end
	tbl_upvr = Kind_upvr
	if kind == tbl_upvr.VARIABLE then
		tbl_upvr = Boolean_upvr.toJSBoolean(arg3)
		if tbl_upvr then
			tbl_upvr = arg2.name.value
			return arg3[tbl_upvr]
		end
		return nil
	end
	tbl_upvr = Error_upvr.new("%s cannot represent value: %s":format(arg1, print_upvr(arg2)))
	error(tbl_upvr)
	return nil
end
local var16_upvw = parseLiteral
local tbl = {
	name = "JSON";
	description = "The `JSON` scalar type represents JSON values as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf).";
	specifiedByUrl = "http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf";
	serialize = identity;
	parseValue = identity;
}
local function parseLiteral(arg1, arg2) -- Line 86
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	return var16_upvw("JSON", arg1, arg2)
end
tbl.parseLiteral = parseLiteral
local any_new_result1 = GraphQLScalarType.new(tbl)
module.GraphQLJSON = any_new_result1
module.default = any_new_result1
module.GraphQLJSONObject = GraphQLScalarType.new({
	name = "JSONObject";
	description = "The `JSONObject` scalar type represents JSON objects as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf).";
	specifiedByUrl = "http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf";
	serialize = ensureObject;
	parseValue = ensureObject;
	parseLiteral = function(arg1, arg2) -- Line 99, Named "parseLiteral"
		--[[ Upvalues[5]:
			[1]: Kind_upvr (readonly)
			[2]: Error_upvr (readonly)
			[3]: print_upvr (readonly)
			[4]: Array_upvr (readonly)
			[5]: var16_upvw (read and write)
		]]
		if arg1.kind ~= Kind_upvr.OBJECT then
			error(Error_upvr.new("JSONObject cannot represent non-object value: %s":format(print_upvr(arg1))))
		end
		local module_3_upvr = {}
		local var26_upvr = "JSONObject"
		Array_upvr.forEach(arg1.fields, function(arg1_5) -- Line 49
			--[[ Upvalues[4]:
				[1]: module_3_upvr (readonly)
				[2]: var16_upvw (copied, read and write)
				[3]: var26_upvr (readonly)
				[4]: arg2 (readonly)
			]]
			module_3_upvr[arg1_5.name.value] = var16_upvw(var26_upvr, arg1_5.value, arg2)
		end)
		return module_3_upvr
	end;
})
return module