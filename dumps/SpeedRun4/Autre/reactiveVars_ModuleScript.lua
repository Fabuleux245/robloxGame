-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:08
-- Luau version 6, Types version 3
-- Time taken: 0.003713 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Set_upvr = LuauPolyfill.Set
local any_new_result1_upvr_4 = require(Parent.wry.context).Slot.new()
module.cacheSlot = any_new_result1_upvr_4
local any_new_result1_upvr = LuauPolyfill.WeakMap.new()
local dep_upvr = require(Parent.optimism).dep
local function getCacheInfo_upvr(arg1) -- Line 57, Named "getCacheInfo"
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: dep_upvr (readonly)
	]]
	local any_get_result1 = any_new_result1_upvr:get(arg1)
	if not any_get_result1 then
		any_get_result1 = {
			vars = Set_upvr.new();
			dep = dep_upvr();
		}
		any_new_result1_upvr:set(arg1, any_get_result1)
	end
	return any_get_result1
end
function module.forgetCache(arg1) -- Line 73
	--[[ Upvalues[1]:
		[1]: getCacheInfo_upvr (readonly)
	]]
	getCacheInfo_upvr(arg1).vars:forEach(function(arg1_2) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_2:forgetCache(arg1)
	end)
end
function module.recallCache(arg1) -- Line 88
	--[[ Upvalues[1]:
		[1]: getCacheInfo_upvr (readonly)
	]]
	getCacheInfo_upvr(arg1).vars:forEach(function(arg1_3) -- Line 89
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_3:attachCache(arg1)
	end)
end
local broadcast_upvw
local Array_upvr = LuauPolyfill.Array
function module.makeVar(arg1) -- Line 95
	--[[ Upvalues[5]:
		[1]: Set_upvr (readonly)
		[2]: getCacheInfo_upvr (readonly)
		[3]: broadcast_upvw (read and write)
		[4]: Array_upvr (readonly)
		[5]: any_new_result1_upvr_4 (readonly)
	]]
	local any_new_result1_upvr_2 = Set_upvr.new()
	local any_new_result1_upvr_3 = Set_upvr.new()
	local tbl = {}
	local var17_upvw
	local var27_upvw
	function tbl.__call(arg1_4, ...) -- Line 104
		--[[ Upvalues[9]:
			[1]: arg1 (read and write)
			[2]: any_new_result1_upvr_2 (readonly)
			[3]: getCacheInfo_upvr (copied, readonly)
			[4]: var17_upvw (read and write)
			[5]: broadcast_upvw (copied, read and write)
			[6]: Array_upvr (copied, readonly)
			[7]: any_new_result1_upvr_3 (readonly)
			[8]: any_new_result1_upvr_4 (copied, readonly)
			[9]: var27_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
		if 1 <= select('#', ...) then
			local _1 = ({...})[1]
			if arg1 ~= _1 then
				arg1 = _1
				any_new_result1_upvr_2:forEach(function(arg1_5) -- Line 110
					--[[ Upvalues[3]:
						[1]: getCacheInfo_upvr (copied, readonly)
						[2]: var17_upvw (copied, read and write)
						[3]: broadcast_upvw (copied, read and write)
					]]
					getCacheInfo_upvr(arg1_5).dep:dirty(var17_upvw)
					broadcast_upvw(arg1_5)
				end)
				any_new_result1_upvr_3:clear()
				Array_upvr.forEach(Array_upvr.from(any_new_result1_upvr_3), function(arg1_6) -- Line 122
					--[[ Upvalues[1]:
						[1]: arg1 (copied, read and write)
					]]
					arg1_6(arg1)
				end)
				-- KONSTANTWARNING: GOTO [60] #50
			end
		else
			local any_getValue_result1 = any_new_result1_upvr_4:getValue()
			if any_getValue_result1 then
				var27_upvw(any_getValue_result1)
				getCacheInfo_upvr(any_getValue_result1).dep(var17_upvw)
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [60] 50. Error Block 7 start (CF ANALYSIS FAILED)
		do
			return arg1
		end
		-- KONSTANTERROR: [60] 50. Error Block 7 end (CF ANALYSIS FAILED)
	end
	var17_upvw = setmetatable({}, tbl)
	local var24_upvw = var17_upvw
	function var24_upvw.onNextChange(arg1_7, arg2) -- Line 142
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_3 (readonly)
		]]
		any_new_result1_upvr_3:add(arg2)
		return function() -- Line 144
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr_3 (copied, readonly)
				[2]: arg2 (readonly)
			]]
			any_new_result1_upvr_3:delete(arg2)
		end
	end
	function var27_upvw(arg1_8) -- Line 150
		--[[ Upvalues[3]:
			[1]: any_new_result1_upvr_2 (readonly)
			[2]: getCacheInfo_upvr (copied, readonly)
			[3]: var24_upvw (read and write)
		]]
		any_new_result1_upvr_2:add(arg1_8)
		getCacheInfo_upvr(arg1_8).vars:add(var24_upvw)
		return var24_upvw
	end
	function var24_upvw.attachCache(arg1_9, arg2) -- Line 155
		--[[ Upvalues[1]:
			[1]: var27_upvw (read and write)
		]]
		return var27_upvw(arg2)
	end
	function var24_upvw.forgetCache(arg1_10, arg2) -- Line 160
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr_2 (readonly)
		]]
		return any_new_result1_upvr_2:delete(arg2)
	end
	return var24_upvw
end
function broadcast_upvw(arg1) -- Line 174, Named "broadcast"
	if arg1.broadcastWatches ~= nil then
		arg1:broadcastWatches()
	end
end
return module