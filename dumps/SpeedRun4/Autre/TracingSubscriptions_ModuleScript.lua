-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:15
-- Luau version 6, Types version 3
-- Time taken: 0.004924 seconds

local module = {}
local Parent = script.Parent.Parent
local Object_upvr = require(Parent.LuauPolyfill).Object
local enableSchedulerTracing_upvr = require(Parent.Shared).ReactFeatureFlags.enableSchedulerTracing
local __subscriberRef_upvr = require(script.Parent.Tracing).__subscriberRef
local tbl_2_upvw = {}
if enableSchedulerTracing_upvr then
	tbl_2_upvw = {}
end
function module.unstable_subscribe(arg1) -- Line 30
	--[[ Upvalues[4]:
		[1]: enableSchedulerTracing_upvr (readonly)
		[2]: tbl_2_upvw (read and write)
		[3]: Object_upvr (readonly)
		[4]: __subscriberRef_upvr (readonly)
	]]
	if enableSchedulerTracing_upvr then
		tbl_2_upvw[arg1] = true
		if #Object_upvr.keys(tbl_2_upvw) == 1 then
			__subscriberRef_upvr.current = {
				onInteractionScheduledWorkCompleted = onInteractionScheduledWorkCompleted;
				onInteractionTraced = onInteractionTraced;
				onWorkCanceled = onWorkCanceled;
				onWorkScheduled = onWorkScheduled;
				onWorkStarted = onWorkStarted;
				onWorkStopped = onWorkStopped;
			}
		end
	end
end
function module.unstable_unsubscribe(arg1) -- Line 47
	--[[ Upvalues[4]:
		[1]: enableSchedulerTracing_upvr (readonly)
		[2]: tbl_2_upvw (read and write)
		[3]: Object_upvr (readonly)
		[4]: __subscriberRef_upvr (readonly)
	]]
	if enableSchedulerTracing_upvr then
		tbl_2_upvw[arg1] = nil
		if #Object_upvr.keys(tbl_2_upvw) == 0 then
			__subscriberRef_upvr.current = nil
		end
	end
end
function onInteractionTraced(arg1) -- Line 57
	--[[ Upvalues[1]:
		[1]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	for i, _ in tbl_2_upvw do
		local pcall_result1_5, pcall_result2_3 = pcall(i.onInteractionTraced, arg1)
		if not pcall_result1_5 and not var19 then
			var19 = true
		end
	end
	if var19 then
		error(pcall_result2_3)
	end
end
function onInteractionScheduledWorkCompleted(arg1) -- Line 79
	--[[ Upvalues[1]:
		[1]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var30
	for i_2, _ in tbl_2_upvw do
		local pcall_result1, pcall_result2_6 = pcall(i_2.onInteractionScheduledWorkCompleted, arg1)
		if not pcall_result1 and not var30 then
			var30 = true
		end
	end
	if var30 then
		error(pcall_result2_6)
	end
end
function onWorkScheduled(arg1, arg2) -- Line 102
	--[[ Upvalues[1]:
		[1]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var41
	for i_3, _ in tbl_2_upvw do
		local pcall_result1_3, pcall_result2_5 = pcall(i_3.onWorkScheduled, arg1, arg2)
		if not pcall_result1_3 and not var41 then
			var41 = true
		end
	end
	if var41 then
		error(pcall_result2_5)
	end
end
function onWorkStarted(arg1, arg2) -- Line 124
	--[[ Upvalues[1]:
		[1]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var52
	for i_4, _ in tbl_2_upvw do
		local pcall_result1_2, pcall_result2 = pcall(i_4.onWorkStarted, arg1, arg2)
		if not pcall_result1_2 and not var52 then
			var52 = true
		end
	end
	if var52 then
		error(pcall_result2)
	end
end
function onWorkStopped(arg1, arg2) -- Line 146
	--[[ Upvalues[1]:
		[1]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var63
	for i_5, _ in tbl_2_upvw do
		local pcall_result1_4, pcall_result2_2 = pcall(i_5.onWorkStopped, arg1, arg2)
		if not pcall_result1_4 and not var63 then
			var63 = true
		end
	end
	if var63 then
		error(pcall_result2_2)
	end
end
function onWorkCanceled(arg1, arg2) -- Line 168
	--[[ Upvalues[1]:
		[1]: tbl_2_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var74
	for i_6, _ in tbl_2_upvw do
		local pcall_result1_6, pcall_result2_4 = pcall(i_6.onWorkCanceled, arg1, arg2)
		if not pcall_result1_6 and not var74 then
			var74 = true
		end
	end
	if var74 then
		error(pcall_result2_4)
	end
end
return module