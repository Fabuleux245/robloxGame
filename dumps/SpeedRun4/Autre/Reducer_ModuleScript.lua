-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:21
-- Luau version 6, Types version 3
-- Time taken: 0.000757 seconds

local dependencies = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList.dependencies)
return require(game:GetService("CorePackages").Packages.Rodux).combineReducers({
	Navigation = require(script.Navigation);
	Dialog = require(script.Dialog);
	PlayerMenu = require(script.PlayerMenu);
	LastRemovedFriend = require(script.LastRemovedFriend);
	Call = dependencies.RoduxCall.installReducer();
	Friends = dependencies.RoduxFriends.installReducer();
	Presence = dependencies.RoduxPresence.installReducer();
	Users = dependencies.RoduxUsers.installReducer();
	NetworkStatus = dependencies.RoduxNetworking.installReducer();
})