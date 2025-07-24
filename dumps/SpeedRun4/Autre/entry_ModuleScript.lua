-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:47
-- Luau version 6, Types version 3
-- Time taken: 0.011489 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Set_upvr = LuauPolyfill.Set
local Error_upvr = LuauPolyfill.Error
local module = {}
local newproxy_result1_upvr = newproxy(true)
getmetatable(newproxy_result1_upvr).__tostring = function() -- Line 34
	return "Value.None"
end
local rememberParent_upvw
local mightBeDirty_upvw
local eachParent_upvw
local reportDirtyChild_upvw
local reportCleanChild_upvw
local forgetChildren_upvw
local forgetChild_upvw
local parentEntrySlot_upvr = require(script.Parent.context).parentEntrySlot
local helpers = require(script.Parent.helpers)
local maybeUnsubscribe_upvr = helpers.maybeUnsubscribe
local toArray_upvr = helpers.toArray
local tbl_upvr = {}
local function _(arg1, arg2) -- Line 73, Named "assert"
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	if not arg1 then
		error(Error_upvr.new(arg2 or "assertion failure"))
	end
end
local function _(arg1, arg2) -- Line 87, Named "valueIs"
	local len_2 = #arg1
	local var23 = false
	if 0 < len_2 then
		var23 = false
		if len_2 == #arg2 then
			if arg1[len_2] ~= arg2[len_2] then
				var23 = false
			else
				var23 = true
			end
		end
	end
	return var23
end
local function valueGet_upvr(arg1) -- Line 98, Named "valueGet"
	--[[ Upvalues[2]:
		[1]: newproxy_result1_upvr (readonly)
		[2]: Error_upvr (readonly)
	]]
	if arg1[2] ~= nil then
		error(arg1[2])
	else
		if arg1[1] ~= nil then
			if arg1[1] == newproxy_result1_upvr then
				return nil
			end
			return arg1[1]
		end
		error(Error_upvr.new("unknown value"))
	end
end
local function _(arg1) -- Line 123, Named "valueCopy"
	return table.clone(arg1)
end
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
tbl_2_upvr.count = 0
local Map_upvr = LuauPolyfill.Map
function tbl_2_upvr.new(arg1) -- Line 138
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: Map_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_2_upvr)
	setmetatable_result1.parents = Set_upvr.new()
	setmetatable_result1.childValues = Map_upvr.new(nil)
	setmetatable_result1.dirtyChildren = nil
	setmetatable_result1.dirty = true
	setmetatable_result1.recomputing = false
	setmetatable_result1.value = {}
	setmetatable_result1.deps = nil
	setmetatable_result1.fn = arg1
	local var27 = tbl_2_upvr
	var27.count += 1
	return setmetatable_result1
end
function tbl_2_upvr.peek(arg1) -- Line 159
	--[[ Upvalues[2]:
		[1]: mightBeDirty_upvw (read and write)
		[2]: rememberParent_upvw (read and write)
	]]
	if #arg1.value == 1 and not mightBeDirty_upvw(arg1) then
		rememberParent_upvw(arg1)
		return arg1.value[1]
	end
	return nil
end
local reallyRecompute_upvw
function tbl_2_upvr.recompute(arg1, arg2) -- Line 173
	--[[ Upvalues[5]:
		[1]: Error_upvr (readonly)
		[2]: rememberParent_upvw (read and write)
		[3]: mightBeDirty_upvw (read and write)
		[4]: reallyRecompute_upvw (read and write)
		[5]: valueGet_upvr (readonly)
	]]
	if not not arg1.recomputing then
		error(Error_upvr.new("already recomputing"))
	end
	rememberParent_upvw(arg1)
	if mightBeDirty_upvw(arg1) then
		return reallyRecompute_upvw(arg1, arg2)
	end
	return valueGet_upvr(arg1.value)
end
local reportDirty_upvw
function tbl_2_upvr.setDirty(arg1) -- Line 183
	--[[ Upvalues[2]:
		[1]: reportDirty_upvw (read and write)
		[2]: maybeUnsubscribe_upvr (readonly)
	]]
	if arg1.dirty then
	else
		arg1.dirty = true
		arg1.value = {}
		reportDirty_upvw(arg1)
		maybeUnsubscribe_upvr(arg1)
	end
end
function tbl_2_upvr.dispose(arg1) -- Line 198
	--[[ Upvalues[3]:
		[1]: forgetChildren_upvw (read and write)
		[2]: eachParent_upvw (read and write)
		[3]: forgetChild_upvw (read and write)
	]]
	arg1:setDirty()
	forgetChildren_upvw(arg1)
	eachParent_upvw(arg1, function(arg1_2, arg2) -- Line 216
		--[[ Upvalues[2]:
			[1]: forgetChild_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		arg1_2:setDirty()
		forgetChild_upvw(arg1_2, arg1)
		return nil
	end)
end
function tbl_2_upvr.forget(arg1) -- Line 223
	arg1:dispose()
end
function tbl_2_upvr.dependOn(arg1, arg2) -- Line 230
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Set_upvr (readonly)
	]]
	arg2:add(arg1)
	if not arg1.deps then
		local popped = table.remove(tbl_upvr)
		if not popped then
			popped = Set_upvr.new()
		end
		arg1.deps = popped
	end
	arg1.deps:add(arg2)
end
function tbl_2_upvr.forgetDeps(arg1) -- Line 240
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: toArray_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if arg1.deps then
		Array_upvr.forEach(toArray_upvr(arg1.deps), function(arg1_3) -- Line 244
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1_3:delete(arg1)
		end)
		arg1.deps:clear()
		table.insert(tbl_upvr, arg1.deps)
		arg1.deps = nil
	end
end
module.Entry = tbl_2_upvr
function rememberParent_upvw(arg1) -- Line 255, Named "rememberParent"
	--[[ Upvalues[4]:
		[1]: parentEntrySlot_upvr (readonly)
		[2]: mightBeDirty_upvw (read and write)
		[3]: reportDirtyChild_upvw (read and write)
		[4]: reportCleanChild_upvw (read and write)
	]]
	local any_getValue_result1 = parentEntrySlot_upvr:getValue()
	if any_getValue_result1 then
		arg1.parents:add(any_getValue_result1)
		if not any_getValue_result1.childValues:has(arg1) then
			any_getValue_result1.childValues:set(arg1, {})
		end
		if mightBeDirty_upvw(arg1) then
			reportDirtyChild_upvw(any_getValue_result1, arg1)
			return any_getValue_result1
		end
		reportCleanChild_upvw(any_getValue_result1, arg1)
		return any_getValue_result1
	end
	return nil
end
local recomputeNewValue_upvw
local maybeSubscribe_upvw
local setClean_upvw
function reallyRecompute_upvw(arg1, arg2) -- Line 281, Named "reallyRecompute"
	--[[ Upvalues[6]:
		[1]: forgetChildren_upvw (read and write)
		[2]: parentEntrySlot_upvr (readonly)
		[3]: recomputeNewValue_upvw (read and write)
		[4]: maybeSubscribe_upvw (read and write)
		[5]: setClean_upvw (read and write)
		[6]: valueGet_upvr (readonly)
	]]
	forgetChildren_upvw(arg1)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	parentEntrySlot_upvr:withValue(arg1, recomputeNewValue_upvw, tbl)
	if maybeSubscribe_upvw(arg1, arg2) then
		setClean_upvw(arg1)
	end
	return valueGet_upvr(arg1.value)
end
function recomputeNewValue_upvw(arg1, arg2, arg3) -- Line 298, Named "recomputeNewValue"
	--[[ Upvalues[1]:
		[1]: newproxy_result1_upvr (readonly)
	]]
	arg2.recomputing = true
	table.clear(arg2.value)
	local pcall_result1_2, pcall_result2_2 = pcall(arg2.fn, table.unpack(arg3))
	if pcall_result1_2 then
		arg2.value[1] = pcall_result2_2
		if arg2.value[1] == nil then
			arg2.value[1] = newproxy_result1_upvr
		end
	end
	if not pcall_result1_2 then
		arg2.value[2] = pcall_result2_2
	end
	arg2.recomputing = false
end
function mightBeDirty_upvw(arg1) -- Line 321, Named "mightBeDirty"
	local dirty = arg1.dirty
	if not dirty then
		dirty = false
		if arg1.dirtyChildren ~= nil then
			if 0 >= arg1.dirtyChildren.size then
				dirty = false
			else
				dirty = true
			end
		end
	end
	return dirty
end
local var42_upvw = mightBeDirty_upvw
local reportClean_upvw
function setClean_upvw(arg1) -- Line 327, Named "setClean"
	--[[ Upvalues[2]:
		[1]: var42_upvw (read and write)
		[2]: reportClean_upvw (read and write)
	]]
	arg1.dirty = false
	if var42_upvw(arg1) then
	else
		reportClean_upvw(arg1)
	end
end
function reportDirty_upvw(arg1) -- Line 339, Named "reportDirty"
	--[[ Upvalues[2]:
		[1]: eachParent_upvw (read and write)
		[2]: reportDirtyChild_upvw (read and write)
	]]
	eachParent_upvw(arg1, reportDirtyChild_upvw)
end
function reportClean_upvw(arg1) -- Line 343, Named "reportClean"
	--[[ Upvalues[2]:
		[1]: eachParent_upvw (read and write)
		[2]: reportCleanChild_upvw (read and write)
	]]
	eachParent_upvw(arg1, reportCleanChild_upvw)
end
function eachParent_upvw(arg1, arg2) -- Line 347, Named "eachParent"
	--[[ Upvalues[1]:
		[1]: toArray_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local size = arg1.parents.size
	if size then
		for i = 1, size do
			arg2(toArray_upvr(arg1.parents)[i], arg1)
			local _
		end
	end
end
function reportDirtyChild_upvw(arg1, arg2) -- Line 360, Named "reportDirtyChild"
	--[[ Upvalues[5]:
		[1]: Error_upvr (readonly)
		[2]: var42_upvw (read and write)
		[3]: tbl_upvr (readonly)
		[4]: Set_upvr (readonly)
		[5]: reportDirty_upvw (read and write)
	]]
	if _G.__DEV__ then
		local any_has_result1_3, any_has_result2_2 = arg1.childValues:has(arg2)
		if not any_has_result1_3 then
			error(Error_upvr.new(any_has_result2_2 or "assertion failure"))
		end
		local var42_result1, var42_result2 = var42_upvw(arg2)
		if not var42_result1 then
			error(Error_upvr.new(var42_result2 or "assertion failure"))
		end
	end
	if not arg1.dirtyChildren then
		local popped_2 = table.remove(tbl_upvr)
		if not popped_2 then
			popped_2 = Set_upvr.new()
		end
		arg1.dirtyChildren = popped_2
	elseif arg1.dirtyChildren:has(arg2) then
		return
	end
	arg1.dirtyChildren:add(arg2)
	if not var42_upvw(arg1) then
		reportDirty_upvw(arg1)
	end
end
local removeDirtyChild_upvw
function reportCleanChild_upvw(arg1, arg2) -- Line 394, Named "reportCleanChild"
	--[[ Upvalues[4]:
		[1]: Error_upvr (readonly)
		[2]: var42_upvw (read and write)
		[3]: removeDirtyChild_upvw (read and write)
		[4]: reportClean_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local var64
	if _G.__DEV__ then
		local any_has_result1_2, any_has_result2_3 = arg1.childValues:has(arg2)
		if not any_has_result1_2 then
			error(Error_upvr.new(any_has_result2_3 or "assertion failure"))
		end
		any_has_result2_3 = var42_upvw(arg2)
		if not not any_has_result2_3 then
			any_has_result2_3 = error
			any_has_result2_3(Error_upvr.new("assertion failure"))
		end
	end
	local any_get_result1_2 = arg1.childValues:get(arg2)
	any_has_result2_3 = #any_get_result1_2
	if any_has_result2_3 == 0 then
		any_has_result2_3 = arg1.childValues:set
		any_has_result2_3(arg2, table.clone(arg2.value))
		-- KONSTANTWARNING: GOTO [77] #58
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 42. Error Block 30 start (CF ANALYSIS FAILED)
	local value = arg2.value
	local len_3 = #any_get_result1_2
	any_has_result2_3 = false
	if 0 < len_3 then
		any_has_result2_3 = false
		if len_3 == #value then
			if any_get_result1_2[len_3] ~= value[len_3] then
				any_has_result2_3 = false
			else
				any_has_result2_3 = true
			end
		end
	end
	if not any_has_result2_3 then
		any_has_result2_3 = arg1:setDirty
		any_has_result2_3()
	end
	any_has_result2_3 = removeDirtyChild_upvw
	any_has_result2_3(arg1, arg2)
	any_has_result2_3 = var42_upvw(arg1)
	if any_has_result2_3 then
	else
		any_has_result2_3 = reportClean_upvw
		any_has_result2_3(arg1)
		-- KONSTANTERROR: [56] 42. Error Block 30 end (CF ANALYSIS FAILED)
	end
end
function removeDirtyChild_upvw(arg1, arg2) -- Line 421, Named "removeDirtyChild"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local dirtyChildren = arg1.dirtyChildren
	if dirtyChildren ~= nil then
		dirtyChildren:delete(arg2)
		if dirtyChildren.size == 0 then
			if #tbl_upvr < 100 then
				table.insert(tbl_upvr, dirtyChildren)
			end
			arg1.dirtyChildren = nil
		end
	end
end
function forgetChildren_upvw(arg1) -- Line 436, Named "forgetChildren"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: forgetChild_upvw (read and write)
		[3]: Error_upvr (readonly)
	]]
	local var71
	if 0 < var71 then
		var71 = table.clone(arg1.childValues:keys())
		Array_upvr.forEach(var71, function(arg1_4) -- Line 444
			--[[ Upvalues[2]:
				[1]: forgetChild_upvw (copied, read and write)
				[2]: arg1 (readonly)
			]]
			forgetChild_upvw(arg1, arg1_4)
		end)
	end
	var71 = arg1:forgetDeps
	var71()
	if arg1.dirtyChildren ~= nil then
		var71 = false
	else
		var71 = true
	end
	if not var71 then
		error(Error_upvr.new("assertion failure"))
	end
end
function forgetChild_upvw(arg1, arg2) -- Line 458, Named "forgetChild"
	--[[ Upvalues[1]:
		[1]: removeDirtyChild_upvw (read and write)
	]]
	arg2.parents:delete(arg1)
	arg1.childValues:delete(arg2)
	removeDirtyChild_upvw(arg1, arg2)
end
function maybeSubscribe_upvw(arg1, arg2) -- Line 464, Named "maybeSubscribe"
	--[[ Upvalues[1]:
		[1]: maybeUnsubscribe_upvr (readonly)
	]]
	if typeof(arg1.subscribe) == "function" then
		if not pcall(function() -- Line 466
			--[[ Upvalues[3]:
				[1]: maybeUnsubscribe_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			maybeUnsubscribe_upvr(arg1)
			arg1.unsubscribe = arg1.subscribe(table.unpack(arg2))
			return nil, false
		end) then
			arg1:setDirty()
			return false
		end
	end
	return true
end
return module