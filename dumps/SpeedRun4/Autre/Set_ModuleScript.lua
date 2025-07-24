-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:36
-- Luau version 6, Types version 3
-- Time taken: 0.003927 seconds

local Parent = script.Parent
local module_upvr = {
	__iter = function(arg1) -- Line 22, Named "__iter"
		return next, arg1._array
	end;
}
local inspect_upvr = require(Parent.util.inspect)
function module_upvr.__tostring(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: inspect_upvr (readonly)
	]]
	local var4 = "Set "
	if 0 < #arg1._array then
		var4 = var4..'('..tostring(#arg1._array)..") "
	end
	return var4..inspect_upvr(arg1._array)
end
module_upvr.__index = module_upvr
local isArray_upvr = require(Parent.Array.isArray)
local fromString_upvr = require(Parent.Array.from.fromString)
function module_upvr.new(arg1) -- Line 37
	--[[ Upvalues[3]:
		[1]: isArray_upvr (readonly)
		[2]: fromString_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 44 start (CF ANALYSIS FAILED)
	if typeof(arg1) == "table" then
		if isArray_upvr(arg1) then
		else
			local getmetatable_result1 = getmetatable(arg1)
			if getmetatable_result1 and rawget(getmetatable_result1, "__iter") then
			elseif _G.__DEV__ then
				error("cannot create array from an object-like table")
				-- KONSTANTWARNING: GOTO [73] #58
			end
		end
		-- KONSTANTWARNING: GOTO [73] #58
	end
	-- KONSTANTERROR: [5] 4. Error Block 44 end (CF ANALYSIS FAILED)
end
function module_upvr.add(arg1, arg2) -- Line 83
	if not arg1._map[arg2] then
		arg1.size += 1
		arg1._map[arg2] = true
		table.insert(arg1._array, arg2)
	end
	return arg1
end
function module_upvr.clear(arg1) -- Line 93
	arg1.size = 0
	table.clear(arg1._map)
	table.clear(arg1._array)
end
function module_upvr.delete(arg1, arg2) -- Line 99
	if not arg1._map[arg2] then
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
function module_upvr.forEach(arg1, arg2, arg3) -- Line 115
	--[[ Upvalues[1]:
		[1]: forEach_2_upvr (readonly)
	]]
	if typeof(arg2) ~= "function" then
		error("callback is not a function")
	end
	forEach_2_upvr(arg1._array, function(arg1_2) -- Line 121
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		if arg3 ~= nil then
			arg2(arg3, arg1_2, arg1_2, arg1)
		else
			arg2(arg1_2, arg1_2, arg1)
		end
	end)
end
function module_upvr.has(arg1, arg2) -- Line 130
	local var11
	if arg1._map[arg2] == nil then
		var11 = false
	else
		var11 = true
	end
	return var11
end
function module_upvr.ipairs(arg1) -- Line 134
	if _G.__DEV__ then
		warn(debug.traceback("`for _,_ in mySet:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in mySet do` instead\n", 2))
	end
	return ipairs(arg1._array)
end
return module_upvr