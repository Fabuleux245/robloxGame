-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:54
-- Luau version 6, Types version 3
-- Time taken: 0.003264 seconds

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
local UserInputService_upvr = game:GetService("UserInputService")
function module_2_upvr.reportCounter(arg1, arg2, arg3) -- Line 47
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if type(arg2) ~= "string" then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "Expected counterName to be a string")
	if type(arg3) ~= "number" then
		var7 = false
	else
		var7 = true
	end
	assert(var7, "Expected amount to be a number")
	var7 = arg1._isEnabled
	assert(var7, "This reporting service is disabled")
	local None_upvw = Enum.Platform.None
	var7 = pcall
	var7(function() -- Line 56
		--[[ Upvalues[2]:
			[1]: None_upvw (read and write)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		None_upvw = UserInputService_upvr:GetPlatform()
	end)
	var7 = Enum.Platform.XBoxOne
	if None_upvw == var7 then
		var7 = "Xbox-"
	end
	var7 = arg1._reporter:ReportCounter
	var7(var7..tostring(arg2), arg3)
end
function module_2_upvr.reportCounterSimple(arg1, arg2, arg3) -- Line 69
	if arg1._isEnabled then
		arg1._reporter:ReportCounter(arg2, arg3)
	end
end
function module_2_upvr.reportStats(arg1, arg2, arg3) -- Line 77
	local var10
	if type(arg2) ~= "string" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "Expected category to be a string")
	if type(arg3) ~= "number" then
		var10 = false
	else
		var10 = true
	end
	assert(var10, "Expected value to be a number")
	var10 = arg1._isEnabled
	assert(var10, "This reporting service is disabled")
	arg1._reporter:ReportStats(arg2, arg3)
end
return module_2_upvr