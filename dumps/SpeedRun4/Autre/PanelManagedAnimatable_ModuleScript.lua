-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:30
-- Luau version 6, Types version 3
-- Time taken: 0.002337 seconds

local Otter_upvr = require(script:FindFirstAncestor("VrSpatialUi").Parent.Otter)
local function var3_upvr() -- Line 8
end
local tbl_upvr = {
	Default = {
		dampingRatio = 1;
		frequency = 4.5;
	};
	Slower = {
		dampingRatio = 1;
		frequency = 0.66;
	};
}
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.checkIfAnimateNeeded(arg1, arg2) -- Line 36
	if arg2 == arg1._currentGoal then
		return false
	end
	return true
end
function module_upvr.hideAndBlockAnimationUntilLookBackAgain(arg1) -- Line 43
	arg1._ignoreAnimateShow = true
	arg1:animateHideIfNeeded(true)
end
function module_upvr.animateHideIfNeeded(arg1, arg2) -- Line 48
	--[[ Upvalues[2]:
		[1]: var3_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if not arg2 then
		arg1._ignoreAnimateShow = false
	end
	if not arg1:checkIfAnimateNeeded(1) or arg1._pendingHideAnimation and arg1._pendingHideAnimation ~= var3_upvr then
	else
		arg1._currentGoal = 1
		arg1:animateToGoal(arg1._currentGoal, tbl_upvr.Slower)
	end
end
function module_upvr.animateShowIfNeeded(arg1) -- Line 59
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var3_upvr (readonly)
	]]
	if not arg1:checkIfAnimateNeeded(0) or arg1._ignoreAnimateShow then
	else
		arg1:cancelPendingTaskIfNeeded()
		arg1._currentGoal = 0
		arg1:animateToGoal(arg1._currentGoal, tbl_upvr.Default)
		local var9_upvw
		function arg1._pendingHideAnimation() -- Line 68
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: var9_upvw (read and write)
				[3]: var3_upvr (copied, readonly)
				[4]: tbl_upvr (copied, readonly)
			]]
			if arg1._pendingHideAnimation == var9_upvw then
				arg1._pendingHideAnimation = var3_upvr
				arg1:animateToGoal(1, tbl_upvr.Slower)
			end
		end
		var9_upvw = arg1._pendingHideAnimation
		task.delay(3, arg1._pendingHideAnimation)
	end
end
function module_upvr.animateToGoal(arg1, arg2, arg3) -- Line 78
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1._fadeTransparencyMotor:stop()
	arg1._fadeTransparencyMotor:setGoal(Otter_upvr.spring(arg2, arg3))
end
function module_upvr.isTargetVisible(arg1) -- Line 83
	local var10
	if arg1._targetInstance.GroupTransparency ~= 0 then
		var10 = false
	else
		var10 = true
	end
	return var10
end
function module_upvr.reset(arg1) -- Line 87
	arg1._fadeTransparencyMotor:stop()
	arg1:cancelPendingTaskIfNeeded()
	arg1._ignoreAnimateShow = false
	arg1._currentGoal = -1
	arg1._targetInstance.GroupTransparency = 0
	arg1._visibilityObservable:set(true)
end
function module_upvr.cancelPendingTaskIfNeeded(arg1) -- Line 96
	--[[ Upvalues[1]:
		[1]: var3_upvr (readonly)
	]]
	arg1._pendingHideAnimation = var3_upvr
end
function module_upvr.create(arg1, arg2) -- Line 100
	--[[ Upvalues[3]:
		[1]: Otter_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(arg1:GetDescendants())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.8]
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
return module_upvr