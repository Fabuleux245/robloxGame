-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:14
-- Luau version 6, Types version 3
-- Time taken: 0.002313 seconds

local HoldToPlay = script:FindFirstAncestor("HoldToPlay")
local Parent = HoldToPlay.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local useButtonHold_upvr = FocusNavigationUtils.useButtonHold
local Constants_upvr = require(HoldToPlay.Constants)
local React_upvr = require(Parent.React)
local ButtonHoldStateEnum_upvr = FocusNavigationUtils.ButtonHoldStateEnum
return function(arg1, arg2) -- Line 13, Named "useHoldToPlayStateAndCallbacks"
	--[[ Upvalues[4]:
		[1]: useButtonHold_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ButtonHoldStateEnum_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var8 = arg1
	if not var8 then
		var8 = Constants_upvr.SIGNAL_HOLD_INTENT_SECONDS
	end
	local var9 = arg2
	if not var9 then
		var9 = Constants_upvr.SIGNAL_HOLD_COMPLETE_SECONDS
	end
	local useButtonHold_upvr_result1 = useButtonHold_upvr(var8, var9)
	local any_useState_result1, any_useState_result2_upvr_3 = React_upvr.useState(nil)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_2 = React_upvr.useState(nil)
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState(nil)
	local function var18() -- Line 30
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr_3(nil)
		any_useState_result2_upvr_2(nil)
		any_useState_result2_upvr(nil)
	end
	var18 = true
	local var19_upvr = var18
	if useButtonHold_upvr_result1.holdState ~= ButtonHoldStateEnum_upvr.HOLDING then
		if useButtonHold_upvr_result1.holdState ~= ButtonHoldStateEnum_upvr.COMPLETED then
			var19_upvr = false
		else
			var19_upvr = true
		end
	end
	if any_useState_result1_3 == nil then
	else
	end
	return {
		selectedEntry = any_useState_result1_3;
		selectedIndex = any_useState_result1_2_upvr;
		selectedNavigationUniverseId = any_useState_result1;
		onHoldableFocused = React_upvr.useCallback(function(arg1_2, arg2_2, arg3) -- Line 24
			--[[ Upvalues[3]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: any_useState_result2_upvr_2 (readonly)
				[3]: any_useState_result2_upvr_3 (readonly)
			]]
			any_useState_result2_upvr(arg1_2)
			any_useState_result2_upvr_2(arg2_2)
			any_useState_result2_upvr_3(arg3)
		end, {});
		onHoldableUnfocused = React_upvr.useCallback(var18, {});
		shouldRenderHoldToPlayLauncher = true;
		shouldDisableHoldable = React_upvr.useCallback(function(arg1_3) -- Line 38
			--[[ Upvalues[2]:
				[1]: var19_upvr (readonly)
				[2]: any_useState_result1_2_upvr (readonly)
			]]
			local var22 = var19_upvr
			if var22 then
				var22 = any_useState_result1_2_upvr
				if var22 then
					if arg1_3 ~= any_useState_result1_2_upvr then
						var22 = false
					else
						var22 = true
					end
				end
			end
			return var22
		end, {var19_upvr, any_useState_result1_2_upvr});
		holdState = useButtonHold_upvr_result1.holdState;
		holdProgress = useButtonHold_upvr_result1.holdProgress;
		cancelHold = useButtonHold_upvr_result1.cancelHold;
		holdToPlayEventHandler = useButtonHold_upvr_result1.eventHandler;
	}
end