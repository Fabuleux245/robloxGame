-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:10
-- Luau version 6, Types version 3
-- Time taken: 0.000884 seconds

local Parent = script.Parent.Parent
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = game:GetService("CaptureService")
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
return function(arg1) -- Line 13
	--[[ Upvalues[5]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
		[3]: CaptureService_upvr (readonly)
		[4]: ToastTriggered_upvr (readonly)
		[5]: CapturesToastType_upvr (readonly)
	]]
	for _, v in ipairs(arg1) do
		if FFlagUseRbxstorageInGallery_upvr and v.type == CaptureType_upvr.Video then
			table.insert({}, v.videoCapture)
		elseif v.type == CaptureType_upvr.Screenshot then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, v.filePath)
		end
	end
	local tbl_upvr = {}
	return function(arg1_2) -- Line 23
		--[[ Upvalues[5]:
			[1]: CaptureService_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: ToastTriggered_upvr (copied, readonly)
			[4]: CapturesToastType_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		CaptureService_upvr:SaveCapturesToExternalStorageAsync(tbl_upvr)
		arg1_2:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.CaptureSavedToDevice, {
			captureInfo = arg1[1];
		}))
	end
end