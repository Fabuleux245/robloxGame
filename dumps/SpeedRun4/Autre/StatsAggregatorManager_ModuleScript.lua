-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:07
-- Luau version 6, Types version 3
-- Time taken: 0.001819 seconds

local CoreGui = game:GetService("CoreGui")
local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.SecondsBetweenUpdate = 1
module_upvr.NumSamplesToKeep = 20
local var3_upvw
function module_upvr.getSingleton() -- Line 24
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: module_upvr (readonly)
	]]
	if var3_upvw == nil then
		var3_upvw = module_upvr.__new()
		var3_upvw:StartListening()
	end
	return var3_upvw
end
local StatsUtils_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsUtils)
local StatsAggregator_upvr = require(CoreGui.RobloxGui.Modules.Stats.StatsAggregator)
function module_upvr.__new() -- Line 33
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: StatsUtils_upvr (readonly)
		[3]: StatsAggregator_upvr (readonly)
	]]
	local module = {}
	setmetatable(module, module_upvr)
	module._statsAggregators = {}
	for _, v in ipairs(StatsUtils_upvr.AllStatTypes) do
		module._statsAggregators[v] = StatsAggregator_upvr.new(v, module_upvr.NumSamplesToKeep, module_upvr.SecondsBetweenUpdate)
	end
	return module
end
function module_upvr.StartListening(arg1) -- Line 50
	for _, v_2 in pairs(arg1._statsAggregators) do
		v_2:StartListening()
	end
end
function module_upvr.StopListening(arg1) -- Line 56
	for _, v_3 in pairs(arg1._statsAggregators) do
		v_3:StopListening()
	end
end
function module_upvr.GetAggregator(arg1, arg2) -- Line 62
	return arg1._statsAggregators[arg2]
end
return module_upvr