-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:06
-- Luau version 6, Types version 3
-- Time taken: 0.000549 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsAppChatFullLaunch
local FFlagRenameFriendsToConnectionsAppChat_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsAppChat
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
return function() -- Line 9, Named "useIsFriendRenameActive"
	--[[ Upvalues[3]:
		[1]: FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr (readonly)
		[2]: FFlagRenameFriendsToConnectionsAppChat_upvr (readonly)
		[3]: UniversalAppPolicy_upvr (readonly)
	]]
	if FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr then
		return FFlagRenameFriendsToConnectionsAppChatFullLaunch_upvr
	end
	local var5 = FFlagRenameFriendsToConnectionsAppChat_upvr
	if var5 then
		var5 = UniversalAppPolicy_upvr.useAppPolicy
		var5 = var5(function(arg1) -- Line 14
			return arg1.getRenameFriendsToConnections()
		end)
	end
	return var5
end