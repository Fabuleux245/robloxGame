-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:48
-- Luau version 6, Types version 3
-- Time taken: 0.012329 seconds

local module_3_upvr = {
	__className = "Devtools";
}
module_3_upvr.__index = module_3_upvr
local function _() -- Line 43, Named "createTable"
	return table.create(100)
end
function module_3_upvr.new(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local tbl = {}
	tbl.reportTopAction = arg1
	tbl.reportTopThunk = arg2
	tbl.startImmediately = arg3
	tbl.shouldTrack = false
	tbl.flushCount = 0
	tbl.totalFlushTimeMs = 0
	tbl.reduceCount = 0
	tbl.totalReduceTimeMs = 0
	tbl.maxListenerCount = 0
	tbl.totalThunkTimeMs = 0
	local var3 = 0
	tbl.thunkCount = var3
	if arg1 then
		var3 = table.create(100)
	else
		var3 = nil
	end
	tbl.actionCounts = var3
	if arg1 then
		-- KONSTANTWARNING: GOTO [49] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 35. Error Block 29 start (CF ANALYSIS FAILED)
	tbl.actionTotalTimes = nil
	if arg2 then
		-- KONSTANTWARNING: GOTO [59] #44
	end
	-- KONSTANTERROR: [48] 35. Error Block 29 end (CF ANALYSIS FAILED)
end
function module_3_upvr._hookIntoStore(arg1, arg2) -- Line 80
	arg1.store = arg2
	arg1.originalReducer = arg2._reducer
	arg1.originalFlushHandler = arg2._flushHandler
	if arg1.startImmediately then
		arg1:startTracking()
	end
end
function module_3_upvr.trackingReducer(arg1, arg2, arg3) -- Line 90
	assert(arg1.originalReducer, "self.originalReducer must exist")
	local var6 = (os.clock() - os.clock()) * 1000
	arg1.totalReduceTimeMs += var6
	arg1.reduceCount += 1
	if arg1.reportTopAction and arg1.actionCounts then
		local var7
		if var7 then
			var7 = arg3.type
			if not var7 then
				var7 = tostring(arg3)
			end
			if var7 then
				arg1.actionCounts[var7] = (arg1.actionCounts[var7] or 0) + 1
				arg1.actionTotalTimes[var7] = (arg1.actionTotalTimes[var7] or 0) + var6
			end
		end
	end
	return arg1.originalReducer(arg2, arg3)
end
function module_3_upvr.trackingFlush(arg1, ...) -- Line 115
	arg1.originalFlushHandler(...)
	arg1.totalFlushTimeMs += (os.clock() - os.clock()) * 1000
	arg1.flushCount += 1
	local len = #arg1.store.changed._listeners
	if arg1.maxListenerCount < len then
		arg1.maxListenerCount = len
	end
end
function module_3_upvr.startTracking(arg1) -- Line 130
	arg1.store._flushHandler = function(...) -- Line 131
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:trackingFlush(...)
	end
	arg1.store._reducer = function(...) -- Line 134
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:trackingReducer(...)
	end
	arg1.shouldTrack = true
end
function module_3_upvr.stopTracking(arg1) -- Line 140
	if arg1.shouldTrack then
		arg1.shouldTrack = false
		arg1.store._flushHandler = arg1.originalFlushHandler
		arg1.store._reducer = arg1.originalReducer
	end
end
function module_3_upvr.clear(arg1) -- Line 148
	arg1.flushCount = 0
	arg1.totalFlushTimeMs = 0
	arg1.reduceCount = 0
	arg1.totalReduceTimeMs = 0
	arg1.maxListenerCount = 0
	arg1.totalThunkTimeMs = 0
	arg1.thunkCount = 0
	if arg1.reportTopAction then
		arg1.actionCounts = table.create(100)
		arg1.actionTotalTimes = table.create(100)
	end
	if arg1.reportTopThunk then
		arg1.thunkCounts = table.create(100)
		arg1.thunkTotalTimes = table.create(100)
	end
end
local function getRelevantLineFromTrace_upvr(arg1) -- Line 167, Named "getRelevantLineFromTrace"
	local string_split_result1 = string.split(arg1, '\n')
	for i = 3, #string_split_result1 do
		local var13 = string_split_result1[i]
		if not string.find(var13, "AppLaunchTracker") and not string.find(var13, "_Index.Rodux") and not string.find(var13, "_Index.RoactRodux") and not string.find(var13, "_Index.Promise") and not string.find(var13, ".RoactRodux") then
			return var13
		end
	end
	return nil
end
local function _(arg1) -- Line 184, Named "getThunkName"
	--[[ Upvalues[1]:
		[1]: getRelevantLineFromTrace_upvr (readonly)
	]]
	local getRelevantLineFromTrace_upvr_result1_2 = getRelevantLineFromTrace_upvr(debug.traceback())
	if getRelevantLineFromTrace_upvr_result1_2 then
		return getRelevantLineFromTrace_upvr_result1_2
	end
	return debug.info(arg1, "slf")
end
function module_3_upvr.makeThunkMiddleware(arg1, arg2) -- Line 192
	--[[ Upvalues[1]:
		[1]: getRelevantLineFromTrace_upvr (readonly)
	]]
	local function tracebackReporter_upvr(arg1_2) -- Line 193, Named "tracebackReporter"
		return debug.traceback(arg1_2)
	end
	return function(arg1_3, arg2_2) -- Line 196, Named "thunkMiddleware"
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: getRelevantLineFromTrace_upvr (copied, readonly)
			[4]: tracebackReporter_upvr (readonly)
		]]
		return function(arg1_4) -- Line 197
			--[[ Upvalues[6]:
				[1]: arg1 (copied, readonly)
				[2]: arg2_2 (readonly)
				[3]: arg2 (copied, readonly)
				[4]: getRelevantLineFromTrace_upvr (copied, readonly)
				[5]: tracebackReporter_upvr (copied, readonly)
				[6]: arg1_3 (readonly)
			]]
			if typeof(arg1_4) == "function" then
				local xpcall_result1, xpcall_result2 = xpcall(function() -- Line 199
					--[[ Upvalues[5]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_4 (readonly)
						[3]: arg2_2 (copied, readonly)
						[4]: arg2 (copied, readonly)
						[5]: getRelevantLineFromTrace_upvr (copied, readonly)
					]]
					if arg1.shouldTrack then
						local var22 = (os.clock() - os.clock()) * 1000
						local var23 = arg1
						var23.totalThunkTimeMs += var22
						local var24 = arg1
						var24.thunkCount += 1
						if arg1.reportTopThunk and arg1.thunkCounts then
							local thunkTotalTimes = arg1.thunkTotalTimes
							if thunkTotalTimes then
								local getRelevantLineFromTrace_upvr_result1_3 = getRelevantLineFromTrace_upvr(debug.traceback())
								if getRelevantLineFromTrace_upvr_result1_3 then
									thunkTotalTimes = getRelevantLineFromTrace_upvr_result1_3
								else
									thunkTotalTimes = debug.info(arg1_4, "slf")
								end
								arg1.thunkCounts[thunkTotalTimes] = (arg1.thunkCounts[thunkTotalTimes] or 0) + 1
								arg1.thunkTotalTimes[thunkTotalTimes] = (arg1.thunkTotalTimes[thunkTotalTimes] or 0) + var22
							end
						end
						return arg1_4(arg2_2, arg2)
					end
					return arg1_4(arg2_2, arg2)
				end, tracebackReporter_upvr)
				if not xpcall_result1 then
					arg2_2._errorReporter.reportReducerError(arg2_2:getState(), arg1_4, {
						message = "Caught error in thunk";
						thrownValue = xpcall_result2;
					})
					return nil
				end
				return xpcall_result2
			end
			return arg1_3(arg1_4)
		end
	end
end
local function _(arg1) -- Line 243, Named "getTopValue"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var38
	for i_2, v in arg1 do
		if (nil or -1) < v then
		end
	end
	return nil, v
end
local function _(arg1) -- Line 255, Named "fixThunkName"
	return arg1:gsub("CoreGui.RobloxGui.Modules.", ""):gsub("CorePackages.Workspace.Packages._Workspace.", "")
end
function module_3_upvr.getStats(arg1) -- Line 259
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var99
	local var100
	local var101
	if arg1.reportTopAction then
		if arg1.actionCounts then
			local var102
			if arg1.actionTotalTimes then
				var102 = nil
				for i_3, v_2 in arg1.actionTotalTimes do
					if (nil or -1) < v_2 then
						var102 = i_3
					end
				end
				var99 = var102
				var100 = v_2
				if var99 then
					var101 = arg1.actionCounts[var99]
				end
			end
		end
	end
	local var103
	if arg1.reportTopThunk and arg1.thunkCounts and arg1.thunkTotalTimes then
		var102 = nil
		for i_4, v_3 in arg1.thunkTotalTimes do
			if (nil or -1) < v_3 then
				var102 = i_4
			end
		end
		var103 = var102
		if var103 then
			var102 = ""
			var102 = ""
			var103 = var103:gsub("CoreGui.RobloxGui.Modules.", var102):gsub("CorePackages.Workspace.Packages._Workspace.", var102)
		end
	end
	return {
		flushCount = arg1.flushCount;
		totalFlushTimeMs = arg1.totalFlushTimeMs;
		reduceCount = arg1.reduceCount;
		totalReduceTimeMs = arg1.totalReduceTimeMs;
		maxListenerCount = arg1.maxListenerCount;
		totalThunkTimeMs = arg1.totalThunkTimeMs;
		thunkCount = arg1.thunkCount;
		topActionName = var99;
		topActionDurationMs = var100;
		topActionCount = var101;
		topThunkName = var103;
		topThunkDurationMs = v_3;
		topThunkCount = arg1.thunkCounts[var103];
	}
end
return module_3_upvr