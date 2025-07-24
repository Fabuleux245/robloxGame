-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:27
-- Luau version 6, Types version 3
-- Time taken: 0.001478 seconds

local Parent_3 = script.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local FFlagUpdateInvitesToUsePaginatedFriends_upvr = Parent.Flags.FFlagUpdateInvitesToUsePaginatedFriends
if require(FFlagUpdateInvitesToUsePaginatedFriends_upvr) then
	FFlagUpdateInvitesToUsePaginatedFriends_upvr = require(Parent_3.FriendsListContextProvider2)
else
	FFlagUpdateInvitesToUsePaginatedFriends_upvr = require(Parent_3.FriendsListContextProvider)
end
local SquadInviteChangesExperimentation_upvr = require(Parent_2.SocialExperiments).SquadInviteChangesExperimentation
local Cryo_upvr = require(Parent_2.Cryo)
local React_upvr = require(Parent_2.React)
local InviteCallbackProvider_upvr = require(Parent_3.InviteCallbackProvider)
local SelectedUsersContextProvider_upvr = require(Parent_3.SelectedUsersContextProvider)
return function(arg1) -- Line 30
	--[[ Upvalues[6]:
		[1]: SquadInviteChangesExperimentation_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FFlagUpdateInvitesToUsePaginatedFriends_upvr (readonly)
		[5]: InviteCallbackProvider_upvr (readonly)
		[6]: SelectedUsersContextProvider_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
	local excludedFriendsSet = arg1.excludedFriendsSet
	local var12
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.preselectedUsersUnremovable and arg1.preselectedUsers then
		local var13 = excludedFriendsSet
		if not var13 then
			var13 = {}
		end
		excludedFriendsSet = Cryo_upvr.Dictionary.union(var13, Cryo_upvr.List.toSet(arg1.preselectedUsers))
	end
	local module = {}
	var12 = arg1.selectionLimit
	module.selectionLimit = var12
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		var12 = arg1.preselectedUsers
	else
		var12 = nil
	end
	module.preselectedUsers = var12
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		-- KONSTANTWARNING: GOTO [85] #59
	end
	-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 58. Error Block 31 start (CF ANALYSIS FAILED)
	module.preselectedUsersUnremovable = nil
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
	else
	end
	module.onRemoveCallback = nil
	do
		return React_upvr.createElement(FFlagUpdateInvitesToUsePaginatedFriends_upvr, {
			excludedFriendsSet = excludedFriendsSet;
			isLoadingCustomParams = arg1.isLoadingCustomParams;
		}, React_upvr.createElement(InviteCallbackProvider_upvr, {
			inviteSingleFriend = arg1.inviteSingleFriend;
			inviteMultiFriends = arg1.inviteMultiFriends;
		}, React_upvr.createElement(SelectedUsersContextProvider_upvr, module, arg1.children)))
	end
	-- KONSTANTERROR: [84] 58. Error Block 31 end (CF ANALYSIS FAILED)
end