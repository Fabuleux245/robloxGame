-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:07
-- Luau version 6, Types version 3
-- Time taken: 0.004318 seconds

local LuauPolyfill = require(script.Parent.Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local module_2_upvr = {
	get = function(arg1, arg2) -- Line 31, Named "get"
		for _, v in arg1.routes do
			if v.key == arg2 then
				return v
			end
		end
		return nil
	end;
	indexOf = function(arg1, arg2) -- Line 42, Named "indexOf"
		for i_2, v_2 in arg1.routes do
			if v_2.key == arg2 then
				return i_2
			end
		end
		return nil
	end;
	has = function(arg1, arg2) -- Line 54, Named "has"
		for _, v_3 in arg1.routes do
			if v_3.key == arg2 then
				return true
			end
		end
		return false
	end;
}
local Array_upvr = LuauPolyfill.Array
function module_2_upvr.push(arg1, arg2) -- Line 65
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local var11
	if module_2_upvr.indexOf(arg1, arg2.key) ~= nil then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "should not push route with duplicated key %s":format(arg2.key))
	var11 = Array_upvr
	var11 = arg1.routes
	local tbl = {}
	tbl[1] = arg2
	local any_concat_result1 = var11.concat(var11, tbl)
	var11 = Object_upvr.assign
	var11 = var11(table.clone(arg1), {
		index = #any_concat_result1;
		routes = any_concat_result1;
	})
	return var11
end
function module_2_upvr.pop(arg1) -- Line 80
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	if arg1.index <= 1 then
		return arg1
	end
	local clone = table.clone(arg1.routes)
	table.remove(clone, #clone)
	return Object_upvr.assign(table.clone(arg1), {
		index = #clone;
		routes = clone;
	})
end
function module_2_upvr.jumpToIndex(arg1, arg2) -- Line 95
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local var17
	if arg2 == arg1.index then
		return arg1
	end
	if arg1.routes[arg2] == nil then
		var17 = false
	else
		var17 = true
	end
	assert(var17, "invalid index %d to jump to":format(arg2))
	var17 = Object_upvr
	var17 = table.clone(arg1)
	local module = {}
	module.index = arg2
	return var17.assign(var17, module)
end
function module_2_upvr.jumpTo(arg1, arg2) -- Line 108
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var19 = arg2
	local any_indexOf_result1_3 = module_2_upvr.indexOf(arg1, var19)
	if any_indexOf_result1_3 == nil then
		var19 = false
	else
		var19 = true
	end
	assert(var19, "attempt to jump to unknown key \"%s\"":format(arg2))
	return module_2_upvr.jumpToIndex(arg1, any_indexOf_result1_3)
end
function module_2_upvr.back(arg1) -- Line 116
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var21 = arg1.index - 1
	if not arg1.routes[var21] then
		return arg1
	end
	return module_2_upvr.jumpToIndex(arg1, var21)
end
function module_2_upvr.forward(arg1) -- Line 126
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var22 = arg1.index + 1
	if not arg1.routes[var22] then
		return arg1
	end
	return module_2_upvr.jumpToIndex(arg1, var22)
end
function module_2_upvr.replaceAndPrune(arg1, arg2, arg3) -- Line 137
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local any_indexOf_result1_2 = module_2_upvr.indexOf(arg1, arg2)
	local any_replaceAtIndex_result1_2 = module_2_upvr.replaceAtIndex(arg1, any_indexOf_result1_2, arg3)
	return Object_upvr.assign(table.clone(any_replaceAtIndex_result1_2), {
		routes = {unpack(any_replaceAtIndex_result1_2.routes, 1, any_indexOf_result1_2)};
	})
end
function module_2_upvr.replaceAt(arg1, arg2, arg3, arg4) -- Line 149
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var27 = arg1
	local any_indexOf_result1 = module_2_upvr.indexOf(var27, arg2)
	if arg4 then
		var27 = arg1.index
	else
		var27 = any_indexOf_result1
	end
	local any_replaceAtIndex_result1 = module_2_upvr.replaceAtIndex(arg1, any_indexOf_result1, arg3)
	any_replaceAtIndex_result1.index = var27
	return any_replaceAtIndex_result1
end
function module_2_upvr.replaceAtIndex(arg1, arg2, arg3) -- Line 159
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local var30
	if arg1.routes[arg2] == nil then
		var30 = false
	else
		var30 = true
	end
	assert(var30, "invalid index %d for replacing route %s":format(arg2, arg3.key))
	var30 = arg1.routes
	if var30[arg2] == arg3 and arg2 == arg1.index then
		return arg1
	end
	var30 = arg1.routes
	local clone_2 = table.clone(var30)
	clone_2[arg2] = arg3
	var30 = Object_upvr.assign
	local tbl_2 = {}
	tbl_2.index = arg2
	tbl_2.routes = clone_2
	var30 = var30(table.clone(arg1), tbl_2)
	return var30
end
function module_2_upvr.reset(arg1, arg2, arg3) -- Line 178
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var33
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 29 start (CF ANALYSIS FAILED)
	if 0 >= #arg2 then
		var33 = false
	else
		var33 = true
	end
	-- KONSTANTERROR: [8] 7. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 31 start (CF ANALYSIS FAILED)
	assert(var33, "invalid routes to replace")
	if not arg3 then
	else
	end
	var33 = #arg1.routes
	-- KONSTANTERROR: [14] 12. Error Block 31 end (CF ANALYSIS FAILED)
end
return module_2_upvr