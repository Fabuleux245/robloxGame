-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:53
-- Luau version 6, Types version 3
-- Time taken: 0.003881 seconds

local SocialStopwatch = script:FindFirstAncestor("SocialStopwatch")
local Parent = SocialStopwatch.Parent
local Timers_upvr = require(Parent.SocialLuaAnalytics).Analytics.Timing.Timers
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
local EventRegister_upvr = require(SocialStopwatch.EventRegister)
local StopwatchTelemetryConfig_upvr = require(SocialStopwatch.StopwatchTelemetryConfig)
local EventModes_upvr = require(SocialStopwatch.EventModes)
local HttpService_upvr = game:GetService("HttpService")
return function() -- Line 21
	--[[ Upvalues[6]:
		[1]: Timers_upvr (readonly)
		[2]: LoggingProtocol_upvr (readonly)
		[3]: EventRegister_upvr (readonly)
		[4]: StopwatchTelemetryConfig_upvr (readonly)
		[5]: EventModes_upvr (readonly)
		[6]: HttpService_upvr (readonly)
	]]
	local tbl_upvw = {}
	local var4_result1_upvr = Timers_upvr()
	local default_upvr = LoggingProtocol_upvr.default
	local function _(arg1) -- Line 26
		--[[ Upvalues[1]:
			[1]: EventRegister_upvr (copied, readonly)
		]]
		local var14 = EventRegister_upvr[arg1]
		if not var14 then
			error("Event not registered: "..arg1)
		end
		return var14
	end
	local function _(arg1) -- Line 34
		--[[ Upvalues[6]:
			[1]: EventRegister_upvr (copied, readonly)
			[2]: tbl_upvw (read and write)
			[3]: default_upvr (readonly)
			[4]: StopwatchTelemetryConfig_upvr (copied, readonly)
			[5]: EventModes_upvr (copied, readonly)
			[6]: var4_result1_upvr (readonly)
		]]
		return function(arg1_2) -- Line 35
			--[[ Upvalues[7]:
				[1]: EventRegister_upvr (copied, readonly)
				[2]: tbl_upvw (copied, read and write)
				[3]: default_upvr (copied, readonly)
				[4]: StopwatchTelemetryConfig_upvr (copied, readonly)
				[5]: arg1 (readonly)
				[6]: EventModes_upvr (copied, readonly)
				[7]: var4_result1_upvr (copied, readonly)
			]]
			local var22 = EventRegister_upvr[arg1_2]
			if not var22 then
				error("Event not registered: "..arg1_2)
			end
			local var23 = tbl_upvw[arg1_2]
			if not var23 then
				default_upvr:logRobloxTelemetryEvent(StopwatchTelemetryConfig_upvr, {default_upvr.StandardizedFields.addOsInfo}, {
					eventName = `{"FailedOn"}{arg1}{arg1_2}`;
					count = 1;
				})
				if var22.mode == EventModes_upvr.Strict then
					error(`Cannot {arg1} an event that has not been started: {arg1_2}`)
				end
			end
			if var23 and var4_result1_upvr.getStartTimestamp(var23) then
				return {
					startTime = var4_result1_upvr.getStartTimestamp(var23);
					id = var23;
					timeElapsed = var4_result1_upvr.getTime(var23);
				}
			end
			return nil
		end
	end
	local var34_upvr = "Get"
	local var35_upvr = "Stop"
	function var34_upvr(arg1) -- Line 35
		--[[ Upvalues[7]:
			[1]: EventRegister_upvr (copied, readonly)
			[2]: tbl_upvw (read and write)
			[3]: default_upvr (readonly)
			[4]: StopwatchTelemetryConfig_upvr (copied, readonly)
			[5]: var35_upvr (readonly)
			[6]: EventModes_upvr (copied, readonly)
			[7]: var4_result1_upvr (readonly)
		]]
		local var36 = EventRegister_upvr[arg1]
		if not var36 then
			error("Event not registered: "..arg1)
		end
		local var37 = tbl_upvw[arg1]
		if not var37 then
			default_upvr:logRobloxTelemetryEvent(StopwatchTelemetryConfig_upvr, {default_upvr.StandardizedFields.addOsInfo}, {
				eventName = `{"FailedOn"}{var35_upvr}{arg1}`;
				count = 1;
			})
			if var36.mode == EventModes_upvr.Strict then
				error(`Cannot {var35_upvr} an event that has not been started: {arg1}`)
			end
		end
		if var37 and var4_result1_upvr.getStartTimestamp(var37) then
			return {
				startTime = var4_result1_upvr.getStartTimestamp(var37);
				id = var37;
				timeElapsed = var4_result1_upvr.getTime(var37);
			}
		end
		return nil
	end
	var35_upvr = {}
	local var41 = var35_upvr
	function var41.start(arg1, arg2) -- Line 65
		--[[ Upvalues[7]:
			[1]: EventRegister_upvr (copied, readonly)
			[2]: var4_result1_upvr (readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: tbl_upvw (read and write)
			[5]: default_upvr (readonly)
			[6]: StopwatchTelemetryConfig_upvr (copied, readonly)
			[7]: EventModes_upvr (copied, readonly)
		]]
		local var47 = EventRegister_upvr[arg1]
		if not var47 then
			error("Event not registered: "..arg1)
		end
		local any_start_result1_2 = var4_result1_upvr.start(HttpService_upvr:GenerateGUID(false), arg2)
		if tbl_upvw[arg1] then
			default_upvr:logRobloxTelemetryEvent(StopwatchTelemetryConfig_upvr, {default_upvr.StandardizedFields.addOsInfo}, {
				eventName = `{"FailedOn"}{"Start"}{arg1}`;
				count = 1;
			})
			if var47.mode == EventModes_upvr.Strict then
				error("Cannot start event twice: "..arg1)
			end
		end
		tbl_upvw[arg1] = any_start_result1_2
		return {
			startTime = var4_result1_upvr.getStartTimestamp(any_start_result1_2);
			id = any_start_result1_2;
		}
	end
	function var41.get(arg1) -- Line 35
		--[[ Upvalues[7]:
			[1]: EventRegister_upvr (copied, readonly)
			[2]: tbl_upvw (read and write)
			[3]: default_upvr (readonly)
			[4]: StopwatchTelemetryConfig_upvr (copied, readonly)
			[5]: var34_upvr (readonly)
			[6]: EventModes_upvr (copied, readonly)
			[7]: var4_result1_upvr (readonly)
		]]
		local var29 = EventRegister_upvr[arg1]
		if not var29 then
			error("Event not registered: "..arg1)
		end
		local var30 = tbl_upvw[arg1]
		if not var30 then
			default_upvr:logRobloxTelemetryEvent(StopwatchTelemetryConfig_upvr, {default_upvr.StandardizedFields.addOsInfo}, {
				eventName = `{"FailedOn"}{var34_upvr}{arg1}`;
				count = 1;
			})
			if var29.mode == EventModes_upvr.Strict then
				error(`Cannot {var34_upvr} an event that has not been started: {arg1}`)
			end
		end
		if var30 and var4_result1_upvr.getStartTimestamp(var30) then
			return {
				startTime = var4_result1_upvr.getStartTimestamp(var30);
				id = var30;
				timeElapsed = var4_result1_upvr.getTime(var30);
			}
		end
		return nil
	end
	function var41.stop(arg1) -- Line 90
		--[[ Upvalues[2]:
			[1]: var34_upvr (readonly)
			[2]: tbl_upvw (read and write)
		]]
		tbl_upvw[arg1] = nil
		return var34_upvr(arg1)
	end
	function var41._unsafeClearEventLog() -- Line 95
		--[[ Upvalues[1]:
			[1]: tbl_upvw (read and write)
		]]
		tbl_upvw = {}
	end
	return var41
end