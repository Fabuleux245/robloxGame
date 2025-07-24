-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:56
-- Luau version 6, Types version 3
-- Time taken: 0.000629 seconds

local UserLib = require(script:FindFirstAncestor("BulkPurchaseApp").Parent.UserLib)
local Constants_upvr = UserLib.Utils.Constants
local function _(arg1) -- Line 9, Named "getRbxThumbType"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg1 == "AvatarBundle" then
		return Constants_upvr.RbxthumbTypes.BundleThumbnail
	end
	return Constants_upvr.RbxthumbTypes.Asset
end
local getRbxthumbWithTypeSizeAndOptions_upvr = UserLib.Utils.getRbxthumbWithTypeSizeAndOptions
return function(arg1, arg2) -- Line 16, Named "getThumbnailUrl"
	--[[ Upvalues[2]:
		[1]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local var4
	if arg2 == "AvatarBundle" then
		var4 = Constants_upvr.RbxthumbTypes.BundleThumbnail
	else
		var4 = Constants_upvr.RbxthumbTypes.Asset
	end
	return getRbxthumbWithTypeSizeAndOptions_upvr(arg1, var4, 150)
end