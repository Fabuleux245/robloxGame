-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:23
-- Luau version 6, Types version 3
-- Time taken: 0.000889 seconds

local Roact_upvr = require(script.Parent.Parent.Roact)
local Flags = require(script.Parent.Flags)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LivePreviewWatermark")
function any_extend_result1.init(arg1) -- Line 13
	arg1.placeId = tostring(game.PlaceId)
end
local any_GetFStringLivePreviewPlaceId_result1_upvr = Flags.GetFStringLivePreviewPlaceId()
local any_GetFFlagUseV2LivePreviewWatermark_result1_upvr = Flags.GetFFlagUseV2LivePreviewWatermark()
local any_GetFStringAdGuiLivePreviewWatermarkV2_result1_upvr = Flags.GetFStringAdGuiLivePreviewWatermarkV2()
local any_GetFStringAdGuiLivePreviewWatermark_result1_upvr = Flags.GetFStringAdGuiLivePreviewWatermark()
function any_extend_result1.render(arg1) -- Line 17
	--[[ Upvalues[5]:
		[1]: any_GetFStringLivePreviewPlaceId_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: any_GetFFlagUseV2LivePreviewWatermark_result1_upvr (readonly)
		[4]: any_GetFStringAdGuiLivePreviewWatermarkV2_result1_upvr (readonly)
		[5]: any_GetFStringAdGuiLivePreviewWatermark_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local var8
	if any_GetFStringLivePreviewPlaceId_result1_upvr ~= arg1.placeId then
		var8 = false
	else
		var8 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 7 start (CF ANALYSIS FAILED)
	var8 = arg1.props.IsVisible
	-- KONSTANTERROR: [13] 10. Error Block 7 end (CF ANALYSIS FAILED)
end
return any_extend_result1