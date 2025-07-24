-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:19
-- Luau version 6, Types version 3
-- Time taken: 0.000578 seconds

local Parent = script.Parent.Parent
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = game:GetService("CaptureService")
return function(arg1) -- Line 9, Named "getCaptureUploadData"
	--[[ Upvalues[3]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
		[3]: CaptureService_upvr (readonly)
	]]
	if FFlagUseRbxstorageInGallery_upvr and arg1.type == CaptureType_upvr.Video then
		return nil
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 14
		--[[ Upvalues[2]:
			[1]: CaptureService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return CaptureService_upvr:GetCaptureUploadDataAsync(arg1.filePath)
	end)
	if not pcall_result1 then
		return nil
	end
	return pcall_result2
end