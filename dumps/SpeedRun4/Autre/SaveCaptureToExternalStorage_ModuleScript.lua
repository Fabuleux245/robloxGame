-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:11
-- Luau version 6, Types version 3
-- Time taken: 0.001054 seconds

local Parent = script.Parent.Parent
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = require(Parent.Services.CaptureService)
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
	return function(arg1_2) -- Line 14
		--[[ Upvalues[6]:
			[1]: FFlagUseRbxstorageInGallery_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CaptureType_upvr (copied, readonly)
			[4]: CaptureService_upvr (copied, readonly)
			[5]: ToastTriggered_upvr (copied, readonly)
			[6]: CapturesToastType_upvr (copied, readonly)
		]]
		if FFlagUseRbxstorageInGallery_upvr and arg1.type == CaptureType_upvr.Video then
			CaptureService_upvr:SaveVideoCaptureToExternalStorage(arg1.videoCapture)
		else
			CaptureService_upvr:SaveCaptureToExternalStorage(arg1.filePath)
		end
		local tbl = {}
		tbl.captureInfo = arg1
		arg1_2:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.CaptureSavedToDevice, tbl))
	end
end