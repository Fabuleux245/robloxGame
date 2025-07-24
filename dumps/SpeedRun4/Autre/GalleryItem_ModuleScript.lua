-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:21
-- Luau version 6, Types version 3
-- Time taken: 0.001476 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local CarouselOpened_upvr = require(Parent_2.Actions.CarouselOpened)
local getCropSize_upvr = require(Parent.CapturesCommon).Utils.getCropSize
local CaptureType_upvr = require(Parent_2.Enums.CaptureType)
local FFlagUseRbxstorageInGallery_upvr = require(Parent_2.Flags.FFlagUseRbxstorageInGallery)
local Text_upvr = require(Parent.Foundation).Text
local getFormatTime_upvr = require(Parent_2.Utils.getFormatTime)
return function(arg1) -- Line 28
	--[[ Upvalues[10]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: EventNames_upvr (readonly)
		[5]: CarouselOpened_upvr (readonly)
		[6]: getCropSize_upvr (readonly)
		[7]: CaptureType_upvr (readonly)
		[8]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[9]: Text_upvr (readonly)
		[10]: getFormatTime_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(UDim2.fromScale(1, 1))
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var5_result1_upvr = useDispatch_upvr()
	local function _() -- Line 36
		--[[ Upvalues[5]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: CarouselOpened_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselOpened)
		var5_result1_upvr(CarouselOpened_upvr(arg1.captureIndex))
	end
	local function _(arg1_2) -- Line 41
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_2.AbsoluteSize)
	end
	local function _(arg1_3) -- Line 45
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_3 (readonly)
		]]
		any_useState_result2_upvr_3(arg1_3.Resolution)
	end
	React_upvr.useEffect(function() -- Line 50
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: getCropSize_upvr (copied, readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: any_useState_result1_upvr (readonly)
		]]
		any_useState_result2_upvr_2(getCropSize_upvr(any_useState_result1_upvr_2, any_useState_result1_upvr))
	end, {any_useState_result1_upvr_2, any_useState_result1_upvr})
	local _ = {
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}
	if arg1.capture.type == CaptureType_upvr.Screenshot then
		-- KONSTANTWARNING: GOTO [108] #82
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [100] 76. Error Block 28 start (CF ANALYSIS FAILED)
	if FFlagUseRbxstorageInGallery_upvr then
		-- KONSTANTWARNING: GOTO [108] #82
	end
	-- KONSTANTERROR: [100] 76. Error Block 28 end (CF ANALYSIS FAILED)
end