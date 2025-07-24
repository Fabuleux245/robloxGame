-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:23
-- Luau version 6, Types version 3
-- Time taken: 0.004193 seconds

local React_upvr = require(script.Parent.Parent.Parent.Parent.Parent.React)
local RunService_upvr = game:GetService("RunService")
local function useRenderStepped_upvr(arg1, arg2, arg3) -- Line 33, Named "useRenderStepped"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(0)
	local any_useRef_result1_upvr = React_upvr.useRef(0)
	local isAnimationRunning_upvr = arg1.isAnimationRunning
	local isKeyPressed_upvr = arg1.isKeyPressed
	local isKeyHolding_upvr = arg1.isKeyHolding
	local onKeyHolding_upvr = arg2.onKeyHolding
	local onAnimationRunning_upvr = arg2.onAnimationRunning
	local onComplete_upvr = arg2.onComplete
	local onReset_upvr = arg2.onReset
	local animationTriggerTime_upvr = arg3.animationTriggerTime
	local animationKeyHoldingTime_upvr = arg3.animationKeyHoldingTime
	local animationCoolDownTime_upvr = arg3.animationCoolDownTime
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 54
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: animationTriggerTime_upvr (readonly)
			[3]: onKeyHolding_upvr (readonly)
		]]
		any_useRef_result1_upvr.current += arg1_2
		if animationTriggerTime_upvr <= any_useRef_result1_upvr.current then
			onKeyHolding_upvr()
		end
	end, {onKeyHolding_upvr, animationTriggerTime_upvr})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_3) -- Line 61
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: animationKeyHoldingTime_upvr (readonly)
			[3]: onAnimationRunning_upvr (readonly)
			[4]: onComplete_upvr (readonly)
		]]
		any_useRef_result1_upvr_2.current = math.clamp(any_useRef_result1_upvr_2.current + arg1_3 / animationKeyHoldingTime_upvr, 0, 1)
		onAnimationRunning_upvr(any_useRef_result1_upvr_2.current)
		if 1 <= any_useRef_result1_upvr_2.current then
			onComplete_upvr()
		end
	end, {onAnimationRunning_upvr, animationKeyHoldingTime_upvr, onComplete_upvr})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_4) -- Line 69
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: animationCoolDownTime_upvr (readonly)
			[3]: onAnimationRunning_upvr (readonly)
			[4]: onReset_upvr (readonly)
		]]
		any_useRef_result1_upvr_2.current = math.clamp(any_useRef_result1_upvr_2.current - arg1_4 / animationCoolDownTime_upvr, 0, 1)
		onAnimationRunning_upvr(any_useRef_result1_upvr_2.current)
		if any_useRef_result1_upvr_2.current <= 0 then
			onReset_upvr()
		end
	end, {onAnimationRunning_upvr, animationCoolDownTime_upvr, onReset_upvr})
	React_upvr.useEffect(function() -- Line 77
		--[[ Upvalues[9]:
			[1]: isKeyHolding_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: any_useCallback_result1_upvr_4 (readonly)
			[4]: isKeyPressed_upvr (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
			[6]: isAnimationRunning_upvr (readonly)
			[7]: any_useCallback_result1_upvr_3 (readonly)
			[8]: RunService_upvr (copied, readonly)
			[9]: any_useRef_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var25
		if isKeyHolding_upvr then
			any_useRef_result1_upvr_2.current = 0
			var25 = any_useCallback_result1_upvr_4
		elseif isKeyPressed_upvr then
			var25 = any_useCallback_result1_upvr
		elseif isAnimationRunning_upvr then
			var25 = any_useCallback_result1_upvr_3
		end
		if var25 then
			local any_Connect_result1_upvw = RunService_upvr.RenderStepped:Connect(var25)
		end
		if any_Connect_result1_upvw then
			return function() -- Line 94
				--[[ Upvalues[3]:
					[1]: isKeyPressed_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr (copied, readonly)
					[3]: any_Connect_result1_upvw (read and write)
				]]
				if isKeyPressed_upvr then
					any_useRef_result1_upvr.current = 0
				end
				any_Connect_result1_upvw:Disconnect()
			end
		end
		return function() -- Line 102
		end
	end, {isKeyPressed_upvr, isKeyHolding_upvr, isAnimationRunning_upvr, any_useCallback_result1_upvr, any_useCallback_result1_upvr_4, any_useCallback_result1_upvr_3})
end
local UserInputService_upvr = game:GetService("UserInputService")
local ProgressIcon_upvr = require(script.Parent.ProgressIcon)
return function(arg1) -- Line 113, Named "ProgressIconAnimated"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: useRenderStepped_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: ProgressIcon_upvr (readonly)
	]]
	local any_useState_result1_4, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_3, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(nil)
	useRenderStepped_upvr({
		isKeyPressed = any_useState_result1_4;
		isKeyHolding = any_useState_result1_3;
		isAnimationRunning = any_useState_result1_2_upvr;
	}, {
		onKeyHolding = React_upvr.useCallback(function() -- Line 121
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_3 (readonly)
				[2]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_3(true)
			any_useState_result2_upvr_2(true)
		end, {});
		onAnimationRunning = React_upvr.useCallback(function(arg1_5) -- Line 126
			--[[ Upvalues[1]:
				[1]: any_useBinding_result2_upvr (readonly)
			]]
			any_useBinding_result2_upvr(arg1_5)
		end, {});
		onComplete = React_upvr.useCallback(function() -- Line 130
			--[[ Upvalues[5]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: any_useState_result2_upvr_3 (readonly)
				[3]: any_useState_result2_upvr_2 (readonly)
				[4]: any_useState_result2_upvr_4 (readonly)
				[5]: arg1 (readonly)
			]]
			any_useState_result2_upvr(false)
			any_useState_result2_upvr_3(false)
			any_useState_result2_upvr_2(false)
			any_useState_result2_upvr_4(true)
			if arg1.onHoldComplete then
				arg1.onHoldComplete()
			end
		end, {arg1.onHoldComplete});
		onReset = React_upvr.useCallback(function() -- Line 140
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_2 (readonly)
				[2]: any_useBinding_result2_upvr (readonly)
			]]
			any_useState_result2_upvr_2(false)
			any_useBinding_result2_upvr(nil)
		end, {});
	}, {
		animationTriggerTime = arg1.animationTriggerTime;
		animationKeyHoldingTime = arg1.animationKeyHoldingTime;
		animationCoolDownTime = arg1.animationCoolDownTime;
	})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_6) -- Line 160
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
			[4]: any_useState_result1_2_upvr (readonly)
			[5]: any_useState_result2_upvr_3 (readonly)
			[6]: any_useBinding_result2_upvr (readonly)
		]]
		if arg1_6.UserInputType ~= Enum.UserInputType.Keyboard and arg1_6.UserInputType ~= Enum.UserInputType.Gamepad1 then
		elseif arg1_6.KeyCode == arg1.keyCode then
			if arg1_6.UserInputState == Enum.UserInputState.Begin then
				any_useState_result2_upvr(true)
				any_useState_result2_upvr_4(false)
				if any_useState_result1_2_upvr then
					any_useState_result2_upvr_3(true)
				else
					any_useBinding_result2_upvr(nil)
				end
			end
			if arg1_6.UserInputState == Enum.UserInputState.End then
				any_useState_result2_upvr(false)
				any_useState_result2_upvr_3(false)
			end
		end
	end, {arg1.keyCode, any_useState_result1_2_upvr})
	React_upvr.useEffect(function() -- Line 184
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr_2 (readonly)
		]]
		if arg1.progress then
			return function() -- Line 186
			end
		end
		local any_Connect_result1_upvr = UserInputService_upvr.InputBegan:Connect(any_useCallback_result1_upvr_2)
		local any_Connect_result1_upvr_2 = UserInputService_upvr.InputEnded:Connect(any_useCallback_result1_upvr_2)
		return function() -- Line 191
			--[[ Upvalues[2]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
		end
	end, {any_useCallback_result1_upvr_2, arg1.progress})
	local var59 = false
	if arg1.progress or any_useState_result1_3 or any_useState_result1_2_upvr or any_useState_result1 then
		var59 = true
	end
	return React_upvr.createElement(ProgressIcon_upvr, {
		progress = arg1.progress or any_useBinding_result1;
		icon = arg1.icon;
		iconHolding = arg1.iconHolding;
		isHolding = var59;
	})
end