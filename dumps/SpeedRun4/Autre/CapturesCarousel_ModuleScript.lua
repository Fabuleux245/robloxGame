-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:13
-- Luau version 6, Types version 3
-- Time taken: 0.005883 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local UserInputService_upvr = game:GetService("UserInputService")
local RoactUtils = require(Parent_2.RoactUtils)
local function _(arg1, arg2) -- Line 40, Named "getMargins"
	local X_2 = (arg2 - arg1).X
	if X_2 % 2 == 0 then
		local var7 = X_2 / 2
		return var7, var7
	end
	local floored = math.floor(X_2 / 2)
	return floored + 1, floored
end
local function _() -- Line 54, Named "getTouchScrollingEnabled"
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
	]]
	local any_GetPlatform_result1_2 = UserInputService_upvr:GetPlatform()
	local var13 = true
	if any_GetPlatform_result1_2 ~= Enum.Platform.IOS then
		if any_GetPlatform_result1_2 ~= Enum.Platform.Android then
			var13 = false
		else
			var13 = true
		end
	end
	local var14 = var13
	if var14 then
		var14 = UserInputService_upvr.TouchEnabled
		if var14 then
			var14 = not UserGameSettings_upvr.ReducedMotion
		end
	end
	return var14
end
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useScreenSize_upvr = require(Parent_2.RobloxAppHooks).useScreenSize
local React_upvr = require(Parent_2.React)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent.Constants)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local CarouselScrolled_upvr = require(Parent.Thunks.CarouselScrolled)
local useCarouselController_upvr = require(Parent.Hooks.useCarouselController)
local useSignal_upvr = RoactUtils.Hooks.useSignal
local getClosestItemToCenter_upvr = require(Parent.Utils.getClosestItemToCenter)
local CarouselItem_upvr = require(Parent.Components.CapturesCarousel.CarouselItem)
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local FFlagCapturesVideoCaptureLoggingEnabled_upvr = require(Parent.Flags.FFlagCapturesVideoCaptureLoggingEnabled)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CarouselNavArrow_upvr = require(Parent.Components.CapturesCarousel.CarouselNavArrow)
return function(arg1) -- Line 70
	--[[ Upvalues[18]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useScreenSize_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: EventNames_upvr (readonly)
		[8]: CarouselScrolled_upvr (readonly)
		[9]: useCarouselController_upvr (readonly)
		[10]: useSignal_upvr (readonly)
		[11]: getClosestItemToCenter_upvr (readonly)
		[12]: CarouselItem_upvr (readonly)
		[13]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[14]: FFlagCapturesVideoCaptureLoggingEnabled_upvr (readonly)
		[15]: CaptureType_upvr (readonly)
		[16]: UserInputService_upvr (readonly)
		[17]: UserGameSettings_upvr (readonly)
		[18]: CarouselNavArrow_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 57 start (CF ANALYSIS FAILED)
	local useScreenSize_upvr_result1 = useScreenSize_upvr()
	local _, _ = React_upvr.useState(false)
	local _, _ = React_upvr.useState(0)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 77
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Captures
	end)
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_3) -- Line 81
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].Carousel.SelectedCaptureIndex
	end)
	local any_useState_result1, _ = React_upvr.useState(useSelector_upvr_result1_upvr_2)
	local X_3 = useScreenSize_upvr_result1.X
	local var44
	if var44 >= X_3 / useScreenSize_upvr_result1.Y then
		X_3 = false
	else
		X_3 = true
	end
	if X_3 then
		var44 = 0.15
	else
		var44 = 0.075
	end
	local vector2 = Vector2.new(math.floor(useScreenSize_upvr_result1.X - math.clamp(math.floor(useScreenSize_upvr_result1.X * var44), 50, 200) * 2), math.floor(arg1.maxHeight))
	local X = (useScreenSize_upvr_result1 - vector2).X
	if X % 2 == 0 then
		local _ = X / 2
		-- KONSTANTWARNING: GOTO [105] #86
	end
	-- KONSTANTERROR: [0] 1. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 79. Error Block 49 start (CF ANALYSIS FAILED)
	local _ = math.floor(X / 2)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local _ = useCarouselController_upvr(vector2, useSelector_upvr_result1_upvr_2, React_upvr.useCallback(function(arg1_4) -- Line 102
		--[[ Upvalues[7]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: useSelector_upvr_result1_upvr_2 (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: useAnalytics_upvr_result1_upvr (readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: useDispatch_upvr_result1_upvr (readonly)
			[7]: CarouselScrolled_upvr (copied, readonly)
		]]
		local var53
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var53 = #useSelector_upvr_result1_upvr
			return var53 < arg1_4
		end
		if arg1_4 < var53 or INLINED() then
		else
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var53 = Constants_upvr.CarouselDirection.Left
				return var53
			end
			if arg1_4 >= useSelector_upvr_result1_upvr_2 or not INLINED_2() then
				var53 = Constants_upvr.CarouselDirection.Right
			end
			useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselScrolled, {
				direction = var53;
			})
			useDispatch_upvr_result1_upvr(CarouselScrolled_upvr(arg1_4))
		end
	end, {useSelector_upvr_result1_upvr, useSelector_upvr_result1_upvr_2}))
	if 1 >= any_useState_result1 then
		-- KONSTANTWARNING: GOTO [149] #118
	end
	-- KONSTANTERROR: [97] 79. Error Block 49 end (CF ANALYSIS FAILED)
end