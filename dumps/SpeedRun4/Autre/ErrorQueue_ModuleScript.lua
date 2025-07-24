-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:58
-- Luau version 6, Types version 3
-- Time taken: 0.004764 seconds

local Parent = script.Parent.Parent
local t = require(Parent.t)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local any_tuple_result1_upvr = t.tuple(t.callback, t.optional(t.strictInterface({
	queueTimeLimit = t.optional(t.numberPositive);
	queueErrorLimit = t.optional(t.numberPositive);
	queueKeyLimit = t.optional(t.numberPositive);
})))
function module_2_upvr.new(arg1, arg2) -- Line 26
	--[[ Upvalues[2]:
		[1]: any_tuple_result1_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	assert(any_tuple_result1_upvr(arg1, arg2))
	local var6 = arg2
	if not var6 then
		var6 = {}
	end
	local var7 = var6
	local module = {}
	module._reportMethod = arg1
	module._queueTimeLimit = var7.queueTimeLimit or 30
	module._queueErrorLimit = var7.queueErrorLimit or 30
	module._queueKeyLimit = var7.queueKeyLimit or 10
	module._errors = {}
	module._totalErrorCount = 0
	module._totalKeyCount = 0
	module._runningTime = 0
	module._renderSteppedConnection = nil
	setmetatable(module, module_2_upvr)
	return module
end
function module_2_upvr.hasError(arg1, arg2) -- Line 52
	local var9
	if var9 ~= "string" or arg2 == "" then
		var9 = false
		return var9
	end
	if arg1._errors[arg2] == nil then
		var9 = false
	else
		var9 = true
	end
	return var9
end
function module_2_upvr.addError(arg1, arg2, arg3) -- Line 60
	if type(arg2) ~= "string" or arg2 == "" then
	else
		if not arg1._errors[arg2] then
			local tbl = {}
			tbl.data = arg3
			tbl.count = 1
			arg1._errors[arg2] = tbl
			arg1._totalKeyCount += 1
		else
			arg1._errors[arg2].count = arg1._errors[arg2].count + 1
		end
		arg1._totalErrorCount += 1
		if arg1:isReadyToReport() then
			arg1:reportAllErrors()
		end
	end
end
function module_2_upvr.isReadyToReport(arg1) -- Line 84
	local var13 = true
	if arg1._queueKeyLimit > arg1._totalKeyCount then
		var13 = true
		if arg1._queueErrorLimit > arg1._totalErrorCount then
			var13 = false
			if 0 < arg1._totalErrorCount then
				if arg1._queueTimeLimit > arg1._runningTime then
					var13 = false
				else
					var13 = true
				end
			end
		end
	end
	return var13
end
local Cryo_upvr = require(Parent.Cryo)
function module_2_upvr.reportAllErrors(arg1) -- Line 90
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	arg1._errors = {}
	arg1._totalErrorCount = 0
	arg1._totalKeyCount = 0
	arg1._runningTime = 0
	for i, v in pairs(Cryo_upvr.Dictionary.join(arg1._errors, {})) do
		arg1._reportMethod(i, v.data, v.count)
	end
end
function module_2_upvr._onRenderStep(arg1, arg2) -- Line 105
	arg1._runningTime += arg2
	if arg1:isReadyToReport() then
		arg1:reportAllErrors()
	end
end
local RunService_upvr = game:GetService("RunService")
function module_2_upvr.startTimer(arg1) -- Line 113
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg1._renderSteppedConnection == nil then
		arg1._runningTime = 0
		arg1._renderSteppedConnection = RunService_upvr.renderStepped:Connect(function(arg1_2) -- Line 117
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onRenderStep(arg1_2)
		end)
	end
end
function module_2_upvr.stopTimer(arg1) -- Line 123
	if arg1._renderSteppedConnection ~= nil then
		arg1._renderSteppedConnection:Disconnect()
		arg1._runningTime = 0
		arg1._renderSteppedConnection = nil
	end
end
return module_2_upvr