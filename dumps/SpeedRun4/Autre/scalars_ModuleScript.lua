-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:01
-- Luau version 6, Types version 3
-- Time taken: 0.008933 seconds

local function _(arg1, arg2) -- Line 8, Named "parseInt"
	return tonumber(arg1, arg2)
end
local function _(arg1) -- Line 11, Named "NumberisFinite"
	local var2 = false
	if typeof(arg1) == "number" then
		var2 = false
		if arg1 ~= math.huge then
			if arg1 ~= arg1 then
				var2 = false
			else
				var2 = true
			end
		end
	end
	return var2
end
local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local Number_upvr = LuauPolyfill.Number
local inspect_upvr = require(script.Parent.Parent.jsutils.inspect).inspect
local Kind_upvr = require(script.Parent.Parent.language.kinds).Kind
local print_upvr = require(script.Parent.Parent.language.printer).print
local GraphQLError_upvr = require(script.Parent.Parent.error.GraphQLError).GraphQLError
local GraphQLScalarType = require(script.Parent.definition).GraphQLScalarType
local serializeObject_upvw
function serializeInt(arg1) -- Line 55
	--[[ Upvalues[4]:
		[1]: serializeObject_upvw (read and write)
		[2]: Number_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
		[4]: inspect_upvr (readonly)
	]]
	local serializeObject_upvw_result1_2 = serializeObject_upvw(arg1)
	if typeof(serializeObject_upvw_result1_2) == "boolean" then
		if serializeObject_upvw_result1_2 then
			return 1
		end
		return 0
	end
	local var12
	if typeof(serializeObject_upvw_result1_2) == "string" and serializeObject_upvw_result1_2 ~= "" then
		var12 = tonumber(serializeObject_upvw_result1_2)
	end
	if typeof(var12) ~= "number" or not Number_upvr.isInteger(var12) then
		error(GraphQLError_upvr.new("Int cannot represent non-integer value: %s":format(inspect_upvr(serializeObject_upvw_result1_2))))
	end
	if 2147483647 < var12 or var12 < -2147483648 then
		error(GraphQLError_upvr.new("Int cannot represent non 32-bit signed integer value: "..inspect_upvr(serializeObject_upvw_result1_2)))
	end
	return var12
end
function coerceInt(arg1) -- Line 84
	--[[ Upvalues[3]:
		[1]: Number_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: inspect_upvr (readonly)
	]]
	if typeof(arg1) ~= "number" or not Number_upvr.isInteger(arg1) then
		error(GraphQLError_upvr.new("Int cannot represent non-integer value: %s":format(inspect_upvr(arg1))))
	end
	if 2147483647 < arg1 or arg1 < -2147483648 then
		error(GraphQLError_upvr.new("Int cannot represent non 32-bit signed integer value: %s":format(arg1)))
	end
	return arg1
end
local tbl_2 = {
	name = "Int";
	description = "The `Int` scalar type represents non-fractional signed whole numeric values. Int can represent values between -(2^31) and 2^31 - 1.";
	serialize = serializeInt;
	parseValue = coerceInt;
}
local function parseLiteral(arg1) -- Line 110
	--[[ Upvalues[3]:
		[1]: Kind_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: print_upvr (readonly)
	]]
	if arg1.kind ~= Kind_upvr.INT then
		error(GraphQLError_upvr.new("Int cannot represent non-integer value: %s":format(print_upvr(arg1)), arg1))
	end
	local tonumber_result1 = tonumber(arg1.value, 10)
	if 2147483647 < tonumber_result1 or tonumber_result1 < -2147483648 then
		error(GraphQLError_upvr.new("Int cannot represent non 32-bit signed integer value: %s":format(arg1.value), arg1))
	end
	return tonumber_result1
end
tbl_2.parseLiteral = parseLiteral
local any_new_result1 = GraphQLScalarType.new(tbl_2)
function coerceFloat(arg1) -- Line 161
	--[[ Upvalues[2]:
		[1]: GraphQLError_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 17 start (CF ANALYSIS FAILED)
	local var18 = false
	if typeof(arg1) == "number" then
		var18 = false
		if arg1 ~= math.huge then
			if arg1 ~= arg1 then
				var18 = false
			else
				var18 = true
			end
		end
	end
	if not var18 then
		-- KONSTANTERROR: [23] 18. Error Block 11 start (CF ANALYSIS FAILED)
		error(GraphQLError_upvr.new("Float cannot represent non numeric value: %s":format(inspect_upvr(arg1))))
		-- KONSTANTERROR: [23] 18. Error Block 11 end (CF ANALYSIS FAILED)
	end
	do
		return arg1
	end
	-- KONSTANTERROR: [7] 6. Error Block 17 end (CF ANALYSIS FAILED)
end
local tbl_3 = {
	name = "Float";
	description = "The `Float` scalar type represents signed double-precision fractional values as specified by [IEEE 754](https://en.wikipedia.org/wiki/IEEE_floating_point).";
	serialize = function(arg1) -- Line 139, Named "serializeFloat"
		--[[ Upvalues[3]:
			[1]: serializeObject_upvw (read and write)
			[2]: GraphQLError_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local serializeObject_upvw_result1 = serializeObject_upvw(arg1)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 9. Error Block 19 start (CF ANALYSIS FAILED)
		if serializeObject_upvw_result1 then
			return 1
		end
		do
			return 0
		end
		-- KONSTANTERROR: [10] 9. Error Block 19 end (CF ANALYSIS FAILED)
	end;
	parseValue = coerceFloat;
}
local function parseLiteral(arg1) -- Line 178
	--[[ Upvalues[3]:
		[1]: Kind_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: print_upvr (readonly)
	]]
	if arg1.kind ~= Kind_upvr.FLOAT and arg1.kind ~= Kind_upvr.INT then
		error(GraphQLError_upvr.new("Float cannot represent non numeric value: %s":format(print_upvr(arg1)), arg1))
	end
	return tonumber(arg1.value, nil)
end
tbl_3.parseLiteral = parseLiteral
local any_new_result1_3 = GraphQLScalarType.new(tbl_3)
function serializeObject_upvw(arg1) -- Line 197, Named "serializeObject"
	--[[ Upvalues[1]:
		[1]: isObjectLike_upvr (readonly)
	]]
	if isObjectLike_upvr(arg1) then
		if typeof(arg1.valueOf) == "function" then
			local any_valueOf_result1_2 = arg1:valueOf()
			if not isObjectLike_upvr(any_valueOf_result1_2) then
				return any_valueOf_result1_2
			end
		end
		if typeof(arg1.toJSON) == "function" then
			return arg1:toJSON()
		end
	end
	return arg1
end
local isObjectLike_upvr = require(script.Parent.Parent.jsutils.isObjectLike).isObjectLike
local var21_upvw = serializeObject_upvw
function coerceString(arg1) -- Line 231
	--[[ Upvalues[2]:
		[1]: GraphQLError_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	if typeof(arg1) ~= "string" then
		error(GraphQLError_upvr.new("String cannot represent a non string value: %s":format(inspect_upvr(arg1))))
	end
	return arg1
end
local tbl_4 = {
	name = "String";
	description = "The `String` scalar type represents textual data, represented as UTF-8 character sequences. The String type is most often used by GraphQL to represent free-form human-readable text.";
	serialize = function(arg1) -- Line 214, Named "serializeString"
		--[[ Upvalues[3]:
			[1]: var21_upvw (read and write)
			[2]: GraphQLError_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		local var21_upvw_result1_3 = var21_upvw(arg1)
		if typeof(var21_upvw_result1_3) == "string" then
			return var21_upvw_result1_3
		end
		if typeof(var21_upvw_result1_3) == "boolean" then
			if var21_upvw_result1_3 then
				return "true"
			end
			return "false"
		end
		if typeof(var21_upvw_result1_3) == "number" then
			local var28 = false
			if typeof(var21_upvw_result1_3) == "number" then
				var28 = false
				if var21_upvw_result1_3 ~= math.huge then
					if var21_upvw_result1_3 ~= var21_upvw_result1_3 then
						var28 = false
					else
						var28 = true
					end
				end
			end
			if var28 then
				return tostring(var21_upvw_result1_3)
			end
		end
		error(GraphQLError_upvr.new("String cannot represent value: %s":format(inspect_upvr(arg1))))
	end;
	parseValue = coerceString;
}
local function parseLiteral(arg1) -- Line 248
	--[[ Upvalues[3]:
		[1]: Kind_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: print_upvr (readonly)
	]]
	if arg1.kind ~= Kind_upvr.STRING then
		error(GraphQLError_upvr.new("String cannot represent a non string value: %s":format(print_upvr(arg1)), arg1))
	end
	return arg1.value
end
tbl_4.parseLiteral = parseLiteral
local any_new_result1_4 = GraphQLScalarType.new(tbl_4)
function coerceBoolean(arg1) -- Line 281
	--[[ Upvalues[2]:
		[1]: GraphQLError_upvr (readonly)
		[2]: inspect_upvr (readonly)
	]]
	if typeof(arg1) ~= "boolean" then
		error(GraphQLError_upvr.new("Boolean cannot represent a non boolean value: %s":format(inspect_upvr(arg1))))
	end
	return arg1
end
local tbl = {
	name = "Boolean";
	description = "The `Boolean` scalar type represents `true` or `false`.";
	serialize = function(arg1) -- Line 263, Named "serializeBoolean"
		--[[ Upvalues[3]:
			[1]: var21_upvw (read and write)
			[2]: GraphQLError_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		local var21_upvw_result1 = var21_upvw(arg1)
		if typeof(var21_upvw_result1) == "boolean" then
			return var21_upvw_result1
		end
		local var34 = false
		if typeof(var21_upvw_result1) == "number" then
			var34 = false
			if var21_upvw_result1 ~= math.huge then
				if var21_upvw_result1 ~= var21_upvw_result1 then
					var34 = false
				else
					var34 = true
				end
			end
		end
		if var34 then
			if var21_upvw_result1 == 0 then
				var34 = false
			else
				var34 = true
			end
			return var34
		end
		error(GraphQLError_upvr.new("Boolean cannot represent a non boolean value: %s":format(inspect_upvr(var21_upvw_result1))))
	end;
	parseValue = coerceBoolean;
}
local function parseLiteral(arg1) -- Line 298
	--[[ Upvalues[3]:
		[1]: Kind_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: print_upvr (readonly)
	]]
	if arg1.kind ~= Kind_upvr.BOOLEAN then
		error(GraphQLError_upvr.new("Boolean cannot represent a non boolean value: %s":format(print_upvr(arg1)), arg1))
	end
	return arg1.value
end
tbl.parseLiteral = parseLiteral
local any_new_result1_2 = GraphQLScalarType.new(tbl)
function coerceID(arg1) -- Line 326
	--[[ Upvalues[3]:
		[1]: Number_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
		[3]: inspect_upvr (readonly)
	]]
	if typeof(arg1) == "string" then
		return arg1
	end
	if typeof(arg1) == "number" then
		if Number_upvr.isInteger(arg1) then
			return tostring(arg1)
		end
	end
	error(GraphQLError_upvr.new("ID cannot represent value: %s":format(inspect_upvr(arg1))))
end
local any_new_result1_5 = GraphQLScalarType.new({
	name = "ID";
	description = "The `ID` scalar type represents a unique identifier, often used to refetch an object or as key for a cache. The ID type appears in a JSON response as a String; however, it is not intended to be human-readable. When expected as an input type, any string (such as `\"4\"`) or integer (such as `4`) input value will be accepted as an ID.";
	serialize = function(arg1) -- Line 313, Named "serializeID"
		--[[ Upvalues[4]:
			[1]: var21_upvw (read and write)
			[2]: Number_upvr (readonly)
			[3]: GraphQLError_upvr (readonly)
			[4]: inspect_upvr (readonly)
		]]
		local var21_upvw_result1_4 = var21_upvw(arg1)
		if typeof(var21_upvw_result1_4) == "string" then
			return var21_upvw_result1_4
		end
		if Number_upvr.isInteger(var21_upvw_result1_4) then
			return tostring(var21_upvw_result1_4)
		end
		error(GraphQLError_upvr.new("ID cannot represent value: %s":format(inspect_upvr(arg1))))
	end;
	parseValue = coerceID;
	parseLiteral = function(arg1) -- Line 342, Named "parseLiteral"
		--[[ Upvalues[3]:
			[1]: Kind_upvr (readonly)
			[2]: GraphQLError_upvr (readonly)
			[3]: print_upvr (readonly)
		]]
		if arg1.kind ~= Kind_upvr.STRING and arg1.kind ~= Kind_upvr.INT then
			error(GraphQLError_upvr.new("ID cannot represent a non-string and non-integer value: "..print_upvr(arg1), arg1))
		end
		return arg1.value
	end;
})
local any_freeze_result1_upvr = LuauPolyfill.Object.freeze({any_new_result1_4, any_new_result1, any_new_result1_3, any_new_result1_2, any_new_result1_5})
local Array_upvr = LuauPolyfill.Array
return {
	GraphQLInt = any_new_result1;
	GraphQLFloat = any_new_result1_3;
	GraphQLString = any_new_result1_4;
	GraphQLBoolean = any_new_result1_2;
	GraphQLID = any_new_result1_5;
	specifiedScalarTypes = any_freeze_result1_upvr;
	isSpecifiedScalarType = function(arg1) -- Line 364, Named "isSpecifiedScalarType"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: any_freeze_result1_upvr (readonly)
		]]
		return Array_upvr.some(any_freeze_result1_upvr, function(arg1_2) -- Line 365
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var44
			if arg1.name ~= arg1_2.name then
				var44 = false
			else
				var44 = true
			end
			return var44
		end)
	end;
}