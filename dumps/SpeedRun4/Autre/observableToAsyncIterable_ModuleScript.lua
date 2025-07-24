-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:37
-- Luau version 6, Types version 3
-- Time taken: 0.002725 seconds

local module = {}
local Boolean_upvr = require(nil.LuauPolyfill).Boolean
function module.observableToAsyncIterable(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local tbl_4_upvr = {}
	local tbl_2_upvr = {}
	local var5_upvw = true
	local function pushValue_upvr(arg1_2) -- Line 19, Named "pushValue"
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		if tbl_4_upvr.length ~= 0 then
			local tbl_5 = {}
			tbl_5.value = arg1_2
			tbl_5.done = false
			table.remove(tbl_4_upvr, 1)(tbl_5)
		else
			local tbl_10 = {}
			tbl_10.value = arg1_2
			tbl_10.done = false
			table.insert(tbl_2_upvr, tbl_10)
		end
	end
	local function pushError_upvr(arg1_3) -- Line 30, Named "pushError"
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		if tbl_4_upvr.length ~= 0 then
			local tbl_11 = {}
			local tbl_6 = {}
			local tbl_3 = {}
			tbl_3[1] = arg1_3
			tbl_6.errors = tbl_3
			tbl_11.value = tbl_6
			tbl_11.done = false
			table.remove(tbl_4_upvr, 1)(tbl_11)
		else
			local tbl = {}
			local tbl_8 = {}
			local tbl_9 = {}
			tbl_9[1] = arg1_3
			tbl_8.errors = tbl_9
			tbl.value = tbl_8
			tbl.done = false
			table.insert(tbl_2_upvr, tbl)
		end
	end
	local function pushDone_upvr() -- Line 41, Named "pushDone"
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		if tbl_4_upvr.length ~= 0 then
			table.remove(tbl_4_upvr, 1)({
				done = true;
			})
		else
			table.insert(tbl_2_upvr, {
				done = true;
			})
		end
	end
	local function _() -- Line 49, Named "pullValue"
		--[[ Upvalues[2]:
			[1]: tbl_2_upvr (readonly)
			[2]: tbl_4_upvr (readonly)
		]]
		return Promise.new(function(arg1_4) -- Line 50
			--[[ Upvalues[2]:
				[1]: tbl_2_upvr (copied, readonly)
				[2]: tbl_4_upvr (copied, readonly)
			]]
			if tbl_2_upvr.length ~= 0 then
				arg1_4(table.remove(tbl_2_upvr, 1))
			else
				table.insert(tbl_4_upvr, arg1_4)
			end
		end)
	end
	local tbl_7 = {}
	local function next(arg1_5, arg2) -- Line 60
		--[[ Upvalues[1]:
			[1]: pushValue_upvr (readonly)
		]]
		pushValue_upvr(arg2)
	end
	tbl_7.next = next
	function tbl_7.error(arg1_6, arg2) -- Line 63
		--[[ Upvalues[1]:
			[1]: pushError_upvr (readonly)
		]]
		pushError_upvr(arg2)
	end
	function tbl_7.complete(arg1_7) -- Line 66
		--[[ Upvalues[1]:
			[1]: pushDone_upvr (readonly)
		]]
		pushDone_upvr()
	end
	local any_subscribe_result1_upvr = arg1:subscribe(tbl_7)
	local function emptyQueue_upvr() -- Line 70, Named "emptyQueue"
		--[[ Upvalues[5]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: var5_upvw (read and write)
			[3]: any_subscribe_result1_upvr (readonly)
			[4]: tbl_4_upvr (readonly)
			[5]: tbl_2_upvr (readonly)
		]]
		if Boolean_upvr.toJSBoolean(var5_upvw) then
			var5_upvw = false
			any_subscribe_result1_upvr:unsubscribe()
			for _, v in tbl_4_upvr do
				v({
					value = nil;
					done = true;
				})
			end
			tbl_4_upvr.length = 0
			tbl_2_upvr.length = 0
		end
	end
	return {
		next = function(arg1_8) -- Line 82, Named "next"
			--[[ Upvalues[4]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: var5_upvw (read and write)
				[3]: tbl_2_upvr (readonly)
				[4]: tbl_4_upvr (readonly)
			]]
			if Boolean_upvr.toJSBoolean(var5_upvw) then
				return Promise.new(function(arg1_9) -- Line 50
					--[[ Upvalues[2]:
						[1]: tbl_2_upvr (copied, readonly)
						[2]: tbl_4_upvr (copied, readonly)
					]]
					if tbl_2_upvr.length ~= 0 then
						arg1_9(table.remove(tbl_2_upvr, 1))
					else
						table.insert(tbl_4_upvr, arg1_9)
					end
				end)
			end
			return arg1_8["return"]()
		end;
		["return"] = function(arg1_10) -- Line 86
			--[[ Upvalues[1]:
				[1]: emptyQueue_upvr (readonly)
			]]
			emptyQueue_upvr()
			return Promise.resolve({
				value = nil;
				done = true;
			})
		end;
		throw = function(arg1_11, arg2) -- Line 90, Named "throw"
			--[[ Upvalues[1]:
				[1]: emptyQueue_upvr (readonly)
			]]
			emptyQueue_upvr()
			return Promise.reject(arg2)
		end;
		[tostring(Symbol.asyncIterator)] = function(arg1_12) -- Line 94
			return arg1_12
		end;
	}
end
return module