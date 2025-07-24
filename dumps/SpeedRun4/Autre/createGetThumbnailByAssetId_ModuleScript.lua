-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:21
-- Luau version 6, Types version 3
-- Time taken: 0.000848 seconds

local THUMBNAILS_URL_upvr = require(script.Parent.Parent.Parent.Http).Url.THUMBNAILS_URL
return function(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: THUMBNAILS_URL_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "GetThumbnailByAssetId";
	}, function(arg1_2, arg2) -- Line 18
		--[[ Upvalues[1]:
			[1]: THUMBNAILS_URL_upvr (copied, readonly)
		]]
		return arg1_2(THUMBNAILS_URL_upvr):path("v1"):path("batch"):body({{
			targetId = arg2.assetId;
			type = arg2.assetType;
			size = arg2.size;
		}})
	end)
end