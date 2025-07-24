-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:08
-- Luau version 6, Types version 3
-- Time taken: 0.001237 seconds

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
	for _, v in ipairs(arg1) do
		if FFlagUseRbxstorageInGallery_upvr and v.type == CaptureType_upvr.Video then
			table.insert({}, v.videoCapture)
		elseif v.type == CaptureType_upvr.Screenshot then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, v.filePath)
		end
	end
	local tbl_upvr = {}
	return function(arg1_2) -- Line 22
		--[[ Upvalues[3]:
			[1]: CaptureService_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: RetrieveCaptures_upvr (copied, readonly)
		]]
		CaptureService_upvr:DeleteCapturesAsync(tbl_upvr)
		arg1_2:dispatch(RetrieveCaptures_upvr())
	end
end