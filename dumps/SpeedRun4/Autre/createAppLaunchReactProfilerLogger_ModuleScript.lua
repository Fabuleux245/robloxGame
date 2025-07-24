-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:10
-- Luau version 6, Types version 3
-- Time taken: 0.004423 seconds

local Parent = script.Parent.Parent
local tbl_11_upvr = {
	eventName = "AppLaunchReactProfilerUpdateCount";
	backends = {"RobloxTelemetryStat"};
	lastUpdated = {2025, 2, 25};
	throttlingPercentage = 0;
}
local tbl_13_upvr = {
	eventName = "AppLaunchReactProfilerRenderDuration";
	backends = {"RobloxTelemetryStat"};
	lastUpdated = {2025, 2, 25};
	throttlingPercentage = 0;
}
local tbl_16_upvr = {
	eventName = "AppLaunchReactProfilerCommitDuration";
	backends = {"RobloxTelemetryStat"};
	lastUpdated = {2025, 2, 25};
	throttlingPercentage = 0;
}
local tbl_upvr = {
	eventName = "AppLaunchReactProfilerExclusiveRenderDuration";
	backends = {"RobloxTelemetryStat"};
	lastUpdated = {2025, 2, 25};
	throttlingPercentage = 0;
}
local tbl_6_upvr = {
	eventName = "AppLaunchReactProfilerExclusiveCommitDuration";
	backends = {"RobloxTelemetryStat"};
	lastUpdated = {2025, 2, 25};
	throttlingPercentage = 0;
}
local TelemetryService_upvr = game:GetService("TelemetryService")
local function logProfilerData_upvr(arg1) -- Line 65, Named "logProfilerData"
	--[[ Upvalues[6]:
		[1]: TelemetryService_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: tbl_13_upvr (readonly)
		[4]: tbl_16_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: tbl_6_upvr (readonly)
	]]
	if next(arg1) == nil then
	else
		for _, var19 in arg1 do
			local tbl_18 = {}
			local tbl_14 = {}
			tbl_14.profilerId = var19.profilerId
			tbl_14.milestoneName = var19.milestoneName
			tbl_18.customFields = tbl_14
			TelemetryService_upvr:LogStat(tbl_11_upvr, tbl_18, var19.updateCount)
			local tbl_9 = {}
			local tbl_12 = {}
			tbl_12.profilerId = var19.profilerId
			tbl_12.milestoneName = var19.milestoneName
			tbl_9.customFields = tbl_12
			TelemetryService_upvr:LogStat(tbl_13_upvr, tbl_9, var19.renderDuration)
			local tbl_15 = {}
			local tbl_4 = {}
			tbl_4.profilerId = var19.profilerId
			tbl_4.milestoneName = var19.milestoneName
			tbl_15.customFields = tbl_4
			TelemetryService_upvr:LogStat(tbl_16_upvr, tbl_15, var19.commitDuration)
			local tbl_2 = {}
			local tbl_5 = {}
			tbl_5.profilerId = var19.profilerId
			tbl_5.milestoneName = var19.milestoneName
			tbl_2.customFields = tbl_5
			TelemetryService_upvr:LogStat(tbl_upvr, tbl_2, var19.exclusiveRenderDuration)
			local tbl_17 = {}
			local tbl = {}
			tbl.profilerId = var19.profilerId
			tbl.milestoneName = var19.milestoneName
			tbl_17.customFields = tbl
			TelemetryService_upvr:LogStat(tbl_6_upvr, tbl_17, var19.exclusiveCommitDuration)
		end
	end
end
local function _(arg1, arg2) -- Line 104, Named "createProfilerData"
	local module = {}
	module.profilerId = arg1
	module.milestoneName = arg2
	module.updateCount = 0
	module.renderDuration = 0
	module.commitDuration = 0
	module.exclusiveRenderDuration = 0
	module.exclusiveCommitDuration = 0
	return module
end
local function _(arg1, arg2) -- Line 117, Named "updateProfilerData"
	arg1.updateCount += 1
	arg1.renderDuration += arg2.render.duration
	arg1.commitDuration += arg2.commit.duration
	arg1.exclusiveRenderDuration += arg2.render.exclusiveDuration
	arg1.exclusiveCommitDuration += arg2.commit.exclusiveDuration
end
local isReactProfilingEnabled_upvr = require(Parent.RoactUtils).Profiling.isReactProfilingEnabled
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AppLaunchReactProfilerLoggerCollectionTimeoutSec", 30)
return function(arg1) -- Line 125, Named "createAppLaunchReactProfilerLogger"
	--[[ Upvalues[4]:
		[1]: isReactProfilingEnabled_upvr (readonly)
		[2]: LoggingProtocol_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: logProfilerData_upvr (readonly)
	]]
	if not isReactProfilingEnabled_upvr then
	else
		local tbl_10_upvw = {}
		local tbl_8_upvw = {}
		local function correlateProfilerData_upvr() -- Line 134, Named "correlateProfilerData"
			--[[ Upvalues[2]:
				[1]: tbl_10_upvw (read and write)
				[2]: tbl_8_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [170] 109. Error Block 22 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [170.8]
			if 0 < nil.updateCount then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, nil)
			end
			-- KONSTANTERROR: [170] 109. Error Block 22 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [6] 6. Error Block 2 end (CF ANALYSIS FAILED)
		end
		local function _(arg1_2) -- Line 177, Named "getOrCreateEventsForProfiler"
			--[[ Upvalues[1]:
				[1]: tbl_10_upvw (read and write)
			]]
			local var36 = tbl_10_upvw[arg1_2]
			if var36 == nil then
				var36 = {}
				tbl_10_upvw[arg1_2] = var36
			end
			return var36
		end
		local any_connect_result1_upvw = arg1.onRender:connect(function(arg1_3) -- Line 187
			--[[ Upvalues[1]:
				[1]: tbl_10_upvw (read and write)
			]]
			local profilerId = arg1_3.profilerId
			local var39 = tbl_10_upvw[profilerId]
			if var39 == nil then
				var39 = {}
				tbl_10_upvw[profilerId] = var39
			end
			local tbl_3 = {}
			tbl_3.render = arg1_3
			tbl_3.commit = {
				profilerId = arg1_3.profilerId;
				commitTime = arg1_3.commitTime;
				duration = 0;
				exclusiveDuration = 0;
			}
			table.insert(var39, tbl_3)
		end)
		local any_connect_result1_upvw_2 = arg1.onCommit:connect(function(arg1_4) -- Line 203
			--[[ Upvalues[1]:
				[1]: tbl_10_upvw (read and write)
			]]
			local profilerId_2 = arg1_4.profilerId
			local var49 = tbl_10_upvw[profilerId_2]
			if var49 == nil then
				var49 = {}
				tbl_10_upvw[profilerId_2] = var49
			end
			local var50 = var49
			local var51 = var50[#var50]
			if var51 ~= nil then
				if var51.render.commitTime == arg1_4.commitTime then
					var51.commit = arg1_4
					return
				end
			end
			warn("Profiler invariants are broken")
		end)
		local any_setDurationLoggerListener_result1_upvw = LoggingProtocol_upvr.default:setDurationLoggerListener(function(arg1_5) -- Line 215
			--[[ Upvalues[1]:
				[1]: tbl_8_upvw (read and write)
			]]
			local tbl_7 = {}
			tbl_7.eventName = arg1_5
			tbl_7.eventTime = os.clock() * 1000
			table.insert(tbl_8_upvw, tbl_7)
		end)
		local function _() -- Line 224, Named "disconnectListeners"
			--[[ Upvalues[3]:
				[1]: any_connect_result1_upvw (read and write)
				[2]: any_connect_result1_upvw_2 (read and write)
				[3]: any_setDurationLoggerListener_result1_upvw (read and write)
			]]
			if any_connect_result1_upvw ~= nil then
				any_connect_result1_upvw:disconnect()
				any_connect_result1_upvw = nil
			end
			if any_connect_result1_upvw_2 ~= nil then
				any_connect_result1_upvw_2:disconnect()
				any_connect_result1_upvw_2 = nil
			end
			if any_setDurationLoggerListener_result1_upvw ~= nil then
				any_setDurationLoggerListener_result1_upvw:disconnect()
				any_setDurationLoggerListener_result1_upvw = nil
			end
		end
		task.delay(game_DefineFastInt_result1_upvr, function() -- Line 239
			--[[ Upvalues[5]:
				[1]: any_connect_result1_upvw (read and write)
				[2]: any_connect_result1_upvw_2 (read and write)
				[3]: any_setDurationLoggerListener_result1_upvw (read and write)
				[4]: correlateProfilerData_upvr (readonly)
				[5]: logProfilerData_upvr (copied, readonly)
			]]
			if any_connect_result1_upvw ~= nil then
				any_connect_result1_upvw:disconnect()
				any_connect_result1_upvw = nil
			end
			if any_connect_result1_upvw_2 ~= nil then
				any_connect_result1_upvw_2:disconnect()
				any_connect_result1_upvw_2 = nil
			end
			if any_setDurationLoggerListener_result1_upvw ~= nil then
				any_setDurationLoggerListener_result1_upvw:disconnect()
				any_setDurationLoggerListener_result1_upvw = nil
			end
			logProfilerData_upvr(correlateProfilerData_upvr())
		end)
	end
end