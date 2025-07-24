-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:29
-- Luau version 6, Types version 3
-- Time taken: 0.007556 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local UserInputService_upvr = game:GetService("UserInputService")
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local useTopbarInsetHeight_upvr = Parent_2.Hooks.useTopbarInsetHeight
if UserInputService_upvr:GetPlatform() ~= Enum.Platform.OSX then
	useTopbarInsetHeight_upvr = false
else
	useTopbarInsetHeight_upvr = true
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("CapturesButtonLargeScreenSizeThreshold", 750)
local function _(arg1) -- Line 55, Named "isLargeScreen"
	--[[ Upvalues[1]:
		[1]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local var9 = false
	if game_DefineFastInt_result1_upvr < arg1.X then
		if game_DefineFastInt_result1_upvr >= arg1.Y then
			var9 = false
		else
			var9 = true
		end
	end
	return var9
end
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useDeviceInsets_upvr = require(Parent.AppCommonResponsive).useDeviceInsets
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local var7_2_upvr = require(useTopbarInsetHeight_upvr)
local udim2_upvr = UDim2.new(1, -75, 0.625, 0)
local udim2_upvr_2 = UDim2.new(1, -75, 0.5, 0)
local useRef_upvr = React_upvr.useRef
local usePlayShutterSound_upvr = require(Parent_2.Hooks.usePlayShutterSound)
local useCallback_upvr = React_upvr.useCallback
local SocialStopwatch_upvr = require(Parent.SocialStopwatch)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local TakeCapture_upvr = require(Parent_2.Thunks.TakeCapture)
local InputUtilities_upvr = require(Parent.SocialCommon).Utils.InputUtilities
local useExternalEvent_upvr = UIBlox.Core.Hooks.useExternalEvent
local CaptureService_upvr = game:GetService("CaptureService")
local FIntCapturesEntrypointButtonDraggabilityEventThrottle_upvr = require(Parent_2.Flags.FIntCapturesEntrypointButtonDraggabilityEventThrottle)
local useEffect_upvr = React_upvr.useEffect
local useKeyboardEnabled_upvr = require(Parent_2.Hooks.useKeyboardEnabled)
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local withHoverTooltip_upvr = UIBlox.App.Dialog.TooltipV2.withHoverTooltip
local CoreGui_upvr = game:GetService("CoreGui")
local TooltipOrientation_upvr = UIBlox.App.Dialog.Enum.TooltipOrientation
return function(arg1) -- Line 62
	--[[ Upvalues[33]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: useDeviceInsets_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: useScreenSize_upvr (readonly)
		[9]: var7_2_upvr (readonly)
		[10]: game_DefineFastInt_result1_upvr (readonly)
		[11]: udim2_upvr (readonly)
		[12]: udim2_upvr_2 (readonly)
		[13]: useRef_upvr (readonly)
		[14]: usePlayShutterSound_upvr (readonly)
		[15]: useCallback_upvr (readonly)
		[16]: SocialStopwatch_upvr (readonly)
		[17]: EventNames_upvr (readonly)
		[18]: TakeCapture_upvr (readonly)
		[19]: InputUtilities_upvr (readonly)
		[20]: useExternalEvent_upvr (readonly)
		[21]: CaptureService_upvr (readonly)
		[22]: UserInputService_upvr (readonly)
		[23]: FIntCapturesEntrypointButtonDraggabilityEventThrottle_upvr (readonly)
		[24]: useEffect_upvr (readonly)
		[25]: useKeyboardEnabled_upvr (readonly)
		[26]: ControlState_upvr (readonly)
		[27]: Interactable_upvr (readonly)
		[28]: ImageSetLabel_upvr (readonly)
		[29]: Images_upvr (readonly)
		[30]: withHoverTooltip_upvr (readonly)
		[31]: useTopbarInsetHeight_upvr (readonly)
		[32]: CoreGui_upvr (readonly)
		[33]: TooltipOrientation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var14_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 67
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsActive
	end)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local var17_result1_upvr = useScreenSize_upvr()
	local var46 = false
	local var47_upvr
	if game_DefineFastInt_result1_upvr < var17_result1_upvr.X then
		if game_DefineFastInt_result1_upvr >= var17_result1_upvr.Y then
			var46 = false
		else
			var46 = true
		end
	end
	if var46 then
		var47_upvr = udim2_upvr
	else
		var47_upvr = udim2_upvr_2
	end
	local useRef_upvr_result1_upvr = useRef_upvr(nil)
	local var21_result1_upvr = useRef_upvr(false)
	local useRef_upvr_result1_upvr_3 = useRef_upvr(nil)
	local var21_result1_upvr_2 = useRef_upvr(nil)
	local usePlayShutterSound_upvr_result1_upvr = usePlayShutterSound_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useCallback_upvr_result1_upvr_3 = useCallback_upvr(function() -- Line 92
		--[[ Upvalues[6]:
			[1]: SocialStopwatch_upvr (copied, readonly)
			[2]: useAnalytics_upvr_result1_upvr (readonly)
			[3]: EventNames_upvr (copied, readonly)
			[4]: usePlayShutterSound_upvr_result1_upvr (readonly)
			[5]: useDispatch_upvr_result1_upvr (readonly)
			[6]: TakeCapture_upvr (copied, readonly)
		]]
		if not SocialStopwatch_upvr.Stopwatch.get(SocialStopwatch_upvr.Events.CaptureTaken) then
			SocialStopwatch_upvr.Stopwatch.start(SocialStopwatch_upvr.Events.CaptureTaken)
		end
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointActivated)
		usePlayShutterSound_upvr_result1_upvr()
		useDispatch_upvr_result1_upvr(TakeCapture_upvr())
	end, {})
	useExternalEvent_upvr(CaptureService_upvr.CaptureBegan, function() -- Line 109
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(true)
	end)
	local useDeviceInsets_upvr_result1_upvr = useDeviceInsets_upvr()
	local var18_result1_upvr = var7_2_upvr()
	useExternalEvent_upvr(UserInputService_upvr.TouchMoved, function(arg1_5, arg2) -- Line 113
		--[[ Upvalues[7]:
			[1]: useRef_upvr_result1_upvr_3 (readonly)
			[2]: var21_result1_upvr (readonly)
			[3]: var21_result1_upvr_2 (readonly)
			[4]: useRef_upvr_result1_upvr (readonly)
			[5]: useDeviceInsets_upvr_result1_upvr (readonly)
			[6]: var17_result1_upvr (readonly)
			[7]: var18_result1_upvr (readonly)
		]]
		if useRef_upvr_result1_upvr_3.current and 100 <= DateTime.now().UnixTimestampMillis - useRef_upvr_result1_upvr_3.current then
			var21_result1_upvr.current = true
		end
		if arg1_5 == var21_result1_upvr_2.current and var21_result1_upvr.current and useRef_upvr_result1_upvr.current then
			useRef_upvr_result1_upvr.current.Position = UDim2.fromOffset(math.min(math.max(useDeviceInsets_upvr_result1_upvr.left + 24, arg1_5.Position.X), var17_result1_upvr.X - 24 - useDeviceInsets_upvr_result1_upvr.right), math.min(var17_result1_upvr.Y - 24 - useDeviceInsets_upvr_result1_upvr.bottom, math.max(arg1_5.Position.Y + var18_result1_upvr, var18_result1_upvr + 24 + useDeviceInsets_upvr_result1_upvr.top)))
		end
	end)
	useExternalEvent_upvr(UserInputService_upvr.TouchEnded, function(arg1_6, arg2) -- Line 138
		--[[ Upvalues[7]:
			[1]: useRef_upvr_result1_upvr_3 (readonly)
			[2]: var21_result1_upvr (readonly)
			[3]: FIntCapturesEntrypointButtonDraggabilityEventThrottle_upvr (copied, readonly)
			[4]: useAnalytics_upvr_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: useCallback_upvr_result1_upvr_3 (readonly)
			[7]: var21_result1_upvr_2 (readonly)
		]]
		if useRef_upvr_result1_upvr_3.current and var21_result1_upvr.current then
			if math.random() < 1 / FIntCapturesEntrypointButtonDraggabilityEventThrottle_upvr then
				useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointDragged)
				-- KONSTANTWARNING: GOTO [33] #26
			end
		elseif useRef_upvr_result1_upvr_3.current then
			useRef_upvr_result1_upvr_3.current = nil
			useCallback_upvr_result1_upvr_3()
		end
		if arg1_6 == var21_result1_upvr_2.current then
			var21_result1_upvr_2.current = nil
		end
		var21_result1_upvr.current = false
		useRef_upvr_result1_upvr_3.current = nil
	end)
	useEffect_upvr(function() -- Line 156
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr (readonly)
			[2]: var47_upvr (readonly)
		]]
		if useRef_upvr_result1_upvr.current then
			useRef_upvr_result1_upvr.current.Position = var47_upvr
		end
	end, {var47_upvr, var17_result1_upvr.X, var17_result1_upvr.Y})
	useEffect_upvr(function() -- Line 162
		--[[ Upvalues[3]:
			[1]: var14_result1_upvr (readonly)
			[2]: useAnalytics_upvr_result1_upvr (readonly)
			[3]: EventNames_upvr (copied, readonly)
		]]
		if var14_result1_upvr then
			useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointViewed)
		end
	end, {var14_result1_upvr})
	local var32_result1_upvr = useKeyboardEnabled_upvr()
	local useRef_upvr_result1_upvr_2 = useRef_upvr(nil)
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local useCallback_upvr_result1_upvr_2 = useCallback_upvr(function(arg1_4, arg2) -- Line 101
		--[[ Upvalues[2]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: useCallback_upvr_result1_upvr_3 (readonly)
		]]
		if InputUtilities_upvr.isTouchInput(arg2) then
		else
			useCallback_upvr_result1_upvr_3()
		end
	end, {useCallback_upvr_result1_upvr_3})
	local useCallback_upvr_result1_upvr = useCallback_upvr(function(arg1_3, arg2) -- Line 85
		--[[ Upvalues[2]:
			[1]: useRef_upvr_result1_upvr_3 (readonly)
			[2]: var21_result1_upvr_2 (readonly)
		]]
		useRef_upvr_result1_upvr_3.current = DateTime.now().UnixTimestampMillis
		var21_result1_upvr_2.current = arg2
	end, {})
	local module = {
		headerText = "Screenshot";
	}
	if useTopbarInsetHeight_upvr then
		-- KONSTANTWARNING: GOTO [171] #153
	end
	module.bodyText = nil
	if useTopbarInsetHeight_upvr then
		local _
	else
	end
	module.hotkeyCodes = {Enum.KeyCode.LeftAlt, Enum.KeyCode.One}
	module.textAlignment = Enum.TextXAlignment.Center
	local module_2 = {}
	local var90 = any_useState_result1
	if not var90 then
		var90 = not var32_result1_upvr
	end
	module_2.disabled = var90
	module_2.DisplayOrder = Constants_upvr.HotkeyTooltipDisplayOrder
	module_2.guiTarget = CoreGui_upvr
	module_2.preferredOrientation = TooltipOrientation_upvr.Left
	module_2.triggerPointName = "EntrypointButtonContainer"
	return withHoverTooltip_upvr(module, module_2, function(arg1_7, arg2) -- Line 170
		--[[ Upvalues[17]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: useRef_upvr_result1_upvr_2 (readonly)
			[5]: useAnalytics_upvr_result1_upvr (readonly)
			[6]: EventNames_upvr (copied, readonly)
			[7]: React_upvr (copied, readonly)
			[8]: Interactable_upvr (copied, readonly)
			[9]: var47_upvr (readonly)
			[10]: var14_result1_upvr (readonly)
			[11]: var32_result1_upvr (readonly)
			[12]: useRef_upvr_result1_upvr (readonly)
			[13]: useStyle_upvr_result1_upvr (readonly)
			[14]: useCallback_upvr_result1_upvr_2 (readonly)
			[15]: useCallback_upvr_result1_upvr (readonly)
			[16]: ImageSetLabel_upvr (copied, readonly)
			[17]: Images_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local module_4 = {
			Active = false;
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Position = var47_upvr;
			Size = UDim2.fromOffset(48, 48);
		}
		local var74 = var14_result1_upvr
		module_4.Visible = var74
		local var79
		if var79 then
			function var74(...) -- Line 171
				--[[ Upvalues[7]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: ControlState_upvr (copied, readonly)
					[3]: UserInputService_upvr (copied, readonly)
					[4]: useRef_upvr_result1_upvr_2 (copied, readonly)
					[5]: useAnalytics_upvr_result1_upvr (copied, readonly)
					[6]: EventNames_upvr (copied, readonly)
					[7]: arg2 (readonly)
				]]
				any_useState_result2_upvr(false)
				local _, var76 = ...
				if var76 == ControlState_upvr.Hover and UserInputService_upvr.MouseEnabled then
					useRef_upvr_result1_upvr_2.current = DateTime.now().UnixTimestampMillis
				elseif var76 == ControlState_upvr.Default and useRef_upvr_result1_upvr_2.current and UserInputService_upvr.MouseEnabled and 500 <= DateTime.now().UnixTimestampMillis - useRef_upvr_result1_upvr_2.current then
					useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesEntrypointHotkeyTooltipActivated)
					useRef_upvr_result1_upvr_2.current = nil
				end
				arg2(...)
			end
		else
			var74 = nil
		end
		module_4.onStateChanged = var74
		module_4.ref = useRef_upvr_result1_upvr
		var79 = React_upvr.Change
		if var32_result1_upvr then
			var79 = arg1_7
			-- KONSTANTWARNING: GOTO [60] #47
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [59] 46. Error Block 22 start (CF ANALYSIS FAILED)
		var79 = nil
		module_4[var79.AbsolutePosition] = var79
		var79 = React_upvr.Change
		if var32_result1_upvr then
			var79 = arg1_7
		else
			var79 = nil
		end
		module_4[var79.AbsoluteSize] = var79
		local module_3 = {}
		var79 = React_upvr.createElement
		var79 = var79("ImageButton", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.Overlay.Color;
			BackgroundTransparency = useStyle_upvr_result1_upvr.Theme.Overlay.Transparency * useStyle_upvr_result1_upvr.Theme.Overlay.Transparency;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(1, 1);
			[React_upvr.Event.Activated] = useCallback_upvr_result1_upvr_2;
			[React_upvr.Event.InputBegan] = useCallback_upvr_result1_upvr;
		}, {
			Border = React_upvr.createElement("UIStroke", {
				Color = useStyle_upvr_result1_upvr.Theme.Overlay.Color;
				Thickness = 2;
				Transparency = useStyle_upvr_result1_upvr.Theme.Overlay.Transparency;
			});
			Corner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0);
			});
			CameraIcon = React_upvr.createElement(ImageSetLabel_upvr, {
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				Image = Images_upvr["icons/controls/screenshot"];
				Position = UDim2.fromScale(0.5, 0.5);
				Size = UDim2.fromOffset(36, 36);
			});
		})
		module_3.CameraButton = var79
		do
			return React_upvr.createElement(Interactable_upvr, module_4, module_3)
		end
		-- KONSTANTERROR: [59] 46. Error Block 22 end (CF ANALYSIS FAILED)
	end)
end