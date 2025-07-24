-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:21
-- Luau version 6, Types version 3
-- Time taken: 0.016150 seconds

local longstring1 = "https://roblox.atlassian.net/wiki/spaces/APEX/pages/3321660204/React+Profiler+Metric+Issues+and+Path+Forward#New-Metrics-%E2%9C%A8"
local game_DefineFastInt_result1 = game:DefineFastInt("ReactSchedulingTracker", 0)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableReactDeviceTierCardinality", false)
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("DisableReactSchedulingTimePctStats", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("DisableReactSchedulingAvgMaxMsStats", false)
local function applicationId() -- Line 14
	local AppStorageService = game:GetService("AppStorageService")
	if not AppStorageService then
		return nil
	end
	local any_GetItem_result1 = AppStorageService:GetItem("AppInstallationId")
	local typeof_result1 = typeof(any_GetItem_result1)
	if typeof_result1 == "number" then
		return tonumber(any_GetItem_result1) or nil
	end
	if typeof_result1 == "string" then
		if string.len(any_GetItem_result1) <= 0 then
			return nil
		end
		return tonumber(string.sub(any_GetItem_result1, -string.len(tostring(10000))))
	end
	return nil
end
applicationId = applicationId -- Setting global
if 0 >= game_DefineFastInt_result1 then
	applicationId = false
else
	applicationId = true
end
if not applicationId then
	return nil
end
local randint = math.random(0, 10000)
local applicationId_result1 = applicationId()
if applicationId_result1 ~= nil then
	randint = (applicationId_result1 + 1409) % 10000
end
if randint < game_DefineFastInt_result1 then
	applicationId = true
else
	applicationId = false
end
if not applicationId then
	return nil
end
local TelemetryService_upvr = game:GetService("TelemetryService")
local CorePackages = game:GetService("CorePackages")
local schedulingProfiler_upvr = require(CorePackages.Packages.ReactRoblox).schedulingProfiler
local tbl_upvr_5 = {
	Idle = "Idle";
	Render = "Render";
	Commit = "Commit";
	PassiveEffects = "PassiveEffects";
}
local module_2_upvr = {
	LowEnd = "LowEnd";
	MidTier = "MidTier";
	HighEnd = "HighEnd";
}
local function _() -- Line 90, Named "getCurrentTimeMs"
	return os.clock() * 1000
end
local SystemInfoProtocol_upvr = require(CorePackages.Workspace.Packages.SystemInfoProtocol).SystemInfoProtocol
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ReactLowEndMemoryCutoff", 3500)
local game_DefineFastInt_result1_2_upvr = game:DefineFastInt("ReactHighEndMemoryCutoff", 7500)
local function deviceMemoryTier() -- Line 95
	--[[ Upvalues[5]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: SystemInfoProtocol_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: game_DefineFastInt_result1_2_upvr (readonly)
	]]
	if not game_DefineFastFlag_result1_upvr then
		return nil
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 100
		--[[ Upvalues[1]:
			[1]: SystemInfoProtocol_upvr (copied, readonly)
		]]
		return SystemInfoProtocol_upvr.default:getSystemInfo({SystemInfoProtocol_upvr.InfoNames.MAX_MEMORY})
	end)
	if pcall_result1 and typeof(pcall_result2) == "table" then
		local tonumber_result1 = tonumber(pcall_result2[SystemInfoProtocol_upvr.InfoNames.MAX_MEMORY])
		if not tonumber_result1 then
			return nil
		end
		if tonumber_result1 <= game_DefineFastInt_result1_upvr then
			return module_2_upvr.LowEnd
		end
		if game_DefineFastInt_result1_2_upvr <= tonumber_result1 then
			return module_2_upvr.HighEnd
		end
		return module_2_upvr.MidTier
	end
	return nil
end
deviceMemoryTier = deviceMemoryTier -- Setting global
deviceMemoryTier = nil
local var23_upvw = deviceMemoryTier
if game_DefineFastFlag_result1_upvr then
	var23_upvw = deviceMemoryTier()
end
local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
local profilerEventTypes_upvr = schedulingProfiler_upvr.profilerEventTypes
local mutedError_upvr = require(CorePackages.Workspace.Packages.Loggers).mutedError
local function new(arg1, arg2) -- Line 160
	--[[ Upvalues[4]:
		[1]: tbl_upvr_5 (readonly)
		[2]: profilerEventTypes_upvr (readonly)
		[3]: mutedError_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
	]]
	local module = {}
	module.frameReporter = arg1
	module.rootReporter = arg2
	module.currentState = tbl_upvr_5.Idle
	module.timerStartMs = 0
	module.rootUpdateInProgress = false
	module.rootUpdateTime = {
		tag = "RootUpdateTime";
		RenderMs = 0;
		CommitMs = 0;
		StartTimeMs = 0;
	}
	module.rootPassiveEffectsTime = {
		tag = "RootPassiveEffectsTime";
		PassiveEffectsMs = 0;
	}
	module.renderLevel = 0
	module.states = {
		[tbl_upvr_5.Idle] = function(arg1_2, arg2_2) -- Line 182
			--[[ Upvalues[2]:
				[1]: profilerEventTypes_upvr (copied, readonly)
				[2]: tbl_upvr_5 (copied, readonly)
			]]
			if arg2_2 == profilerEventTypes_upvr.RenderStart then
				arg1_2.timerStartMs = os.clock() * 1000
				if not arg1_2.rootUpdateInProgress then
					arg1_2.rootUpdateInProgress = true
					arg1_2.rootUpdateTime = {
						tag = "RootUpdateTime";
						RenderMs = 0;
						CommitMs = 0;
						StartTimeMs = os.clock() * 1000;
					}
				end
				return tbl_upvr_5.Render
			end
			if arg2_2 == profilerEventTypes_upvr.PassiveEffectsStart then
				arg1_2.timerStartMs = os.clock() * 1000
				arg1_2.rootPassiveEffectsTime = {
					tag = "RootPassiveEffectsTime";
					PassiveEffectsMs = 0;
				}
				return tbl_upvr_5.PassiveEffects
			end
			if arg2_2 == profilerEventTypes_upvr.CommitStart then
				arg1_2.timerStartMs = os.clock() * 1000
				return tbl_upvr_5.Commit
			end
			return nil
		end;
		[tbl_upvr_5.Render] = function(arg1_3, arg2_3) -- Line 210
			--[[ Upvalues[3]:
				[1]: profilerEventTypes_upvr (copied, readonly)
				[2]: tbl_upvr_5 (copied, readonly)
				[3]: mutedError_upvr (copied, readonly)
			]]
			if arg2_3 == profilerEventTypes_upvr.RenderYield or arg2_3 == profilerEventTypes_upvr.RenderStop then
				local var35 = os.clock() * 1000 - arg1_3.timerStartMs
				local rootUpdateTime = arg1_3.rootUpdateTime
				rootUpdateTime.RenderMs += var35
				arg1_3.frameReporter(var35)
				return tbl_upvr_5.Idle
			end
			mutedError_upvr("Invalid event in Render: "..arg2_3)
			return tbl_upvr_5.Idle
		end;
		[tbl_upvr_5.Commit] = function(arg1_4, arg2_4, arg3) -- Line 222
			--[[ Upvalues[3]:
				[1]: profilerEventTypes_upvr (copied, readonly)
				[2]: tbl_upvr_5 (copied, readonly)
				[3]: mutedError_upvr (copied, readonly)
			]]
			if arg2_4 == profilerEventTypes_upvr.CommitStop then
				if 0 < arg1_4.renderLevel then
					arg1_4.renderLevel -= 1
					return nil
				end
				local var38 = os.clock() * 1000 - arg1_4.timerStartMs
				local rootUpdateTime_2 = arg1_4.rootUpdateTime
				rootUpdateTime_2.CommitMs += var38
				arg1_4.frameReporter(var38)
				arg1_4.rootReporter(arg1_4.rootUpdateTime, arg3)
				arg1_4.rootUpdateInProgress = false
				return tbl_upvr_5.Idle
			end
			if arg2_4 == profilerEventTypes_upvr.RenderStart then
				arg1_4.renderLevel += 1
				return nil
			end
			if arg2_4 ~= profilerEventTypes_upvr.RenderYield then
				return nil
			end
			mutedError_upvr("Invalid event in Commit: "..arg2_4)
			return tbl_upvr_5.Idle
		end;
		[tbl_upvr_5.PassiveEffects] = function(arg1_5, arg2_5, arg3) -- Line 253
			--[[ Upvalues[3]:
				[1]: profilerEventTypes_upvr (copied, readonly)
				[2]: tbl_upvr_5 (copied, readonly)
				[3]: mutedError_upvr (copied, readonly)
			]]
			if arg2_5 == profilerEventTypes_upvr.PassiveEffectsStop then
				local var41 = os.clock() * 1000 - arg1_5.timerStartMs
				local rootPassiveEffectsTime = arg1_5.rootPassiveEffectsTime
				rootPassiveEffectsTime.PassiveEffectsMs += var41
				arg1_5.frameReporter(var41)
				arg1_5.rootReporter(arg1_5.rootPassiveEffectsTime, arg3)
				return tbl_upvr_5.Idle
			end
			mutedError_upvr("Invalid event in PassiveEffects: "..arg2_5)
			return tbl_upvr_5.Idle
		end;
	}
	return setmetatable(module, tbl_3_upvr)
end
tbl_3_upvr.new = new
function tbl_3_upvr.transition(arg1, arg2, arg3) -- Line 276
	local any_any_result1 = arg1.states[arg1.currentState](arg1, arg2, arg3)
	if any_any_result1 then
		arg1.currentState = any_any_result1
	end
end
local tbl_upvr_4 = {
	eventName = "ReactPeriodSummary";
	backends = {"EventIngest"};
	throttlingPercentage = game:DefineFastInt("ReactPeriodSummaryEventThrottleHunderedthsPercent", 0);
	lastUpdated = {2025, 2, 18};
	description = "Summary of React performance over a period";
	links = longstring1;
}
local tbl_upvr_3 = {
	eventName = "ReactPeriod";
	backends = {"RobloxTelemetryStat"};
	throttlingPercentage = game:DefineFastInt("ReactPeriodStatThrottleHunderedthsPercent", 0);
	lastUpdated = {2025, 2, 18};
	description = "Stats for React performance over a period";
	links = longstring1;
}
local tbl_upvr_6 = {
	eventName = "ReactFrameCounter";
	backends = {"RobloxTelemetryCounter"};
	throttlingPercentage = game:DefineFastInt("ReactFrameCountThrottleHunderedthsPercent", 0);
	lastUpdated = {2025, 2, 18};
	description = "Frame counts for React performance over a period";
	links = longstring1;
}
local tbl_upvr_2 = {
	eventName = "ReactRootSummary";
	backends = {"EventIngest"};
	lastUpdated = {2025, 2, 18};
	throttlingPercentage = game:DefineFastInt("ReactRootSummaryEventThrottleHunderedthsPercent2", 0);
	description = "Summary of React performance for a root";
	links = longstring1;
}
local var56_upvw
if not game_DefineFastFlag_result1_upvr_3 then
	var56_upvw = {
		eventName = "ReactRootPeriod";
		backends = {"RobloxTelemetryStat"};
		lastUpdated = {2025, 2, 18};
		throttlingPercentage = game:DefineFastInt("ReactRootPeriodStatThrottleHunderedthsPercent2", 0);
		description = "Stats for React performance for a root over a period";
		links = longstring1;
	}
end
local tbl_upvr_7 = {
	eventName = "ReactRootTaskCount";
	backends = {"RobloxTelemetryCounter"};
	lastUpdated = {2025, 2, 18};
	throttlingPercentage = game:DefineFastInt("ReactRootTaskCountThrottleHunderedthsPercent2", 0);
	description = "Task counts for React performance for a root over a period";
	links = longstring1;
}
local var63_upvw
if not game_DefineFastFlag_result1_upvr_2 then
	var63_upvw = {
		eventName = "ReactRootPeriodTask";
		backends = {"RobloxTelemetryStat"};
		lastUpdated = {2025, 2, 18};
		throttlingPercentage = game:DefineFastInt("ReactRootPeriodTaskStatThrottleHunderedthsPercent2", 0);
		description = "Task stats for React performance for a root over a period";
		links = longstring1;
	}
end
local tbl_upvr = {
	eventName = "ReactRootUpdate";
	backends = {"RobloxTelemetryStat"};
	lastUpdated = {2025, 2, 18};
	throttlingPercentage = game:DefineFastInt("ReactRootUpdateStatThrottleHunderedthsPercent", 0);
	description = "Task stats for individual React root updates, all in milliseconds";
	links = longstring1;
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 406
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local tbl_2 = {
		periodStartMs = 0;
		reactFrameTimeMs = 0;
		frameMetrics = {
			totalFrameCount = 0;
			reactFrameCount = 0;
			totalReactTimeMs = 0;
			maxReactFrameTimeMs = 0;
			allFrameHistogram = {0, 0, 0, 0};
			reactFrameHistogram = {0, 0, 0, 0};
			reactDropChangeHistogram = {0, 0, 0, 0};
		};
		rootsMetrics = {};
	}
	tbl_2.context = arg1
	local setmetatable_result1_upvr = setmetatable(tbl_2, module_upvr)
	setmetatable_result1_upvr.schedulerStateMachine = tbl_3_upvr.new(function(arg1_6) -- Line 423
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:addToFrame(arg1_6)
	end, function(arg1_7, arg2) -- Line 425
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:reportRoot(arg1_7, arg2)
	end)
	return setmetatable_result1_upvr
end
local RunService_upvr = game:GetService("RunService")
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("ReactSchedulingTrackerPeriodMs", 30000)
function module_upvr.start(arg1) -- Line 432
	--[[ Upvalues[3]:
		[1]: schedulingProfiler_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr_2 (readonly)
	]]
	arg1:resetState()
	schedulingProfiler_upvr.registerProfilerEventCallback(function(arg1_8, arg2) -- Line 435
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.schedulerStateMachine:transition(arg1_8, arg2)
	end)
	RunService_upvr.Heartbeat:Connect(function(arg1_9) -- Line 439
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
		]]
		arg1:processFrame(arg1_9 * 1000)
		arg1.reactFrameTimeMs = 0
		if game_DefineFastInt_result1_upvr_2 < os.clock() * 1000 - arg1.periodStartMs then
			arg1:reportPeriod()
			arg1:resetState()
		end
	end)
end
function module_upvr.resetState(arg1) -- Line 451
	arg1.periodStartMs = os.clock() * 1000
	arg1.frameMetrics = {
		totalFrameCount = 0;
		reactFrameCount = 0;
		totalReactTimeMs = 0;
		maxReactFrameTimeMs = 0;
		allFrameHistogram = {0, 0, 0, 0};
		reactFrameHistogram = {0, 0, 0, 0};
		reactDropChangeHistogram = {0, 0, 0, 0};
	}
	arg1.rootsMetrics = {}
end
function module_upvr.getRootName(arg1, arg2) -- Line 467
	local var91 = "Unknown"
	if arg2 then
		if arg2.containerInfo.Name ~= "Folder" then
			var91 = arg2.containerInfo.Name
			return var91
		end
		if arg2.current and arg2.current.child and arg2.current.child.memoizedProps then
			for i, _ in arg2.current.child.memoizedProps do
				if typeof(i) == "string" then
					var91 = i
					return var91
				end
			end
		end
	end
	return var91
end
function module_upvr.addToFrame(arg1, arg2) -- Line 484
	arg1.reactFrameTimeMs += arg2
end
function module_upvr.reportRoot(arg1, arg2, arg3) -- Line 488
	--[[ Upvalues[3]:
		[1]: TelemetryService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var23_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_getRootName_result1 = arg1:getRootName(arg3)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	arg1.rootsMetrics[any_getRootName_result1] = {
		update_count = 0;
		render_total_time_ms = 0;
		commit_total_time_ms = 0;
		max_render_time_ms = 0;
		max_commit_time_ms = 0;
		max_update_time_ms = 0;
		passive_effects_count = 0;
		passive_effects_total_time_ms = 0;
		max_passive_effects_time_ms = 0;
		total_time_to_update_ms = 0;
		max_time_to_update_ms = 0;
	}
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 32. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 32. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.getFrameBucket(arg1, arg2) -- Line 581
	return math.min(4, math.floor(math.max(0, arg2 - 2) / 16.666666666666668) + 1)
end
function module_upvr.processFrame(arg1, arg2) -- Line 588
	local frameMetrics = arg1.frameMetrics
	local reactFrameTimeMs = arg1.reactFrameTimeMs
	frameMetrics.totalFrameCount += 1
	local any_getFrameBucket_result1 = arg1:getFrameBucket(arg2)
	local allFrameHistogram = frameMetrics.allFrameHistogram
	allFrameHistogram[any_getFrameBucket_result1] += 1
	if 0 < reactFrameTimeMs then
		frameMetrics.totalReactTimeMs += reactFrameTimeMs
		local reactFrameHistogram = frameMetrics.reactFrameHistogram
		reactFrameHistogram[any_getFrameBucket_result1] += 1
		frameMetrics.reactFrameCount += 1
		if frameMetrics.maxReactFrameTimeMs < reactFrameTimeMs then
			frameMetrics.maxReactFrameTimeMs = reactFrameTimeMs
		end
		local reactDropChangeHistogram = frameMetrics.reactDropChangeHistogram
		local var100 = any_getFrameBucket_result1 - arg1:getFrameBucket(arg2 - reactFrameTimeMs) + 1
		reactDropChangeHistogram[var100] += 1
	end
end
local game_DefineFastFlag_result1_upvr_4 = game:DefineFastFlag("AddFrameCountParams", false)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("TelemetryServiceMemoryCPUInfoEnabled")
function module_upvr.reportPeriod(arg1) -- Line 613
	--[[ Upvalues[13]:
		[1]: game_DefineFastFlag_result1_upvr_4 (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: TelemetryService_upvr (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: tbl_upvr_3 (readonly)
		[6]: var23_upvw (read and write)
		[7]: tbl_upvr_6 (readonly)
		[8]: tbl_upvr_2 (readonly)
		[9]: game_DefineFastFlag_result1_upvr_3 (readonly)
		[10]: var56_upvw (read and write)
		[11]: tbl_upvr_7 (readonly)
		[12]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[13]: var63_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local frameMetrics_2 = arg1.frameMetrics
	local var116 = os.clock() * 1000 - arg1.periodStartMs
	local tbl = {
		period_length_ms = var116;
		react_total_time_ms = frameMetrics_2.totalReactTimeMs;
	}
	local var118 = frameMetrics_2.totalReactTimeMs / var116
	tbl.react_total_time_pct = var118
	if game_DefineFastFlag_result1_upvr_4 then
		var118 = frameMetrics_2.reactFrameCount
	else
		var118 = nil
	end
	tbl.react_frame_count = var118
	if game_DefineFastFlag_result1_upvr_4 then
		var118 = frameMetrics_2.totalFrameCount
		-- KONSTANTWARNING: GOTO [35] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 24. Error Block 41 start (CF ANALYSIS FAILED)
	var118 = nil
	tbl.total_frame_count = var118
	var118 = frameMetrics_2.totalReactTimeMs / frameMetrics_2.totalFrameCount
	tbl.average_react_all_frame_ms = var118
	if 0 < frameMetrics_2.reactFrameCount then
		var118 = frameMetrics_2.totalReactTimeMs / frameMetrics_2.reactFrameCount
	else
		var118 = 0
	end
	tbl.average_react_only_frame_ms = var118
	var118 = frameMetrics_2.maxReactFrameTimeMs
	tbl.max_react_frame_ms = var118
	var118 = frameMetrics_2.allFrameHistogram[1]
	tbl.all_frame_drop0 = var118
	var118 = frameMetrics_2.allFrameHistogram[2]
	tbl.all_frame_drop1 = var118
	var118 = frameMetrics_2.allFrameHistogram[3]
	tbl.all_frame_drop2 = var118
	var118 = frameMetrics_2.allFrameHistogram[4]
	tbl.all_frame_drop3 = var118
	var118 = frameMetrics_2.reactFrameHistogram[1]
	tbl.react_frame_drop0 = var118
	var118 = frameMetrics_2.reactFrameHistogram[2]
	tbl.react_frame_drop1 = var118
	var118 = frameMetrics_2.reactFrameHistogram[3]
	tbl.react_frame_drop2 = var118
	var118 = frameMetrics_2.reactFrameHistogram[4]
	tbl.react_frame_drop3 = var118
	var118 = frameMetrics_2.reactDropChangeHistogram[1]
	tbl.react_drop_change0 = var118
	var118 = frameMetrics_2.reactDropChangeHistogram[2]
	tbl.react_drop_change1 = var118
	var118 = frameMetrics_2.reactDropChangeHistogram[3]
	tbl.react_drop_change2 = var118
	var118 = frameMetrics_2.reactDropChangeHistogram[4]
	tbl.react_drop_change3 = var118
	var118 = {}
	var118[1] = "addPlaceId"
	var118[2] = "addUniverseId"
	var118[3] = "addSessionId"
	var118[4] = "addOSInfo"
	var118[5] = "addSessionInfo"
	if game_GetEngineFeature_result1_upvr then
		var118 = {"addPlaceId", "addUniverseId", "addSessionId", "addOSInfo", "addSessionInfo", "addMemoryInfo", "addCPUInfo"}
	end
	TelemetryService_upvr:LogEvent(tbl_upvr_4, {
		standardizedFields = var118;
		customFields = tbl;
	})
	TelemetryService_upvr:LogStat(tbl_upvr_3, {
		customFields = {
			stat = "ReactTotalTimePct";
			context = arg1.context;
			deviceTier = var23_upvw;
		};
	}, tbl.react_total_time_pct)
	TelemetryService_upvr:LogStat(tbl_upvr_3, {
		customFields = {
			stat = "AverageReactAllFrameMs";
			context = arg1.context;
			deviceTier = var23_upvw;
		};
	}, tbl.average_react_all_frame_ms)
	TelemetryService_upvr:LogStat(tbl_upvr_3, {
		customFields = {
			stat = "AverageReactOnlyFrameMs";
			context = arg1.context;
			deviceTier = var23_upvw;
		};
	}, tbl.average_react_only_frame_ms)
	TelemetryService_upvr:LogStat(tbl_upvr_3, {
		customFields = {
			stat = "MaxReactFrameMs";
			context = arg1.context;
			deviceTier = var23_upvw;
		};
	}, tbl.max_react_frame_ms)
	for i_2 = 1, 4 do
		local var129 = i_2 - 1
		TelemetryService_upvr:LogCounter(tbl_upvr_6, {
			customFields = {
				category = "AllFrame";
				bucket = var129;
				context = arg1.context;
				deviceTier = var23_upvw;
			};
		}, frameMetrics_2.allFrameHistogram[i_2])
		TelemetryService_upvr:LogCounter(tbl_upvr_6, {
			customFields = {
				category = "ReactFrame";
				bucket = var129;
				context = arg1.context;
				deviceTier = var23_upvw;
			};
		}, frameMetrics_2.reactFrameHistogram[i_2])
		TelemetryService_upvr:LogCounter(tbl_upvr_6, {
			customFields = {
				category = "ReactDropChange";
				bucket = var129;
				context = arg1.context;
				deviceTier = var23_upvw;
			};
		}, frameMetrics_2.reactDropChangeHistogram[i_2])
	end
	for i_3, v_2 in arg1.rootsMetrics do
		v_2.root_name = i_3
		v_2.update_total_time_ms = v_2.render_total_time_ms + v_2.commit_total_time_ms
		v_2.total_time_ms = v_2.update_total_time_ms + v_2.passive_effects_total_time_ms
		v_2.avg_render_time_ms = v_2.render_total_time_ms / v_2.update_count
		v_2.context = arg1.context
		v_2.total_time_pct = (v_2.update_total_time_ms + v_2.passive_effects_total_time_ms) / tbl.react_total_time_ms
		v_2.avg_update_time_ms = v_2.update_total_time_ms / v_2.update_count
		v_2.avg_commit_time_ms = v_2.commit_total_time_ms / v_2.update_count
		v_2.avg_passive_effects_time_ms = v_2.passive_effects_total_time_ms / v_2.passive_effects_count
		v_2.avg_time_to_update_ms = v_2.total_time_to_update_ms / v_2.update_count
		TelemetryService_upvr:LogEvent(tbl_upvr_2, {
			standardizedFields = var118;
			customFields = v_2;
		})
		if not game_DefineFastFlag_result1_upvr_3 then
			TelemetryService_upvr:LogStat(var56_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					stat = "TotalTimePct";
					context = arg1.context;
				};
			}, v_2.total_time_pct)
		end
		TelemetryService_upvr:LogCounter(tbl_upvr_7, {
			customFields = {
				rootName = v_2.root_name;
				deviceTier = var23_upvw;
				task = "RenderAndCommit";
				context = arg1.context;
			};
		}, v_2.update_count)
		TelemetryService_upvr:LogCounter(tbl_upvr_7, {
			customFields = {
				rootName = v_2.root_name;
				deviceTier = var23_upvw;
				task = "PassiveEffects";
				context = arg1.context;
			};
		}, v_2.passive_effects_count)
		if not game_DefineFastFlag_result1_upvr_2 then
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "RenderAndCommit";
					stat = "AvgMs";
					context = arg1.context;
				};
			}, v_2.avg_update_time_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "Commit";
					stat = "AvgMs";
					context = arg1.context;
				};
			}, v_2.avg_commit_time_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "TimeToUpdateMs";
					stat = "AvgMs";
					context = arg1.context;
				};
			}, v_2.avg_time_to_update_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "PassiveEffects";
					stat = "AvgMs";
					context = arg1.context;
				};
			}, v_2.avg_passive_effects_time_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "RenderAndCommit";
					stat = "MaxMs";
					context = arg1.context;
				};
			}, v_2.max_update_time_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "Commit";
					stat = "MaxMs";
					context = arg1.context;
				};
			}, v_2.max_commit_time_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "TimeToUpdateMs";
					stat = "MaxMs";
					context = arg1.context;
				};
			}, v_2.max_time_to_update_ms)
			TelemetryService_upvr:LogStat(var63_upvw, {
				customFields = {
					rootName = v_2.root_name;
					deviceTier = var23_upvw;
					task = "PassiveEffects";
					stat = "MaxMs";
					context = arg1.context;
				};
			}, v_2.max_passive_effects_time_ms)
		end
	end
	-- KONSTANTERROR: [34] 24. Error Block 41 end (CF ANALYSIS FAILED)
end
return module_upvr