-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:02
-- Luau version 6, Types version 3
-- Time taken: 0.005592 seconds

local Logger_upvr = require(game.LoadedCode.Packages.Lumberyak.Logger)
local function timeit(arg1, arg2) -- Line 5
	local arg1_result1 = arg1()
	for _ = 1, 2000000 do
		arg2(arg1_result1)
	end
	return (tick() - tick()) / 2000000
end
local function callSimple(arg1) -- Line 15
	arg1:info("foo")
end
local function callInterp(arg1) -- Line 19
	arg1:info("foo {}", 2)
end
local function empty() -- Line 38
	return {
		info = function() -- Line 40, Named "info"
		end;
	}
end
local timeit_result1_upvr = timeit(empty, callSimple)
local timeit_result1_3 = timeit(empty, callInterp)
local function _(arg1, arg2, arg3) -- Line 148, Named "fmt"
	--[[ Upvalues[1]:
		[1]: timeit_result1_upvr (readonly)
	]]
	print(string.format("%-40s %0.3e [%0.4fx]", arg1.." - "..arg2, arg3, arg3 / timeit_result1_upvr))
end
print(string.format("%-40s %0.3e [%0.4fx]", "Empty function".." - ".."Simple", timeit_result1_upvr, timeit_result1_upvr / timeit_result1_upvr))
print(string.format("%-40s %0.3e [%0.4fx]", "Empty function".." - ".."Interpolation", timeit_result1_3, timeit_result1_3 / timeit_result1_upvr))
for i_2, v in pairs({
	["Log level off"] = function() -- Line 44, Named "off"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		local tbl_4 = {
			maxLevel = Logger_upvr.Levels.Error;
		}
		local var15_upvw = 0
		local function log(arg1, arg2, arg3) -- Line 48
			--[[ Upvalues[1]:
				[1]: var15_upvw (read and write)
			]]
			var15_upvw += arg3.number
		end
		tbl_4.log = log
		local any_new_result1_2 = Logger_upvr.new()
		any_new_result1_2:setContext({
			number = 1;
		})
		any_new_result1_2:addSink(tbl_4)
		return any_new_result1_2
	end;
	["Simple logger"] = function() -- Line 23, Named "simple"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		local tbl_3 = {
			maxLevel = Logger_upvr.Levels.Info;
		}
		local var10_upvw = 0
		local function log(arg1, arg2, arg3) -- Line 27
			--[[ Upvalues[1]:
				[1]: var10_upvw (read and write)
			]]
			var10_upvw += arg3.number
		end
		tbl_3.log = log
		local any_new_result1 = Logger_upvr.new()
		any_new_result1:setContext({
			number = 1;
		})
		any_new_result1:addSink(tbl_3)
		return any_new_result1
	end;
	["Short chain"] = function() -- Line 59, Named "short"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		local tbl_7 = {
			maxLevel = Logger_upvr.Levels.Info;
		}
		local var19_upvw = 0
		local function log(arg1, arg2, arg3) -- Line 63
			--[[ Upvalues[1]:
				[1]: var19_upvw (read and write)
			]]
			var19_upvw += arg3.number
		end
		tbl_7.log = log
		local any_new_result1_4 = Logger_upvr.new()
		any_new_result1_4:setContext({
			number = 1;
		})
		any_new_result1_4:addSink(tbl_7)
		return any_new_result1_4:new()
	end;
	["Long chain"] = function() -- Line 75, Named "long"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		local tbl_5 = {
			maxLevel = Logger_upvr.Levels.Info;
		}
		local var23_upvw = 0
		local function log(arg1, arg2, arg3) -- Line 79
			--[[ Upvalues[1]:
				[1]: var23_upvw (read and write)
			]]
			var23_upvw += arg3.number
		end
		tbl_5.log = log
		local any_new_result1_3 = Logger_upvr.new()
		any_new_result1_3:setContext({
			number = 1;
		})
		any_new_result1_3:addSink(tbl_5)
		return any_new_result1_3:new():new():new():new()
	end;
	["Many sinks"] = function() -- Line 94, Named "many"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		local var26_upvw = 0
		local tbl_2 = {
			maxLevel = Logger_upvr.Levels.Error;
		}
		local function log(arg1, arg2, arg3) -- Line 98
			--[[ Upvalues[1]:
				[1]: var26_upvw (read and write)
			]]
			var26_upvw += arg3.number
		end
		tbl_2.log = log
		local tbl_8 = {
			maxLevel = Logger_upvr.Levels.Warning;
		}
		local function log(arg1, arg2, arg3) -- Line 104
			--[[ Upvalues[1]:
				[1]: var26_upvw (read and write)
			]]
			var26_upvw += arg3.number
		end
		tbl_8.log = log
		local tbl = {
			maxLevel = Logger_upvr.Levels.Info;
		}
		local function log(arg1, arg2, arg3) -- Line 110
			--[[ Upvalues[1]:
				[1]: var26_upvw (read and write)
			]]
			var26_upvw += arg3.number
		end
		tbl.log = log
		local tbl_6 = {
			maxLevel = Logger_upvr.Levels.Debug;
		}
		local function log(arg1, arg2, arg3) -- Line 116
			--[[ Upvalues[1]:
				[1]: var26_upvw (read and write)
			]]
			var26_upvw += arg3.number
		end
		tbl_6.log = log
		local any_new_result1_5 = Logger_upvr.new()
		any_new_result1_5:setContext({
			number = 1;
		})
		any_new_result1_5:addSink(tbl_2)
		any_new_result1_5:addSink(tbl_8)
		any_new_result1_5:addSink(tbl)
		any_new_result1_5:addSink(tbl_6)
		any_new_result1_5:addSink({
			maxLevel = Logger_upvr.Levels.Trace;
			log = function(arg1, arg2, arg3) -- Line 122, Named "log"
				--[[ Upvalues[1]:
					[1]: var26_upvw (read and write)
				]]
				var26_upvw += arg3.number
			end;
		})
		return any_new_result1_5
	end;
}) do
	local timeit_result1_2 = timeit(v, callSimple)
	print(string.format("%-40s %0.3e [%0.4fx]", i_2.." - ".."Simple", timeit_result1_2, timeit_result1_2 / timeit_result1_upvr))
	local timeit_result1 = timeit(v, callInterp)
	print(string.format("%-40s %0.3e [%0.4fx]", i_2.." - ".."Interpolation", timeit_result1, timeit_result1 / timeit_result1_upvr))
end