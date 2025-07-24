-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:02
-- Luau version 6, Types version 3
-- Time taken: 0.000444 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Cryo_upvr = require(Parent.Cryo)
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
return function(arg1) -- Line 7
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
	]]
	return Cryo_upvr.List.map(arg1, function(arg1_2) -- Line 8
		--[[ Upvalues[1]:
			[1]: getStandardSizeAvatarHeadShotRbxthumb_upvr (copied, readonly)
		]]
		return getStandardSizeAvatarHeadShotRbxthumb_upvr(tostring(arg1_2))
	end)
end