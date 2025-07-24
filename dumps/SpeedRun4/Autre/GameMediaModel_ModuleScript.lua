-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:03:18
-- Luau version 6, Types version 3
-- Time taken: 0.001851 seconds

local t = require(script:FindFirstAncestor("RoduxGames").Parent.t)
local module_2_upvr = {}
function module_2_upvr.new(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	assert(module_2_upvr.isValid(arg1))
	module_2_upvr.__index = module_2_upvr
	setmetatable(arg1, module_2_upvr)
	return arg1
end
function module_2_upvr.mock(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	local var4 = var3
	return module_2_upvr.new({
		assetTypeId = var4.assetTypeId or 1;
		assetType = var4.assetType or "Image";
		imageId = var4.imageId or 1234567890;
		approved = var4.approved or false;
	})
end
function module_2_upvr.format(arg1) -- Line 44
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		assetTypeId = arg1.assetTypeId;
		assetType = arg1.assetType;
		imageId = arg1.imageId;
		videoHash = arg1.videoHash;
	}
	local videoTitle = arg1.videoTitle
	module.videoTitle = videoTitle
	if arg1.approved then
		videoTitle = arg1.approved
	else
		videoTitle = false
	end
	module.approved = videoTitle
	module.altText = arg1.altText
	return module_2_upvr.new(module)
end
module_2_upvr.isValid = t.strictInterface({
	assetTypeId = t.optional(t.number);
	assetType = t.string;
	imageId = t.optional(t.number);
	videoHash = t.optional(t.string);
	videoTitle = t.optional(t.string);
	approved = t.boolean;
	altText = t.optional(t.string);
})
return module_2_upvr