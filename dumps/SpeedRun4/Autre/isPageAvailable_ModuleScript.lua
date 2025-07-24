-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:09
-- Luau version 6, Types version 3
-- Time taken: 0.000837 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local EnumScreens = require(AppChat.EnumScreens)
local tbl_upvr = {
	[EnumScreens.AddFriends] = true;
	[EnumScreens.PrivacySettings] = true;
	[EnumScreens.GameDetail] = true;
	[EnumScreens.ViewUserProfile] = true;
	[EnumScreens.Groups] = true;
}
local isPlacementInExperience_upvr = require(AppChat.Contexts.ChatPlacementContext).isPlacementInExperience
return function(arg1, arg2) -- Line 15
	--[[ Upvalues[2]:
		[1]: isPlacementInExperience_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if isPlacementInExperience_upvr(arg2) and tbl_upvr[arg1] then
		return false
	end
	return true
end