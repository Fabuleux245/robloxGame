-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:51
-- Luau version 6, Types version 3
-- Time taken: 0.000468 seconds

local module_upvr = {}
local Constants_upvr = require(script:FindFirstAncestor("UserLib").Utils.Constants)
function module_upvr.new() -- Line 17
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	return {
		thumbnailType = Constants_upvr.RbxAvatarThumbnailTypesFromEnum.HeadShot;
		thumbnailSize = Constants_upvr.RbxThumbnailSizes.Size150x150;
	}
end
function module_upvr.fromData(arg1, arg2) -- Line 26
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_new_result1 = module_upvr.new()
	any_new_result1.thumbnailType = arg1
	any_new_result1.thumbnailSize = arg2
	return any_new_result1
end
return module_upvr