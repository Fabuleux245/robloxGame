-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:46
-- Luau version 6, Types version 3
-- Time taken: 0.004339 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 43 start (CF ANALYSIS FAILED)
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens = require(AppChat.EnumScreens)
local getFFlagAppChatReplaceWithCloseButton = require(AppChat.Flags.getFFlagAppChatReplaceWithCloseButton)
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local module = {}
local tbl_9 = {}
local tbl_7 = {
	screen = require(AppChat.Components.ChatLanding.ChatLandingScreen);
}
if require(AppChat.Flags.getFFlagAppChatRemoveDynamicRequires)() then
	local function _() -- Line 30
		--[[ Upvalues[1]:
			[1]: default_upvr (readonly)
		]]
		if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
			return {
				isRoot = true;
				backButtonEnabled = false;
				tabBarVisible = true;
			}
		end
		return {
			isRoot = true;
		}
	end
	-- KONSTANTWARNING: GOTO [177] #108
end
-- KONSTANTERROR: [0] 1. Error Block 43 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [154] 91. Error Block 48 start (CF ANALYSIS FAILED)
local var12
if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
	var12 = {}
	var12.isRoot = true
	var12.backButtonEnabled = false
	var12.tabBarVisible = true
else
	var12 = {}
	var12.isRoot = true
end
tbl_7.navigationOptions = var12
tbl_9[EnumScreens.ChatLanding] = tbl_7
local tbl_5 = {}
var12 = {}
var12.screen = require(AppChat.Components.ChatConversation.ChatConversationScreen)
if require(AppChat.Flags.getFFlagDisableAppChatConversationAbsorbInputLayerAndroid)() then
	local _ = {
		backButtonEnabled = true;
		tabBarVisible = false;
		lockIconEnabled = true;
		absorbInput = false;
	}
else
end
var12.navigationOptions = {
	backButtonEnabled = true;
	tabBarVisible = false;
	lockIconEnabled = true;
}
tbl_5[EnumScreens.ChatConversation] = var12
local tbl = {}
var12 = EnumScreens.ChatDetails
local tbl_4 = {
	screen = require(AppChat.Components.ChatDetails.ChatDetailsScreen);
}
local tbl_3 = {}
if getFFlagAppChatReplaceWithCloseButton() then
else
end
tbl_3.backButtonEnabled = true
if getFFlagAppChatReplaceWithCloseButton() then
else
end
tbl_3.closeButtonEnabled = nil
tbl_3.tabBarVisible = false
tbl_4.navigationOptions = tbl_3
tbl[var12] = tbl_4
var12 = {}
var12[EnumScreens.CreateNewChat] = {
	screen = require(AppChat.Components.CreateNewChat.CreateNewChatScreen);
	navigationOptions = {
		backButtonEnabled = true;
		tabBarVisible = false;
	};
}
module[1] = tbl_9
module[2] = tbl_5
module[3] = tbl
module[4] = var12
module[5] = {
	[EnumScreens.EditChatMembers] = {
		screen = require(AppChat.Components.EditChatMembers.EditChatMembersScreen);
		navigationOptions = {
			backButtonEnabled = true;
			tabBarVisible = false;
		};
	};
}
if require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage() then
	local tbl_6 = {}
	var12 = EnumScreens.SquadLobby
	tbl_6[var12] = {
		screen = require(AppChat.Components.Squads.SquadLobbyScreen).CompactSquadLobbyScreen;
		navigationOptions = {
			backButtonEnabled = true;
			tabBarVisible = false;
		};
	}
	table.insert(module, tbl_6)
	if require(Parent.SocialExperiments).SquadQuickStartExperimentation.getPartyQuickStartChangesEnabled() and require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton then
		local tbl_2 = {}
		var12 = EnumScreens.QuickStartSquadInviteFriends
		tbl_2[var12] = {
			screen = require(AppChat.Components.Squads.QuickStartSquadInviteFriendsScreen);
			navigationOptions = {
				backButtonEnabled = true;
				tabBarVisible = false;
			};
		}
		table.insert(module, tbl_2)
	end
	local tbl_8 = {}
	var12 = EnumScreens.SquadInviteFriends
	local tbl_10 = {
		screen = require(AppChat.Components.Squads.SquadInviteFriendsScreen);
	}
	local tbl_11 = {
		backButtonEnabled = true;
		tabBarVisible = false;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton then
		local _ = {
			raw = "Feature.Squads.Action.Add";
			shouldLocalize = true;
		}
	else
	end
	tbl_11.headerText = nil
	tbl_10.navigationOptions = tbl_11
	tbl_8[var12] = tbl_10
	table.insert(module, tbl_8)
end
do
	return module
end
-- KONSTANTERROR: [154] 91. Error Block 48 end (CF ANALYSIS FAILED)