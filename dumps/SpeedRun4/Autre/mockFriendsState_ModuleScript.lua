-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:21
-- Luau version 6, Types version 3
-- Time taken: 0.000927 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UserModel = require(Parent.UserLib).Models.UserModel
local MockUser = require(Parent.UserLib).Models.MockUser
local PresenceType = require(AppChat.Http.RoduxPresence).Enums.PresenceType
local any_new_result1_2 = MockUser.new()
any_new_result1_2.name = "onlineUser"
any_new_result1_2.presence = UserModel.PresenceType.ONLINE
any_new_result1_2.lastLocation = "TestLocation"
any_new_result1_2.isFriend = true
local any_new_result1_3 = MockUser.new()
any_new_result1_3.name = "ingameUser"
any_new_result1_3.presence = UserModel.PresenceType.IN_GAME
any_new_result1_3.lastLocation = "TestGame"
any_new_result1_3.isFriend = true
local any_new_result1 = MockUser.new()
any_new_result1.name = "offlineUser"
any_new_result1.isFriend = true
return {
	Users = {any_new_result1_2, any_new_result1_3, any_new_result1};
	ChatAppReducer = {
		Presence = {
			byUserId = {
				[any_new_result1_2.id] = {
					userPresenceType = PresenceType.Online;
					lastLocation = "TestLocation";
				};
				[any_new_result1_3.id] = {
					userPresenceType = PresenceType.InGame;
					lastLocation = "TestLocation";
				};
				[any_new_result1.id] = {
					userPresenceType = PresenceType.Offline;
					lastLocation = nil;
				};
			};
		};
	};
}