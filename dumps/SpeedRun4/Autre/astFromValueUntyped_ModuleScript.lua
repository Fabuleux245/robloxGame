-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:15
-- Luau version 6, Types version 3
-- Time taken: 0.004147 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local Number_upvr = LuauPolyfill.Number
local function _(arg1) -- Line 31, Named "isFinite"
	--[[ Upvalues[1]:
		[1]: Number_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 32
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Number_upvr (copied, readonly)
		]]
		local tonumber_result1 = tonumber(arg1)
		if Number_upvr.isNaN(tonumber_result1) or tonumber_result1 == math.huge or tonumber_result1 == (-math.huge) then
			return false
		end
		return true
	end)
	if not pcall_result1 then
		return false
	end
	return pcall_result2_2
end
local Object_upvr = LuauPolyfill.Object
local Kind_upvr = require(Parent.GraphQL).Kind
local Boolean_upvr = LuauPolyfill.Boolean
local Array_upvr = LuauPolyfill.Array
local var13_upvw
local Error_upvr = LuauPolyfill.Error
local function astFromValueUntyped_upvr(arg1) -- Line 61, Named "astFromValueUntyped"
	--[[ Upvalues[8]:
		[1]: Object_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: astFromValueUntyped_upvr (readonly)
		[6]: Number_upvr (readonly)
		[7]: var13_upvw (read and write)
		[8]: Error_upvr (readonly)
	]]
	if arg1 == Object_upvr.None then
		return {
			kind = Kind_upvr.NULL;
		}
	end
	if arg1 == nil then
		return nil
	end
	if Boolean_upvr.toJSBoolean(Array_upvr.isArray(arg1)) then
		for _, v in arg1 do
			local astFromValueUntyped_result1 = astFromValueUntyped_upvr(v)
			if astFromValueUntyped_result1 ~= nil then
				table.insert({}, astFromValueUntyped_result1)
			end
		end
		local module_4 = {
			kind = Kind_upvr.LIST;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_4.values = {}
		return module_4
	end
	if typeof(arg1) == "table" then
		for i_2 in arg1 do
			local astFromValueUntyped_result1_2 = astFromValueUntyped_upvr(arg1[tostring(i_2)])
			if Boolean_upvr.toJSBoolean(astFromValueUntyped_result1_2) then
				table.insert({}, {
					kind = Kind_upvr.OBJECT_FIELD;
					name = {
						kind = Kind_upvr.NAME;
						value = i_2;
					};
					value = astFromValueUntyped_result1_2;
				})
			end
		end
		local module_2 = {
			kind = Kind_upvr.OBJECT;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_2.fields = {}
		return module_2
	end
	if typeof(arg1) == "boolean" then
		local module_5 = {
			kind = Kind_upvr.BOOLEAN;
		}
		module_5.value = arg1
		return module_5
	end
	local var29 = false
	if typeof(arg1) == "number" then
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 32
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Number_upvr (copied, readonly)
			]]
			local tonumber_result1_2 = tonumber(arg1)
			if Number_upvr.isNaN(tonumber_result1_2) or tonumber_result1_2 == math.huge or tonumber_result1_2 == (-math.huge) then
				return false
			end
			return true
		end)
		if not pcall_result1_2 then
			var29 = false
		else
			var29 = pcall_result2
		end
	end
	if Boolean_upvr.toJSBoolean(var29) then
		local tostring_result1 = tostring(arg1)
		if Boolean_upvr.toJSBoolean(var13_upvw:test(tostring_result1)) then
			return {
				kind = Kind_upvr.INT;
				value = tostring_result1;
			}
		end
		return {
			kind = Kind_upvr.FLOAT;
			value = tostring_result1;
		}
	end
	if typeof(arg1) == "string" then
		local module_3 = {
			kind = Kind_upvr.STRING;
		}
		module_3.value = arg1
		return module_3
	end
	error(Error_upvr.new("Cannot convert value to AST: %s.":format(tostring(arg1))))
end
module.astFromValueUntyped = astFromValueUntyped_upvr
var13_upvw = require(Parent.LuauRegExp)("^-?(?:0|[1-9][0-9]*)$")
return module