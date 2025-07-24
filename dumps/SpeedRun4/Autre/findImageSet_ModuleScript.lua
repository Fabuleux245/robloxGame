-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:04
-- Luau version 6, Types version 3
-- Time taken: 0.000520 seconds

local UIBlox_upvr = require(script:FindFirstAncestor("SocialLibraries").dependencies).UIBlox
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: UIBlox_upvr (readonly)
	]]
	local var3 = UIBlox_upvr.App.ImageSet.Images[arg1]
	return {
		Image = var3.Image;
		ImageRectSize = var3.ImageRectSize;
		ImageRectOffset = var3.ImageRectOffset;
	}
end