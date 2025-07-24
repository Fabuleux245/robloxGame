-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:19
-- Luau version 6, Types version 3
-- Time taken: 0.005996 seconds

local Parent = script.Parent.Parent.Parent.Parent
local module = {}
local Observable_upvr = require(script.Parent.Observable).Observable
local Promise_upvr = require(Parent.Promise)
local Boolean_upvr = require(Parent.LuauPolyfill).Boolean
function module.asyncMap(arg1, arg2, arg3) -- Line 37
	--[[ Upvalues[3]:
		[1]: Observable_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	return Observable_upvr.new(function(arg1_2) -- Line 42
		--[[ Upvalues[5]:
			[1]: Promise_upvr (copied, readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg1 (readonly)
		]]
		local var7_upvw
		local next_upvr = arg1_2.next
		local error_upvr = arg1_2.error
		local var10_upvw = 0
		local var11_upvw = false
		local tbl_upvw = {
			andThen = function(arg1_3, arg2_2) -- Line 54, Named "andThen"
				--[[ Upvalues[1]:
					[1]: Promise_upvr (copied, readonly)
				]]
				return Promise_upvr.new(function(arg1_4) -- Line 55
					--[[ Upvalues[1]:
						[1]: arg2_2 (readonly)
					]]
					return arg1_4(arg2_2())
				end)
			end;
		}
		local function _(arg1_5, arg2_3) -- Line 62, Named "makeCallback"
			--[[ Upvalues[9]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: var10_upvw (read and write)
				[3]: tbl_upvw (read and write)
				[4]: Promise_upvr (copied, readonly)
				[5]: next_upvr (readonly)
				[6]: arg1_2 (readonly)
				[7]: var11_upvw (read and write)
				[8]: var7_upvw (read and write)
				[9]: error_upvr (readonly)
			]]
			if Boolean_upvr.toJSBoolean(arg1_5) then
				return function(arg1_6, arg2_4) -- Line 67
					--[[ Upvalues[10]:
						[1]: var10_upvw (copied, read and write)
						[2]: arg1_5 (readonly)
						[3]: tbl_upvw (copied, read and write)
						[4]: Promise_upvr (copied, readonly)
						[5]: Boolean_upvr (copied, readonly)
						[6]: next_upvr (copied, readonly)
						[7]: arg1_2 (copied, readonly)
						[8]: var11_upvw (copied, read and write)
						[9]: var7_upvw (copied, read and write)
						[10]: error_upvr (copied, readonly)
					]]
					var10_upvw += 1
					local function both() -- Line 69
						--[[ Upvalues[2]:
							[1]: arg1_5 (copied, readonly)
							[2]: arg2_4 (readonly)
						]]
						return arg1_5(arg2_4)
					end
					tbl_upvw = tbl_upvw:andThen(function() -- Line 75
						--[[ Upvalues[1]:
							[1]: Promise_upvr (copied, readonly)
						]]
						return Promise_upvr.delay(0)
					end):andThen(both, both):andThen(function(arg1_7) -- Line 80
						--[[ Upvalues[6]:
							[1]: var10_upvw (copied, read and write)
							[2]: Boolean_upvr (copied, readonly)
							[3]: next_upvr (copied, readonly)
							[4]: arg1_2 (copied, readonly)
							[5]: var11_upvw (copied, read and write)
							[6]: var7_upvw (copied, read and write)
						]]
						var10_upvw -= 1
						if Boolean_upvr.toJSBoolean(next_upvr) then
							next_upvr(arg1_2, arg1_7)
						end
						if Boolean_upvr.toJSBoolean(var11_upvw) then
							var7_upvw.complete()
						end
					end, function(arg1_8) -- Line 88
						--[[ Upvalues[1]:
							[1]: var10_upvw (copied, read and write)
						]]
						var10_upvw -= 1
						error(arg1_8)
					end):catch(function(arg1_9) -- Line 92
						--[[ Upvalues[3]:
							[1]: Boolean_upvr (copied, readonly)
							[2]: error_upvr (copied, readonly)
							[3]: arg1_2 (copied, readonly)
						]]
						if Boolean_upvr.toJSBoolean(error_upvr) then
							return error_upvr(arg1_2, arg1_9)
						end
					end)
				end
			end
			return function(arg1_10, arg2_5) -- Line 100
				--[[ Upvalues[3]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: arg2_3 (readonly)
					[3]: arg1_2 (copied, readonly)
				]]
				if Boolean_upvr.toJSBoolean(arg2_3) then
					arg2_3(arg1_2, arg2_5)
				end
			end
		end
		local tbl = {}
		local var21_upvr = arg2
		local var37
		if Boolean_upvr.toJSBoolean(var21_upvr) then
			function var37(arg1_11, arg2_6) -- Line 67
				--[[ Upvalues[10]:
					[1]: var10_upvw (read and write)
					[2]: var21_upvr (readonly)
					[3]: tbl_upvw (read and write)
					[4]: Promise_upvr (copied, readonly)
					[5]: Boolean_upvr (copied, readonly)
					[6]: next_upvr (readonly)
					[7]: arg1_2 (readonly)
					[8]: var11_upvw (read and write)
					[9]: var7_upvw (read and write)
					[10]: error_upvr (readonly)
				]]
				var10_upvw += 1
				local function both() -- Line 69
					--[[ Upvalues[2]:
						[1]: var21_upvr (copied, readonly)
						[2]: arg2_6 (readonly)
					]]
					return var21_upvr(arg2_6)
				end
				tbl_upvw = tbl_upvw:andThen(function() -- Line 75
					--[[ Upvalues[1]:
						[1]: Promise_upvr (copied, readonly)
					]]
					return Promise_upvr.delay(0)
				end):andThen(both, both):andThen(function(arg1_12) -- Line 80
					--[[ Upvalues[6]:
						[1]: var10_upvw (copied, read and write)
						[2]: Boolean_upvr (copied, readonly)
						[3]: next_upvr (copied, readonly)
						[4]: arg1_2 (copied, readonly)
						[5]: var11_upvw (copied, read and write)
						[6]: var7_upvw (copied, read and write)
					]]
					var10_upvw -= 1
					if Boolean_upvr.toJSBoolean(next_upvr) then
						next_upvr(arg1_2, arg1_12)
					end
					if Boolean_upvr.toJSBoolean(var11_upvw) then
						var7_upvw.complete()
					end
				end, function(arg1_13) -- Line 88
					--[[ Upvalues[1]:
						[1]: var10_upvw (copied, read and write)
					]]
					var10_upvw -= 1
					error(arg1_13)
				end):catch(function(arg1_14) -- Line 92
					--[[ Upvalues[3]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: error_upvr (copied, readonly)
						[3]: arg1_2 (copied, readonly)
					]]
					if Boolean_upvr.toJSBoolean(error_upvr) then
						return error_upvr(arg1_2, arg1_14)
					end
				end)
			end
		else
			var37 = function(arg1_15, arg2_7) -- Line 100
				--[[ Upvalues[3]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: next_upvr (readonly)
					[3]: arg1_2 (readonly)
				]]
				if Boolean_upvr.toJSBoolean(next_upvr) then
					next_upvr(arg1_2, arg2_7)
				end
			end
		end
		tbl.next = var37
		var21_upvr = arg3
		local var29_upvr = var21_upvr
		if Boolean_upvr.toJSBoolean(var29_upvr) then
			function var37(arg1_16, arg2_8) -- Line 67
				--[[ Upvalues[10]:
					[1]: var10_upvw (read and write)
					[2]: var29_upvr (readonly)
					[3]: tbl_upvw (read and write)
					[4]: Promise_upvr (copied, readonly)
					[5]: Boolean_upvr (copied, readonly)
					[6]: next_upvr (readonly)
					[7]: arg1_2 (readonly)
					[8]: var11_upvw (read and write)
					[9]: var7_upvw (read and write)
					[10]: error_upvr (readonly)
				]]
				var10_upvw += 1
				local function both() -- Line 69
					--[[ Upvalues[2]:
						[1]: var29_upvr (copied, readonly)
						[2]: arg2_8 (readonly)
					]]
					return var29_upvr(arg2_8)
				end
				tbl_upvw = tbl_upvw:andThen(function() -- Line 75
					--[[ Upvalues[1]:
						[1]: Promise_upvr (copied, readonly)
					]]
					return Promise_upvr.delay(0)
				end):andThen(both, both):andThen(function(arg1_17) -- Line 80
					--[[ Upvalues[6]:
						[1]: var10_upvw (copied, read and write)
						[2]: Boolean_upvr (copied, readonly)
						[3]: next_upvr (copied, readonly)
						[4]: arg1_2 (copied, readonly)
						[5]: var11_upvw (copied, read and write)
						[6]: var7_upvw (copied, read and write)
					]]
					var10_upvw -= 1
					if Boolean_upvr.toJSBoolean(next_upvr) then
						next_upvr(arg1_2, arg1_17)
					end
					if Boolean_upvr.toJSBoolean(var11_upvw) then
						var7_upvw.complete()
					end
				end, function(arg1_18) -- Line 88
					--[[ Upvalues[1]:
						[1]: var10_upvw (copied, read and write)
					]]
					var10_upvw -= 1
					error(arg1_18)
				end):catch(function(arg1_19) -- Line 92
					--[[ Upvalues[3]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: error_upvr (copied, readonly)
						[3]: arg1_2 (copied, readonly)
					]]
					if Boolean_upvr.toJSBoolean(error_upvr) then
						return error_upvr(arg1_2, arg1_19)
					end
				end)
			end
		else
			var37 = function(arg1_20, arg2_9) -- Line 100
				--[[ Upvalues[3]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: error_upvr (readonly)
					[3]: arg1_2 (readonly)
				]]
				if Boolean_upvr.toJSBoolean(error_upvr) then
					error_upvr(arg1_2, arg2_9)
				end
			end
		end
		tbl.error = var37
		local complete_upvr = arg1_2.complete
		function var37() -- Line 111, Named "complete"
			--[[ Upvalues[5]:
				[1]: var11_upvw (read and write)
				[2]: Boolean_upvr (copied, readonly)
				[3]: var10_upvw (read and write)
				[4]: complete_upvr (readonly)
				[5]: arg1_2 (readonly)
			]]
			var11_upvw = true
			if not Boolean_upvr.toJSBoolean(var10_upvw) and Boolean_upvr.toJSBoolean(complete_upvr) then
				complete_upvr(arg1_2)
			end
		end
		tbl.complete = var37
		var7_upvw = tbl
		var29_upvr = var7_upvw
		local any_subscribe_result1_upvr = arg1:subscribe(var29_upvr)
		function var37() -- Line 122
			--[[ Upvalues[1]:
				[1]: any_subscribe_result1_upvr (readonly)
			]]
			return any_subscribe_result1_upvr:unsubscribe()
		end
		return var37
	end)
end
return module