-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:30
-- Luau version 6, Types version 3
-- Time taken: 0.013710 seconds

local symbols_upvr = require(script.Parent.symbols)
local Spy_upvr = require(script.Parent.Spy)
local function _(arg1, arg2) -- Line 8, Named "isKeyInSpec"
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local var3_upvr = arg1[symbols_upvr.Spec]
	if var3_upvr then
		local pcall_result1, pcall_result2_3 = pcall(function() -- Line 11
			--[[ Upvalues[2]:
				[1]: var3_upvr (readonly)
				[2]: arg2 (readonly)
			]]
			return var3_upvr[arg2]
		end)
		return pcall_result1 and pcall_result2_3
	end
	return true
end
local module_2_upvr = {
	is = require(script.Parent.isAMagicMock);
}
local tbl_12_upvr = {
	__tostring = function(arg1) -- Line 24, Named "__tostring"
		--[[ Upvalues[1]:
			[1]: symbols_upvr (readonly)
		]]
		local getmetatable_result1_4 = getmetatable(arg1)
		local module = {"id="..getmetatable_result1_4[symbols_upvr.Address]}
		local var11 = getmetatable_result1_4[symbols_upvr.Name]
		if var11 ~= nil and var11 ~= "mock" then
			table.insert(module, "name="..var11)
		end
		return "<MagicMock "..table.concat(module, ' ')..'>'
	end;
	__index = function(arg1, arg2) -- Line 36, Named "__index"
		--[[ Upvalues[2]:
			[1]: symbols_upvr (readonly)
			[2]: module_2_upvr (readonly)
		]]
		local var12 = arg1
		local getmetatable_result1_2 = getmetatable(var12)
		local var14_upvr = getmetatable_result1_2[symbols_upvr.Spec]
		if var14_upvr then
			local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 11
				--[[ Upvalues[2]:
					[1]: var14_upvr (readonly)
					[2]: arg2 (readonly)
				]]
				return var14_upvr[arg2]
			end)
			var12 = pcall_result1_2 and pcall_result2_2
		else
			var12 = true
		end
		if not var12 then
			var14_upvr = string.format("MagicMock Error: Cannot index key %q since it is out of spec.", tostring(arg2))
			error(var14_upvr)
		end
		var14_upvr = getmetatable_result1_2[symbols_upvr.Children]
		if var14_upvr[arg2] == nil then
			var14_upvr = module_2_upvr.new
			var14_upvr = var14_upvr({
				name = getmetatable_result1_2[symbols_upvr.Name]..'.'..tostring(arg2);
			})
			local var19 = var14_upvr
			var14_upvr = getmetatable_result1_2[symbols_upvr.Children]
			var14_upvr[arg2] = var19
			return var19
		end
		var14_upvr = symbols_upvr.None
		if var19 == var14_upvr then
			var14_upvr = nil
			return var14_upvr
		end
		return var19
	end;
	__newindex = function(arg1, arg2, arg3) -- Line 56, Named "__newindex"
		--[[ Upvalues[2]:
			[1]: symbols_upvr (readonly)
			[2]: Spy_upvr (readonly)
		]]
		local var20 = arg1
		local getmetatable_result1_3 = getmetatable(var20)
		local var22_upvr = getmetatable_result1_3[symbols_upvr.Spec]
		local var23
		if var22_upvr then
			local pcall_result1_3, pcall_result2 = pcall(function() -- Line 11
				--[[ Upvalues[2]:
					[1]: var22_upvr (readonly)
					[2]: arg2 (readonly)
				]]
				return var22_upvr[arg2]
			end)
			var20 = pcall_result1_3 and pcall_result2
		else
			var20 = true
		end
		if not var20 then
			var22_upvr = string.format("MagicMock Error: Cannot write key %q since it is out of spec", tostring(arg2))
			error(var22_upvr)
		end
		var22_upvr = var23
		if type(var22_upvr) == "function" then
			var22_upvr = Spy_upvr
			var22_upvr = var23
			local _, any_new_result2 = var22_upvr.new(var22_upvr)
			var23 = any_new_result2
		elseif var23 == nil then
			var23 = symbols_upvr.None
		end
		any_new_result2 = symbols_upvr
		if arg2 == any_new_result2.ReturnValue then
			any_new_result2 = symbols_upvr
			any_new_result2 = {}
			local var29 = any_new_result2
			var29[1] = var23
			var29.n = 1
			getmetatable_result1_3[any_new_result2.ReturnValue] = var29
		else
			var29 = symbols_upvr.Children
			getmetatable_result1_3[var29][arg2] = var23
		end
	end;
}
local function _(arg1) -- Line 78, Named "isTuple"
	--[[ Upvalues[2]:
		[1]: symbols_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	if type(arg1) == "table" and arg1[symbols_upvr.isTuple] then
		return not module_2_upvr.is(arg1)
	end
end
local function getReturnValue_upvr(arg1, ...) -- Line 84, Named "getReturnValue"
	--[[ Upvalues[3]:
		[1]: symbols_upvr (readonly)
		[2]: Spy_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1[symbols_upvr.ReturnValue] then
		return arg1[symbols_upvr.ReturnValue]
	end
	local var30 = arg1[symbols_upvr.SideEffect]
	if var30 then
		var30.calls += 1
		if type(var30.value) == "function" or Spy_upvr.is(var30.value) then
			return {var30.value(...)}
		end
		if type(var30.value) == "table" then
			local value = var30.value
			local var33
			if type(value) == "table" and value[symbols_upvr.isTuple] then
				var33 = not module_2_upvr.is(value)
			else
				var33 = nil
			end
			if var33 then
				var33 = var30.value
				local _ = var33.values[var30.calls]
			else
				var33 = var30.value
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			if var33[var30.calls] then
				var33 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var33[1] = var33[var30.calls]
				return var33
			end
			var33 = error
			var33("MagicMock Error: SideEffect iteration reached")
		else
			error("MagicMock Error: Invalid SideEffect")
		end
	end
	return nil
end
function tbl_12_upvr.__call(arg1, ...) -- Line 117
	--[[ Upvalues[3]:
		[1]: getReturnValue_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: symbols_upvr (readonly)
	]]
	local getmetatable_result1 = getmetatable(arg1)
	local tbl_10 = {
		args = table.pack(...);
		result = getReturnValue_upvr(getmetatable_result1, ...);
	}
	if tbl_10.result == nil then
		tbl_10.result = {
			n = 1;
			module_2_upvr.new({
				name = getmetatable_result1[symbols_upvr.Name].."()";
			})
		}
		getmetatable_result1[symbols_upvr.ReturnValue] = tbl_10.result
	elseif tbl_10.result == symbols_upvr.None then
		tbl_10.result = {
			n = 1;
		}
	else
		local var40
		local _1 = var40[1]
		if type(_1) == "table" and _1[symbols_upvr.isTuple] then
			var40 = not module_2_upvr.is(_1)
		else
			var40 = nil
		end
		if var40 then
			var40 = tbl_10.result[1]
			tbl_10.result = var40.values
		end
	end
	var40 = getmetatable_result1[symbols_upvr.Calls]
	table.insert(var40, tbl_10)
	var40 = tbl_10.result
	return table.unpack(var40)
end
local function _(arg1) -- Line 144, Named "operation"
	--[[ Upvalues[2]:
		[1]: symbols_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 145
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: symbols_upvr (copied, readonly)
			[3]: module_2_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var43
		if type(arg1_2) ~= "string" and getmetatable(arg1_2) then
			var43 = getmetatable(arg1_2)
			local _ = string.format("__%s()", arg1)
		else
			var43 = getmetatable(arg2)
		end
		local var45 = var43[symbols_upvr.Operations][string.format("__r_%s()", arg1)]
		if var45 == nil then
			local tbl_5 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.name = var43[symbols_upvr.Name]..'.'..string.format("__r_%s()", arg1)
			local any_new_result1 = module_2_upvr.new(tbl_5)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var43[symbols_upvr.Operations][string.format("__r_%s()", arg1)] = any_new_result1
			return any_new_result1
		end
		return var45
	end
end
local var49_upvr = "add"
function tbl_12_upvr.__add(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var50
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var50 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var50 = getmetatable(arg2)
	end
	local var52 = var50[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var52 == nil then
		local tbl_6 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_6.name = var50[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_3 = module_2_upvr.new(tbl_6)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var50[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_3
		return any_new_result1_3
	end
	return var52
end
var49_upvr = "sub"
function tbl_12_upvr.__sub(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var56
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var56 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var56 = getmetatable(arg2)
	end
	local var58 = var56[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var58 == nil then
		local tbl_3 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.name = var56[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_8 = module_2_upvr.new(tbl_3)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var56[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_8
		return any_new_result1_8
	end
	return var58
end
var49_upvr = "div"
function tbl_12_upvr.__div(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var62
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var62 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var62 = getmetatable(arg2)
	end
	local var64 = var62[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var64 == nil then
		local tbl_2 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.name = var62[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_4 = module_2_upvr.new(tbl_2)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var62[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_4
		return any_new_result1_4
	end
	return var64
end
var49_upvr = "mul"
function tbl_12_upvr.__mul(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var68
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var68 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var68 = getmetatable(arg2)
	end
	local var70 = var68[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var70 == nil then
		local tbl_11 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_11.name = var68[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_2 = module_2_upvr.new(tbl_11)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var68[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_2
		return any_new_result1_2
	end
	return var70
end
var49_upvr = "mod"
function tbl_12_upvr.__mod(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var74
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var74 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var74 = getmetatable(arg2)
	end
	local var76 = var74[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var76 == nil then
		local tbl = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.name = var74[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_9 = module_2_upvr.new(tbl)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var74[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_9
		return any_new_result1_9
	end
	return var76
end
var49_upvr = "pow"
function tbl_12_upvr.__pow(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var80
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var80 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var80 = getmetatable(arg2)
	end
	local var82 = var80[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var82 == nil then
		local tbl_9 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_9.name = var80[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_6 = module_2_upvr.new(tbl_9)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var80[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_6
		return any_new_result1_6
	end
	return var82
end
var49_upvr = "neg"
function tbl_12_upvr.__unm(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var86
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var86 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var86 = getmetatable(arg2)
	end
	local var88 = var86[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var88 == nil then
		local tbl_4 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.name = var86[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_5 = module_2_upvr.new(tbl_4)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var86[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_5
		return any_new_result1_5
	end
	return var88
end
var49_upvr = "concat"
function tbl_12_upvr.__concat(arg1, arg2) -- Line 145
	--[[ Upvalues[3]:
		[1]: var49_upvr (readonly)
		[2]: symbols_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var92
	if type(arg1) ~= "string" and getmetatable(arg1) then
		var92 = getmetatable(arg1)
		local _ = string.format("__%s()", var49_upvr)
	else
		var92 = getmetatable(arg2)
	end
	local var94 = var92[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)]
	if var94 == nil then
		local tbl_8 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_8.name = var92[symbols_upvr.Name]..'.'..string.format("__r_%s()", var49_upvr)
		local any_new_result1_7 = module_2_upvr.new(tbl_8)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var92[symbols_upvr.Operations][string.format("__r_%s()", var49_upvr)] = any_new_result1_7
		return any_new_result1_7
	end
	return var94
end
local setReturnValue_upvr = require(script.Parent.setReturnValue)
local setSideEffect_upvr = require(script.Parent.setSideEffect)
function module_2_upvr.new(arg1) -- Line 176
	--[[ Upvalues[4]:
		[1]: symbols_upvr (readonly)
		[2]: tbl_12_upvr (readonly)
		[3]: setReturnValue_upvr (readonly)
		[4]: setSideEffect_upvr (readonly)
	]]
	local var103 = arg1
	if not var103 then
		var103 = {}
	end
	local var104_upvw = var103
	local function _() -- Line 179, Named "getName"
		--[[ Upvalues[1]:
			[1]: var104_upvw (read and write)
		]]
		if var104_upvw.name then
			return var104_upvw.name
		end
		if var104_upvw.spec then
			return tostring(var104_upvw.spec)
		end
		return "mock"
	end
	local tbl_13 = {}
	local tbl_7 = {
		[symbols_upvr.isMagicMock] = true;
		[symbols_upvr.Address] = tostring(tbl_13);
	}
	local var107 = symbols_upvr
	if var104_upvw.name then
		var107 = var104_upvw.name
	elseif var104_upvw.spec then
		var107 = tostring(var104_upvw.spec)
	else
		var107 = "mock"
	end
	tbl_7[var107.Name] = var107
	tbl_7[symbols_upvr.Operations] = {}
	tbl_7[symbols_upvr.Calls] = {}
	tbl_7[symbols_upvr.Children] = {}
	tbl_7[symbols_upvr.Spec] = var104_upvw.spec or nil
	tbl_7[symbols_upvr.ReturnValue] = nil
	tbl_7[symbols_upvr.SideEffect] = nil
	for i, v in pairs(tbl_12_upvr) do
		tbl_7[i] = v
		local var111
	end
	local setmetatable_result1 = setmetatable(tbl_13, var111)
	if var104_upvw.returnValue then
		i = var104_upvw.returnValue
		setReturnValue_upvr(setmetatable_result1, i)
	end
	if var104_upvw.sideEffect then
		i = var104_upvw.sideEffect
		setSideEffect_upvr(setmetatable_result1, i)
	end
	return setmetatable_result1
end
function module_2_upvr.is(arg1) -- Line 218
	--[[ Upvalues[1]:
		[1]: symbols_upvr (readonly)
	]]
	local var113 = arg1
	local getmetatable_result1_5 = getmetatable(var113)
	if getmetatable_result1_5 then
		if getmetatable_result1_5[symbols_upvr.isMagicMock] == nil then
			var113 = false
		else
			var113 = true
		end
		return var113
	end
	return false
end
return module_2_upvr