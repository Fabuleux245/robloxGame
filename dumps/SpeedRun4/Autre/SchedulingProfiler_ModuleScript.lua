-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:26
-- Luau version 6, Types version 3
-- Time taken: 0.004794 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module = {}
local Parent = script.Parent.Parent
local enableSchedulingProfiler_upvr = require(Parent.Shared).ReactFeatureFlags.enableSchedulingProfiler
local getComponentName_upvr = require(Parent.Shared).getComponentName
local var5_upvr
if _G.performance == nil then
	var5_upvr = false
else
	var5_upvr = true
end
if not _G.performance then
	local tbl_upvr_2 = {
		mark = function(arg1) -- Line 41, Named "mark"
			debug.profilebegin(arg1)
			debug.profileend()
		end;
	}
end
function formatLanes(arg1) -- Line 47
	return tostring(arg1)
end
local var7_upvw
local tbl_upvr = {
	CommitStart = 0;
	CommitStop = 1;
	LayoutEffectsStart = 2;
	LayoutEffectsStop = 3;
	PassiveEffectsStart = 4;
	PassiveEffectsStop = 5;
	RenderStart = 6;
	RenderYield = 7;
	RenderStop = 8;
}
if enableSchedulingProfiler_upvr and var5_upvr then
	tbl_upvr_2.mark("--react-init-"..tostring(require(Parent.Shared).ReactVersion))
end
function module.markCommitStarted(arg1) -- Line 75
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--commit-start-"..formatLanes(arg1))
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.CommitStart)
		end
	end
end
function module.markCommitStopped(arg1) -- Line 87
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--commit-stop")
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.CommitStop, arg1)
		end
	end
end
local any_new_result1_upvr = require(Parent.LuauPolyfill).WeakMap.new()
local var12_upvw = 0
function getWakeableID(arg1) -- Line 105
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: var12_upvw (read and write)
	]]
	if not any_new_result1_upvr:has(arg1) then
		any_new_result1_upvr:set(arg1, var12_upvw)
		var12_upvw += 1
	end
	return any_new_result1_upvr:get(arg1)
end
function module.markComponentSuspended(arg1, arg2) -- Line 113
	--[[ Upvalues[4]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: getComponentName_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	if enableSchedulingProfiler_upvr and var5_upvr then
		local getWakeableID_result1_upvr = getWakeableID(arg2)
		local var15_upvr = getComponentName_upvr(arg1.type) or "Unknown"
		tbl_upvr_2.mark("--suspense-suspend-"..tostring(getWakeableID_result1_upvr)..'-'..var15_upvr)
		arg2:andThen(function() -- Line 122
			--[[ Upvalues[3]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: getWakeableID_result1_upvr (readonly)
				[3]: var15_upvr (readonly)
			]]
			tbl_upvr_2.mark("--suspense-resolved-"..tostring(getWakeableID_result1_upvr)..'-'..var15_upvr)
		end, function() -- Line 126
			--[[ Upvalues[3]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: getWakeableID_result1_upvr (readonly)
				[3]: var15_upvr (readonly)
			]]
			tbl_upvr_2.mark("--suspense-rejected-"..tostring(getWakeableID_result1_upvr)..'-'..var15_upvr)
		end)
	end
end
function module.markLayoutEffectsStarted(arg1) -- Line 135
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--layout-effects-start-"..formatLanes(arg1))
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.LayoutEffectsStart)
		end
	end
end
function module.markLayoutEffectsStopped() -- Line 147
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--layout-effects-stop")
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.LayoutEffectsStop)
		end
	end
end
function module.markPassiveEffectsStarted(arg1) -- Line 159
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--passive-effects-start-"..formatLanes(arg1))
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.PassiveEffectsStart)
		end
	end
end
function module.markPassiveEffectsStopped(arg1) -- Line 171
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--passive-effects-stop")
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.PassiveEffectsStop, arg1)
		end
	end
end
function module.markRenderStarted(arg1) -- Line 183
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--render-start-"..formatLanes(arg1))
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.RenderStart)
		end
	end
end
function module.markRenderYielded() -- Line 195
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--render-yield")
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.RenderYield)
		end
	end
end
function module.markRenderStopped() -- Line 207
	--[[ Upvalues[5]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: var7_upvw (read and write)
		[5]: tbl_upvr (readonly)
	]]
	if enableSchedulingProfiler_upvr then
		if var5_upvr then
			tbl_upvr_2.mark("--render-stop")
		end
		if var7_upvw then
			var7_upvw(tbl_upvr.RenderStop)
		end
	end
end
function module.markRenderScheduled(arg1) -- Line 219
	--[[ Upvalues[3]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	if enableSchedulingProfiler_upvr and var5_upvr then
		tbl_upvr_2.mark("--schedule-render-"..formatLanes(arg1))
	end
end
function module.markForceUpdateScheduled(arg1, arg2) -- Line 227
	--[[ Upvalues[4]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: getComponentName_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	if enableSchedulingProfiler_upvr and var5_upvr then
		tbl_upvr_2.mark("--schedule-forced-update-"..formatLanes(arg2)..'-'..(getComponentName_upvr(arg1.type) or "Unknown"))
	end
end
function module.markStateUpdateScheduled(arg1, arg2) -- Line 239
	--[[ Upvalues[4]:
		[1]: enableSchedulingProfiler_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: getComponentName_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	if enableSchedulingProfiler_upvr and var5_upvr then
		tbl_upvr_2.mark("--schedule-state-update-"..formatLanes(arg2)..'-'..(getComponentName_upvr(arg1.type) or "Unknown"))
	end
end
module.profilerEventTypes = tbl_upvr
function module.registerProfilerEventCallback(arg1) -- Line 254
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	if var7_upvw then
		warn("SchedulingProfiler: Another event callback was already registered.")
	end
	var7_upvw = arg1
end
return module