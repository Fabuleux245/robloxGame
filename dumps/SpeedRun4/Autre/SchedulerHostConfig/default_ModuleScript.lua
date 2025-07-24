-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:09
-- Luau version 6, Types version 3
-- Time taken: 0.012476 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local Shared = require(Parent.Shared)
local SafeFlags = require(Parent.SafeFlags)
local var7_upvw = false
local var8_upvw
local None_upvw = Object_upvr.None
local var10_upvw = SafeFlags.createGetFFlag("ReactSchedulerEnableDeferredWork")()
local var11_upvw = SafeFlags.createGetFFlag("ReactSchedulerSetFrameMarkerOnHeartbeatEnd")()
local var12_upvw = SafeFlags.createGetFFlag("ReactSchedulerSetTargetMsByHeartbeatDelta")()
local var13_upvw = SafeFlags.createGetFInt("ReactSchedulerNumberOfLookbackFrames", 1)()
local var14_upvw = SafeFlags.createGetFFlag("ReactSchedulerLookbackUseRingBuffer")()
local var15_upvw = 0
local var16_upvr = 1000 / SafeFlags.createGetFInt("ReactSchedulerDesiredFrameRate", 60)()
local var17_upvr = 1000 / SafeFlags.createGetFInt("ReactSchedulerMinFrameRate", 30)()
local var18_upvw = var16_upvr
local var19_upvw = var18_upvw
local var20_upvw
local var21_upvr
if var14_upvw then
	var21_upvr = table.create(var13_upvw)
else
	var21_upvr = nil
end
local const_number_upvw = 1
local function _() -- Line 70, Named "createHeartbeatConnection"
	--[[ Upvalues[9]:
		[1]: var20_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: var21_upvr (readonly)
		[5]: const_number_upvw (read and write)
		[6]: var19_upvw (read and write)
		[7]: var18_upvw (read and write)
		[8]: var16_upvr (readonly)
		[9]: var17_upvr (readonly)
	]]
	if var20_upvw then
		var20_upvw:Disconnect()
	end
	var20_upvw = game:GetService("RunService").Heartbeat:Connect(function(arg1) -- Line 75
		--[[ Upvalues[8]:
			[1]: var13_upvw (copied, read and write)
			[2]: var14_upvw (copied, read and write)
			[3]: var21_upvr (copied, readonly)
			[4]: const_number_upvw (copied, read and write)
			[5]: var19_upvw (copied, read and write)
			[6]: var18_upvw (copied, read and write)
			[7]: var16_upvr (copied, readonly)
			[8]: var17_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 41. Error Block 12 start (CF ANALYSIS FAILED)
		var18_upvw = math.clamp(var19_upvw, var16_upvr, var17_upvr)
		do
			return
		end
		-- KONSTANTERROR: [42] 41. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [51] 49. Error Block 13 start (CF ANALYSIS FAILED)
		var18_upvw = math.clamp(arg1 * 1000, var16_upvr, var17_upvr)
		-- KONSTANTERROR: [51] 49. Error Block 13 end (CF ANALYSIS FAILED)
	end)
end
if var12_upvw then
	if var20_upvw then
		var20_upvw:Disconnect()
	end
	var20_upvw = game:GetService("RunService").Heartbeat:Connect(function(arg1) -- Line 75
		--[[ Upvalues[8]:
			[1]: var13_upvw (read and write)
			[2]: var14_upvw (read and write)
			[3]: var21_upvr (readonly)
			[4]: const_number_upvw (read and write)
			[5]: var19_upvw (read and write)
			[6]: var18_upvw (read and write)
			[7]: var16_upvr (readonly)
			[8]: var17_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 41. Error Block 12 start (CF ANALYSIS FAILED)
		var18_upvw = math.clamp(var19_upvw, var16_upvr, var17_upvr)
		do
			return
		end
		-- KONSTANTERROR: [42] 41. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [51] 49. Error Block 13 start (CF ANALYSIS FAILED)
		var18_upvw = math.clamp(arg1 * 1000, var16_upvr, var17_upvr)
		-- KONSTANTERROR: [51] 49. Error Block 13 end (CF ANALYSIS FAILED)
	end)
end
local function setFrameMarker_upvr() -- Line 117, Named "setFrameMarker"
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	var15_upvw = os.clock() * 1000
end
local var25_upvw = SafeFlags.createGetFInt("ReactSchedulerYieldInterval2", 15)()
local var26_upvw = 0
local function _() -- Line 178, Named "doesBudgetRemain"
	--[[ Upvalues[3]:
		[1]: var15_upvw (read and write)
		[2]: var18_upvw (read and write)
		[3]: var25_upvw (read and write)
	]]
	local var29 = var18_upvw
	if var25_upvw >= (var29) - (os.clock() * 1000 - var15_upvw) then
		var29 = false
	else
		var29 = true
	end
	return var29
end
local console_upvr = Shared.console
local var32_upvw = false
local describeError_upvr = Shared.describeError
local errorToString_upvr = Shared.errorToString
local function var60_upvw() -- Line 209, Named "performWorkUntilDeadline"
	--[[ Upvalues[13]:
		[1]: var8_upvw (read and write)
		[2]: var26_upvw (read and write)
		[3]: var25_upvw (read and write)
		[4]: var10_upvw (read and write)
		[5]: var11_upvw (read and write)
		[6]: var32_upvw (read and write)
		[7]: var15_upvw (read and write)
		[8]: var18_upvw (read and write)
		[9]: var7_upvw (read and write)
		[10]: var60_upvw (read and write)
		[11]: setFrameMarker_upvr (readonly)
		[12]: describeError_upvr (readonly)
		[13]: errorToString_upvr (readonly)
	]]
	if var8_upvw ~= nil then
		local var42_upvr = os.clock() * 1000
		var26_upvw = var42_upvr + var25_upvw
		local var43_upvw = true
		local var44
		if var10_upvw and not var11_upvw and not var32_upvw then
			var15_upvw = var42_upvr
		end
		if var11_upvw then
			local var45 = var32_upvw
			if var45 then
				var44 = os.clock() * 1000 - var15_upvw
				if var25_upvw >= var18_upvw - var44 then
					var45 = false
				else
					var45 = true
				end
				if not var45 then
					var43_upvw = false
				end
			end
		end
		var45 = nil
		var44 = nil
		local function doWork() -- Line 239
			--[[ Upvalues[12]:
				[1]: var8_upvw (copied, read and write)
				[2]: var43_upvw (read and write)
				[3]: var42_upvr (readonly)
				[4]: var7_upvw (copied, read and write)
				[5]: var10_upvw (copied, read and write)
				[6]: var15_upvw (copied, read and write)
				[7]: var18_upvw (copied, read and write)
				[8]: var25_upvw (copied, read and write)
				[9]: var32_upvw (copied, read and write)
				[10]: var60_upvw (copied, read and write)
				[11]: var11_upvw (copied, read and write)
				[12]: setFrameMarker_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
			if not var8_upvw(var43_upvw, var42_upvr) then
				var7_upvw = false
				var8_upvw = nil
			else
				local var46
				if var46 then
					if var25_upvw >= (var18_upvw) - (os.clock() * 1000 - var15_upvw) then
						var46 = false
					else
						var46 = true
					end
					if var46 then
						var46 = true
						var32_upvw = var46
						var46 = task.defer
						var46(var60_upvw)
					else
						var46 = false
						var32_upvw = var46
						var46 = task.delay
						var46(0, var60_upvw)
						var46 = var11_upvw
						if var46 then
							var46 = task.defer
							var46(setFrameMarker_upvr)
							-- KONSTANTWARNING: GOTO [52] #47
						end
					end
				else
					var46 = task.delay
					var46(0, var60_upvw)
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [52] 47. Error Block 15 start (CF ANALYSIS FAILED)
			var46 = nil
			do
				return var46
			end
			-- KONSTANTERROR: [52] 47. Error Block 15 end (CF ANALYSIS FAILED)
		end
		if not _G.__YOLO__ then
			local xpcall_result1, xpcall_result2 = xpcall(doWork, describeError_upvr)
			var45 = xpcall_result1
			var44 = xpcall_result2
		else
			var44 = doWork()
			var45 = true
		end
		if not var45 then
			task.delay(0, var60_upvw)
			if var11_upvw then
				task.defer(setFrameMarker_upvr)
			end
			error(errorToString_upvr(var44))
		end
	else
		var42_upvr = false
		var7_upvw = var42_upvr
	end
end
local function _(arg1) -- Line 300, Named "wrapPerformWorkWithCoroutine"
	local coroutine_create_result1_upvr_2 = coroutine.create(function() -- Line 301
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		while true do
			local pcall_result1_2, pcall_result2 = pcall(coroutine.wrap(arg1))
			coroutine.yield(pcall_result1_2, pcall_result2)
		end
	end)
	return function() -- Line 311
		--[[ Upvalues[1]:
			[1]: coroutine_create_result1_upvr_2 (readonly)
		]]
		local _, coroutine_resume_result2_2, coroutine_resume_result3_2 = coroutine.resume(coroutine_create_result1_upvr_2)
		if not coroutine_resume_result2_2 then
			error(coroutine_resume_result3_2)
		end
	end
end
local coroutine_create_result1_upvr = coroutine.create(function() -- Line 301
	--[[ Upvalues[1]:
		[1]: var60_upvw (readonly)
	]]
	while true do
		local pcall_result1, pcall_result2_2 = pcall(coroutine.wrap(var60_upvw))
		coroutine.yield(pcall_result1, pcall_result2_2)
	end
end)
function var60_upvw() -- Line 311
	--[[ Upvalues[1]:
		[1]: coroutine_create_result1_upvr (readonly)
	]]
	local _, coroutine_resume_result2, coroutine_resume_result3 = coroutine.resume(coroutine_create_result1_upvr)
	if not coroutine_resume_result2 then
		error(coroutine_resume_result3)
	end
end
function coroutine_create_result1_upvr() -- Line 333, Named "cancelHostCallback"
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	var8_upvw = nil
end
local setTimeout_upvr = LuauPolyfill.setTimeout
local clearTimeout_upvr = LuauPolyfill.clearTimeout
return {
	requestHostCallback = function(arg1) -- Line 321, Named "requestHostCallback"
		--[[ Upvalues[5]:
			[1]: var8_upvw (read and write)
			[2]: var7_upvw (read and write)
			[3]: var60_upvw (read and write)
			[4]: var11_upvw (read and write)
			[5]: setFrameMarker_upvr (readonly)
		]]
		var8_upvw = arg1
		if not var7_upvw then
			var7_upvw = true
			task.delay(0, var60_upvw)
			if var11_upvw then
				task.defer(setFrameMarker_upvr)
			end
		end
	end;
	cancelHostCallback = coroutine_create_result1_upvr;
	requestHostTimeout = function(arg1, arg2) -- Line 337, Named "requestHostTimeout"
		--[[ Upvalues[2]:
			[1]: None_upvw (read and write)
			[2]: setTimeout_upvr (readonly)
		]]
		None_upvw = setTimeout_upvr(function() -- Line 338
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1(os.clock() * 1000)
		end, arg2)
	end;
	cancelHostTimeout = function() -- Line 343, Named "cancelHostTimeout"
		--[[ Upvalues[3]:
			[1]: clearTimeout_upvr (readonly)
			[2]: None_upvw (read and write)
			[3]: Object_upvr (readonly)
		]]
		clearTimeout_upvr(None_upvw)
		None_upvw = Object_upvr.None
	end;
	shouldYieldToHost = function() -- Line 186, Named "shouldYieldToHost"
		--[[ Upvalues[1]:
			[1]: var26_upvw (read and write)
		]]
		local var30
		if var26_upvw > os.clock() * 1000 then
			var30 = false
		else
			var30 = true
		end
		return var30
	end;
	requestPaint = function() -- Line 191, Named "requestPaint"
	end;
	getCurrentTime = function() -- Line 21
		return os.clock() * 1000
	end;
	forceFrameRate = function(arg1) -- Line 193, Named "forceFrameRate"
		--[[ Upvalues[2]:
			[1]: console_upvr (readonly)
			[2]: var25_upvw (read and write)
		]]
		if arg1 < 0 or 125 < arg1 then
			console_upvr.warn("forceFrameRate takes a positive int between 0 and 125, ".."forcing frame rates higher than 125 fps is not supported")
		else
			if 0 < arg1 then
				var25_upvw = math.floor(1000 / arg1)
				return
			end
			var25_upvw = 5
		end
	end;
	setSchedulerFlags = function(arg1) -- Line 137, Named "setSchedulerFlags"
		--[[ Upvalues[13]:
			[1]: var25_upvw (read and write)
			[2]: var10_upvw (read and write)
			[3]: var11_upvw (read and write)
			[4]: var12_upvw (read and write)
			[5]: var20_upvw (read and write)
			[6]: var13_upvw (read and write)
			[7]: var14_upvw (read and write)
			[8]: var21_upvr (readonly)
			[9]: const_number_upvw (read and write)
			[10]: var19_upvw (read and write)
			[11]: var18_upvw (read and write)
			[12]: var16_upvr (readonly)
			[13]: var17_upvr (readonly)
		]]
		if arg1.yieldInterval ~= nil then
			var25_upvw = arg1.yieldInterval
		end
		if arg1.deferredWork ~= nil then
			var10_upvw = arg1.deferredWork
		end
		if arg1.heartbeatFrameMarker ~= nil then
			var11_upvw = arg1.heartbeatFrameMarker
		end
		if arg1.targetMsByHeartbeatDelta ~= nil then
			var12_upvw = arg1.targetMsByHeartbeatDelta
			if arg1.targetMsByHeartbeatDelta then
				if var20_upvw then
					var20_upvw:Disconnect()
				end
				var20_upvw = game:GetService("RunService").Heartbeat:Connect(function(arg1_2) -- Line 75
					--[[ Upvalues[8]:
						[1]: var13_upvw (copied, read and write)
						[2]: var14_upvw (copied, read and write)
						[3]: var21_upvr (copied, readonly)
						[4]: const_number_upvw (copied, read and write)
						[5]: var19_upvw (copied, read and write)
						[6]: var18_upvw (copied, read and write)
						[7]: var16_upvr (copied, readonly)
						[8]: var17_upvr (copied, readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [42] 41. Error Block 12 start (CF ANALYSIS FAILED)
					var18_upvw = math.clamp(var19_upvw, var16_upvr, var17_upvr)
					do
						return
					end
					-- KONSTANTERROR: [42] 41. Error Block 12 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [51] 49. Error Block 13 start (CF ANALYSIS FAILED)
					var18_upvw = math.clamp(arg1_2 * 1000, var16_upvr, var17_upvr)
					-- KONSTANTERROR: [51] 49. Error Block 13 end (CF ANALYSIS FAILED)
				end)
			elseif var20_upvw then
				var20_upvw:Disconnect()
				var20_upvw = nil
				var18_upvw = var16_upvr
			end
		end
		if arg1.numberOfLookbackFrames ~= nil then
			var13_upvw = arg1.numberOfLookbackFrames
		end
		if arg1.lookbackUseRingBuffer ~= nil then
			var14_upvw = arg1.lookbackUseRingBuffer
		end
	end;
	getSchedulerFlags = function() -- Line 167, Named "getSchedulerFlags"
		--[[ Upvalues[6]:
			[1]: var25_upvw (read and write)
			[2]: var10_upvw (read and write)
			[3]: var11_upvw (read and write)
			[4]: var12_upvw (read and write)
			[5]: var13_upvw (read and write)
			[6]: var14_upvw (read and write)
		]]
		return {
			yieldInterval = var25_upvw;
			deferredWork = var10_upvw;
			heartbeatFrameMarker = var11_upvw;
			targetMsByHeartbeatDelta = var12_upvw;
			numberOfLookbackFrames = var13_upvw;
			lookbackUseRingBuffer = var14_upvw;
		}
	end;
}