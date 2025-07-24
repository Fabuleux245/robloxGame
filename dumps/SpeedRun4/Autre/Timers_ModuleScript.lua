-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:28
-- Luau version 6, Types version 3
-- Time taken: 0.001955 seconds

local Logger_upvr = require(script.Parent.Parent.Logger)
local HttpService_upvr = game:GetService("HttpService")
local SimpleTimer_upvr = require(script.Parent.SimpleTimer)
return function(arg1) -- Line 16, Named "Timers"
	--[[ Upvalues[3]:
		[1]: Logger_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: SimpleTimer_upvr (readonly)
	]]
	local module_upvr = {}
	local function _(arg1_2) -- Line 19
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: Logger_upvr (copied, readonly)
		]]
		if not module_upvr[arg1_2] then
			Logger_upvr:warning("(Clear) Timer with this key doesn't exist: "..tostring(arg1_2))
		else
			module_upvr[arg1_2].clear()
			module_upvr[arg1_2] = nil
		end
	end
	local function _(arg1_3, arg2) -- Line 29
		--[[ Upvalues[2]:
			[1]: module_upvr (readonly)
			[2]: Logger_upvr (copied, readonly)
		]]
		if arg2 then
			return function() -- Line 31
				--[[ Upvalues[4]:
					[1]: arg1_3 (readonly)
					[2]: module_upvr (copied, readonly)
					[3]: Logger_upvr (copied, readonly)
					[4]: arg2 (readonly)
				]]
				local var8 = arg1_3
				if not module_upvr[var8] then
					Logger_upvr:warning("(Clear) Timer with this key doesn't exist: "..tostring(var8))
				else
					module_upvr[var8].clear()
					module_upvr[var8] = nil
				end
				arg2()
			end
		end
		return nil
	end
	local function var9_upvr(arg1_4) -- Line 38
		--[[ Upvalues[5]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
			[3]: SimpleTimer_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Logger_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 7. Error Block 3 end (CF ANALYSIS FAILED)
	end
	return {
		start = function(arg1_5, arg2) -- Line 52
			--[[ Upvalues[2]:
				[1]: var9_upvr (readonly)
				[2]: module_upvr (readonly)
			]]
			local var9_result1 = var9_upvr(arg1_5)
			module_upvr[var9_result1].start(arg2)
			return var9_result1
		end;
		stop = function(arg1_6) -- Line 59
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Logger_upvr (copied, readonly)
			]]
			if not module_upvr[arg1_6] then
				Logger_upvr:warning("(Stop) Timer with this key doesn't exist: "..tostring(arg1_6))
				return -1
			end
			local any_stop_result1 = module_upvr[arg1_6].stop()
			if not module_upvr[arg1_6] then
				Logger_upvr:warning("(Clear) Timer with this key doesn't exist: "..tostring(arg1_6))
				return any_stop_result1
			end
			module_upvr[arg1_6].clear()
			module_upvr[arg1_6] = nil
			return any_stop_result1
		end;
		getTime = function(arg1_7) -- Line 71
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Logger_upvr (copied, readonly)
			]]
			if not module_upvr[arg1_7] then
				Logger_upvr:warning("(getTime) Timer with this key doesn't exist: "..tostring(arg1_7))
				return -1
			end
			return module_upvr[arg1_7].getTime()
		end;
		getStartTimestamp = function(arg1_8) -- Line 80
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: Logger_upvr (copied, readonly)
			]]
			if not module_upvr[arg1_8] then
				Logger_upvr:warning("(startTimeStamp) Timer with this key doesn't exist: "..tostring(arg1_8))
				return nil
			end
			return module_upvr[arg1_8].getStartTimestamp()
		end;
	}
end