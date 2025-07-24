-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:27
-- Luau version 6, Types version 3
-- Time taken: 0.002648 seconds

local function _(arg1, arg2) -- Line 3
	return (arg1.UnixTimestampMillis - arg2.UnixTimestampMillis) / 1000
end
local Logger_upvr = require(script.Parent.Parent.Logger)
return function(arg1) -- Line 23, Named "SimpleTimer"
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3_upvw
	local var4_upvw
	local var5_upvw
	local var6_upvw
	local var7_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var7_upvr = arg1.timeoutThreshold
		return var7_upvr
	end
	if not arg1 or not INLINED() then
		var7_upvr = nil
	end
	if not arg1 or not arg1.onReachingThreshold then
		local var8_upvr
	end
	local function _() -- Line 33
		--[[ Upvalues[2]:
			[1]: var3_upvw (read and write)
			[2]: var4_upvw (read and write)
		]]
		if var3_upvw and var4_upvw then
			return var4_upvw - var3_upvw
		end
		return -1
	end
	local function _() -- Line 54
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		if var6_upvw then
			task.cancel(var6_upvw)
		end
	end
	local function _() -- Line 66
		--[[ Upvalues[3]:
			[1]: var7_upvr (readonly)
			[2]: var8_upvr (readonly)
			[3]: var6_upvw (read and write)
		]]
		if not var7_upvr or not var8_upvr then
		else
			var6_upvw = task.delay(var7_upvr, function() -- Line 73
				--[[ Upvalues[2]:
					[1]: var6_upvw (copied, read and write)
					[2]: var8_upvr (readonly)
				]]
				var6_upvw = nil
				var8_upvr()
			end)
		end
	end
	return {
		start = function(arg1_2) -- Line 79
			--[[ Upvalues[6]:
				[1]: var3_upvw (read and write)
				[2]: var5_upvw (read and write)
				[3]: var7_upvr (readonly)
				[4]: var8_upvr (readonly)
				[5]: var6_upvw (read and write)
				[6]: Logger_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [26] 22. Error Block 13 start (CF ANALYSIS FAILED)
			if not var8_upvr then return end
			var6_upvw = task.delay(var7_upvr, function() -- Line 73
				--[[ Upvalues[2]:
					[1]: var6_upvw (copied, read and write)
					[2]: var8_upvr (readonly)
				]]
				var6_upvw = nil
				var8_upvr()
			end)
			do
				return
			end
			-- KONSTANTERROR: [26] 22. Error Block 13 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [39] 34. Error Block 10 start (CF ANALYSIS FAILED)
			Logger_upvr:warning("Timer has been already started")
			-- KONSTANTERROR: [39] 34. Error Block 10 end (CF ANALYSIS FAILED)
		end;
		getStartTimestamp = function() -- Line 106
			--[[ Upvalues[2]:
				[1]: var5_upvw (read and write)
				[2]: Logger_upvr (copied, readonly)
			]]
			if not var5_upvw then
				Logger_upvr:warning("Timer has not been started yet")
				return nil
			end
			return var5_upvw
		end;
		stop = function() -- Line 92
			--[[ Upvalues[4]:
				[1]: var6_upvw (read and write)
				[2]: var3_upvw (read and write)
				[3]: var4_upvw (read and write)
				[4]: Logger_upvr (copied, readonly)
			]]
			if var6_upvw then
				task.cancel(var6_upvw)
			end
			if var3_upvw and not var4_upvw then
				var4_upvw = os.clock()
			elseif not var3_upvw then
				Logger_upvr:warning("Timer has not been started yet")
			else
				Logger_upvr:warning("Timer has been already stopped")
			end
			if var3_upvw and var4_upvw then
				return var4_upvw - var3_upvw
			end
			return -1
		end;
		clear = function() -- Line 60
			--[[ Upvalues[3]:
				[1]: var3_upvw (read and write)
				[2]: var4_upvw (read and write)
				[3]: var6_upvw (read and write)
			]]
			var3_upvw = nil
			var4_upvw = nil
			if var6_upvw then
				task.cancel(var6_upvw)
			end
		end;
		getTime = function() -- Line 40
			--[[ Upvalues[3]:
				[1]: var3_upvw (read and write)
				[2]: var4_upvw (read and write)
				[3]: Logger_upvr (copied, readonly)
			]]
			local var11
			if var3_upvw and not var4_upvw then
				var11 = os.clock()
			elseif not var3_upvw then
				Logger_upvr:warning("Timer has not been started yet")
			else
				Logger_upvr:warning("Timer has been already stopped")
			end
			if var3_upvw and var11 then
				return var11 - var3_upvw
			end
			return -1
		end;
	}
end