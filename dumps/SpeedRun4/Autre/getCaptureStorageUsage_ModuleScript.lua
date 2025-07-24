-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:18
-- Luau version 6, Types version 3
-- Time taken: 0.002345 seconds

local Parent = script.Parent.Parent
local FFlagCapturesGalleryAddSizeStringNilCheck_upvr = require(Parent.Flags.FFlagCapturesGalleryAddSizeStringNilCheck)
function formatBytes(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: FFlagCapturesGalleryAddSizeStringNilCheck_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {"Bytes", "KB", "MB", "GB", "TB"}
	local floored = math.floor(math.log(arg1) / 6.931471805599453)
	local var5
	if floored <= 2 then
		var5 = "%d%s"
	end
	if FFlagCapturesGalleryAddSizeStringNilCheck_upvr and not module[floored + 1] then
		return ""
	end
	return string.format(var5, math.round(arg1 / math.pow(1024, floored)), module[floored + 1])
end
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = game:GetService("CaptureService")
return function(arg1) -- Line 31, Named "getCaptureStorageUsage"
	--[[ Upvalues[3]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
		[3]: CaptureService_upvr (readonly)
	]]
	if #arg1 == 0 then return end
	for _, v in ipairs(arg1) do
		if FFlagUseRbxstorageInGallery_upvr and v.type == CaptureType_upvr.Video then
		else
			table.insert({}, v.filePath)
		end
	end
	local module_upvr = {}
	local _, pcall_result2 = pcall(function() -- Line 45
		--[[ Upvalues[2]:
			[1]: CaptureService_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return CaptureService_upvr:GetCaptureStorageSizeAsync(module_upvr)
	end)
	return formatBytes(pcall_result2)
end