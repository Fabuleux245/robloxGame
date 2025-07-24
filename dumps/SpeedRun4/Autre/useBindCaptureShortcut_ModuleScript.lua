-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:51
-- Luau version 6, Types version 3
-- Time taken: 0.002220 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local UserInputService_upvr = game:GetService("UserInputService")
local RoactUtils = require(Parent.RoactUtils)
local getCaptureShortcutSetupKeys_upvr = require(Parent_2.Utils.getCaptureShortcutSetupKeys)
local function _() -- Line 25
	--[[ Upvalues[2]:
		[1]: getCaptureShortcutSetupKeys_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	for _, v in getCaptureShortcutSetupKeys_upvr(), nil do
		if UserInputService_upvr:IsKeyDown(v) then
			return true
		end
	end
	return false
end
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local usePlayShutterSound_upvr = require(Parent_2.Hooks.usePlayShutterSound)
local useKeyboardEnabled_upvr = require(Parent_2.Hooks.useKeyboardEnabled)
local useEffect_upvr = require(Parent.React).useEffect
local SocialStopwatch_upvr = require(Parent.SocialStopwatch)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local TakeCapture_upvr = require(Parent_2.Thunks.TakeCapture)
local ContextActionService_upvr = game:GetService("ContextActionService")
return function() -- Line 35
	--[[ Upvalues[13]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: usePlayShutterSound_upvr (readonly)
		[6]: useKeyboardEnabled_upvr (readonly)
		[7]: useEffect_upvr (readonly)
		[8]: SocialStopwatch_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: TakeCapture_upvr (readonly)
		[11]: ContextActionService_upvr (readonly)
		[12]: getCaptureShortcutSetupKeys_upvr (readonly)
		[13]: UserInputService_upvr (readonly)
	]]
	local var12_result1_upvr = useSelector_upvr(function(arg1) -- Line 43
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1[Constants_upvr.RoduxKey].IsCapturesCoreGuiEnabled
	end)
	local useKeyboardEnabled_upvr_result1_upvr = useKeyboardEnabled_upvr()
	local var14_result1_upvr = usePlayShutterSound_upvr()
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	useEffect_upvr(function() -- Line 50
		--[[ Upvalues[11]:
			[1]: useKeyboardEnabled_upvr_result1_upvr (readonly)
			[2]: var12_result1_upvr (readonly)
			[3]: var14_result1_upvr (readonly)
			[4]: SocialStopwatch_upvr (copied, readonly)
			[5]: useAnalytics_upvr_result1_upvr (readonly)
			[6]: EventNames_upvr (copied, readonly)
			[7]: useDispatch_upvr_result1_upvr (readonly)
			[8]: TakeCapture_upvr (copied, readonly)
			[9]: ContextActionService_upvr (copied, readonly)
			[10]: getCaptureShortcutSetupKeys_upvr (copied, readonly)
			[11]: UserInputService_upvr (copied, readonly)
		]]
		if not useKeyboardEnabled_upvr_result1_upvr then return end
		if not var12_result1_upvr then return end
		local function var29_upvr() -- Line 59
			--[[ Upvalues[6]:
				[1]: var14_result1_upvr (copied, readonly)
				[2]: SocialStopwatch_upvr (copied, readonly)
				[3]: useAnalytics_upvr_result1_upvr (copied, readonly)
				[4]: EventNames_upvr (copied, readonly)
				[5]: useDispatch_upvr_result1_upvr (copied, readonly)
				[6]: TakeCapture_upvr (copied, readonly)
			]]
			var14_result1_upvr()
			if not SocialStopwatch_upvr.Stopwatch.get(SocialStopwatch_upvr.Events.CaptureTaken) then
				SocialStopwatch_upvr.Stopwatch.start(SocialStopwatch_upvr.Events.CaptureTaken)
			end
			useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointActivated)
			useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesDesktopHotkeyCaptureTriggered)
			useDispatch_upvr_result1_upvr(TakeCapture_upvr())
		end
		ContextActionService_upvr:BindCoreAction("CaptureShortcutAction", function(arg1, arg2) -- Line 70
			--[[ Upvalues[3]:
				[1]: getCaptureShortcutSetupKeys_upvr (copied, readonly)
				[2]: UserInputService_upvr (copied, readonly)
				[3]: var29_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [20] 17. Error Block 12 start (CF ANALYSIS FAILED)
			if false then
				var29_upvr()
				return Enum.ContextActionResult.Sink
			end
			-- KONSTANTERROR: [20] 17. Error Block 12 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [27] 23. Error Block 9 start (CF ANALYSIS FAILED)
			do
				return Enum.ContextActionResult.Pass
			end
			-- KONSTANTERROR: [27] 23. Error Block 9 end (CF ANALYSIS FAILED)
		end, false, Enum.KeyCode.One)
		return function() -- Line 79
			--[[ Upvalues[1]:
				[1]: ContextActionService_upvr (copied, readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("CaptureShortcutAction")
		end
	end, {useSelector_upvr(function(arg1) -- Line 39
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1[Constants_upvr.RoduxKey].IsActive
	end), var12_result1_upvr, useKeyboardEnabled_upvr_result1_upvr})
end