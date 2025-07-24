-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:55
-- Luau version 6, Types version 3
-- Time taken: 0.002394 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1) -- Line 24
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
function module_2_upvr.setEnabled(arg1, arg2) -- Line 37
	local var5
	if type(arg2) ~= "boolean" then
		var5 = false
	else
		var5 = true
	end
	assert(var5, "Expected isEnabled to be a boolean")
	arg1._isEnabled = arg2
end
function module_2_upvr.trackEvent(arg1, arg2, arg3, arg4, arg5) -- Line 46
	local var6
	if type(arg2) ~= "string" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "Expected category to be a string")
	if type(arg3) ~= "string" then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "Expected action to be a string")
	if arg4 then
		if type(arg4) ~= "string" then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "Expected label to be a string")
	end
	if arg5 then
		if type(arg5) ~= "number" then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "Expected value to be a number")
		if 0 > arg5 then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "Expected value must not be a negative value")
	end
	assert(arg1._isEnabled, "This reporting service is disabled")
	arg1._reporter:TrackEvent(arg2, arg3, arg4, arg5)
end
return module_2_upvr