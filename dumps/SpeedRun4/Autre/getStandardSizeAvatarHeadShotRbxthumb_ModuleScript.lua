-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:49
-- Luau version 6, Types version 3
-- Time taken: 0.000315 seconds

local getRbxthumbWithTypeSizeAndOptions_upvr = require(script.Parent.getRbxthumbWithTypeSizeAndOptions)
local Constants_upvr = require(script.Parent.Constants)
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	return getRbxthumbWithTypeSizeAndOptions_upvr(arg1, Constants_upvr.RbxthumbTypes.AvatarHeadShot, 150)
end