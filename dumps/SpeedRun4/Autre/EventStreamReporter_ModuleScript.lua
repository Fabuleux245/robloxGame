-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:51
-- Luau version 6, Types version 3
-- Time taken: 0.001285 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module._reporter = arg1
	module._isEnabled = true
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.setEnabled(arg1, arg2) -- Line 19
	arg1._isEnabled = arg2
end
function module_2_upvr.sendTelemetryEvent(arg1, arg2, arg3, arg4) -- Line 26
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var3 = arg4
	if not var3 then
		var3 = {}
	end
	local var4 = var3
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "Expected eventContext to be a string")
	if type(arg3) ~= "string" then
		-- KONSTANTWARNING: GOTO [29] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 22. Error Block 25 start (CF ANALYSIS FAILED)
	assert(true, "Expected eventName to be a string")
	if type(var4) ~= "table" then
	else
	end
	assert(true, "Expected additionalArgs to be a table")
	assert(arg1._isEnabled, "This reporting service is disabled")
	local tbl = {}
	tbl.eventName = arg3
	tbl.backends = {"EventIngest"}
	tbl.throttlingPercentage = 10000
	arg1._reporter:logRobloxTelemetryEvent(tbl, {"addSessionId", "addSessionInfo"}, var4, arg2)
	-- KONSTANTERROR: [28] 22. Error Block 25 end (CF ANALYSIS FAILED)
end
return module_2_upvr