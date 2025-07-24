-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:12
-- Luau version 6, Types version 3
-- Time taken: 0.003609 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local SelectCapture_upvr = require(Parent_2.Thunks.SelectCapture)
local getCropSize_upvr = require(Parent.CapturesCommon).Utils.getCropSize
local Cryo_upvr = require(Parent.Cryo)
local CaptureType_upvr = require(Parent_2.Enums.CaptureType)
local FFlagUseRbxstorageInGallery_upvr = require(Parent_2.Flags.FFlagUseRbxstorageInGallery)
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
local Images_upvr = UIBlox.App.ImageSet.Images
local Text_upvr = require(Parent.Foundation).Text
local getFormatTime_upvr = require(Parent_2.Utils.getFormatTime)
return function(arg1) -- Line 39
	--[[ Upvalues[15]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: SelectCapture_upvr (readonly)
		[8]: getCropSize_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: CaptureType_upvr (readonly)
		[11]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[12]: Checkbox_upvr (readonly)
		[13]: Images_upvr (readonly)
		[14]: Text_upvr (readonly)
		[15]: getFormatTime_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local any_useState_result1_upvr_3, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local _, any_useState_result2_upvr_4 = React_upvr.useState(UDim2.fromScale(1, 1))
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 47
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].CaptureManager.SelectedCaptures
	end)
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var7_result1_upvr = useDispatch_upvr()
	local function _() -- Line 51
		--[[ Upvalues[7]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: useAnalytics_upvr_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: var7_result1_upvr (readonly)
			[6]: SelectCapture_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		any_useState_result2_upvr_3(not any_useState_result1_upvr)
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesManagerItemActivated)
		var7_result1_upvr(SelectCapture_upvr(arg1.capture))
	end
	local _ = {any_useState_result1_upvr, arg1.capture}
	local function _(arg1_3) -- Line 57
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_3.AbsoluteSize)
	end
	local function _(arg1_4) -- Line 61
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(arg1_4.Resolution)
	end
	React_upvr.useEffect(function() -- Line 66
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr_4 (readonly)
			[2]: getCropSize_upvr (copied, readonly)
			[3]: any_useState_result1_upvr_3 (readonly)
			[4]: any_useState_result1_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_4(getCropSize_upvr(any_useState_result1_upvr_3, any_useState_result1_upvr_2))
	end, {any_useState_result1_upvr_3, any_useState_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 70
		--[[ Upvalues[4]:
			[1]: any_useState_result2_upvr_3 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local var40
		if Cryo_upvr.List.find(useSelector_upvr_result1_upvr, arg1.capture) == nil then
			var40 = false
		else
			var40 = true
		end
		any_useState_result2_upvr_3(var40)
	end, {useSelector_upvr_result1_upvr, arg1.capture})
	local _ = {
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}
	if arg1.capture.type == CaptureType_upvr.Screenshot then
		-- KONSTANTWARNING: GOTO [140] #107
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [132] 101. Error Block 38 start (CF ANALYSIS FAILED)
	if FFlagUseRbxstorageInGallery_upvr then
		-- KONSTANTWARNING: GOTO [140] #107
	end
	-- KONSTANTERROR: [132] 101. Error Block 38 end (CF ANALYSIS FAILED)
end