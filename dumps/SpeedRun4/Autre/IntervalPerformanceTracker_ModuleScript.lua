-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:40
-- Luau version 6, Types version 3
-- Time taken: 0.009155 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Parent = script:FindFirstAncestor("IntervalPerformanceTracker").Parent
game:DefineFastFlag("DebugPrintIntervalPerformanceTrackerResults", false)
local GetFFlagAXFPSEventStreamAndCounters_upvr = require(Parent.SharedFlags).GetFFlagAXFPSEventStreamAndCounters
local var11_upvr = 0
if math.random(var11_upvr, 1000) >= require(Parent.SharedFlags).GetFIntIntervalPerformanceTrackerEventStream() then
	var11_upvr = false
else
	var11_upvr = true
end
local tbl_5_upvr = {}
local tbl_2 = {}
local function reducer(arg1) -- Line 55
	local module_5 = {}
	local var15
	if arg1.framesCount == nil then
		var15 = 0
	else
		var15 = arg1.framesCount + 1
	end
	module_5.framesCount = var15
	var15 = arg1.startTime
	if not var15 then
		var15 = tick()
	end
	module_5.startTime = var15
	return module_5
end
tbl_2.reducer = reducer
local GetFFlagFixInvertedIntervalFPSMetric_upvr = require(Parent.SharedFlags).GetFFlagFixInvertedIntervalFPSMetric
local function getResult(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: GetFFlagFixInvertedIntervalFPSMetric_upvr (readonly)
	]]
	if GetFFlagFixInvertedIntervalFPSMetric_upvr() then
		local tick_result1 = tick()
		if arg1.framesCount == nil or arg1.framesCount == 0 or arg1.startTime == nil or tick_result1 == arg1.startTime then
			return nil
		end
		return arg1.framesCount / (tick_result1 - arg1.startTime)
	end
	if arg1.framesCount ~= nil and 0 < arg1.framesCount and arg1.startTime ~= nil then
		return (tick() - arg1.startTime) / arg1.framesCount
	end
	return nil
end
tbl_2.getResult = getResult
tbl_5_upvr.averageFPS = tbl_2
local tbl = {}
local function reducer(arg1) -- Line 84
	local module_3 = {}
	local var20
	if arg1.framesCount == nil then
		var20 = 0
	else
		var20 = arg1.framesCount + 1
	end
	module_3.framesCount = var20
	return module_3
end
tbl.reducer = reducer
local function getResult(arg1) -- Line 89
	return arg1.framesCount
end
tbl.getResult = getResult
tbl_5_upvr.framesCount = tbl
local tbl_4 = {}
local function reducer(arg1) -- Line 94
	local module_2 = {}
	local var23
	if arg1.framesCount == nil then
		var23 = 0
	else
		var23 = arg1.framesCount + 1
	end
	module_2.framesCount = var23
	if arg1.longestFrameTime == nil or arg1.previousTime == nil then
		var23 = 0
	else
		var23 = math.max(arg1.longestFrameTime, tick() - arg1.previousTime)
	end
	module_2.longestFrameTime = var23
	var23 = tick()
	module_2.previousTime = var23
	return module_2
end
tbl_4.reducer = reducer
local function getResult(arg1) -- Line 103
	if arg1.framesCount < 1 then
		return nil
	end
	return arg1.longestFrameTime
end
tbl_4.getResult = getResult
tbl_5_upvr.longestFrameTime = tbl_4
local tbl_6 = {
	reducer = function(arg1) -- Line 111, Named "reducer"
		local module_8 = {}
		local startTime = arg1.startTime
		if not startTime then
			startTime = tick()
		end
		module_8.startTime = startTime
		return module_8
	end;
}
local function getResult(arg1) -- Line 116
	return tick() - arg1.startTime
end
tbl_6.getResult = getResult
tbl_5_upvr.duration = tbl_6
local module_4_upvr = {}
for i, _ in tbl_5_upvr do
	({})[i] = i
	table.insert(module_4_upvr, i)
	local var29_upvr
end
local tbl_7_upvr = {}
tbl_7_upvr.__index = tbl_7_upvr
local function new(arg1, arg2, arg3, arg4) -- Line 144
	--[[ Upvalues[2]:
		[1]: GetFFlagAXFPSEventStreamAndCounters_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	local module = {
		_metricsData = {};
	}
	module._timeout = arg1
	local var32
	module._startTime = var32
	module._metricsToTrack = arg2
	if GetFFlagAXFPSEventStreamAndCounters_upvr() then
		var32 = arg3
	else
		var32 = nil
	end
	module._countersEnabled = var32
	if GetFFlagAXFPSEventStreamAndCounters_upvr() then
		var32 = arg4
	else
		var32 = nil
	end
	module._eventStreamEnabled = var32
	var32 = setmetatable
	var32(module, tbl_7_upvr)
	return module
end
tbl_7_upvr.new = new
function tbl_7_upvr.getMetricsToTrack(arg1) -- Line 162
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if arg1._metricsToTrack and 0 < #arg1._metricsToTrack then
		return arg1._metricsToTrack
	end
	return module_4_upvr
end
function tbl_7_upvr.hasReachedTimeout(arg1) -- Line 170
	if arg1._timeout ~= nil then
		local _startTime = arg1._startTime
		if _startTime ~= nil then
			if arg1._timeout >= tick() - arg1._startTime then
				_startTime = false
			else
				_startTime = true
			end
			return _startTime
		end
	end
	return false
end
function tbl_7_upvr.updateMetrics(arg1) -- Line 177
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if arg1._startTime == nil then
		arg1._startTime = tick()
	end
	for _, v_2 in arg1:getMetricsToTrack(), nil do
		local var37 = tbl_5_upvr[v_2]
		if var37 then
			if not arg1._metricsData[v_2] then
				arg1._metricsData[v_2] = {}
			end
			arg1._metricsData[v_2] = var37.reducer(arg1._metricsData[v_2])
		end
	end
end
function tbl_7_upvr.getResult(arg1) -- Line 197
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	for _, v_3 in arg1:getMetricsToTrack(), nil do
		local var40 = tbl_5_upvr[v_3]
		if var40 then
			({})[v_3] = var40.getResult(arg1._metricsData[v_3])
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local module_6_upvr = {}
module_6_upvr.__index = module_6_upvr
function module_6_upvr.new() -- Line 225
	--[[ Upvalues[3]:
		[1]: tbl_5_upvr (readonly)
		[2]: var29_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	local module_7 = {
		_metricsTrackers = tbl_5_upvr;
		_intervals = {};
		_renderSteppedConnection = nil;
		availableMetricsEnum = var29_upvr;
	}
	setmetatable(module_7, module_6_upvr)
	return module_7
end
function module_6_upvr._updateIntervals(arg1) -- Line 238
	for i_4, v_4 in arg1._intervals do
		v_4:updateMetrics()
		if v_4:hasReachedTimeout() then
			arg1:stopAndLogTracking(i_4)
		end
	end
end
local RunService_upvr = require(Parent.MockableProxyServices).RunService
function module_6_upvr.startTracking(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 248
	--[[ Upvalues[4]:
		[1]: var11_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: GetFFlagAXFPSEventStreamAndCounters_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not var11_upvr then
	else
		local var46
		if not arg1._intervals[arg2] then
			if GetFFlagAXFPSEventStreamAndCounters_upvr() then
				var46 = arg5
			else
				var46 = nil
			end
			if GetFFlagAXFPSEventStreamAndCounters_upvr() then
			else
			end
			local any_new_result1 = tbl_7_upvr.new(arg3, arg4, var46, nil)
			arg1._intervals[arg2] = any_new_result1
			any_new_result1:updateMetrics()
		end
		if not arg1._renderSteppedConnection then
			arg1._renderSteppedConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 274
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:_updateIntervals()
			end)
		end
	end
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AXFixAverageFPSCasing", false)
local sendFPSStat_upvr = require(script.Parent.sendFPSStat)
function module_6_upvr._fireStatsTracking(arg1, arg2) -- Line 288
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: sendFPSStat_upvr (readonly)
	]]
	local averageFPS = arg2.averageFPS
	local framesCount = arg2.framesCount
	local longestFrameTime = arg2.longestFrameTime
	local intervalName = arg2.intervalName
	local var56 = arg1._intervals[intervalName]
	if not var56 then
		warn("Missing interval for interval perfomance trackerstat", intervalName)
	else
		local _countersEnabled = var56._countersEnabled
		local _eventStreamEnabled = var56._eventStreamEnabled
		local function _(arg1_2, arg2_2) -- Line 307, Named "makeStatName"
			return "IntervalPerformanceTracker_"..arg1_2..'_'..arg2_2
		end
		if not _countersEnabled and not _eventStreamEnabled or not intervalName then return end
		if averageFPS then
			local var59 = arg2
			local clone_2 = table.clone(var59)
			clone_2.duration = averageFPS
			if game_DefineFastFlag_result1_upvr then
				var59 = averageFPS
			else
				var59 = nil
			end
			clone_2.averageFps = var59
			sendFPSStat_upvr({
				statName = "IntervalPerformanceTracker_".."AverageFPS"..'_'..intervalName;
				eventStreamName = intervalName;
				metaData = clone_2;
				interval = averageFPS;
				excludeCounters = not _countersEnabled;
				excludeEventStream = not _eventStreamEnabled;
			})
		end
		if framesCount and _countersEnabled then
			local clone = table.clone(arg2)
			clone.duration = framesCount
			sendFPSStat_upvr({
				statName = "IntervalPerformanceTracker_".."FramesCount"..'_'..intervalName;
				metaData = clone;
				interval = framesCount;
			})
		end
		if longestFrameTime and var56._countersEnabled then
			local clone_3 = table.clone(arg2)
			clone_3.duration = longestFrameTime
			sendFPSStat_upvr({
				statName = "IntervalPerformanceTracker_".."LongestFrameTime"..'_'..intervalName;
				metaData = clone_3;
				interval = longestFrameTime;
			})
		end
	end
end
local default_upvr = require(Parent.LoggingProtocol).default
local IntervalPerformanceTrackerTelemetryConfig_upvr = require(script.Parent.IntervalPerformanceTrackerTelemetryConfig)
function module_6_upvr.stopAndLogTracking(arg1, arg2) -- Line 360
	--[[ Upvalues[4]:
		[1]: var11_upvr (readonly)
		[2]: default_upvr (readonly)
		[3]: IntervalPerformanceTrackerTelemetryConfig_upvr (readonly)
		[4]: GetFFlagAXFPSEventStreamAndCounters_upvr (readonly)
	]]
	if not var11_upvr then
	else
		local var87 = arg1._intervals[arg2]
		local var88
		if var87 then
			local tbl_3 = {}
			tbl_3.intervalName = arg2
			var88 = 0
			for i_5, v_5 in var87:getResult(), nil do
				if v_5 ~= nil then
					var88 += 1
				end
				tbl_3[i_5] = v_5
			end
			if 0 < var88 then
				i_5 = nil
				v_5 = tbl_3
				default_upvr:logRobloxTelemetryEvent(IntervalPerformanceTrackerTelemetryConfig_upvr, i_5, v_5)
				if game:GetFastFlag("DebugPrintIntervalPerformanceTrackerResults") then
					i_5 = tostring(arg2)
					v_5 = " logged with results:"
					print("IntervalPerformanceTracker:"..i_5..v_5)
					for i_6, v_6 in tbl_3 do
						print('\t'..tostring(i_6).." = "..tostring(v_6))
					end
				end
			end
			if GetFFlagAXFPSEventStreamAndCounters_upvr() then
				arg1:_fireStatsTracking(tbl_3)
			end
			arg1._intervals[arg2] = nil
		end
		arg1:disconnectUnusedRenderStepped()
	end
end
function module_6_upvr.cancelTracking(arg1, arg2) -- Line 407
	--[[ Upvalues[1]:
		[1]: var11_upvr (readonly)
	]]
	if not var11_upvr then
	else
		arg1._intervals[arg2] = nil
		arg1:disconnectUnusedRenderStepped()
	end
end
function module_6_upvr.disconnectUnusedRenderStepped(arg1) -- Line 417
	if not next(arg1._intervals) and arg1._renderSteppedConnection then
		arg1._renderSteppedConnection:Disconnect()
		arg1._renderSteppedConnection = nil
	end
end
module_6_upvr.class = module_6_upvr
return module_6_upvr.new()