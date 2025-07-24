-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:59
-- Luau version 6, Types version 3
-- Time taken: 0.000497 seconds

local module_2 = {}
module_2.__index = module_2
function module_2.new(arg1, arg2) -- Line 6
	assert(arg2, "metricName is required")
	local module = {}
	module.metricName = arg2
	module.startTime = tick()
	return setmetatable(module, arg1)
end
local ReportToDiagByCountryCode_upvr = require(script.Parent.ReportToDiagByCountryCode)
function module_2.report(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: ReportToDiagByCountryCode_upvr (readonly)
	]]
	ReportToDiagByCountryCode_upvr(arg1.metricName, "RoundTripTime", tick() - arg1.startTime, 100)
end
return module_2