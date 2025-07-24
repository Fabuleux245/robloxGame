-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:59
-- Luau version 6, Types version 3
-- Time taken: 0.000620 seconds

local Parent = script:FindFirstAncestor("GameInvite").Parent
local ReducerDependencies = require(Parent.NotificationsCommon).ReducerDependencies
return require(Parent.Rodux).combineReducers({
	FriendCount = require(Parent.LegacyFriendsRodux).Reducers.FriendCount;
	GameInvitesStatus = require(script.Parent.Invites);
	Users = require(Parent.UserLib).Reducers.UserReducer;
	ShareLinks = ReducerDependencies.ShareLinksRodux.installReducer();
	NetworkStatus = ReducerDependencies.RoduxNetworking.installReducer();
})