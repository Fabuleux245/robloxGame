-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:01
-- Luau version 6, Types version 3
-- Time taken: 0.003280 seconds

local module_2_upvr = {
	_Superclass = nil;
	_PropertyShortcut = false;
}
function GetMetatable(arg1) -- Line 7
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl_upvr = {}
	local var12_upvr
	if not var12_upvr then
		var12_upvr = {}
	end
	if not arg1.Set then
	end
	local var13 = arg1
	while var13 ~= nil do
		for i, v in pairs(var13) do
			if i:sub(1, 2) ~= "__" then
				tbl_upvr[i] = tbl_upvr[i] or v
			else
				module[i] = v
			end
		end
	end
	if module.__index or arg1._PropertyShortcut then
		local __index_4_upvr = module.__index
		local function __index(arg1_2, arg2) -- Line 28
			--[[ Upvalues[3]:
				[1]: tbl_upvr (readonly)
				[2]: var12_upvr (readonly)
				[3]: __index_4_upvr (readonly)
			]]
			if tbl_upvr[arg2] ~= nil then
				return tbl_upvr[arg2]
			end
			if var12_upvr[arg2] then
				if type(var12_upvr[arg2]) == "string" then
					return arg1_2[var12_upvr[arg2]]
				end
				return var12_upvr[arg2](arg1_2, arg2)
			end
			if __index_4_upvr then
				return __index_4_upvr(arg1_2, arg2)
			end
			return nil
		end
		module.__index = __index
	else
		module.__index = tbl_upvr
	end
	__index_4_upvr = arg1._PropertyShortcut
	if __index_4_upvr then
		__index_4_upvr = module.__newindex
		local tbl_upvr_2 = {}
		function module.__newindex(arg1_3, arg2, arg3) -- Line 48
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (readonly)
				[2]: __index_4_upvr (readonly)
			]]
			local var19 = tbl_upvr_2[arg2]
			if var19 then
				if type(var19) == "string" then
					arg1_3[var19] = arg3
				else
					return var19(arg1_3, arg3, arg2)
				end
			end
			if __index_4_upvr then
				return __index_4_upvr(arg1_3, arg2, arg3)
			end
			rawset(arg1_3, arg2, arg3)
		end
	end
	module._oop_Class = arg1
	return module
end
local function __index(arg1, arg2) -- Line 67
	if arg2 == "Meta" then
		local GetMetatable_result1 = GetMetatable(arg1)
		rawset(arg1, arg2, GetMetatable_result1)
		return GetMetatable_result1
	end
	if arg2 == "Super" then
		return arg1._Superclass
	end
end
module_2_upvr.__index = __index
local function __tostring(arg1) -- Line 76
	return "Class Object"
end
module_2_upvr.__tostring = __tostring
function module_2_upvr.new(arg1, arg2) -- Line 80
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1_3 = setmetatable({}, module_2_upvr)
	setmetatable_result1_3._Superclass = arg1
	setmetatable_result1_3._PropertyShortcut = arg2
	if arg2 then
		setmetatable_result1_3.Set = {}
		setmetatable_result1_3.Get = {}
	end
	return setmetatable_result1_3
end
function module_2_upvr.test() -- Line 91
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any_new_result1_2 = module_2_upvr.new()
	local function __tostring(arg1) -- Line 93
		return 'x'
	end
	any_new_result1_2.__tostring = __tostring
	function any_new_result1_2.__index(arg1, arg2) -- Line 94
		if arg2 == "hello" then
			return "foo"
		end
		return "bar"
	end
	function any_new_result1_2.Print(arg1) -- Line 95
		print(arg1)
	end
	local any_new_result1 = module_2_upvr.new(any_new_result1_2)
	function any_new_result1.__tostring(arg1) -- Line 97
		return 'y'
	end
	print("X meta members:")
	for i_2, v_2 in pairs(any_new_result1_2.Meta) do
		print('\t', i_2, v_2)
	end
	print("Y meta members:")
	for i_3, v_3 in pairs(any_new_result1.Meta) do
		print('\t', i_3, v_3)
	end
	local setmetatable_result1 = setmetatable({}, any_new_result1_2.Meta)
	local setmetatable_result1_2 = setmetatable({}, any_new_result1.Meta)
	print(setmetatable_result1, setmetatable_result1_2)
	print(setmetatable_result1.hello, setmetatable_result1.world)
	print(setmetatable_result1_2.hello, setmetatable_result1_2.world)
	setmetatable_result1:Print()
	setmetatable_result1_2:Print()
end
return module_2_upvr