-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:30
-- Luau version 6, Types version 3
-- Time taken: 0.000774 seconds

local Parent = script.Parent.Parent.Parent
local SquadInviteChangesExperimentation = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local module = {
	selectedFriendsSize = 0;
	selectedFriends = {};
	addFriend = function() -- Line 23, Named "addFriend"
	end;
}
local function isFriendSelected() -- Line 24, Named "removeFriend"
end
module.removeFriend = isFriendSelected
function isFriendSelected() -- Line 25
	return false
end
local var5 = isFriendSelected
module.isFriendSelected = var5
if SquadInviteChangesExperimentation.getInviteChangesEnabled then
	var5 = {}
else
	var5 = nil
end
module.preselectedUsers = var5
if SquadInviteChangesExperimentation.getInviteChangesEnabled() then
	function var5() -- Line 29
	end
else
	var5 = nil
end
module.onRemoveCallback = var5
return require(Parent.React).createContext(module)