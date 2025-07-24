-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:44
-- Luau version 6, Types version 3
-- Time taken: 0.006039 seconds

local Parent = script.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local module = {}
local Trie_upvr = require(Parent.wry.trie).Trie
local context = require(script.context)
module.bindContext = context.bindContext
module.noContext = context.noContext
module.setTimeout = context.setTimeout
module.dep = require(script.dep).dep
local function _() -- Line 61, Named "makeDefaultMakeCacheKeyFunction"
	--[[ Upvalues[1]:
		[1]: Trie_upvr (readonly)
	]]
	local any_new_result1_4_upvr = Trie_upvr.new(true)
	return function(arg1, ...) -- Line 64
		--[[ Upvalues[1]:
			[1]: any_new_result1_4_upvr (readonly)
		]]
		return any_new_result1_4_upvr:lookupArray({...})
	end
end
local any_new_result1_upvr = Trie_upvr.new(true)
function module.defaultMakeCacheKey(arg1, ...) -- Line 64
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return any_new_result1_upvr:lookupArray({...})
end
module.KeyTrie = Trie_upvr
any_new_result1_upvr = require(script.initTypes)
local Cache_upvr = require(script.cache).Cache
local Boolean_upvr = LuauPolyfill.Boolean
local Entry_upvr = require(script.entry).Entry
local Array_upvr = LuauPolyfill.Array
local any_new_result1_2_upvr = LuauPolyfill.Set.new()
local parentEntrySlot_upvr = require(script.context).parentEntrySlot
local Object_upvr = LuauPolyfill.Object
function module.wrap(arg1, arg2, arg3) -- Line 104
	--[[ Upvalues[8]:
		[1]: Cache_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Trie_upvr (readonly)
		[4]: Entry_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: any_new_result1_2_upvr (readonly)
		[7]: parentEntrySlot_upvr (readonly)
		[8]: Object_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19_upvw = arg2
	if var19_upvw == nil then
		var19_upvw = {}
	end
	if not Boolean_upvr.toJSBoolean(var19_upvw.max) or not var19_upvw.max then
	end
	local any_new_result1_upvr_2 = Cache_upvr.new(65536, function(arg1_2) -- Line 115
		return arg1_2:dispose()
	end)
	local keyArgs_upvr = var19_upvw.keyArgs
	if not Boolean_upvr.toJSBoolean(var19_upvw.makeCacheKey) or not var19_upvw.makeCacheKey then
		local any_new_result1_3_upvr = Trie_upvr.new(true)
		local function var23_upvr(arg1_3, ...) -- Line 64
			--[[ Upvalues[1]:
				[1]: any_new_result1_3_upvr (readonly)
			]]
			return any_new_result1_3_upvr:lookupArray({...})
		end
	end
	if arg3 ~= nil then
		any_new_result1_3_upvr = arg1
		local function var26_upvw(...) -- Line 126
			--[[ Upvalues[2]:
				[1]: any_new_result1_3_upvr (readonly)
				[2]: arg3 (readonly)
			]]
			return any_new_result1_3_upvr(arg3, ...)
		end
	end
	any_new_result1_3_upvr = setmetatable({}, {
		__call = function(arg1_4, arg2_2, ...) -- Line 134, Named "__call"
			--[[ Upvalues[10]:
				[1]: arg3 (readonly)
				[2]: var23_upvr (readonly)
				[3]: keyArgs_upvr (readonly)
				[4]: var26_upvw (read and write)
				[5]: any_new_result1_upvr_2 (readonly)
				[6]: Entry_upvr (copied, readonly)
				[7]: var19_upvw (read and write)
				[8]: Array_upvr (copied, readonly)
				[9]: any_new_result1_2_upvr (copied, readonly)
				[10]: parentEntrySlot_upvr (copied, readonly)
			]]
			local var28_upvw
			if arg3 ~= nil then
				var28_upvw = {...}
			else
				local tbl = {}
				tbl[1] = arg2_2
				tbl[2] = ...
				var28_upvw = tbl
			end
			local var23_upvr_result1_upvr = var23_upvr(nil, table.unpack((function() -- Line 147
				--[[ Upvalues[2]:
					[1]: keyArgs_upvr (copied, readonly)
					[2]: var28_upvw (read and write)
				]]
				if keyArgs_upvr then
					return keyArgs_upvr(nil, table.unpack(var28_upvw))
				end
				return var28_upvw
			end)()))
			if var23_upvr_result1_upvr == nil then
				return var26_upvw(table.unpack(var28_upvw))
			end
			if any_new_result1_upvr_2:get(var23_upvr_result1_upvr) == nil then
				local any_new_result1 = Entry_upvr.new(var26_upvw)
				any_new_result1_upvr_2:set(var23_upvr_result1_upvr, any_new_result1)
				any_new_result1.subscribe = var19_upvw.subscribe
				function any_new_result1.forget() -- Line 167
					--[[ Upvalues[2]:
						[1]: any_new_result1_upvr_2 (copied, readonly)
						[2]: var23_upvr_result1_upvr (readonly)
					]]
					return any_new_result1_upvr_2:delete(var23_upvr_result1_upvr)
				end
			end
			any_new_result1_upvr_2:set(var23_upvr_result1_upvr, any_new_result1)
			any_new_result1_2_upvr:add(any_new_result1_upvr_2)
			if not parentEntrySlot_upvr:hasValue() then
				any_new_result1_2_upvr:forEach(function(arg1_5) -- Line 184
					return arg1_5:clean()
				end)
				any_new_result1_2_upvr:clear()
			end
			return any_new_result1:recompute(Array_upvr.slice(var28_upvw))
		end;
		__index = function(arg1_6, arg2_3) -- Line 193, Named "__index"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr_2 (readonly)
			]]
			if arg2_3 == "size" then
				return any_new_result1_upvr_2.map.size
			end
			return rawget(arg1_6, arg2_3)
		end;
		__newindex = function(arg1_7, arg2_4, arg3_2) -- Line 199, Named "__newindex"
			if arg2_4 == "size" then
				error("attempt to update a read-only table", 2)
			end
			rawset(arg1_7, arg2_4, arg3_2)
		end;
	})
	local var36 = any_new_result1_3_upvr
	local function _(arg1_8) -- Line 213, Named "asMethod"
		return function(arg1_9, ...) -- Line 214
			--[[ Upvalues[1]:
				[1]: arg1_8 (readonly)
			]]
			return arg1_8(...)
		end
	end
	local function dirtyKey_upvr(arg1_10) -- Line 219, Named "dirtyKey"
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr_2 (readonly)
			[2]: Boolean_upvr (copied, readonly)
		]]
		local any_get_result1_3 = any_new_result1_upvr_2:get(arg1_10)
		if Boolean_upvr.toJSBoolean(any_get_result1_3) then
			any_get_result1_3:setDirty()
		end
	end
	function var36.dirtyKey_upvr(arg1_11, ...) -- Line 214
		--[[ Upvalues[1]:
			[1]: dirtyKey_upvr (readonly)
		]]
		return dirtyKey_upvr(...)
	end
	local function forgetKey_upvr(...) -- Line 228
		--[[ Upvalues[3]:
			[1]: var23_upvr (readonly)
			[2]: any_new_result1_upvr_2 (readonly)
			[3]: Boolean_upvr (copied, readonly)
		]]
		local any_get_result1_2 = any_new_result1_upvr_2:get(var23_upvr(nil, ...))
		if Boolean_upvr.toJSBoolean(any_get_result1_2) then
			any_get_result1_2:setDirty()
		end
	end
	function var36.dirty(arg1_12, ...) -- Line 214
		--[[ Upvalues[1]:
			[1]: forgetKey_upvr (readonly)
		]]
		return forgetKey_upvr(...)
	end
	local function peekKey_upvr(arg1_13) -- Line 232, Named "peekKey"
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr_2 (readonly)
			[2]: Boolean_upvr (copied, readonly)
		]]
		local any_get_result1 = any_new_result1_upvr_2:get(arg1_13)
		if Boolean_upvr.toJSBoolean(any_get_result1) then
			return any_get_result1:peek()
		end
	end
	function forgetKey_upvr(arg1_14, ...) -- Line 214
		--[[ Upvalues[1]:
			[1]: peekKey_upvr (readonly)
		]]
		return peekKey_upvr(...)
	end
	var36.peekKey = forgetKey_upvr
	local function var52_upvr(...) -- Line 242
		--[[ Upvalues[2]:
			[1]: peekKey_upvr (readonly)
			[2]: var23_upvr (readonly)
		]]
		return peekKey_upvr(var23_upvr(nil, ...))
	end
	function forgetKey_upvr(arg1_15, ...) -- Line 214
		--[[ Upvalues[1]:
			[1]: var52_upvr (readonly)
		]]
		return var52_upvr(...)
	end
	var36.peek = forgetKey_upvr
	function forgetKey_upvr(arg1_16) -- Line 246, Named "forgetKey"
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		return any_new_result1_upvr_2:delete(arg1_16)
	end
	local var47_upvr = forgetKey_upvr
	function var52_upvr(arg1_17, ...) -- Line 214
		--[[ Upvalues[1]:
			[1]: var47_upvr (readonly)
		]]
		return var47_upvr(...)
	end
	var36.forgetKey = var52_upvr
	local function var51_upvr(...) -- Line 252
		--[[ Upvalues[2]:
			[1]: var47_upvr (readonly)
			[2]: var23_upvr (readonly)
		]]
		return var47_upvr(var23_upvr(nil, ...))
	end
	function var52_upvr(arg1_18, ...) -- Line 214
		--[[ Upvalues[1]:
			[1]: var51_upvr (readonly)
		]]
		return var51_upvr(...)
	end
	var36.forget = var52_upvr
	var36.makeCacheKey = var23_upvr
	var51_upvr = Boolean_upvr
	var52_upvr = var51_upvr.toJSBoolean
	var51_upvr = keyArgs_upvr
	var52_upvr = var52_upvr(var51_upvr)
	if var52_upvr then
		function var51_upvr(...) -- Line 260
			--[[ Upvalues[2]:
				[1]: var23_upvr (readonly)
				[2]: keyArgs_upvr (readonly)
			]]
			return var23_upvr(nil, table.unpack(keyArgs_upvr(...)))
		end
		function var52_upvr(arg1_19, ...) -- Line 214
			--[[ Upvalues[1]:
				[1]: var51_upvr (readonly)
			]]
			return var51_upvr(...)
		end
		var36.getKey = var52_upvr
	else
		var36.getKey = var23_upvr
	end
	var51_upvr = Object_upvr
	var52_upvr = var51_upvr.freeze
	var51_upvr = var36
	var52_upvr = var52_upvr(var51_upvr)
	return var52_upvr
end
return module