-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:31
-- Luau version 6, Types version 3
-- Time taken: 0.005749 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.Parent.React)
local getFitSize_upvr = require(Parent.Utils.getFitSize)
local getCropSize_upvr = require(Parent.Utils.getCropSize)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local FFlagUseRbxStorageInCapturesCommon_upvr = require(Parent.Flags.FFlagUseRbxStorageInCapturesCommon)
local MediaPlayer_upvr = require(Parent.Components.MediaPlayer)
return function(arg1) -- Line 25
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: getFitSize_upvr (readonly)
		[3]: getCropSize_upvr (readonly)
		[4]: CaptureType_upvr (readonly)
		[5]: FFlagUseRbxStorageInCapturesCommon_upvr (readonly)
		[6]: MediaPlayer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local any_useState_result1_7_upvr, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_6_upvr, any_useState_result2_upvr_6 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_8, any_useState_result2_upvr_8 = React_upvr.useState(UDim2.fromScale(1, 1))
	local function _(arg1_6) -- Line 30
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_6 (readonly)
		]]
		any_useState_result2_upvr_6(arg1_6.Resolution)
	end
	React_upvr.useEffect(function() -- Line 39
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr_8 (readonly)
			[3]: getFitSize_upvr (copied, readonly)
			[4]: any_useState_result1_7_upvr (readonly)
			[5]: any_useState_result1_6_upvr (readonly)
			[6]: getCropSize_upvr (copied, readonly)
		]]
		if arg1.scaleType == Enum.ScaleType.Fit then
			any_useState_result2_upvr_8(getFitSize_upvr(any_useState_result1_7_upvr, any_useState_result1_6_upvr))
		else
			any_useState_result2_upvr_8(getCropSize_upvr(any_useState_result1_7_upvr, any_useState_result1_6_upvr))
		end
	end, {any_useState_result1_7_upvr, any_useState_result1_6_upvr})
	local tbl_2 = {
		BackgroundTransparency = 1;
	}
	local var52 = true
	tbl_2.ClipsDescendants = var52
	if arg1.capture.type == CaptureType_upvr.Screenshot then
		var52 = arg1.capture.contentId
	elseif FFlagUseRbxStorageInCapturesCommon_upvr then
		var52 = arg1.capture.thumbnailKey
	else
		var52 = nil
	end
	tbl_2.Image = var52
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [99] 73. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [99] 73. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [101] 74. Error Block 48 start (CF ANALYSIS FAILED)
	tbl_2.ScaleType = Enum.ScaleType.Crop
	tbl_2.Size = UDim2.fromScale(1, 1)
	local Change_3 = React_upvr.Change
	if not FFlagUseRbxStorageInCapturesCommon_upvr then
		Change_3 = React_upvr.useCallback(function(arg1_7) -- Line 35
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(arg1_7.AbsoluteSize)
		end, {})
	else
		Change_3 = nil
	end
	tbl_2[Change_3.AbsoluteSize] = Change_3
	tbl_2[React_upvr.Event.Activated] = arg1.onActivated
	;({}).Overlay = arg1.overlay
	-- KONSTANTERROR: [101] 74. Error Block 48 end (CF ANALYSIS FAILED)
end