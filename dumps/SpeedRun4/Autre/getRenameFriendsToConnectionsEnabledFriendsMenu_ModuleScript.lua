-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:38
-- Luau version 6, Types version 3
-- Time taken: 0.000428 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local FFlagRenameFriendsToConnectionsFriendsMenu_upvr = require(FriendsMenu.Flags.FFlagRenameFriendsToConnectionsFriendsMenu)
local UniversalAppPolicy_upvr = require(FriendsMenu.Parent.UniversalAppPolicy)
return function() -- Line 8, Named "getRenameFriendsToConnectionsEnabledFriendsMenu"
	--[[ Upvalues[2]:
		[1]: FFlagRenameFriendsToConnectionsFriendsMenu_upvr (readonly)
		[2]: UniversalAppPolicy_upvr (readonly)
	]]
	local var4 = FFlagRenameFriendsToConnectionsFriendsMenu_upvr
	if var4 then
		var4 = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
	end
	return var4
end