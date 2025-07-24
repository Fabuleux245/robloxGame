-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:58
-- Luau version 6, Types version 3
-- Time taken: 0.000610 seconds

local Parent = script:FindFirstAncestor("LegacyFriendsRodux").Parent
local Url_upvr = require(Parent.Http).Url
local Players_upvr = game:GetService("Players")
local isNewFriendsEndpointsEnabled_upvr = require(Parent.SharedFlags).isNewFriendsEndpointsEnabled
return function(arg1) -- Line 22
	--[[ Upvalues[3]:
		[1]: Url_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: isNewFriendsEndpointsEnabled_upvr (readonly)
	]]
	local formatted = string.format("%s/user/get-friendship-count?%s", Url_upvr.API_URL, tostring(Players_upvr.LocalPlayer.UserId))
	if isNewFriendsEndpointsEnabled_upvr() then
		formatted = string.format("%s/my/friends/count", Url_upvr.FRIEND_URL)
	end
	return arg1(formatted, "GET")
end