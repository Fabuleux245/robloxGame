-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:25
-- Luau version 6, Types version 3
-- Time taken: 0.003492 seconds

local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY_upvr = require(ContactImporter.Common.Constants).RODUX_KEY
local memoize_upvr = dependencies.memoize
local getDeviceContacts_upvr = require(script.Parent.getDeviceContacts)
local decorateMatchedContact_upvr = require(script.Parent.decorateMatchedContact)
local Selectors_upvr = dependencies.RoduxContacts.Selectors
local NetworkingFriends_upvr = dependencies.NetworkingFriends
local NetworkStatus_upvr = dependencies.RoduxNetworking.Enum.NetworkStatus
local NetworkingContacts_upvr = dependencies.NetworkingContacts
return function(arg1) -- Line 16
	--[[ Upvalues[9]:
		[1]: getDeepValue_upvr (readonly)
		[2]: RODUX_KEY_upvr (readonly)
		[3]: memoize_upvr (readonly)
		[4]: getDeviceContacts_upvr (readonly)
		[5]: decorateMatchedContact_upvr (readonly)
		[6]: Selectors_upvr (readonly)
		[7]: NetworkingFriends_upvr (readonly)
		[8]: NetworkStatus_upvr (readonly)
		[9]: NetworkingContacts_upvr (readonly)
	]]
	local LocalUserId_2 = arg1.LocalUserId
	local var4_result1 = getDeepValue_upvr(arg1, RODUX_KEY_upvr..".Contacts")
	local var23 = true
	if NetworkingFriends_upvr.RequestFriendshipFromContactId.getStatus(arg1, LocalUserId_2) ~= NetworkStatus_upvr.Fetching then
		var23 = true
		if NetworkingContacts_upvr.FindContactFriends.getStatus(arg1, LocalUserId_2) ~= NetworkStatus_upvr.Fetching then
			var23 = true
			if NetworkingContacts_upvr.GetContactEntitiesByContactId.getStatus(arg1, LocalUserId_2) ~= NetworkStatus_upvr.Fetching then
				if NetworkingContacts_upvr.UploadContactsByUser.getStatus(arg1, LocalUserId_2) ~= NetworkStatus_upvr.Fetching then
					var23 = false
				else
					var23 = true
				end
			end
		end
	end
	return {
		localUserId = arg1.LocalUserId;
		matchedContacts = decorateMatchedContact_upvr(Selectors_upvr.sortContacts(arg1), var4_result1);
		deviceContacts = memoize_upvr(getDeviceContacts_upvr)(var4_result1);
		screenSize = arg1.ScreenSize;
		isFetching = var23;
	}
end