-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:08
-- Luau version 6, Types version 3
-- Time taken: 0.000681 seconds

local InputSize_upvr = require(script:FindFirstAncestor("Foundation").Enums.InputSize)
return function(arg1, arg2) -- Line 9, Named "getAvatarSize"
	--[[ Upvalues[1]:
		[1]: InputSize_upvr (readonly)
	]]
	return ({
		[InputSize_upvr.XSmall] = arg1.Size.Size_600;
		[InputSize_upvr.Small] = arg1.Size.Size_800;
		[InputSize_upvr.Medium] = arg1.Size.Size_1000;
		[InputSize_upvr.Large] = arg1.Size.Size_1200;
	})[arg2]
end