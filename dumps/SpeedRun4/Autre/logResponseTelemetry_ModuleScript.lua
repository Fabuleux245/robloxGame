-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:34
-- Luau version 6, Types version 3
-- Time taken: 0.000646 seconds

local default_upvr = require(script:FindFirstAncestor("DiscoveryUtils").Parent.LoggingProtocol).default
local tbl_2_upvr = {
	eventName = "DiscoveryResponseSize";
	backends = {default_upvr.TelemetryBackends.Stats};
	throttlingPercentage = game:DefineFastInt("DiscoveryResponseSizeEventHundredthsPercent", 0);
	lastUpdated = {24, 8, 2};
	description = "Response body size for discovery network requests";
	links = "";
}
return function(arg1, arg2, arg3) -- Line 23, Named "logResponseTelemetry"
	--[[ Upvalues[2]:
		[1]: default_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	if arg3 == nil then
		local var5 = default_upvr
	end
	assert(var5, "LoggingProtocol must exist")
	local tbl = {}
	tbl.endpoint_name = arg1
	var5:logRobloxTelemetryStat(tbl_2_upvr, arg2.responseSize, tbl)
end