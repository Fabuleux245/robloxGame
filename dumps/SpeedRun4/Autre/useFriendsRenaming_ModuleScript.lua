-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:48
-- Luau version 6, Types version 3
-- Time taken: 0.000592 seconds

local Parent = script:FindFirstAncestor("FriendsCommon").Parent
local FFlagRenameFriendsToConnectionsProfile_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsProfile
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
return function() -- Line 7, Named "useFriendsRenaming"
	--[[ Upvalues[2]:
		[1]: FFlagRenameFriendsToConnectionsProfile_upvr (readonly)
		[2]: UniversalAppPolicy_upvr (readonly)
	]]
	local var4 = FFlagRenameFriendsToConnectionsProfile_upvr
	if var4 then
		var4 = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
	end
	return var4
end