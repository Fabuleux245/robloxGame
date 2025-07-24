-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:44
-- Luau version 6, Types version 3
-- Time taken: 0.003437 seconds

-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
local Parent = script:FindFirstAncestor("AppChat").Parent
local GetFFlagAppChatRebrandStringUpdates = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local tbl_2 = {
	chatEnabled = false;
	navigateToPrivacy = function() -- Line 23, Named "navigateToPrivacy"
	end;
}
local var25
if GetFFlagAppChatRebrandStringUpdates() and require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var25 = "Feature.Chat.Message.MakeFriendsToParty"
else
	var25 = "Feature.Chat.Message.MakeFriendsToChat"
end
tbl_2.makeFriendsToChatKey = var25
var25 = "Feature.Chat.Label.PrivacySettings"
tbl_2.privacyButtonKey = var25
-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [116] 74. Error Block 41 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var25 = "Feature.Chat.Message.TurnOnParty"
else
	-- KONSTANTERROR: [122] 79. Error Block 9 start (CF ANALYSIS FAILED)
	var25 = "Feature.Chat.Message.TurnOnChat"
	-- KONSTANTERROR: [122] 79. Error Block 9 end (CF ANALYSIS FAILED)
end
tbl_2.turnOnChatKey = var25
var25 = true
tbl_2.privacyButtonEnabled = var25
if require(Parent.SharedFlags).FFlagRenameFriendsToConnectionsAppChatFullLaunch then
	var25 = true
else
	var25 = nil
end
tbl_2.renameFriendsToConnections = var25
require(Parent.Roact).PureComponent:extend("EmptyConversationList").defaultProps = tbl_2
-- KONSTANTERROR: [116] 74. Error Block 41 end (CF ANALYSIS FAILED)