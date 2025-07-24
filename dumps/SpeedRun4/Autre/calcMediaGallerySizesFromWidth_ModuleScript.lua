-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:16
-- Luau version 6, Types version 3
-- Time taken: 0.001617 seconds

local ImageSet = require(script:FindFirstAncestor("AppBlox").Parent.UIBlox).App.ImageSet
local any_getIconSize_result1_upvr = ImageSet.getIconSize(ImageSet.Enum.IconSize.Medium)
function calcMediaGallerySizesFromWidth(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[1]:
		[1]: any_getIconSize_result1_upvr (readonly)
	]]
	if arg3 then
		local _ = arg1
	else
	end
	local floored_2 = math.floor((arg1 - any_getIconSize_result1_upvr * 2) / 1.7777777777777777)
	local var5
	if arg3 then
		var5 = math.floor((arg1 - (arg2 - 1) * 12) / arg2)
	else
		var5 = math.floor((arg1 - (arg2 - 1) * 12 - any_getIconSize_result1_upvr * 2) / arg2)
	end
	if arg3 then
	else
	end
	local floored = math.floor(var5 / 1.7777777777777777)
	local module = {
		contentSize = UDim2.fromOffset(arg1, floored_2 + floored + 24);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.previewSize = UDim2.fromOffset(arg1 - any_getIconSize_result1_upvr * 2, floored_2)
	module.paginationSize = UDim2.fromOffset(arg1, floored)
	module.thumbnailSize = UDim2.fromOffset(var5, floored)
	return module
end
return calcMediaGallerySizesFromWidth