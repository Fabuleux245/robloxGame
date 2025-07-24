-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:22
-- Luau version 6, Types version 3
-- Time taken: 0.001931 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 6
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.lastInputTimeSec = -1
	setmetatable_result1.subscriptions = {}
	setmetatable_result1.lastProgress = -1
	return setmetatable_result1
end
function module_upvr.getCurrentProgress(arg1) -- Line 15
	local var3 = os.clock() - arg1.lastInputTimeSec
	if var3 < arg1.dwellTimeSec then
		return 1
	end
	if var3 < arg1.dwellTimeSec + arg1.fadeDurationSec then
		return 1 - (var3 - arg1.dwellTimeSec) / arg1.fadeDurationSec
	end
	return 0
end
function module_upvr.inProgress(arg1) -- Line 26
	local var4
	if 0 >= arg1:getCurrentProgress() then
		var4 = false
	else
		var4 = true
	end
	return var4
end
function module_upvr.isFading(arg1) -- Line 30
	local var5 = os.clock() - arg1.lastInputTimeSec
	local var6 = false
	if arg1.dwellTimeSec <= var5 then
		if var5 >= arg1.dwellTimeSec + arg1.fadeDurationSec then
			var6 = false
		else
			var6 = true
		end
	end
	return var6
end
function module_upvr.updateLastInputTime(arg1) -- Line 35
	arg1.lastInputTimeSec = os.clock()
end
function module_upvr.skipToFade(arg1) -- Line 39
	if not arg1:isFading() then
		arg1.lastInputTimeSec = os.clock() - arg1.dwellTimeSec
	end
end
function module_upvr.zeroOut(arg1) -- Line 45
	arg1.lastInputTimeSec = -1
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.subscribe(arg1, arg2) -- Line 49
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	table.insert(arg1.subscriptions, arg2)
	if not arg1.heartbeatConnection then
		arg1.heartbeatConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 53
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_getCurrentProgress_result1 = arg1:getCurrentProgress()
			if any_getCurrentProgress_result1 ~= arg1.lastProgress then
				arg1.lastProgress = any_getCurrentProgress_result1
				for _, v in ipairs(arg1.subscriptions) do
					v(any_getCurrentProgress_result1)
				end
			end
		end)
	end
end
function module_upvr.unsubscribe(arg1, arg2) -- Line 65
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1.subscriptions)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.6]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [15.2147483650]
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
module_upvr.fadeDurationSec = 1
module_upvr.dwellTimeSec = 1
return module_upvr