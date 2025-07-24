-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:09
-- Luau version 6, Types version 3
-- Time taken: 0.000884 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local function _(arg1) -- Line 9, Named "getSelectedCapture"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local SelectedCaptureIndex = arg1[Constants_upvr.RoduxKey].Carousel.SelectedCaptureIndex
	if SelectedCaptureIndex ~= nil then
		return arg1[Constants_upvr.RoduxKey].Captures[SelectedCaptureIndex]
	end
	return nil
end
local CaptureService_upvr = game:GetService("CaptureService")
local CapturesRetrieved_upvr = require(Parent.Actions.CapturesRetrieved)
return function() -- Line 18
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: CaptureService_upvr (readonly)
		[3]: CapturesRetrieved_upvr (readonly)
	]]
	return function(arg1) -- Line 19
		--[[ Upvalues[3]:
			[1]: Constants_upvr (copied, readonly)
			[2]: CaptureService_upvr (copied, readonly)
			[3]: CapturesRetrieved_upvr (copied, readonly)
		]]
		local any_getState_result1 = arg1:getState()
		local SelectedCaptureIndex_2 = any_getState_result1[Constants_upvr.RoduxKey].Carousel.SelectedCaptureIndex
		local var10
		if SelectedCaptureIndex_2 ~= nil then
			var10 = any_getState_result1[Constants_upvr.RoduxKey].Captures[SelectedCaptureIndex_2]
		else
			var10 = nil
		end
		arg1:dispatch(CapturesRetrieved_upvr(CaptureService_upvr:RetrieveCaptures(), var10))
	end
end