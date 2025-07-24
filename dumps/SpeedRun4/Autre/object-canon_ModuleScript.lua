-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:06
-- Luau version 6, Types version 3
-- Time taken: 0.005519 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local WeakMap_upvr = LuauPolyfill.WeakMap
local Object_upvr = require(Parent.luaUtils.Object)
local HttpService_upvr = game:GetService("HttpService")
local module = {}
local utilities = require(script.Parent.Parent.Parent.utilities)
local isNonNullObject_upvr = utilities.isNonNullObject
local resetCanonicalStringify_upvw
local var11_upvw
local var12_upvw
local function _(arg1) -- Line 47, Named "shallowCopy"
	return table.clone(arg1)
end
local function _(arg1) -- Line 53, Named "isArrayLike"
	if #arg1 == 0 and not next(arg1) then
		return true
	end
	if 1 < #arg1 then
		return true
	end
	return false
end
local tbl_4_upvr = {}
tbl_4_upvr.__index = tbl_4_upvr
local Set_upvr = LuauPolyfill.Set
local Trie_upvr = require(Parent.wry.trie).Trie
local canUseWeakMap_upvr = utilities.canUseWeakMap
local Map_upvr = LuauPolyfill.Map
function tbl_4_upvr.new() -- Line 147
	--[[ Upvalues[6]:
		[1]: tbl_4_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: Trie_upvr (readonly)
		[4]: canUseWeakMap_upvr (readonly)
		[5]: WeakMap_upvr (readonly)
		[6]: Map_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_4_upvr)
	setmetatable_result1.known = Set_upvr.new()
	setmetatable_result1.pool = Trie_upvr.new(canUseWeakMap_upvr)
	setmetatable_result1.passes = WeakMap_upvr.new()
	setmetatable_result1.keysByJSON = Map_upvr.new(nil)
	setmetatable_result1.empty = setmetatable_result1:admit({})
	return setmetatable_result1
end
function tbl_4_upvr.isKnown(arg1, arg2) -- Line 162
	--[[ Upvalues[1]:
		[1]: isNonNullObject_upvr (readonly)
	]]
	local isNonNullObject_upvr_result1 = isNonNullObject_upvr(arg2)
	if isNonNullObject_upvr_result1 then
		isNonNullObject_upvr_result1 = arg1.known:has(arg2)
	end
	return isNonNullObject_upvr_result1
end
function tbl_4_upvr.pass(arg1, arg2) -- Line 166
	--[[ Upvalues[1]:
		[1]: isNonNullObject_upvr (readonly)
	]]
	if isNonNullObject_upvr(arg2) then
		local clone = table.clone(arg2)
		arg1.passes:set(clone, arg2)
		return clone
	end
	return arg2
end
function tbl_4_upvr.admit(arg1, arg2) -- Line 177
	--[[ Upvalues[3]:
		[1]: isNonNullObject_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var30
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 11. Error Block 4 start (CF ANALYSIS FAILED)
	var30 = Object_upvr.getPrototypeOf(arg2)
	-- KONSTANTERROR: [12] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 24. Error Block 39 start (CF ANALYSIS FAILED)
	if 1 < #arg2 then
		var30 = true
	else
		var30 = false
	end
	if var30 then
		var30 = arg1.known:has(arg2)
		if var30 then
			return arg2
		end
		var30 = Array_upvr.map(arg2, arg1.admit, arg1)
		local any_lookupArray_result1_4 = arg1.pool:lookupArray(var30)
		if not any_lookupArray_result1_4.array then
			any_lookupArray_result1_4.array = var30
			arg1.known:add(any_lookupArray_result1_4.array)
			if _G.__DEV__ then
				Object_upvr.freeze(var30)
			end
		end
		return any_lookupArray_result1_4.array
	end
	var30 = arg1.known:has(arg2)
	if var30 then
		return arg2
	end
	var30 = Object_upvr.getPrototypeOf(arg2)
	local tbl_5_upvr = {var30}
	local any_sortedKeys_result1 = arg1:sortedKeys(arg2)
	table.insert(tbl_5_upvr, any_sortedKeys_result1.json)
	Array_upvr.forEach(any_sortedKeys_result1.sorted, function(arg1_4) -- Line 226
		--[[ Upvalues[3]:
			[1]: tbl_5_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		table.insert(tbl_5_upvr, arg1:admit(arg2[arg1_4]))
	end)
	local any_lookupArray_result1_6 = arg1.pool:lookupArray(tbl_5_upvr)
	if not any_lookupArray_result1_6.object then
		any_lookupArray_result1_6.object = Object_upvr.create(var30)
		local object_upvr_2 = any_lookupArray_result1_6.object
		arg1.known:add(object_upvr_2)
		local len_upvr_2 = #tbl_5_upvr
		Array_upvr.forEach(any_sortedKeys_result1.sorted, function(arg1_5, arg2_3) -- Line 244
			--[[ Upvalues[3]:
				[1]: object_upvr_2 (readonly)
				[2]: tbl_5_upvr (readonly)
				[3]: len_upvr_2 (readonly)
			]]
			object_upvr_2[arg1_5] = tbl_5_upvr[len_upvr_2 + arg2_3]
		end)
		if _G.__DEV__ then
			Object_upvr.freeze(object_upvr_2)
		end
	end
	object_upvr_2 = any_lookupArray_result1_6.object
	do
		return object_upvr_2
	end
	-- KONSTANTERROR: [29] 24. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [172] 126. Error Block 25 start (CF ANALYSIS FAILED)
	do
		return arg2
	end
	-- KONSTANTERROR: [172] 126. Error Block 25 end (CF ANALYSIS FAILED)
end
function tbl_4_upvr.sortedKeys(arg1, arg2) -- Line 267
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local any_keys_result1 = Object_upvr.keys(arg2)
	local any_lookupArray_result1 = arg1.pool:lookupArray(any_keys_result1)
	if not any_lookupArray_result1.keys then
		Array_upvr.sort(any_keys_result1)
		local any_JSONEncode_result1 = HttpService_upvr:JSONEncode(any_keys_result1)
		any_lookupArray_result1.keys = arg1.keysByJSON:get(any_JSONEncode_result1)
		if not any_lookupArray_result1.keys then
			any_lookupArray_result1.keys = {
				sorted = any_keys_result1;
				json = any_JSONEncode_result1;
			}
			arg1.keysByJSON:set(any_JSONEncode_result1, any_lookupArray_result1.keys)
		end
	end
	return any_lookupArray_result1.keys
end
module.ObjectCanon = tbl_4_upvr
local tbl = {}
local sortedEncode_upvr = require(Parent.luaUtils.sortedEncode).sortedEncode
function tbl.__call(arg1, arg2) -- Line 301
	--[[ Upvalues[6]:
		[1]: isNonNullObject_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: resetCanonicalStringify_upvw (read and write)
		[4]: var12_upvw (read and write)
		[5]: sortedEncode_upvr (readonly)
		[6]: HttpService_upvr (readonly)
	]]
	if isNonNullObject_upvr(arg2) then
		if var11_upvw == nil then
			resetCanonicalStringify_upvw()
		end
		local any_admit_result1 = var11_upvw:admit(arg2)
		local any_get_result1 = var12_upvw:get(any_admit_result1)
		if any_get_result1 == nil then
			any_get_result1 = sortedEncode_upvr(any_admit_result1)
			var12_upvw:set(any_admit_result1, any_get_result1)
		end
		return any_get_result1
	end
	return HttpService_upvr:JSONEncode(arg2)
end
module.canonicalStringify = Object_upvr.assign(setmetatable({}, tbl), {
	reset = function(arg1) -- Line 323, Named "reset"
		--[[ Upvalues[1]:
			[1]: resetCanonicalStringify_upvw (read and write)
		]]
		return resetCanonicalStringify_upvw()
	end;
})
function resetCanonicalStringify_upvw() -- Line 330, Named "resetCanonicalStringify"
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: tbl_4_upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: WeakMap_upvr (readonly)
	]]
	var11_upvw = tbl_4_upvr.new()
	var12_upvw = WeakMap_upvr.new()
end
return module