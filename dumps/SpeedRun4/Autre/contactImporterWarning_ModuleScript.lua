-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:44
-- Luau version 6, Types version 3
-- Time taken: 0.002772 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local AddFriends = FriendsLanding.AddFriends
local llama_upvr = dependencies.llama
local Constants_upvr = require(FriendsLanding.Parent.ContactImporter).Constants
local FriendsNetworking = require(AddFriends.Networking.FriendsNetworking)
local Dash_upvr = dependencies.Dash
local function var8_upvr(arg1, arg2) -- Line 30
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: Dash_upvr (readonly)
	]]
	return {
		seenContactImporterFriendRequest = arg1.seenContactImporterFriendRequest;
		contactImporterFriendRequests = llama_upvr.Dictionary.filter(arg1.contactImporterFriendRequests, function(arg1_2, arg2_2) -- Line 33
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			return not Dash_upvr.includes(arg2, arg2_2)
		end);
	}
end
return dependencies.Rodux.createReducer({
	contactImporterFriendRequests = {};
	seenContactImporterFriendRequest = false;
}, {
	[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(arg1, arg2) -- Line 40
		--[[ Upvalues[1]:
			[1]: var8_upvr (readonly)
		]]
		return var8_upvr(arg1, arg2.ids)
	end;
	[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(arg1, arg2) -- Line 46
		--[[ Upvalues[1]:
			[1]: var8_upvr (readonly)
		]]
		return var8_upvr(arg1, arg2.ids)
	end;
	[require(AddFriends.Redux.RoduxFriends).Actions.FriendRequestCreated.name] = function(arg1, arg2) -- Line 52
		--[[ Upvalues[2]:
			[1]: Constants_upvr (readonly)
			[2]: llama_upvr (readonly)
		]]
		if arg2.originSourceType == Constants_upvr.PHONE_CONTACT_IMPORTER then
			return llama_upvr.Dictionary.join(arg1, {
				contactImporterFriendRequests = llama_upvr.Dictionary.join(arg1.contactImporterFriendRequests, {
					[tostring(arg2.id)] = true;
				});
			})
		end
		return arg1
	end;
	[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(arg1, arg2) -- Line 66
		--[[ Upvalues[2]:
			[1]: Constants_upvr (readonly)
			[2]: llama_upvr (readonly)
		]]
		for _, v in pairs(arg2.responseBody.data) do
			if v.friendRequest.originSourceType == Constants_upvr.PHONE_CONTACT_IMPORTER then
				({})[tostring(v.id)] = true
			end
		end
		local module = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.contactImporterFriendRequests = llama_upvr.Dictionary.join(arg1.contactImporterFriendRequests, {})
		return llama_upvr.Dictionary.join(arg1, module)
	end;
	[require(script.Parent.Actions.ContactImporterWarningSeen).name] = function(arg1, arg2) -- Line 82
		--[[ Upvalues[1]:
			[1]: llama_upvr (readonly)
		]]
		if not llama_upvr.isEmpty(arg1.contactImporterFriendRequests) then
			return llama_upvr.Dictionary.join(arg1, {
				seenContactImporterFriendRequest = true;
			})
		end
		return arg1
	end;
})