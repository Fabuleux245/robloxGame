-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:24
-- Luau version 6, Types version 3
-- Time taken: 0.002090 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local NetworkingFriends_upvr = dependencies.NetworkingFriends
local NetworkingContacts_upvr = dependencies.NetworkingContacts
local llama_upvr = dependencies.llama
local Promise_upvr = dependencies.Promise
local FFlagRemoveCanUploadContacts_upvr = require(Parent.Parent.SharedFlags).FFlagRemoveCanUploadContacts
local NetworkingUserSettings_upvr = dependencies.NetworkingUserSettings
local RoduxContacts_upvr = dependencies.RoduxContacts
return function(arg1) -- Line 15
	--[[ Upvalues[7]:
		[1]: NetworkingFriends_upvr (readonly)
		[2]: NetworkingContacts_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: FFlagRemoveCanUploadContacts_upvr (readonly)
		[6]: NetworkingUserSettings_upvr (readonly)
		[7]: RoduxContacts_upvr (readonly)
	]]
	return {
		requestFriendship = function(arg1_2) -- Line 17, Named "requestFriendship"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NetworkingFriends_upvr (copied, readonly)
			]]
			return arg1(NetworkingFriends_upvr.RequestFriendshipFromContactId.API(arg1_2))
		end;
		findContacts = function() -- Line 20, Named "findContacts"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NetworkingContacts_upvr (copied, readonly)
			]]
			return arg1(NetworkingContacts_upvr.FindContactFriends.API()):andThen(function(arg1_3) -- Line 21
				return arg1_3.responseBody.userContactIds
			end)
		end;
		getContactEntities = function(arg1_4) -- Line 25, Named "getContactEntities"
			--[[ Upvalues[4]:
				[1]: llama_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: NetworkingContacts_upvr (copied, readonly)
			]]
			if llama_upvr.isEmpty(arg1_4) or not arg1_4 then
				return Promise_upvr.resolve()
			end
			return arg1(NetworkingContacts_upvr.GetContactEntitiesByContactId.API(arg1_4))
		end;
		uploadContacts = function(arg1_5) -- Line 32, Named "uploadContacts"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: NetworkingContacts_upvr (copied, readonly)
			]]
			return arg1(NetworkingContacts_upvr.UploadContactsByUser.API(arg1_5))
		end;
		updateUserSettings = function() -- Line 36, Named "updateUserSettings"
			--[[ Upvalues[4]:
				[1]: FFlagRemoveCanUploadContacts_upvr (copied, readonly)
				[2]: Promise_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: NetworkingUserSettings_upvr (copied, readonly)
			]]
			if FFlagRemoveCanUploadContacts_upvr then
				return Promise_upvr.resolve()
			end
			return arg1(NetworkingUserSettings_upvr.UpdateUserSettings.API({
				canUploadContacts = true;
			}))
		end;
		deviceContactsReceived = function(arg1_6) -- Line 43, Named "deviceContactsReceived"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RoduxContacts_upvr (copied, readonly)
			]]
			return arg1(RoduxContacts_upvr.Actions.DeviceContactsReceived(arg1_6))
		end;
		requestSent = function(arg1_7) -- Line 46, Named "requestSent"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RoduxContacts_upvr (copied, readonly)
			]]
			local module = {}
			module.id = arg1_7
			return arg1(RoduxContacts_upvr.Actions.RequestSent(module))
		end;
	}
end