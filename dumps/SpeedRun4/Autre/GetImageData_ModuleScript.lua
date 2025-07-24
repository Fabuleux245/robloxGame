-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:49
-- Luau version 6, Types version 3
-- Time taken: 0.000942 seconds

local GetImageSetData_upvr = require(script.Parent.GetImageSetData)
local Images_upvr = require(script.Parent.Parent.FoundationImages).Images
local GetImageSetPathPattern_upvr = require(script.Parent.GetImageSetPathPattern)
return function(arg1, arg2) -- Line 9, Named "GetImageData"
	--[[ Upvalues[3]:
		[1]: GetImageSetData_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: GetImageSetPathPattern_upvr (readonly)
	]]
	local var4 = arg2
	if not var4 then
		var4 = Images_upvr.ImagesResolutionScale
	end
	local var5 = GetImageSetData_upvr(var4)[arg1]
	if var5 == nil then
		return nil
	end
	return {
		Image = GetImageSetPathPattern_upvr(var5.ImageSet);
		ImageRectSize = var5.ImageRectSize;
		ImageRectOffset = var5.ImageRectOffset;
	}
end