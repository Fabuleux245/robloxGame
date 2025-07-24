-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:15
-- Luau version 6, Types version 3
-- Time taken: 0.000512 seconds

local ImageSet = require(script:FindFirstAncestor("AppBlox").Parent.UIBlox).App.ImageSet
local any_getIconSize_result1_upvr = ImageSet.getIconSize(ImageSet.Enum.IconSize.Medium)
local calcMediaGallerySizesFromWidth_upvr = require(script.Parent.calcMediaGallerySizesFromWidth)
function calcMediaGallerySizesFromHeight(arg1, arg2, arg3) -- Line 17
	--[[ Upvalues[2]:
		[1]: any_getIconSize_result1_upvr (readonly)
		[2]: calcMediaGallerySizesFromWidth_upvr (readonly)
	]]
	return calcMediaGallerySizesFromWidth_upvr(math.floor((math.floor((arg1 - 24) * 1.7777777777777777 * arg2) + (arg2 - 1) * 12 + any_getIconSize_result1_upvr * 2 + any_getIconSize_result1_upvr * 2 * arg2) / (arg2 + 1)), arg2, arg3)
end
return calcMediaGallerySizesFromHeight