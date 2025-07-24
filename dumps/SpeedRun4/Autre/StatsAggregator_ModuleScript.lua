-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:06
-- Luau version 6, Types version 3
-- Time taken: 0.004080 seconds

local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
local StatsUtils_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.Stats.StatsUtils)
function module_3_upvr.new(arg1, arg2, arg3) -- Line 18
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
	]]
	local module_2 = {}
	setmetatable(module_2, module_3_upvr)
	module_2._statType = arg1
	module_2._numSamples = arg2
	module_2._pauseBetweenSamples = arg3
	module_2._statName = StatsUtils_upvr.StatNames[module_2._statType]
	module_2._statMaxName = StatsUtils_upvr.StatMaxNames[module_2._statType]
	module_2._samples = {}
	for i = 0, arg2 - 1 do
		module_2._samples[i] = 0
	end
	module_2._oldestIndex = 0
	module_2._listeners = {}
	module_2._nextListenerId = 1001
	return module_2
end
function module_3_upvr.AddListener(arg1, arg2) -- Line 45
	local _nextListenerId = arg1._nextListenerId
	arg1._nextListenerId += 1
	arg1._listeners[_nextListenerId] = arg2
	return _nextListenerId
end
function module_3_upvr.RemoveListener(arg1, arg2) -- Line 52
	arg1._listeners[arg2] = nil
end
function module_3_upvr._notifyAllListeners(arg1) -- Line 56
	for _, v in pairs(arg1._listeners) do
		v()
	end
end
function module_3_upvr.StartListening(arg1) -- Line 62
	if arg1._listening == true then
	else
		spawn(function() -- Line 70
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1._listening = true
			while arg1._listening do
				arg1:_storeStatValue(arg1:_getStatValue())
				arg1:_notifyAllListeners()
				wait(arg1._pauseBetweenSamples)
			end
		end)
	end
end
function module_3_upvr.StopListening(arg1) -- Line 81
	arg1._listening = false
end
function module_3_upvr.GetValues(arg1) -- Line 85
	local module = {}
	for i_3 = 0, arg1._numSamples - 1 do
		module[i_3 + 1] = arg1._samples[(arg1._oldestIndex + i_3) % arg1._numSamples]
	end
	return module
end
function module_3_upvr.GetAverage(arg1) -- Line 96
	local var18 = 0
	for i_4 = 0, arg1._numSamples - 1 do
		var18 += arg1._samples[i_4]
	end
	return var18 / arg1._numSamples
end
function module_3_upvr.GetLatestValue(arg1) -- Line 105
	return arg1._samples[(arg1._oldestIndex + arg1._numSamples - 1) % arg1._numSamples]
end
function module_3_upvr._storeStatValue(arg1, arg2) -- Line 111
	arg1._samples[arg1._oldestIndex] = arg2
	arg1._oldestIndex = (arg1._oldestIndex + 1) % arg1._numSamples
end
function module_3_upvr._getStatValue(arg1) -- Line 117
	local Stats_2 = game:GetService("Stats")
	if Stats_2 == nil then
		return 0
	end
	local PerformanceStats_2 = Stats_2:FindFirstChild("PerformanceStats")
	if PerformanceStats_2 == nil then
		return 0
	end
	local SOME_2 = PerformanceStats_2:FindFirstChild(arg1._statName)
	if SOME_2 == nil then
		return 0
	end
	return SOME_2:GetValue()
end
function module_3_upvr.GetTarget(arg1) -- Line 137
	local Stats = game:GetService("Stats")
	if Stats == nil then
		return 0
	end
	local PerformanceStats = Stats:FindFirstChild("PerformanceStats")
	if PerformanceStats == nil then
		return 0
	end
	local SOME = PerformanceStats:FindFirstChild(arg1._statMaxName)
	if SOME == nil then
		return 0
	end
	return SOME:GetValue()
end
return module_3_upvr