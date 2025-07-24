-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:12
-- Luau version 6, Types version 3
-- Time taken: 0.001560 seconds

local HoldToPlay = script:FindFirstAncestor("HoldToPlay")
local Parent = HoldToPlay.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local AppShortcutBarContext_upvr = require(Parent.AppShortcutBar).AppShortcutBarContext
local React_upvr = require(Parent.React)
local ButtonHoldStateEnum_upvr = FocusNavigationUtils.ButtonHoldStateEnum
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local HoldToPlayLoader_upvr = require(HoldToPlay.HoldToPlayLoader)
return function(arg1) -- Line 36, Named "HoldToPlayLauncher"
	--[[ Upvalues[5]:
		[1]: AppShortcutBarContext_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ButtonHoldStateEnum_upvr (readonly)
		[4]: FocusNavigationEventNameEnum_upvr (readonly)
		[5]: HoldToPlayLoader_upvr (readonly)
	]]
	local any_useDispatchButtonHoldStarted_result1_upvr = AppShortcutBarContext_upvr.useDispatchButtonHoldStarted()
	local any_useDispatchButtonHoldEnded_result1_upvr = AppShortcutBarContext_upvr.useDispatchButtonHoldEnded()
	React_upvr.useEffect(function() -- Line 40
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: ButtonHoldStateEnum_upvr (copied, readonly)
			[3]: any_useDispatchButtonHoldStarted_result1_upvr (readonly)
			[4]: FocusNavigationEventNameEnum_upvr (copied, readonly)
			[5]: any_useDispatchButtonHoldEnded_result1_upvr (readonly)
		]]
		if arg1.holdState == ButtonHoldStateEnum_upvr.JUST_PRESSED then
			any_useDispatchButtonHoldStarted_result1_upvr(FocusNavigationEventNameEnum_upvr.HoldToPlay, arg1.holdProgress)
		elseif arg1.holdState == ButtonHoldStateEnum_upvr.NOT_HELD then
			any_useDispatchButtonHoldEnded_result1_upvr(FocusNavigationEventNameEnum_upvr.HoldToPlay)
		end
	end, {arg1.holdState, arg1.holdProgress, any_useDispatchButtonHoldStarted_result1_upvr, any_useDispatchButtonHoldEnded_result1_upvr})
	local function var13() -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.reportExperienceLaunched(arg1.selectedEntry, arg1.referralSource, nil, arg1.launchContext, arg1.selectedIndex)
	end
	var13 = arg1.selectedNavigationUniverseId
	local var15
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var15 = arg1.selectedEntry.universeId
		return var15
	end
	if not var15 and (not arg1.selectedEntry or not INLINED()) then
		var15 = nil
		local var16
	end
	if var15 and (arg1.holdState == ButtonHoldStateEnum_upvr.HOLDING or arg1.holdState == ButtonHoldStateEnum_upvr.COMPLETED) then
		local module = {
			universeId = var15;
		}
		if arg1.holdState ~= ButtonHoldStateEnum_upvr.COMPLETED then
			var16 = false
		else
			var16 = true
		end
		module.shouldAttemptLaunch = var16
		module.reportExperienceLaunched = React_upvr.useCallback(var13, {arg1.reportExperienceLaunched, arg1.selectedEntry, arg1.referralSource, arg1.selectedIndex, arg1.launchContext})
		var16 = arg1.cancelHold
		module.onLaunched = var16
		return React_upvr.createElement(HoldToPlayLoader_upvr, module)
	end
	return nil
end