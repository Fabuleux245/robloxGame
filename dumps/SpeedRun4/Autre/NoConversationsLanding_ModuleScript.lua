-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:47
-- Luau version 6, Types version 3
-- Time taken: 0.005505 seconds

-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
local Parent_2 = script:FindFirstAncestor("AppChat").Parent
local GetFFlagAppChatRebrandStringUpdates_2 = require(Parent_2.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local tbl_13 = {}
local tbl_3 = {
	icon = "rbxasset://textures/ui/LuaChat/icons/ic-friends.png";
}
local var34
if GetFFlagAppChatRebrandStringUpdates_2() and require(Parent_2.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var34 = "Feature.Chat.Message.MakeFriendsToParty"
else
	var34 = "Feature.Chat.Message.MakeFriendsToChat"
end
tbl_3.copy = var34
var34 = "Feature.SettingsHub.Label.NoFriendsScreen"
tbl_3.cta = var34
tbl_13.friends = tbl_3
local tbl_5 = {}
var34 = "icons/status/oof_xlarge"
tbl_5.icon = var34
-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [94] 62. Error Block 38 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(Parent_2.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var34 = "Feature.Chat.Message.PartyUnavailableRegion"
else
	-- KONSTANTERROR: [100] 67. Error Block 9 start (CF ANALYSIS FAILED)
	var34 = "Feature.Chat.Message.ChatUnavailableRegion"
	-- KONSTANTERROR: [100] 67. Error Block 9 end (CF ANALYSIS FAILED)
end
tbl_5.copy = var34
var34 = nil
tbl_5.cta = var34
tbl_13.regional = tbl_5
var34 = "rbxasset://textures/ui/LuaChat/icons/ic-friends.png"
;({}).icon = var34
-- KONSTANTERROR: [94] 62. Error Block 38 end (CF ANALYSIS FAILED)