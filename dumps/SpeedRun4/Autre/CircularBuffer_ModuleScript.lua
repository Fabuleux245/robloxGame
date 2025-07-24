-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:56
-- Luau version 6, Types version 3
-- Time taken: 0.003639 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var2 = arg1
	assert(var2, "Cannot initialize CircularBuffer with nil")
	if 0 >= arg1 then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "Cannot initialize CircularBuffer to size < 1")
	local module = {}
	setmetatable(module, module_2_upvr)
	module._data = {}
	module._backIndex = 0
	module._maxSize = arg1
	return module
end
function module_2_upvr.reset(arg1) -- Line 19
	arg1._data = {}
	arg1._backIndex = 0
end
function module_2_upvr.getSize(arg1) -- Line 24
	return #arg1._data
end
function module_2_upvr.getMaxSize(arg1) -- Line 28
	return arg1._maxSize
end
function module_2_upvr.setSize(arg1, arg2) -- Line 32
	local var4 = arg2
	assert(var4, "Cannot set CircularBuffer with nil")
	local var5
	if 0 >= arg2 then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Cannot set CircularBuffer to size < 1")
	if arg2 == arg1._maxSize then
	else
		local any_next_result1 = arg1:iterator():next()
		local tbl_2 = {}
		var5 = 0
		while any_next_result1 and var5 < arg2 do
			local var9 = var5 + 1
			tbl_2[var9] = {
				entry = any_next_result1;
			}
			if tbl_2[var5] then
				tbl_2[var5]._next = tbl_2[var9]
			end
			var5 = var9
		end
		arg1._data = tbl_2
		arg1._backIndex = var5
		arg1._maxSize = arg2
	end
end
function module_2_upvr.getFrontIndex(arg1) -- Line 63
	local var11 = arg1._backIndex + 1
	if not arg1._data[var11] then
		return 1
	end
	return var11
end
function module_2_upvr.front(arg1) -- Line 71
	local any_getFrontIndex_result1 = arg1:getFrontIndex()
	if arg1._data[any_getFrontIndex_result1] then
		return arg1._data[any_getFrontIndex_result1].entry
	end
	return nil
end
function module_2_upvr.back(arg1) -- Line 79
	if arg1._data[arg1._backIndex] then
		return arg1._data[arg1._backIndex].entry
	end
	return nil
end
function module_2_upvr.iterator(arg1) -- Line 86
	return {
		data = arg1._data[arg1:getFrontIndex()];
		next = function(arg1_2) -- Line 91, Named "next"
			local data = arg1_2.data
			if data then
				arg1_2.data = arg1_2.data._next
			end
			local var15 = data
			if var15 then
				var15 = data.entry
			end
			return var15
		end;
	}
end
function module_2_upvr.getData(arg1) -- Line 103
	return arg1._data
end
function module_2_upvr.at(arg1, arg2) -- Line 107
	assert(arg2, "Cannot index CircularBuffer with nil")
	local var16 = (arg1:getFrontIndex() + arg2 - 2) % arg1._maxSize + 1
	if arg1._data[var16] then
		return arg1._data[var16].entry
	end
	return nil
end
function module_2_upvr.reverseAt(arg1, arg2) -- Line 118
	local var17 = (arg1._backIndex - arg2) % arg1._maxSize + 1
	if arg1._data[var17] then
		return arg1._data[var17].entry
	end
	return nil
end
function module_2_upvr.push_back(arg1, arg2) -- Line 129
	local _backIndex = arg1._backIndex
	local var24 = arg1._backIndex + 1
	if arg1._maxSize < var24 then
		var24 = 1
	end
	local var25 = arg1._data[var24]
	local tbl = {}
	tbl.entry = arg2
	arg1._data[var24] = tbl
	if 0 < _backIndex then
		arg1._data[_backIndex]._next = arg1._data[var24]
		if var25 then
			var25._next = nil
		end
	end
	arg1._backIndex = var24
	local var27 = var25
	if var27 then
		var27 = var25.entry
	end
	return var27
end
return module_2_upvr