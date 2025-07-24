-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:16
-- Luau version 6, Types version 3
-- Time taken: 0.007377 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local RoactUtils = require(Parent_2.RoactUtils)
local UIBlox = require(Parent_2.UIBlox)
local getTimestampFromCapture_upvr = require(Parent.Utils.getTimestampFromCapture)
local LocalizationService_upvr = game:GetService("LocalizationService")
local function getTitle_upvr(arg1) -- Line 55, Named "getTitle"
	--[[ Upvalues[2]:
		[1]: getTimestampFromCapture_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
	]]
	local getTimestampFromCapture_upvr_result1 = getTimestampFromCapture_upvr(arg1)
	local var9
	if not getTimestampFromCapture_upvr_result1 then
		return ""
	end
	if typeof(getTimestampFromCapture_upvr_result1) ~= "number" then
		var9 = false
	else
		var9 = true
	end
	assert(var9, "Expected timestamp to be a number")
	var9 = getTimestampFromCapture_upvr_result1
	local DateTime_fromUnixTimestampMillis_result1 = DateTime.fromUnixTimestampMillis(var9)
	var9 = LocalizationService_upvr.RobloxLocaleId
	return `{DateTime_fromUnixTimestampMillis_result1:FormatLocalTime('L', var9)} {DateTime_fromUnixTimestampMillis_result1:FormatLocalTime("LT", var9)}`
end
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent.Constants)
local useRef_upvr = React_upvr.useRef
local Signal_upvr = require(Parent_2.AppCommonLib).Signal
local useState_upvr = React_upvr.useState
local useScreenSize_upvr = require(Parent_2.RobloxAppHooks).useScreenSize
local useEffectOnce_upvr = RoactUtils.Hooks.useEffectOnce
local IXPServiceWrapper_upvr = require(Parent_2.IXPServiceWrapper).IXPServiceWrapper
local FStringSocialCaptureTakenIXPLayer_upvr = require(Parent_2.SharedFlags).FStringSocialCaptureTakenIXPLayer
local useEffect_upvr = React_upvr.useEffect
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
local useCallback_upvr = React_upvr.useCallback
local EventNames_upvr = require(Parent.Analytics.EventNames)
local CarouselClosed_upvr = require(Parent.Actions.CarouselClosed)
local DeleteCapture_upvr = require(Parent.Thunks.DeleteCapture)
local ContextActionService_upvr = game:GetService("ContextActionService")
local FFlagUseMediaPlayerInCarousel_upvr = require(Parent_2.SharedFlags).FFlagUseMediaPlayerInCarousel
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Images_upvr = UIBlox.App.ImageSet.Images
local udim2_upvr = UDim2.fromOffset(32, 32)
local CapturesCarousel_upvr = require(Parent.Components.CapturesCarousel.CapturesCarousel)
local CarouselCTAContainer_upvr = require(Parent.Components.CapturesCarousel.CarouselCTAContainer)
local DeleteWarningModal_upvr = require(Parent.Components.Common.DeleteWarningModal)
local PermissionModal_upvr = require(Parent.Components.Common.PermissionModal)
local ToastContainer_upvr = require(Parent.Components.Common.ToastContainer)
return function(arg1) -- Line 73
	--[[ Upvalues[31]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: useRef_upvr (readonly)
		[7]: Signal_upvr (readonly)
		[8]: useState_upvr (readonly)
		[9]: useScreenSize_upvr (readonly)
		[10]: useEffectOnce_upvr (readonly)
		[11]: IXPServiceWrapper_upvr (readonly)
		[12]: FStringSocialCaptureTakenIXPLayer_upvr (readonly)
		[13]: useEffect_upvr (readonly)
		[14]: ToastTriggered_upvr (readonly)
		[15]: CapturesToastType_upvr (readonly)
		[16]: useCallback_upvr (readonly)
		[17]: EventNames_upvr (readonly)
		[18]: CarouselClosed_upvr (readonly)
		[19]: DeleteCapture_upvr (readonly)
		[20]: ContextActionService_upvr (readonly)
		[21]: getTitle_upvr (readonly)
		[22]: React_upvr (readonly)
		[23]: FFlagUseMediaPlayerInCarousel_upvr (readonly)
		[24]: ImageSetButton_upvr (readonly)
		[25]: Images_upvr (readonly)
		[26]: udim2_upvr (readonly)
		[27]: CapturesCarousel_upvr (readonly)
		[28]: CarouselCTAContainer_upvr (readonly)
		[29]: DeleteWarningModal_upvr (readonly)
		[30]: PermissionModal_upvr (readonly)
		[31]: ToastContainer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var14_result1 = useStyle_upvr()
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_2) -- Line 78
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Captures
	end)
	local var15_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 82
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].Carousel.IsOpen
	end)
	local var15_result1_upvr_2 = useSelector_upvr(function(arg1_5) -- Line 90
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_5[Constants_upvr.RoduxKey].Carousel.SelectedCaptureIndex
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_6) -- Line 94
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_6[Constants_upvr.RoduxKey].Carousel.IsDeleteWarningModalOpen
	end)
	local var17_result1_upvr = useRef_upvr(Signal_upvr.new())
	local useState_upvr_result1, useState_upvr_result2_upvr = useState_upvr(false)
	local useState_upvr_result1_2, useState_upvr_result2_upvr_2 = useState_upvr(false)
	useEffectOnce_upvr(function() -- Line 103
		--[[ Upvalues[2]:
			[1]: IXPServiceWrapper_upvr (copied, readonly)
			[2]: FStringSocialCaptureTakenIXPLayer_upvr (copied, readonly)
		]]
		IXPServiceWrapper_upvr:LogUserLayerExposure(FStringSocialCaptureTakenIXPLayer_upvr)
	end, var15_result1_upvr)
	useEffect_upvr(function() -- Line 107
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ToastTriggered_upvr (copied, readonly)
			[3]: CapturesToastType_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(ToastTriggered_upvr(CapturesToastType_upvr.None))
	end, {var15_result1_upvr})
	local var27_result1_upvr = useCallback_upvr(function() -- Line 117
		--[[ Upvalues[5]:
			[1]: useState_upvr_result2_upvr (readonly)
			[2]: useAnalytics_upvr_result1_upvr (readonly)
			[3]: EventNames_upvr (copied, readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: CarouselClosed_upvr (copied, readonly)
		]]
		useState_upvr_result2_upvr(false)
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselClosedByKeyboard)
		useDispatch_upvr_result1_upvr(CarouselClosed_upvr())
	end, {})
	local var27_result1 = useCallback_upvr(function() -- Line 131
		--[[ Upvalues[6]:
			[1]: useState_upvr_result2_upvr (readonly)
			[2]: useSelector_upvr_result1_upvr_2 (readonly)
			[3]: var15_result1_upvr_2 (readonly)
			[4]: useDispatch_upvr_result1_upvr (readonly)
			[5]: DeleteCapture_upvr (copied, readonly)
			[6]: var17_result1_upvr (readonly)
		]]
		useState_upvr_result2_upvr(true)
		local var68_upvr = useSelector_upvr_result1_upvr_2[var15_result1_upvr_2]
		var17_result1_upvr.current:fire(function() -- Line 135
			--[[ Upvalues[4]:
				[1]: useDispatch_upvr_result1_upvr (copied, readonly)
				[2]: DeleteCapture_upvr (copied, readonly)
				[3]: var68_upvr (readonly)
				[4]: useState_upvr_result2_upvr (copied, readonly)
			]]
			useDispatch_upvr_result1_upvr(DeleteCapture_upvr(var68_upvr))
			useState_upvr_result2_upvr(false)
		end)
	end, {useSelector_upvr_result1_upvr_2, var15_result1_upvr_2})
	useEffect_upvr(function() -- Line 143
		--[[ Upvalues[4]:
			[1]: var15_result1_upvr (readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: ContextActionService_upvr (copied, readonly)
			[4]: var27_result1_upvr (readonly)
		]]
		if not var15_result1_upvr or useSelector_upvr_result1_upvr then return end
		ContextActionService_upvr:BindCoreAction("CapturesCarouselCloseShortcutAction", function(arg1_7, arg2) -- Line 148
			--[[ Upvalues[1]:
				[1]: var27_result1_upvr (copied, readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				var27_result1_upvr()
			end
		end, false, Enum.KeyCode.Escape)
		return function() -- Line 154
			--[[ Upvalues[1]:
				[1]: ContextActionService_upvr (copied, readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("CapturesCarouselCloseShortcutAction")
		end
	end, {var15_result1_upvr, useSelector_upvr_result1_upvr, var27_result1_upvr})
	local var75
	if not var15_result1_upvr then
		return nil
	end
	local getTitle_upvr_result1 = getTitle_upvr(useSelector_upvr_result1_upvr_2[var15_result1_upvr_2])
	local module = {}
	local tbl_6 = {}
	local tbl_5 = {}
	var75 = Enum.FillDirection.Vertical
	tbl_5.FillDirection = var75
	var75 = Enum.HorizontalAlignment.Center
	tbl_5.HorizontalAlignment = var75
	var75 = UDim.new(0, 8)
	tbl_5.Padding = var75
	var75 = Enum.SortOrder.LayoutOrder
	tbl_5.SortOrder = var75
	var75 = Enum.VerticalAlignment.Center
	tbl_5.VerticalAlignment = var75
	tbl_6.UIListLayout = React_upvr.createElement("UIListLayout", tbl_5)
	local tbl_4 = {}
	var75 = UDim.new(0, 16)
	tbl_4.PaddingBottom = var75
	var75 = UDim.new(0, 8)
	tbl_4.PaddingTop = var75
	tbl_6.Padding = React_upvr.createElement("UIPadding", tbl_4)
	local tbl_3 = {}
	var75 = 1
	tbl_3.BackgroundTransparency = var75
	var75 = 1
	tbl_3.LayoutOrder = var75
	var75 = UDim2.new(1, 0, 0, 32)
	tbl_3.Size = var75
	if FFlagUseMediaPlayerInCarousel_upvr then
		var75 = 1
	else
		var75 = 2
	end
	tbl_3.ZIndex = var75
	;({}).CloseButton = React_upvr.createElement(ImageSetButton_upvr, {
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundTransparency = 1;
		Image = Images_upvr["icons/navigation/close"];
		ImageColor3 = var14_result1.Theme.IconEmphasis.Color;
		ImageTransparency = var14_result1.Theme.IconEmphasis.Transparency;
		Position = UDim2.new(0, 42, 0.5, 0);
		Size = udim2_upvr;
		[React_upvr.Event.Activated] = useCallback_upvr(function() -- Line 111
			--[[ Upvalues[5]:
				[1]: useState_upvr_result2_upvr (readonly)
				[2]: useAnalytics_upvr_result1_upvr (readonly)
				[3]: EventNames_upvr (copied, readonly)
				[4]: useDispatch_upvr_result1_upvr (readonly)
				[5]: CarouselClosed_upvr (copied, readonly)
			]]
			useState_upvr_result2_upvr(false)
			useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselClosed)
			useDispatch_upvr_result1_upvr(CarouselClosed_upvr())
		end, {});
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).DropShadow = React_upvr.createElement("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		Font = var14_result1.Font.Header2.Font;
		LayoutOrder = 1;
		Position = UDim2.new(0.5, 0, 0.5, 2);
		Size = UDim2.fromScale(0, 1);
		Text = getTitle_upvr_result1;
		TextColor3 = var14_result1.Theme.DropShadow.Color;
		TextSize = var14_result1.Font.BaseSize * var14_result1.Font.Header2.RelativeSize;
		TextTransparency = var14_result1.Theme.DropShadow.Transparency;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		ZIndex = 1;
	}, {
		UIStroke = React_upvr.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual;
			Color = var14_result1.Theme.DropShadow.Color;
			LineJoinMode = Enum.LineJoinMode.Round;
			Thickness = 1;
			Transparency = var14_result1.Theme.DropShadow.Transparency;
		});
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).Title = React_upvr.createElement("TextLabel", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		Font = var14_result1.Font.Header2.Font;
		LayoutOrder = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0, 1);
		Text = getTitle_upvr_result1;
		TextColor3 = var14_result1.Theme.TextEmphasis.Color;
		TextSize = var14_result1.Font.BaseSize * var14_result1.Font.Header2.RelativeSize;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		ZIndex = 2;
	})
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_6.TitleFrame = React_upvr.createElement("Frame", tbl_3, {})
	local tbl = {
		deleteItemSignal = var17_result1_upvr.current;
		isDisabled = useState_upvr_result1 or useSelector_upvr(function(arg1_4) -- Line 86
			--[[ Upvalues[1]:
				[1]: Constants_upvr (copied, readonly)
			]]
			return arg1_4[Constants_upvr.RoduxKey].Composer.IsOpen
		end);
		LayoutOrder = 2;
		maxHeight = useScreenSize_upvr().Y - 32 - 40 - 8 - 16 - 16;
	}
	if FFlagUseMediaPlayerInCarousel_upvr then
		-- KONSTANTWARNING: GOTO [562] #397
	end
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [561] 396. Error Block 25 start (CF ANALYSIS FAILED)
	tbl.ZIndex = 1
	tbl_6.CapturesCarousel = React_upvr.createElement(CapturesCarousel_upvr, tbl)
	local tbl_2 = {
		deleteItem = var27_result1;
		height = 40;
		isDisabled = useState_upvr_result1 or useSelector_upvr_result1_upvr;
		LayoutOrder = 3;
		openPermissionModal = useCallback_upvr(function() -- Line 123
			--[[ Upvalues[1]:
				[1]: useState_upvr_result2_upvr_2 (readonly)
			]]
			useState_upvr_result2_upvr_2(true)
		end, {});
	}
	if FFlagUseMediaPlayerInCarousel_upvr then
	else
	end
	tbl_2.ZIndex = 2
	tbl_6.CTAContainer = React_upvr.createElement(CarouselCTAContainer_upvr, tbl_2)
	module.CarouselContainer = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
	}, tbl_6)
	module.DeleteWarningModal = React_upvr.createElement(DeleteWarningModal_upvr, {
		deleteItem = var27_result1;
		zIndex = 3;
	})
	module.PermissionModal = React_upvr.createElement(PermissionModal_upvr, {
		closeModal = useCallback_upvr(function() -- Line 127
			--[[ Upvalues[1]:
				[1]: useState_upvr_result2_upvr_2 (readonly)
			]]
			useState_upvr_result2_upvr_2(false)
		end, {});
		visible = useState_upvr_result1_2;
		zIndex = 3;
	})
	module.ToastsFrame = React_upvr.createElement("Frame", {
		Active = false;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		ZIndex = Constants_upvr.ZIndex.Toasts;
	}, {
		ToastContainer = React_upvr.createElement(ToastContainer_upvr);
	})
	do
		return React_upvr.createElement("Frame", {
			Active = true;
			BackgroundColor3 = var14_result1.Theme.BackgroundContrast.Color;
			BackgroundTransparency = var14_result1.Theme.BackgroundContrast.Transparency;
			BorderSizePixel = 0;
			Position = UDim2.fromOffset(0, 0);
			Size = UDim2.fromScale(1, 1);
		}, module)
	end
	-- KONSTANTERROR: [561] 396. Error Block 25 end (CF ANALYSIS FAILED)
end