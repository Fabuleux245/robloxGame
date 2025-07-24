-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:10
-- Luau version 6, Types version 3
-- Time taken: 0.001147 seconds

local LoggingProtocol = require(script:FindFirstAncestor("DiscoveryAnalytics").Parent.LoggingProtocol)
local tbl_upvr = {
	eventName = "DiscoveryWarning";
	backends = {LoggingProtocol.default.TelemetryBackends.Points};
	throttlingPercentage = game:DefineFastInt("DiscoveryWarningEventHundredthsPercent", 0);
	lastUpdated = {25, 1, 22};
	description = "Generic warning message for Discovery surfaces";
	links = "";
}
local tbl_2_upvr = {
	eventName = "DiscoveryWarningCounter";
	backends = {LoggingProtocol.TelemetryBackends.Counter};
	throttlingPercentage = 0;
	lastUpdated = {25, 1, 22};
	description = "Counter for the total number of warnings sent";
}
local RunService_upvr = game:GetService("RunService")
return function(arg1, arg2, arg3, arg4) -- Line 31, Named "reportWarning"
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if not arg4 or not table.clone(arg4) then
		local tbl_3 = {}
	end
	tbl_3.category = arg2
	tbl_3.extraMessage = arg3
	if RunService_upvr:IsStudio() or _G.__TESTEZ_RUNNING_TEST__ or _G.__TEST_SUITE_PACKAGE__ then
		warn(`DiscoveryWarning: [{arg2}] {arg3}`)
	end
	local tbl = {}
	tbl.category = arg2
	arg1:logRobloxTelemetryCounter(tbl_2_upvr, 1, tbl)
	arg1:logRobloxTelemetryEvent(tbl_upvr, {arg1.StandardizedFields.addOsInfo}, tbl_3)
end