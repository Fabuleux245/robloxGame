-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:08
-- Luau version 6, Types version 3
-- Time taken: 0.013473 seconds

local Parent = script.Parent.Parent
local roblox = require(script.Parent["ReactFiberSchedulerPriorities.roblox"])
local invariant_upvr = require(Parent.Shared).invariant
local ImmediatePriority_upvr = roblox.ImmediatePriority
local UserBlockingPriority_upvr = roblox.UserBlockingPriority
local NormalPriority_upvr = roblox.NormalPriority
local IdlePriority_upvr = roblox.IdlePriority
local module_2 = {
	SyncLanePriority = 15;
	SyncBatchedLanePriority = 14;
	InputDiscreteLanePriority = 12;
	InputContinuousLanePriority = 10;
	DefaultLanePriority = 8;
	TransitionPriority = 6;
	NoLanePriority = 0;
	NoLanes = 0;
	NoLane = 0;
	SyncLane = 1;
	SyncBatchedLane = 2;
	InputDiscreteHydrationLane = 4;
	DefaultHydrationLane = 256;
	DefaultLanes = 3584;
	RetryLanes = 62914560;
	SomeRetryLane = 33554432;
	SelectiveHydrationLane = 67108864;
	IdleHydrationLane = 134217728;
	OffscreenLane = 1073741824;
	NoTimestamp = -1;
}
local NoLanePriority_upvw = module_2.NoLanePriority
function module_2.getCurrentUpdateLanePriority() -- Line 146
	--[[ Upvalues[1]:
		[1]: NoLanePriority_upvw (read and write)
	]]
	return NoLanePriority_upvw
end
function module_2.setCurrentUpdateLanePriority(arg1) -- Line 150
	--[[ Upvalues[1]:
		[1]: NoLanePriority_upvw (read and write)
	]]
	NoLanePriority_upvw = arg1
end
local DefaultLanePriority_upvw = module_2.DefaultLanePriority
local console_upvr = require(Parent.Shared).console
local function getHighestPriorityLanes_upvr(arg1) -- Line 158, Named "getHighestPriorityLanes"
	--[[ Upvalues[2]:
		[1]: DefaultLanePriority_upvw (read and write)
		[2]: console_upvr (readonly)
	]]
	if bit32.band(1, arg1) ~= 0 then
		DefaultLanePriority_upvw = 15
		return 1
	end
	if bit32.band(2, arg1) ~= 0 then
		DefaultLanePriority_upvw = 14
		return 2
	end
	if bit32.band(4, arg1) ~= 0 then
		DefaultLanePriority_upvw = 13
		return 4
	end
	local masked_8 = bit32.band(24, arg1)
	if masked_8 ~= 0 then
		DefaultLanePriority_upvw = 12
		return masked_8
	end
	if bit32.band(arg1, 32) ~= 0 then
		DefaultLanePriority_upvw = 11
		return 32
	end
	local masked_10 = bit32.band(192, arg1)
	if masked_10 ~= 0 then
		DefaultLanePriority_upvw = 10
		return masked_10
	end
	if bit32.band(arg1, 256) ~= 0 then
		DefaultLanePriority_upvw = 9
		return 256
	end
	local masked_7 = bit32.band(3584, arg1)
	if masked_7 ~= 0 then
		DefaultLanePriority_upvw = 8
		return masked_7
	end
	if bit32.band(arg1, 4096) ~= 0 then
		DefaultLanePriority_upvw = 7
		return 4096
	end
	local masked_9 = bit32.band(4186112, arg1)
	if masked_9 ~= 0 then
		DefaultLanePriority_upvw = 6
		return masked_9
	end
	local masked_2 = bit32.band(62914560, arg1)
	if masked_2 ~= 0 then
		DefaultLanePriority_upvw = 5
		return masked_2
	end
	if bit32.band(arg1, 67108864) ~= 0 then
		DefaultLanePriority_upvw = 4
		return 67108864
	end
	if bit32.band(arg1, 134217728) ~= 0 then
		DefaultLanePriority_upvw = 3
		return 134217728
	end
	local masked_3 = bit32.band(805306368, arg1)
	if masked_3 ~= 0 then
		DefaultLanePriority_upvw = 2
		return masked_3
	end
	if bit32.band(1073741824, arg1) ~= 0 then
		DefaultLanePriority_upvw = 1
		return 1073741824
	end
	if _G.__DEV__ then
		console_upvr.error("Should have found matching lanes. This is a bug in React.")
	end
	DefaultLanePriority_upvw = 8
	return arg1
end
local LowPriority_upvr = roblox.LowPriority
function module_2.schedulerPriorityToLanePriority(arg1) -- Line 233
	--[[ Upvalues[5]:
		[1]: ImmediatePriority_upvr (readonly)
		[2]: UserBlockingPriority_upvr (readonly)
		[3]: NormalPriority_upvr (readonly)
		[4]: LowPriority_upvr (readonly)
		[5]: IdlePriority_upvr (readonly)
	]]
	if arg1 == ImmediatePriority_upvr then
		return 15
	end
	if arg1 == UserBlockingPriority_upvr then
		return 10
	end
	if arg1 == NormalPriority_upvr or arg1 == LowPriority_upvr then
		return 8
	end
	if arg1 == IdlePriority_upvr then
		return 2
	end
	return 0
end
local NoPriority_upvr = roblox.NoPriority
function module_2.lanePriorityToSchedulerPriority(arg1) -- Line 254
	--[[ Upvalues[6]:
		[1]: ImmediatePriority_upvr (readonly)
		[2]: UserBlockingPriority_upvr (readonly)
		[3]: NormalPriority_upvr (readonly)
		[4]: IdlePriority_upvr (readonly)
		[5]: NoPriority_upvr (readonly)
		[6]: invariant_upvr (readonly)
	]]
	if arg1 == 15 or arg1 == 14 then
		return ImmediatePriority_upvr
	end
	if arg1 == 13 or arg1 == 12 or arg1 == 11 or arg1 == 10 then
		return UserBlockingPriority_upvr
	end
	if arg1 == 9 or arg1 == 8 or arg1 == 7 or arg1 == 6 or arg1 == 4 or arg1 == 5 then
		return NormalPriority_upvr
	end
	if arg1 == 3 or arg1 == 2 or arg1 == 1 then
		return IdlePriority_upvr
	end
	if arg1 == 0 then
		return NoPriority_upvr
	end
	invariant_upvr(false, "Invalid update priority: %s. This is a bug in React.", arg1)
	error("unreachable")
end
local pickArbitraryLaneIndex_upvw
local getLowestPriorityLane_upvw
function module_2.getNextLanes(arg1, arg2) -- Line 298
	--[[ Upvalues[4]:
		[1]: DefaultLanePriority_upvw (read and write)
		[2]: getHighestPriorityLanes_upvr (readonly)
		[3]: getLowestPriorityLane_upvw (read and write)
		[4]: pickArbitraryLaneIndex_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 52 start (CF ANALYSIS FAILED)
	local pendingLanes = arg1.pendingLanes
	local var25
	if pendingLanes == 0 then
		var25 = 0
		DefaultLanePriority_upvw = var25
		var25 = 0
		return var25
	end
	var25 = 0
	local expiredLanes = arg1.expiredLanes
	local suspendedLanes = arg1.suspendedLanes
	local pingedLanes = arg1.pingedLanes
	if expiredLanes ~= 0 then
		var25 = expiredLanes
		DefaultLanePriority_upvw = 15
		-- KONSTANTWARNING: GOTO [92] #72
	end
	-- KONSTANTERROR: [0] 1. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 53 start (CF ANALYSIS FAILED)
	local masked_6 = bit32.band(pendingLanes, 134217727)
	if masked_6 ~= 0 then
		local masked_12 = bit32.band(masked_6, bit32.bnot(suspendedLanes))
		if masked_12 ~= 0 then
			var25 = getHighestPriorityLanes_upvr(masked_12)
			local _ = DefaultLanePriority_upvw
		else
			local masked_13 = bit32.band(masked_6, pingedLanes)
			if masked_13 ~= 0 then
				var25 = getHighestPriorityLanes_upvr(masked_13)
				-- KONSTANTWARNING: GOTO [92] #72
			end
		end
	else
		local masked_5 = bit32.band(pendingLanes, bit32.bnot(suspendedLanes))
		if masked_5 ~= 0 then
			var25 = getHighestPriorityLanes_upvr(masked_5)
		elseif pingedLanes ~= 0 then
			var25 = getHighestPriorityLanes_upvr(pingedLanes)
		end
	end
	if var25 == 0 then
		return 0
	end
	var25 = bit32.band(pendingLanes, bit32.lshift(getLowestPriorityLane_upvw(var25), 1) - 1)
	if arg2 ~= 0 and arg2 ~= var25 and bit32.band(arg2, suspendedLanes) == 0 then
		getHighestPriorityLanes_upvr(arg2)
		if DefaultLanePriority_upvw <= DefaultLanePriority_upvw then
			return arg2
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		DefaultLanePriority_upvw = DefaultLanePriority_upvw
	end
	local entangledLanes = arg1.entangledLanes
	if entangledLanes ~= 0 then
		local masked = bit32.band(var25, entangledLanes)
		while 0 < masked do
			var25 = bit32.bor(var25, arg1.entanglements[pickArbitraryLaneIndex_upvw(masked)])
		end
	end
	do
		return var25
	end
	-- KONSTANTERROR: [23] 18. Error Block 53 end (CF ANALYSIS FAILED)
end
function module_2.getMostRecentEventTime(arg1, arg2) -- Line 417
	--[[ Upvalues[1]:
		[1]: pickArbitraryLaneIndex_upvw (read and write)
	]]
	local var37
	while 0 < arg2 do
		local var39 = arg1.eventTimes[pickArbitraryLaneIndex_upvw(arg2)]
		if var37 < var39 then
			var37 = var39
		end
	end
	return var37
end
function module_2.computeExpirationTime(arg1, arg2) -- Line 437
	--[[ Upvalues[2]:
		[1]: getHighestPriorityLanes_upvr (readonly)
		[2]: DefaultLanePriority_upvw (read and write)
	]]
	getHighestPriorityLanes_upvr(arg1)
	local var40 = DefaultLanePriority_upvw
	if 10 <= var40 then
		return arg2 + 250
	end
	if 6 <= var40 then
		return arg2 + 5000
	end
	return -1
end
function module_2.markStarvedLanesAsExpired(arg1, arg2) -- Line 467
	--[[ Upvalues[3]:
		[1]: pickArbitraryLaneIndex_upvw (read and write)
		[2]: getHighestPriorityLanes_upvr (readonly)
		[3]: DefaultLanePriority_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 53. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [74.8]
	-- KONSTANTERROR: [73] 53. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.7]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.65666]
	-- KONSTANTERROR: [9] 6. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_2.getHighestPriorityPendingLanes(arg1) -- Line 509
	--[[ Upvalues[1]:
		[1]: getHighestPriorityLanes_upvr (readonly)
	]]
	return getHighestPriorityLanes_upvr(arg1.pendingLanes)
end
function module_2.getLanesToRetrySynchronouslyOnError(arg1) -- Line 514
	local masked_11 = bit32.band(arg1.pendingLanes, 3221225471)
	if masked_11 ~= 0 then
		return masked_11
	end
	if bit32.band(masked_11, 1073741824) ~= 0 then
		return 1073741824
	end
	return 0
end
function module_2.returnNextLanesPriority() -- Line 527
	--[[ Upvalues[1]:
		[1]: DefaultLanePriority_upvw (read and write)
	]]
	return DefaultLanePriority_upvw
end
function module_2.includesNonIdleWork(arg1) -- Line 532
	local var42
	if bit32.band(arg1, 134217727) == 0 then
		var42 = false
	else
		var42 = true
	end
	return var42
end
function module_2.includesOnlyRetries(arg1) -- Line 537
	local var43
	if bit32.band(arg1, 62914560) ~= arg1 then
		var43 = false
	else
		var43 = true
	end
	return var43
end
function module_2.includesOnlyTransitions(arg1) -- Line 542
	local var44
	if bit32.band(arg1, 4186112) ~= arg1 then
		var44 = false
	else
		var44 = true
	end
	return var44
end
local pickArbitraryLane_upvw
local function findUpdateLane_upvr(arg1, arg2) -- Line 552, Named "findUpdateLane"
	--[[ Upvalues[3]:
		[1]: pickArbitraryLane_upvw (read and write)
		[2]: findUpdateLane_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	if arg1 == 0 then
	else
		if arg1 == 15 then
			return 1
		end
		if arg1 == 14 then
			return 2
		end
		if arg1 == 12 then
			local pickArbitraryLane_result1_8 = pickArbitraryLane_upvw(bit32.band(24, bit32.bnot(arg2)))
			if pickArbitraryLane_result1_8 == 0 then
				return findUpdateLane_upvr(10, arg2)
			end
			return pickArbitraryLane_result1_8
		end
		if arg1 == 10 then
			local pickArbitraryLane_result1_3 = pickArbitraryLane_upvw(bit32.band(192, bit32.bnot(arg2)))
			if pickArbitraryLane_result1_3 == 0 then
				return findUpdateLane_upvr(8, arg2)
			end
			return pickArbitraryLane_result1_3
		end
		if arg1 == 8 then
			local pickArbitraryLane_upvw_result1_3 = pickArbitraryLane_upvw(bit32.band(3584, bit32.bnot(arg2)))
			if pickArbitraryLane_upvw_result1_3 == 0 then
				pickArbitraryLane_upvw_result1_3 = pickArbitraryLane_upvw(bit32.band(4186112, bit32.bnot(arg2)))
				if pickArbitraryLane_upvw_result1_3 == 0 then
					pickArbitraryLane_upvw_result1_3 = pickArbitraryLane_upvw(3584)
				end
			end
			return pickArbitraryLane_upvw_result1_3
		end
		if arg1 ~= 6 then
			if arg1 == 5 then
			elseif arg1 == 2 then
				local pickArbitraryLane_result1_7 = pickArbitraryLane_upvw(bit32.band(805306368, bit32.bnot(arg2)))
				if pickArbitraryLane_result1_7 == 0 then
					pickArbitraryLane_result1_7 = pickArbitraryLane_upvw(805306368)
				end
				return pickArbitraryLane_result1_7
			end
		end
	end
	invariant_upvr(false, "Invalid update priority: %s. This is a bug in React.", arg1)
	error("unreachable")
end
module_2.findUpdateLane = findUpdateLane_upvr
function module_2.findTransitionLane(arg1, arg2) -- Line 611
	--[[ Upvalues[1]:
		[1]: pickArbitraryLane_upvw (read and write)
	]]
	local pickArbitraryLane_upvw_result1 = pickArbitraryLane_upvw(bit32.band(4186112, bit32.bnot(arg2)))
	if pickArbitraryLane_upvw_result1 == 0 then
		pickArbitraryLane_upvw_result1 = pickArbitraryLane_upvw(bit32.band(4186112, bit32.bnot(arg1)))
		if pickArbitraryLane_upvw_result1 == 0 then
			pickArbitraryLane_upvw_result1 = pickArbitraryLane_upvw(4186112)
		end
	end
	return pickArbitraryLane_upvw_result1
end
function module_2.findRetryLane(arg1) -- Line 631
	--[[ Upvalues[1]:
		[1]: pickArbitraryLane_upvw (read and write)
	]]
	local pickArbitraryLane_result1_4 = pickArbitraryLane_upvw(bit32.band(62914560, bit32.bnot(arg1)))
	if pickArbitraryLane_result1_4 == 0 then
		pickArbitraryLane_result1_4 = pickArbitraryLane_upvw(62914560)
	end
	return pickArbitraryLane_result1_4
end
local function _(arg1) -- Line 643, Named "getHighestPriorityLane"
	return bit32.band(arg1, -arg1)
end
function getLowestPriorityLane_upvw(arg1) -- Line 647, Named "getLowestPriorityLane"
	local var57 = 31 - bit32.countlz(arg1)
	if var57 < 0 then
		return 0
	end
	return bit32.lshift(1, var57)
end
local function _(arg1) -- Line 657, Named "getEqualOrHigherPriorityLanes"
	--[[ Upvalues[1]:
		[1]: getLowestPriorityLane_upvw (read and write)
	]]
	return bit32.lshift(getLowestPriorityLane_upvw(arg1), 1) - 1
end
function pickArbitraryLane_upvw(arg1) -- Line 661, Named "pickArbitraryLane"
	return bit32.band(arg1, -arg1)
end
module_2.pickArbitraryLane = pickArbitraryLane_upvw
function pickArbitraryLaneIndex_upvw(arg1) -- Line 670, Named "pickArbitraryLaneIndex"
	return 31 - bit32.countlz(arg1)
end
local var58_upvw = pickArbitraryLaneIndex_upvw
function module_2.includesSomeLane(arg1, arg2) -- Line 679
	local var59
	if bit32.band(arg1, arg2) == 0 then
		var59 = false
	else
		var59 = true
	end
	return var59
end
function module_2.isSubsetOfLanes(arg1, arg2) -- Line 684
	local var60
	if bit32.band(arg1, arg2) ~= arg2 then
		var60 = false
	else
		var60 = true
	end
	return var60
end
local removeLanes
if require(Parent.SafeFlags).createGetFFlag("ReactInlineMergeLanes")() then
	removeLanes = bit32.bor
else
	removeLanes = function(arg1, arg2) -- Line 689, Named "mergeLanes"
		return bit32.bor(arg1, arg2)
	end
end
module_2.mergeLanes = removeLanes
function removeLanes(arg1, arg2) -- Line 697
	return bit32.band(arg1, bit32.bnot(arg2))
end
module_2.removeLanes = removeLanes
function module_2.laneToLanes(arg1) -- Line 704
	return arg1
end
function module_2.higherPriorityLane(arg1, arg2) -- Line 709
	if arg1 ~= 0 and arg2 ~= 0 then
		if arg1 < arg2 then
			return arg1
		end
		return arg2
	end
	if arg1 ~= 0 then
		return arg1
	end
	return arg2
end
function module_2.higherLanePriority(arg1, arg2) -- Line 725
	if arg1 ~= 0 and arg2 < arg1 then
		return arg1
	end
	return arg2
end
function module_2.createLaneMap(arg1) -- Line 736
	local module = {}
	module[0] = arg1
	module[1] = arg1
	module[2] = arg1
	module[3] = arg1
	module[4] = arg1
	module[5] = arg1
	module[6] = arg1
	module[7] = arg1
	module[8] = arg1
	module[9] = arg1
	module[10] = arg1
	module[11] = arg1
	module[12] = arg1
	module[13] = arg1
	module[14] = arg1
	module[15] = arg1
	module[16] = arg1
	module[17] = arg1
	module[18] = arg1
	module[19] = arg1
	module[20] = arg1
	module[21] = arg1
	module[22] = arg1
	module[23] = arg1
	module[24] = arg1
	module[25] = arg1
	module[26] = arg1
	module[27] = arg1
	module[28] = arg1
	module[29] = arg1
	module[30] = arg1
	module[31] = arg1
	return module
end
function module_2.markRootUpdated(arg1, arg2, arg3) -- Line 780
	arg1.pendingLanes = bit32.bor(arg1.pendingLanes, arg2)
	local var63 = arg2 - 1
	arg1.suspendedLanes = bit32.band(arg1.suspendedLanes, var63)
	arg1.pingedLanes = bit32.band(arg1.pingedLanes, var63)
	arg1.eventTimes[31 - bit32.countlz(arg2)] = arg3
end
function module_2.markRootSuspended(arg1, arg2) -- Line 809
	--[[ Upvalues[1]:
		[1]: var58_upvw (read and write)
	]]
	arg1.suspendedLanes = bit32.bor(arg1.suspendedLanes, arg2)
	arg1.pingedLanes = bit32.band(arg1.pingedLanes, bit32.bnot(arg2))
	local var64 = arg2
	while 0 < var64 do
		arg1.expirationTimes[var58_upvw(var64)] = -1
	end
end
function module_2.markRootPinged(arg1, arg2, arg3) -- Line 827
	arg1.pingedLanes = bit32.bor(arg1.pingedLanes, bit32.band(arg1.suspendedLanes, arg2))
end
function module_2.markRootExpired(arg1, arg2) -- Line 833
	arg1.expiredLanes = bit32.bor(arg1.expiredLanes, bit32.band(arg2, arg1.pendingLanes))
end
function module_2.markDiscreteUpdatesExpired(arg1) -- Line 839
	arg1.expiredLanes = bit32.bor(arg1.expiredLanes, bit32.band(24, arg1.pendingLanes))
end
function module_2.hasDiscreteLanes(arg1) -- Line 845
	local var66
	if bit32.band(arg1, 24) == 0 then
		var66 = false
	else
		var66 = true
	end
	return var66
end
function module_2.markRootMutableRead(arg1, arg2) -- Line 850
	arg1.mutableReadLanes = bit32.bor(arg1.mutableReadLanes, bit32.band(arg2, arg1.pendingLanes))
end
function module_2.markRootFinished(arg1, arg2) -- Line 856
	--[[ Upvalues[1]:
		[1]: var58_upvw (read and write)
	]]
	arg1.pendingLanes = arg2
	arg1.suspendedLanes = 0
	arg1.pingedLanes = 0
	arg1.expiredLanes = bit32.band(arg1.expiredLanes, arg2)
	arg1.mutableReadLanes = bit32.band(arg1.mutableReadLanes, arg2)
	arg1.entangledLanes = bit32.band(arg1.entangledLanes, arg2)
	local masked_4 = bit32.band(arg1.pendingLanes, bit32.bnot(arg2))
	while 0 < masked_4 do
		local var58_upvw_result1_2 = var58_upvw(masked_4)
		arg1.entanglements[var58_upvw_result1_2] = 0
		arg1.eventTimes[var58_upvw_result1_2] = -1
		arg1.expirationTimes[var58_upvw_result1_2] = -1
	end
end
function module_2.markRootEntangled(arg1, arg2) -- Line 889
	--[[ Upvalues[1]:
		[1]: var58_upvw (read and write)
	]]
	arg1.entangledLanes = bit32.bor(arg1.entangledLanes, arg2)
	local entanglements = arg1.entanglements
	local var70 = arg2
	while 0 < var70 do
		local var58_upvw_result1 = var58_upvw(var70)
		entanglements[var58_upvw_result1] = bit32.bor(entanglements[var58_upvw_result1], arg2)
	end
end
function module_2.getBumpedLaneForHydration(arg1, arg2) -- Line 905
	--[[ Upvalues[3]:
		[1]: getHighestPriorityLanes_upvr (readonly)
		[2]: DefaultLanePriority_upvw (read and write)
		[3]: invariant_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 56 start (CF ANALYSIS FAILED)
	getHighestPriorityLanes_upvr(arg2)
	local var72 = DefaultLanePriority_upvw
	if var72 == 15 or var72 == 14 then
		-- KONSTANTWARNING: GOTO [64] #48
	end
	-- KONSTANTERROR: [0] 1. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 55 start (CF ANALYSIS FAILED)
	if var72 == 13 or var72 == 12 then
		-- KONSTANTWARNING: GOTO [64] #48
	end
	-- KONSTANTERROR: [11] 10. Error Block 55 end (CF ANALYSIS FAILED)
end
return module_2