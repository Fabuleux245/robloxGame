-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:27
-- Luau version 6, Types version 3
-- Time taken: 0.001105 seconds

local constants_upvr = require(script:FindFirstAncestor("VirtualEvents").constants)
return function(arg1) -- Line 19, Named "getGalleryItems"
	--[[ Upvalues[1]:
		[1]: constants_upvr (readonly)
	]]
	local module = {}
	if arg1 then
		for _, v in arg1 do
			if v.assetType == "Image" and v.imageId then
				table.insert(module, {
					imageId = "rbxassetid://%s":format(v.imageId);
					isYouTubeVideo = false;
				})
			end
		end
	end
	if 0 < #module then
		return module
	end
	return {{
		imageId = constants_upvr.DEFAULT_EVENT_THUMBNAIL;
		isYouTubeVideo = false;
	}}
end