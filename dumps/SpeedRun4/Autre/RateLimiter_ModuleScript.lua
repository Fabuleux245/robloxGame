-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:05
-- Luau version 6, Types version 3
-- Time taken: 0.002942 seconds

local t = require(game:GetService("CorePackages").Packages.t)
local module_upvr = {}
module_upvr.__index = module_upvr
local any_strictInterface_result1_upvr = t.strictInterface({
	period = t.number;
	threshold = t.number;
	processInterval = t.number;
})
function module_upvr.new(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	assert(any_strictInterface_result1_upvr(arg1))
	return setmetatable({
		_period = arg1.period;
		_threshold = arg1.threshold;
		_processInterval = arg1.processInterval;
		_lastProcessed = 0;
		_counts = {};
		_lastOccurrences = {};
	}, module_upvr)
end
function module_upvr.increment(arg1, arg2, arg3) -- Line 29
	local var6 = arg3
	if not var6 then
		var6 = os.clock()
	end
	arg1._lastOccurrences[arg2] = var6
	if arg1._counts[arg2] == nil then
		arg1._counts[arg2] = 1
	else
		local _counts = arg1._counts
		_counts[arg2] += 1
	end
end
function module_upvr.isRateLimited(arg1, arg2) -- Line 40
	local var8 = arg1._counts[arg2]
	local var9 = false
	if var8 ~= nil then
		if arg1._threshold >= var8 then
			var9 = false
		else
			var9 = true
		end
	end
	return var9
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.startDecrementClock(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	arg1._decrementConnection = RunService_upvr.Heartbeat:Connect(function() -- Line 46
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:stepDecrementClock(os.clock())
	end)
end
function module_upvr.stepDecrementClock(arg1, arg2) -- Line 51
	if arg1._processInterval < arg2 - arg1._lastProcessed then
		for i, v in pairs(arg1._lastOccurrences) do
			if arg1._period < arg2 - v then
				local _counts_2 = arg1._counts
				_counts_2[i] -= 1
				if arg1._counts[i] <= 0 then
					arg1._counts[i] = nil
					arg1._lastOccurrences[i] = nil
				end
			end
		end
		arg1._lastProcessed = arg2
	end
end
return module_upvr