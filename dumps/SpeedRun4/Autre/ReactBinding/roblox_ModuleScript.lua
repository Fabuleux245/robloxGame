-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:29
-- Luau version 6, Types version 3
-- Time taken: 0.006411 seconds

local Parent = script.Parent.Parent
local ReactSymbols_upvr = require(Parent.Shared).ReactSymbols
local any_Symbol_result1_upvr = require(Parent.LuauPolyfill).Symbol("BindingImpl")
local module_upvr = {}
local tbl_2 = {}
local function getValue(arg1) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.getValue(arg1)
end
tbl_2.getValue = getValue
local function map(arg1, arg2) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.map(arg1, arg2)
end
tbl_2.map = map
local module_upvr_3 = {
	__index = tbl_2;
	__tostring = function(arg1) -- Line 60, Named "__tostring"
		return string.format("RoactBinding(%s)", tostring(arg1:getValue()))
	end;
}
local function update(arg1, arg2) -- Line 65
	--[[ Upvalues[1]:
		[1]: any_Symbol_result1_upvr (readonly)
	]]
	return arg1[any_Symbol_result1_upvr].update(arg2)
end
module_upvr.update = update
local function subscribe(arg1, arg2) -- Line 69
	--[[ Upvalues[1]:
		[1]: any_Symbol_result1_upvr (readonly)
	]]
	return arg1[any_Symbol_result1_upvr].subscribe(arg2)
end
module_upvr.subscribe = subscribe
local function getValue(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: any_Symbol_result1_upvr (readonly)
	]]
	return arg1[any_Symbol_result1_upvr]:getValue()
end
module_upvr.getValue = getValue
local roblox_upvr = require(script.Parent["createSignal.roblox"])
function module_upvr.create(arg1) -- Line 77
	--[[ Upvalues[4]:
		[1]: roblox_upvr (readonly)
		[2]: ReactSymbols_upvr (readonly)
		[3]: any_Symbol_result1_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	local var7_result1, var7_result2_upvr = roblox_upvr()
	local module_upvr_2 = {}
	module_upvr_2.value = arg1
	module_upvr_2.subscribe = var7_result1
	local function update(arg1_2) -- Line 84
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: var7_result2_upvr (readonly)
		]]
		module_upvr_2.value = arg1_2
		var7_result2_upvr(arg1_2)
	end
	module_upvr_2.update = update
	local function getValue() -- Line 89
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		return module_upvr_2.value
	end
	module_upvr_2.getValue = getValue
	getValue = nil
	local var11 = getValue
	if _G.__DEV__ then
		var11 = debug.traceback("Binding created at:", 3)
	end
	return setmetatable({
		["$$typeof"] = ReactSymbols_upvr.REACT_BINDING_TYPE;
		[any_Symbol_result1_upvr] = module_upvr_2;
		_source = var11;
	}, module_upvr_3), module_upvr_2.update
end
function module_upvr.map(arg1, arg2) -- Line 107
	--[[ Upvalues[4]:
		[1]: ReactSymbols_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: any_Symbol_result1_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	local var13
	if _G.__DEV__ then
		var13 = false
		if typeof(arg1) == "table" then
			if arg1["$$typeof"] ~= ReactSymbols_upvr.REACT_BINDING_TYPE then
				var13 = false
			else
				var13 = true
			end
		end
		assert(var13, "Expected `self` to be a binding")
		if typeof(arg2) ~= "function" then
		else
		end
		assert(true, "Expected arg #1 to be a function")
	end
	local tbl_3 = {}
	local function subscribe(arg1_3) -- Line 123
		--[[ Upvalues[3]:
			[1]: module_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return module_upvr.subscribe(arg1, function(arg1_4) -- Line 124
			--[[ Upvalues[2]:
				[1]: arg1_3 (readonly)
				[2]: arg2 (copied, readonly)
			]]
			arg1_3(arg2(arg1_4))
		end)
	end
	tbl_3.subscribe = subscribe
	local function update(arg1_5) -- Line 129
		error("Bindings created by Binding:map(fn) cannot be updated directly", 2)
	end
	tbl_3.update = update
	local function getValue() -- Line 133
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		return arg2(arg1:getValue())
	end
	tbl_3.getValue = getValue
	getValue = nil
	local var16 = getValue
	if _G.__DEV__ then
		var16 = debug.traceback("Mapped binding created at:", 3)
	end
	return setmetatable({
		["$$typeof"] = ReactSymbols_upvr.REACT_BINDING_TYPE;
		[any_Symbol_result1_upvr] = tbl_3;
		_source = var16;
	}, module_upvr_3)
end
function module_upvr.join(arg1) -- Line 154
	--[[ Upvalues[4]:
		[1]: ReactSymbols_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: any_Symbol_result1_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	local _G = _G
	if _G.__DEV__ then
		if typeof(arg1) ~= "table" then
			_G = false
		else
			_G = true
		end
		assert(_G, "Expected arg #1 to be of type table")
		_G = nil
		for i, v in arg1, _G do
			if typeof(v) ~= "table" or v["$$typeof"] ~= ReactSymbols_upvr.REACT_BINDING_TYPE then
				error("Expected arg #1 to contain only bindings, but key %q had a non-binding value":format(tostring(i)), 2)
			end
		end
	end
	local tbl = {}
	local function getValue() -- Line 175
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module = {}
		for i_2, v_2 in pairs(arg1) do
			module[i_2] = v_2:getValue()
		end
		return module
	end
	function tbl.subscribe(arg1_6) -- Line 186
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: getValue (readonly)
		]]
		local tbl_upvw = {}
		for i_3, v_3 in arg1 do
			tbl_upvw[i_3] = module_upvr.subscribe(v_3, function(arg1_7) -- Line 191
				--[[ Upvalues[2]:
					[1]: arg1_6 (readonly)
					[2]: getValue (copied, readonly)
				]]
				arg1_6(getValue())
			end)
		end
		return function() -- Line 196
			--[[ Upvalues[1]:
				[1]: tbl_upvw (read and write)
			]]
			if tbl_upvw == nil then
			else
				for _, v_4 in tbl_upvw do
					v_4()
				end
				tbl_upvw = nil
			end
		end
	end
	function tbl.update(arg1_8) -- Line 209
		error("Bindings created by joinBindings(...) cannot be updated directly", 2)
	end
	local function getValue() -- Line 213
		--[[ Upvalues[1]:
			[1]: getValue (readonly)
		]]
		return getValue()
	end
	tbl.getValue = getValue
	getValue = nil
	local var41 = getValue
	if _G.__DEV__ then
		var41 = debug.traceback("Joined binding created at:", 2)
	end
	return setmetatable({
		["$$typeof"] = ReactSymbols_upvr.REACT_BINDING_TYPE;
		[any_Symbol_result1_upvr] = tbl;
		_source = var41;
	}, module_upvr_3)
end
return module_upvr