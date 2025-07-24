-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:22
-- Luau version 6, Types version 3
-- Time taken: 0.003344 seconds

local Parent = script.Parent
local map_upvr = require(Parent.Array.map)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var8
	local tbl = {}
	if arg1 ~= nil then
		if _G.__DEV__ then
			local typeof_result1 = typeof(arg1)
			if typeof_result1 == "table" then
				if 0 < #arg1 and typeof(arg1[1]) ~= "table" then
					error("cannot create Map from {K, V} form, it must be { {K, V}... }")
					-- KONSTANTWARNING: GOTO [41] #30
				end
			else
				error("cannot create array from value of type `%s`":format(typeof_result1))
			end
		end
		local clone = table.clone(arg1)
		var8 = table.create(#clone)
		for _, v in clone do
			local _1 = v[1]
			if _G.__DEV__ and _1 == nil then
				error("cannot create Map from a table that isn't an array.")
			end
			if tbl[_1] == nil then
				table.insert(var8, _1)
			end
			tbl[_1] = v[2]
		end
	else
		var8 = {}
	end
	return setmetatable({
		size = #var8;
		_map = tbl;
		_array = var8;
	}, module_upvr)
end
function module_upvr.set(arg1, arg2, arg3) -- Line 64
	if arg1._map[arg2] == nil then
		arg1.size += 1
		table.insert(arg1._array, arg2)
	end
	arg1._map[arg2] = arg3
	return arg1
end
function module_upvr.get(arg1, arg2) -- Line 76
	return arg1._map[arg2]
end
function module_upvr.clear(arg1) -- Line 80
	local table = table
	arg1.size = 0
	table.clear(arg1._map)
	table.clear(arg1._array)
end
function module_upvr.delete(arg1, arg2) -- Line 87
	if arg1._map[arg2] == nil then
		return false
	end
	arg1.size -= 1
	arg1._map[arg2] = nil
	local table_find_result1 = table.find(arg1._array, arg2)
	if table_find_result1 then
		table.remove(arg1._array, table_find_result1)
	end
	return true
end
local forEach_2_upvr = require(Parent.Array.forEach)
function module_upvr.forEach(arg1, arg2, arg3) -- Line 103
	--[[ Upvalues[1]:
		[1]: forEach_2_upvr (readonly)
	]]
	if _G.__DEV__ and typeof(arg2) ~= "function" then
		error("callback is not a function")
	end
	forEach_2_upvr(arg1._array, function(arg1_2) -- Line 110
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
		]]
		local var18 = arg1._map[arg1_2]
		if arg3 ~= nil then
			arg2(arg3, var18, arg1_2, arg1)
		else
			arg2(var18, arg1_2, arg1)
		end
	end)
end
function module_upvr.has(arg1, arg2) -- Line 121
	local var19
	if arg1._map[arg2] == nil then
		var19 = false
	else
		var19 = true
	end
	return var19
end
function module_upvr.keys(arg1) -- Line 125
	return arg1._array
end
function module_upvr.values(arg1) -- Line 129
	--[[ Upvalues[1]:
		[1]: map_upvr (readonly)
	]]
	return map_upvr(arg1._array, function(arg1_3) -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1._map[arg1_3]
	end)
end
function module_upvr.entries(arg1) -- Line 135
	--[[ Upvalues[1]:
		[1]: map_upvr (readonly)
	]]
	return map_upvr(arg1._array, function(arg1_4) -- Line 136
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module = {}
		module[1] = arg1_4
		module[2] = arg1._map[arg1_4]
		return module
	end)
end
function module_upvr.ipairs(arg1) -- Line 141
	if _G.__DEV__ then
		warn(debug.traceback("`for _,_ in myMap:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in myMap do` instead\n", 2))
	end
	return ipairs(arg1:entries())
end
function module_upvr.__iter(arg1) -- Line 153
	return next, arg1:entries()
end
function module_upvr.__index(arg1, arg2) -- Line 157
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local rawget_result1 = rawget(module_upvr, arg2)
	if rawget_result1 ~= nil then
		return rawget_result1
	end
	return module_upvr.get(arg1, arg2)
end
function module_upvr.__newindex(arg1, arg2, arg3) -- Line 166
	arg1:set(arg2, arg3)
end
return module_upvr