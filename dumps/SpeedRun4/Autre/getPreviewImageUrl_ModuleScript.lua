-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:43
-- Luau version 6, Types version 3
-- Time taken: 0.001454 seconds

local string_gsub_result1 = string.gsub(game:GetService("ContentProvider").BaseUrl:lower(), "https?://m.", "https?://www.")
local ItemType_upvr = require(script.Parent.Enums.ItemType)
local var3_upvr = string_gsub_result1.."outfit-thumbnail/image?userOutfitId=%s&width=100&height=100&format=png"
local var4_upvr = string_gsub_result1.."thumbs/asset.ashx?assetid="
return function(arg1, arg2) -- Line 14, Named "getPreviewImageUrl"
	--[[ Upvalues[3]:
		[1]: ItemType_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: var4_upvr (readonly)
	]]
	local var5
	if arg1.itemType == ItemType_upvr.Bundle then
		if arg1.costumeId then
			return string.format(var3_upvr, arg1.costumeId)
		end
		var5 = arg1.items[1].id
	elseif arg1.AssetId ~= nil and arg1.AssetId ~= 0 then
		var5 = arg1.AssetId
	elseif arg1.IconImageAssetId ~= nil then
		var5 = arg1.IconImageAssetId
	elseif arg2 == Enum.Platform.XBoxOne then
		return "rbxasset://textures/ui/Shell/Icons/ROBUXIcon@1080.png"
	end
	return var4_upvr..tostring(var5).."&x=100&y=100&format=png"
end