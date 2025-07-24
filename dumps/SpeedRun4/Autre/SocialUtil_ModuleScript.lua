-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:24
-- Luau version 6, Types version 3
-- Time taken: 0.001316 seconds

local module = {}
local CorePackages = game:GetService("CorePackages")
local Size100x100_upvr = Enum.ThumbnailSize.Size100x100
local AvatarThumbnail_upvr = Enum.ThumbnailType.AvatarThumbnail
local getRbxthumbWithTypeSizeAndOptions_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions
local Constants_upvr = require(CorePackages.Workspace.Packages.UserLib).Utils.Constants
function module.GetPlayerImage(arg1, arg2, arg3, arg4) -- Line 23
	--[[ Upvalues[4]:
		[1]: Size100x100_upvr (readonly)
		[2]: AvatarThumbnail_upvr (readonly)
		[3]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	if not arg2 then
		local var7 = Size100x100_upvr
	end
	if not arg3 then
		local var8 = AvatarThumbnail_upvr
	end
	local var9 = 0
	if var8 == Enum.ThumbnailType.HeadShot or var8 == Enum.ThumbnailType.AvatarBust then
		if var7 == Enum.ThumbnailSize.Size48x48 then
			var9 = 48
		elseif var7 == Enum.ThumbnailSize.Size60x60 then
			var9 = 60
		else
			var9 = 150
		end
		return getRbxthumbWithTypeSizeAndOptions_upvr(arg1, Constants_upvr.RbxthumbTypes.AvatarHeadShot, var9)
	end
	if var8 == Enum.ThumbnailType.AvatarThumbnail then
		if var7 == Enum.ThumbnailSize.Size48x48 or var7 == Enum.ThumbnailSize.Size60x60 or var7 == Enum.ThumbnailSize.Size100x100 then
			var9 = 100
		elseif var7 == Enum.ThumbnailSize.Size150x150 or var7 == Enum.ThumbnailSize.Size180x180 or var7 == Enum.ThumbnailSize.Size352x352 then
			var9 = 352
		elseif var7 == Enum.ThumbnailSize.Size420x420 then
			var9 = 720
		end
		return getRbxthumbWithTypeSizeAndOptions_upvr(arg1, Constants_upvr.RbxthumbTypes.Avatar, var9)
	end
	return "ThumbnailErrorForSocialUtil.GetPlayerImage"
end
return module