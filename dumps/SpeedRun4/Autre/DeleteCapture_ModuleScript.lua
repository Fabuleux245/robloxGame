-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:08
-- Luau version 6, Types version 3
-- Time taken: 0.000606 seconds

local Parent = script.Parent.Parent
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = game:GetService("CaptureService")
local RetrieveCaptures_upvr = require(Parent.Thunks.RetrieveCaptures)
return function(arg1) -- Line 12
	--[[ Upvalues[4]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
		[3]: CaptureService_upvr (readonly)
		[4]: RetrieveCaptures_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[5]:
			[1]: FFlagUseRbxstorageInGallery_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: CaptureType_upvr (copied, readonly)
			[4]: CaptureService_upvr (copied, readonly)
			[5]: RetrieveCaptures_upvr (copied, readonly)
		]]
		if FFlagUseRbxstorageInGallery_upvr and arg1.type == CaptureType_upvr.Video then
			CaptureService_upvr:DeleteVideoCapture(arg1.videoCapture)
		else
			CaptureService_upvr:DeleteCapture(arg1.filePath)
		end
		arg1_2:dispatch(RetrieveCaptures_upvr())
	end
end