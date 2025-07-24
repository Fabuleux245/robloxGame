-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:03
-- Luau version 6, Types version 3
-- Time taken: 0.001687 seconds

-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local getFFlagSupportGameCardForInExpPlatChat = require(AppChat.Flags.getFFlagSupportGameCardForInExpPlatChat)
local tbl = {
	PlayerContextualMenu = require(Parent.PlayerContextualMenu).installReducer();
	EventReceievers = require(Parent.Rodux).combineReducers({
		NetworkStatus = require(AppChat.Http.RoduxNetworking).installReducer();
	});
}
local var8 = require(AppChat.installReducer)()
tbl.ChatAppReducer = var8
if getFFlagSupportGameCardForInExpPlatChat() then
	var8 = require(Parent.Http).Reducers.FetchingStatus
else
	var8 = nil
end
tbl.FetchingStatus = var8
if getFFlagSupportGameCardForInExpPlatChat() then
	-- KONSTANTWARNING: GOTO [141] #88
end
-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [140] 87. Error Block 29 start (CF ANALYSIS FAILED)
tbl.GameDetails = nil
tbl.LocalUserId = require(Parent.UserLib).Reducers.LocalUserIdReducer
tbl.FriendCount = require(Parent.LegacyFriendsRodux).Reducers.FriendCount
if getFFlagSupportGameCardForInExpPlatChat() then
	-- KONSTANTWARNING: GOTO [153] #97
end
-- KONSTANTERROR: [140] 87. Error Block 29 end (CF ANALYSIS FAILED)