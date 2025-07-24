-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:54
-- Luau version 6, Types version 3
-- Time taken: 0.006239 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
local AppChat_2 = script:FindFirstAncestor("AppChat")
local Parent = AppChat_2.Parent
local _ = require(Parent.React)
if require(AppChat_2.Flags.FFlagAppChatUseNewSelectChatMembersContainer) then
else
end
local GetFFlagAppChatRebrandStringUpdates_2 = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local var73
if GetFFlagAppChatRebrandStringUpdates_2() and require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var73 = "Feature.Chat.Heading.PartyWithConnections"
else
	var73 = "Feature.Chat.Heading.ChatWithConnections"
end
;({}).pageHeaderText = var73
var73 = {}
-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [197] 119. Error Block 30 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
if require(Parent.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
else
	-- KONSTANTERROR: [203] 124. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [203] 124. Error Block 13 end (CF ANALYSIS FAILED)
end
var73.systemButtonText = "Feature.Chat.Action.StartChatWithFriends"
-- KONSTANTERROR: [197] 119. Error Block 30 end (CF ANALYSIS FAILED)