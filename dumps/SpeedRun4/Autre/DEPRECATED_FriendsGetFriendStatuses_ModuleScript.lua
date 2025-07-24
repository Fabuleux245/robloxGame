-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:59
-- Luau version 6, Types version 3
-- Time taken: 0.000403 seconds

local Players_upvr = game:GetService("Players")
local Url_upvr = require(script:FindFirstAncestor("Http").Url)
return function(arg1, arg2) -- Line 39
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	return arg1(string.format("%s/users/%s/friends/statuses?userIds=%s", Url_upvr.FRIEND_URL, tostring(Players_upvr.LocalPlayer.UserId), table.concat(arg2, ',')), "GET")
end