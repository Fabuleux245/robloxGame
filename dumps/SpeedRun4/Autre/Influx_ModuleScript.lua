-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:56
-- Luau version 6, Types version 3
-- Time taken: 0.001705 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 27
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local type_result1 = type(arg1)
	local var3 = true
	if type_result1 ~= "table" then
		if type_result1 ~= "userdata" then
			var3 = false
		else
			var3 = true
		end
	end
	assert(var3, "Unexpected value for reportingService")
	local module = {}
	module._reporter = arg1
	module._isEnabled = true
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.setEnabled(arg1, arg2) -- Line 40
	local var5
	if type(arg2) ~= "boolean" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Expected isEnabled to be a boolean")
	arg1._isEnabled = arg2
end
function module_2_upvr.reportSeries(arg1, arg2, arg3, arg4) -- Line 48
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	local var6 = arg3
	if not var6 then
		var6 = {}
	end
	local var7 = var6
	if type(arg2) ~= "string" then
	else
	end
	assert(true, "Expected seriesName to be a string")
	if type(var7) ~= "table" then
		-- KONSTANTWARNING: GOTO [29] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 22. Error Block 34 start (CF ANALYSIS FAILED)
	assert(true, "Expected additionalArgs to be a table")
	if type(arg4) ~= "number" then
	else
	end
	assert(true, "Expected throttlingPercent to be a number")
	if 0 <= arg4 then
		if arg4 > 10000 then
		else
		end
	end
	assert(true, "throttlingPercent must be between 0 - 10,000")
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:ReportInfluxSeries(arg2, var7, arg4)
	-- KONSTANTERROR: [28] 22. Error Block 34 end (CF ANALYSIS FAILED)
end
return module_2_upvr