-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:46
-- Luau version 6, Types version 3
-- Time taken: 0.004471 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2, ...) -- Line 51
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		keys = {};
		values = {};
	}
	module.getId = arg1
	module.sortPredicate = arg2
	setmetatable(module, module_2_upvr)
	module_2_upvr._InsertInPlace(module, ...)
	return module
end
function module_2_upvr.Get(arg1, arg2) -- Line 69
	return arg1.values[arg2]
end
function module_2_upvr.GetByIndex(arg1, arg2) -- Line 76
	local var3 = arg1.keys[arg2]
	if var3 == nil then
		return nil
	end
	return arg1.values[var3]
end
function module_2_upvr.GetIds(arg1) -- Line 89
	return arg1.keys
end
function module_2_upvr.Length(arg1) -- Line 96
	return #arg1.keys
end
function module_2_upvr.Delete(arg1, ...) -- Line 109
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any_new_result1_2 = module_2_upvr.new(arg1.getId, arg1.sortPredicate)
	for i, v in pairs(arg1.values) do
		any_new_result1_2.values[i] = v
	end
	for i_2 = 1, select('#', ...) do
		i = select
		v = i_2
		i = i(v, ...)
		v = any_new_result1_2.values
		v[i] = nil
	end
	for _, v_2 in ipairs(arg1.keys) do
		if any_new_result1_2.values[v_2] ~= nil then
			any_new_result1_2.keys[#any_new_result1_2.keys + 1] = v_2
		end
	end
	return any_new_result1_2
end
function module_2_upvr.Insert(arg1, ...) -- Line 143
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any__Copy_result1 = arg1:_Copy()
	module_2_upvr._InsertInPlace(any__Copy_result1, ...)
	return any__Copy_result1
end
function module_2_upvr.First(arg1) -- Line 154
	if arg1.keys[1] then
		return arg1:Get(arg1.keys[1])
	end
	return nil
end
function module_2_upvr.Last(arg1) -- Line 164
	local len = #arg1.keys
	if arg1.keys[len] then
		return arg1:Get(arg1.keys[len])
	end
	return nil
end
function module_2_upvr.CreateIterator(arg1) -- Line 181
	local var24_upvw = 0
	local len_2_upvr = #arg1.keys
	return function() -- Line 186
		--[[ Upvalues[3]:
			[1]: var24_upvw (read and write)
			[2]: len_2_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		var24_upvw += 1
		if var24_upvw <= len_2_upvr then
			local var26 = arg1.keys[var24_upvw]
			return var26, arg1.values[var26], var24_upvw
		end
		return nil, nil, nil
	end
end
function module_2_upvr.CreateReverseIterator(arg1) -- Line 206
	local var28_upvw = #arg1.keys + 1
	return function() -- Line 210
		--[[ Upvalues[2]:
			[1]: var28_upvw (read and write)
			[2]: arg1 (readonly)
		]]
		var28_upvw -= 1
		if 0 < var28_upvw then
			local var29 = arg1.keys[var28_upvw]
			return var29, arg1.values[var29], var28_upvw
		end
		return nil, nil, nil
	end
end
function module_2_upvr.Map(arg1, arg2) -- Line 233
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any_new_result1 = module_2_upvr.new(arg1.getId, arg1.sortPredicate)
	for i_4, v_3 in arg1:CreateIterator() do
		any_new_result1:_InsertInPlaceUnsorted(arg2(v_3, i_4))
	end
	any_new_result1:_Sort()
	return any_new_result1
end
function module_2_upvr.Merge(arg1, ...) -- Line 260
	local var44
	for i_5 = 1, select('#', ...) do
		local selected_arg_2 = select(i_5, ...)
		if 0 < selected_arg_2:Length() then
			if not var44 then
				var44 = arg1:_Copy()
			end
			for _, v_4 in selected_arg_2:CreateIterator() do
				var44:_InsertInPlaceUnsorted(v_4)
			end
		end
	end
	if var44 then
		var44:_Sort()
		return var44
	end
	return arg1
end
function module_2_upvr._Copy(arg1) -- Line 289
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local any_new_result1_3 = module_2_upvr.new(arg1.getId, arg1.sortPredicate)
	for i_7, v_5 in ipairs(arg1.keys) do
		any_new_result1_3.keys[i_7] = v_5
	end
	for i_8, v_6 in pairs(arg1.values) do
		any_new_result1_3.values[i_8] = v_6
	end
	return any_new_result1_3
end
function module_2_upvr._InsertInPlaceUnsorted(arg1, ...) -- Line 309
	for i_9 = 1, select('#', ...) do
		local selected_arg = select(i_9, ...)
		local any_getId_result1 = arg1.getId(selected_arg)
		if not arg1.values[any_getId_result1] then
			table.insert(arg1.keys, any_getId_result1)
		end
		arg1.values[any_getId_result1] = selected_arg
	end
end
function module_2_upvr._Sort(arg1) -- Line 328
	table.sort(arg1.keys, function(arg1_2, arg2) -- Line 329
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.sortPredicate(arg1.values[arg1_2], arg1.values[arg2])
	end)
end
function module_2_upvr._InsertInPlace(arg1, ...) -- Line 342
	arg1:_InsertInPlaceUnsorted(...)
	arg1:_Sort()
end
return module_2_upvr