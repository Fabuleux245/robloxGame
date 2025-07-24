-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:30
-- Luau version 6, Types version 3
-- Time taken: 0.001859 seconds

local Parent = script:FindFirstAncestor("InteractionFeedback").Parent
local RoactUtils = require(Parent.RoactUtils)
local useInputType_upvr = RoactUtils.Hooks.useInputType
local useLaserPointerHand_upvr = RoactUtils.Hooks.useLaserPointerHand
local React_upvr = require(Parent.React)
local isSpatial_upvr = require(Parent.AppCommonLib).isSpatial
local function useHapticMotors_upvr() -- Line 17, Named "useHapticMotors"
	--[[ Upvalues[4]:
		[1]: useInputType_upvr (readonly)
		[2]: useLaserPointerHand_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: isSpatial_upvr (readonly)
	]]
	local useInputType_upvr_result1_upvr = useInputType_upvr()
	local var4_result1_upvr_2 = useLaserPointerHand_upvr()
	return React_upvr.useMemo(function() -- Line 20
		--[[ Upvalues[3]:
			[1]: isSpatial_upvr (copied, readonly)
			[2]: var4_result1_upvr_2 (readonly)
			[3]: useInputType_upvr_result1_upvr (readonly)
		]]
		if isSpatial_upvr() then
			if var4_result1_upvr_2 == "Right" then
				return {Enum.VibrationMotor.RightHand}
			end
			if var4_result1_upvr_2 == "Left" then
				return {Enum.VibrationMotor.LeftHand}
			end
			return {}
		end
		if useInputType_upvr_result1_upvr == "Touch" then
			return {Enum.VibrationMotor.Large}
		end
		if useInputType_upvr_result1_upvr == "Gamepad" then
			return {Enum.VibrationMotor.Large, Enum.VibrationMotor.Small}
		end
		return {}
	end, {useInputType_upvr_result1_upvr, var4_result1_upvr_2})
end
local function useHapticPositionAndRadius_upvr() -- Line 51, Named "useHapticPositionAndRadius"
	--[[ Upvalues[4]:
		[1]: useInputType_upvr (readonly)
		[2]: useLaserPointerHand_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: isSpatial_upvr (readonly)
	]]
	local var4_result1_upvr = useLaserPointerHand_upvr()
	return React_upvr.useMemo(function() -- Line 54
		--[[ Upvalues[2]:
			[1]: isSpatial_upvr (copied, readonly)
			[2]: var4_result1_upvr (readonly)
		]]
		if isSpatial_upvr() then
			if var4_result1_upvr == "Right" then
				return {Vector3.new(1, 0, 0), 0.1}
			end
			return {Vector3.new(-1, 0, 0), 0.1}
		end
		return {Vector3.new(0, 0, 0), 100}
	end, {useInputType_upvr(), var4_result1_upvr})
end
local InteractionFeedbackContext_upvr = require(script.Parent.InteractionFeedbackContext)
local GetFFlagUseNewHapticServiceInUA_upvr = require(Parent.SharedFlags).GetFFlagUseNewHapticServiceInUA
local triggerFeedback_upvr = require(script.Parent.triggerFeedback)
return function() -- Line 71, Named "useTriggerFeedback"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: InteractionFeedbackContext_upvr (readonly)
		[3]: GetFFlagUseNewHapticServiceInUA_upvr (readonly)
		[4]: useHapticPositionAndRadius_upvr (readonly)
		[5]: useHapticMotors_upvr (readonly)
		[6]: triggerFeedback_upvr (readonly)
	]]
	local any_useContext_result1_upvr = React_upvr.useContext(InteractionFeedbackContext_upvr)
	local var25_upvw
	local var26_upvw
	local var27_upvw
	if GetFFlagUseNewHapticServiceInUA_upvr() then
		local useHapticPositionAndRadius_upvr_result1 = useHapticPositionAndRadius_upvr()
		var26_upvw = useHapticPositionAndRadius_upvr_result1[1]
		var27_upvw = useHapticPositionAndRadius_upvr_result1[2]
	else
		var25_upvw = useHapticMotors_upvr()
	end
	if not any_useContext_result1_upvr then
		error("useTriggerFeedback must be used within an InteractionFeedbackProvider")
	end
	return React_upvr.useCallback(function(arg1, arg2) -- Line 89
		--[[ Upvalues[5]:
			[1]: triggerFeedback_upvr (copied, readonly)
			[2]: any_useContext_result1_upvr (readonly)
			[3]: var25_upvw (read and write)
			[4]: var26_upvw (read and write)
			[5]: var27_upvw (read and write)
		]]
		return triggerFeedback_upvr(arg1, arg2, any_useContext_result1_upvr, var25_upvw, var26_upvw, var27_upvw)
	end, {any_useContext_result1_upvr, var25_upvw, var26_upvw, var27_upvw})
end