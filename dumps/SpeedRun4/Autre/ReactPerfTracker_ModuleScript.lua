-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:21
-- Luau version 6, Types version 3
-- Time taken: 0.007335 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableReactPerfSummaryEvents", false)
function applicationId() -- Line 48
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
		return tonumber(string.sub(any_GetItem_result1, -string.len(tostring(1000))))
	end
	return nil
end
local var5
if 0 >= var5 then
else
end
if not true then
	return nil
end
local randint = math.random(0, 1000)
local applicationId_result1 = applicationId()
if applicationId_result1 ~= nil then
	randint = (applicationId_result1 + 327) % 1000
end
if randint < var5 then
else
	var5 = 0
end
if 0 >= var5 then
else
end
if not true then
	return nil
end
local CorePackages = game:GetService("CorePackages")
local LoggingProtocol_upvr = require(CorePackages.Workspace.Packages.LoggingProtocol)
local tbl_2_upvr = {
	eventName = "ReactCoreScriptPerformance";
	backends = {LoggingProtocol_upvr.TelemetryBackends.Points};
	throttlingPercentage = 10000;
	lastUpdated = {24, 10, 4};
	description = "Reporting the time utilization of React in CoreScripts";
	links = "";
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 118
	--[[ Upvalues[2]:
		[1]: LoggingProtocol_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		totalTime = 0;
		componentTotalTime = {};
		componentMaxTime = {};
		componentCount = {};
		sampleCount = 0;
		loggingProtocol = LoggingProtocol_upvr.default;
		outgoingEvents = {};
		nextSendTime = 0;
		previousSendTime = 0;
	}, module_upvr)
end
local ReactRoblox_upvr = require(CorePackages.Packages.ReactRoblox)
function module_upvr.start(arg1) -- Line 133
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: ReactRoblox_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	arg1.eventSender = coroutine.create(function() -- Line 135
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_2_upvr (copied, readonly)
		]]
		while true do
			local popped = table.remove(arg1.outgoingEvents, 1)
			if popped then
				wait()
				arg1.loggingProtocol:logRobloxTelemetryEvent(tbl_2_upvr, {}, popped)
			else
				coroutine.yield()
			end
		end
	end)
	ReactRoblox_upvr.robloxReactProfiling.startTimerSampling(function(arg1_2) -- Line 148
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		local id_2 = arg1_2.id
		local var26 = (arg1_2.endTime - arg1_2.startTime) * 1000
		if not arg1.componentTotalTime[id_2] then
			arg1.componentTotalTime[id_2] = 0
			arg1.componentMaxTime[id_2] = 0
			arg1.componentCount[id_2] = 0
		end
		local componentTotalTime = arg1.componentTotalTime
		componentTotalTime[id_2] += var26
		local componentCount_2 = arg1.componentCount
		componentCount_2[id_2] += 1
		local var29 = arg1
		var29.sampleCount += 1
		local var30 = arg1
		var30.totalTime += var26
		arg1.componentMaxTime[id_2] = math.max(arg1.componentMaxTime[id_2], var26)
		if arg1.nextSendTime <= arg1_2.startTime then
			if 0 < arg1.nextSendTime then
				arg1:sendEvents()
			end
			if game_DefineFastFlag_result1_upvr then
				arg1.previousSendTime = arg1.nextSendTime
				if arg1.previousSendTime == 0 then
					arg1.previousSendTime = arg1_2.startTime
				end
			end
			arg1.nextSendTime = arg1_2.startTime + 30
		end
	end)
end
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
function module_upvr.genEvents(arg1) -- Line 183
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	local var36
	for i, v in arg1.componentCount do
		local var37
		if game_DefineFastFlag_result1_upvr then
			var36 += 1
		end
		local tbl = {}
		if RbxAnalyticsService_upvr then
			var37 = RbxAnalyticsService_upvr:GetSessionId()
		else
			var37 = ""
		end
		tbl.sessionid = var37
		tbl.component = i
		var37 = arg1.componentMaxTime[i]
		tbl.time_ms_max = var37
		var37 = arg1.componentTotalTime[i] / arg1.componentCount[i]
		tbl.time_ms_avg = var37
		var37 = arg1.componentTotalTime[i]
		tbl.total_time_ms = var37
		var37 = arg1.componentTotalTime[i] / arg1.totalTime
		tbl.total_time_pct = var37
		var37 = arg1.componentCount[i]
		tbl.count = var37
		var37 = arg1.componentCount[i] / arg1.sampleCount
		tbl.count_pct = var37
		table.insert(arg1.outgoingEvents, tbl)
	end
	if game_DefineFastFlag_result1_upvr then
		i = {}
		if RbxAnalyticsService_upvr then
			v = RbxAnalyticsService_upvr:GetSessionId()
		else
			v = ""
		end
		i.summary_sessionid = v
		v = arg1.totalTime
		i.summary_total_time_ms = v
		v = arg1.nextSendTime - arg1.previousSendTime
		i.summary_sample_time_s = v
		i.summary_num_components = var36
		v = arg1.sampleCount
		i.summary_sample_count = v
		table.insert(arg1.outgoingEvents, 1, i)
	end
end
function module_upvr.sendEvents(arg1) -- Line 214
	if arg1.sampleCount == 0 then
	else
		arg1:genEvents()
		arg1:resetCounts()
		coroutine.resume(arg1.eventSender)
	end
end
function module_upvr.resetCounts(arg1) -- Line 226
	arg1.componentTotalTime = {}
	arg1.componentMaxTime = {}
	arg1.componentCount = {}
	arg1.sampleCount = 0
	arg1.totalTime = 0
end
return module_upvr