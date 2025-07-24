-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:15
-- Luau version 6, Types version 3
-- Time taken: 0.001147 seconds

local mock = require(script.Parent.forks["SchedulerHostConfig.mock"])
local var14 = require(script.Parent.Scheduler)(mock)
local module = {
	tracing = {};
}
for i, v in var14 do
	module[i] = v
end
for i_2, v_2 in require(script.Parent.Tracing), nil do
	module.tracing[i_2] = v_2
end
for i_3, v_3 in require(script.Parent.TracingSubscriptions), nil do
	module.tracing[i_3] = v_3
end
module.unstable_flushAllWithoutAsserting = mock.unstable_flushAllWithoutAsserting
module.unstable_flushNumberOfYields = mock.unstable_flushNumberOfYields
module.unstable_flushExpired = mock.unstable_flushExpired
module.unstable_clearYields = mock.unstable_clearYields
module.unstable_flushUntilNextPaint = mock.unstable_flushUntilNextPaint
module.unstable_flushAll = mock.unstable_flushAll
module.unstable_yieldValue = mock.unstable_yieldValue
module.unstable_advanceTime = mock.unstable_advanceTime
module.unstable_Profiling = var14.unstable_Profiling
return module