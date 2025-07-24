-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:34
-- Luau version 6, Types version 3
-- Time taken: 0.000992 seconds

local LoggingProtocol = require(script:FindFirstAncestor("DiscoveryUtils").Parent.LoggingProtocol)
local tbl_2_upvr = {
	eventName = "DiscoveryResponse_Error";
	backends = {LoggingProtocol.TelemetryBackends.Counter};
	throttlingPercentage = game:DefineFastInt("DiscoveryResponseErrorEventHundredthsPercent", 0);
	lastUpdated = {24, 12, 2};
	description = "Response errors for discovery network requests";
}
local function _(arg1) -- Line 19, Named "getStatusCode"
	local var5
	if typeof(arg1) == "table" then
		var5 = tostring(arg1.StatusCode)
	end
	return var5 or "unknown"
end
local default_upvr = LoggingProtocol.default
return function(arg1, arg2, arg3) -- Line 28, Named "logResponseError"
	--[[ Upvalues[2]:
		[1]: default_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	if arg3 == nil then
		local var7 = default_upvr
	end
	assert(var7, "LoggingProtocol must exist")
	local tbl = {}
	tbl.endpoint_name = arg1
	local var9
	if typeof(arg2) == "table" then
		var9 = tostring(arg2.StatusCode)
	end
	tbl.status_code = var9 or "unknown"
	var7:logRobloxTelemetryCounter(tbl_2_upvr, 1, tbl)
end