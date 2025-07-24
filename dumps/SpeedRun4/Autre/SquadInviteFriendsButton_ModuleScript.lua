-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:21
-- Luau version 6, Types version 3
-- Time taken: 0.001526 seconds

local Squads = script:FindFirstAncestor("Squads")
local Parent = Squads.Parent
local FriendsMenu = require(Parent.FriendsMenu)
local SquadsCore = require(Parent.SquadsCore)
local UIBlox = require(Parent.UIBlox)
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local UniversalAppPolicy_upvr = require(Parent.UniversalAppPolicy)
local dependencies = require(Squads.dependencies)
local FFlagRenameFriendsToConnectionsPartyLobby_upvr = require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsPartyLobby
local tbl_upvr = {
	[UserModel_upvr.PresenceType.OFFLINE] = 0;
	[UserModel_upvr.PresenceType.ONLINE] = 1;
	[UserModel_upvr.PresenceType.IN_GAME] = 2;
	[UserModel_upvr.PresenceType.IN_STUDIO] = 3;
}
local function _() -- Line 49, Named "getFFlagRenameFriendsToConnectionsPartyLobby"
	--[[ Upvalues[2]:
		[1]: FFlagRenameFriendsToConnectionsPartyLobby_upvr (readonly)
		[2]: UniversalAppPolicy_upvr (readonly)
	]]
	local var11 = FFlagRenameFriendsToConnectionsPartyLobby_upvr
	if var11 then
		var11 = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
	end
	return var11
end
local React_upvr = dependencies.React
local SelectedUsersContext_upvr = FriendsMenu.SelectedUsersContext
local InviteCallbackContext_upvr = FriendsMenu.InviteCallbackContext
local FriendsListContext_upvr = FriendsMenu.FriendsListContext
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local SquadInviteChangesExperimentation_upvr = dependencies.SocialExperiments.SquadInviteChangesExperimentation
local Cryo_upvr = require(Parent.Cryo)
local useLocalization_upvr = dependencies.Hooks.useLocalization
local FFlagEnablePartyQuickStartButton_upvr = require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local encodeUserIds_upvr = SquadsCore.Common.encodeUserIds
local EventNames_upvr = SquadsCore.Analytics.EventNames
local SquadRootViewType_upvr = SquadsCore.Enums.SquadRootViewType
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 54, Named "SquadInviteFriendsButton"
	--[[ Upvalues[19]:
		[1]: React_upvr (readonly)
		[2]: SelectedUsersContext_upvr (readonly)
		[3]: InviteCallbackContext_upvr (readonly)
		[4]: FriendsListContext_upvr (readonly)
		[5]: SquadExternalContractContext_upvr (readonly)
		[6]: SquadInviteChangesExperimentation_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: useLocalization_upvr (readonly)
		[9]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[10]: UserModel_upvr (readonly)
		[11]: tbl_upvr (readonly)
		[12]: dependencyArray_upvr (readonly)
		[13]: encodeUserIds_upvr (readonly)
		[14]: EventNames_upvr (readonly)
		[15]: SquadRootViewType_upvr (readonly)
		[16]: Button_upvr (readonly)
		[17]: ButtonType_upvr (readonly)
		[18]: FFlagRenameFriendsToConnectionsPartyLobby_upvr (readonly)
		[19]: UniversalAppPolicy_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 55. Error Block 41 start (CF ANALYSIS FAILED)
	if React_upvr.useContext(SelectedUsersContext_upvr).selectedFriendsSize ~= 0 then
	else
	end
	-- KONSTANTERROR: [72] 55. Error Block 41 end (CF ANALYSIS FAILED)
end