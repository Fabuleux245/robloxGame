-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:52
-- Luau version 6, Types version 3
-- Time taken: 0.006604 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
local AppChat = script:FindFirstAncestor("AppChat")
local Parent_2 = AppChat.Parent
local _ = require(Parent_2.React)
if require(AppChat.Flags.FFlagAppChatUseNewSelectChatMembersContainer) then
else
end
local GetFFlagAppChatRebrandStringUpdates_2 = require(Parent_2.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local _ = require(Parent_2.SharedFlags)
local var68
if GetFFlagAppChatRebrandStringUpdates_2() and require(Parent_2.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var68 = "Feature.Chat.Heading.PartyWithConnections"
else
	var68 = "Feature.Chat.Heading.ChatWithConnections"
end
;({}).pageHeaderText = var68
var68 = {}
-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [216] 130. Error Block 30 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(Parent_2.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
else
	-- KONSTANTERROR: [222] 135. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [222] 135. Error Block 13 end (CF ANALYSIS FAILED)
end
var68.systemButtonText = "Feature.Chat.Action.StartChatWithFriends"
-- KONSTANTERROR: [216] 130. Error Block 30 end (CF ANALYSIS FAILED)