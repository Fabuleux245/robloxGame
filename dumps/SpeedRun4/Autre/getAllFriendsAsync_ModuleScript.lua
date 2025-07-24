-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:10
-- Luau version 6, Types version 3
-- Time taken: 0.004342 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Players_upvr = game:GetService("Players")
local NetworkingFriends_upvr = require(AppChat.Http.NetworkingFriends)
local RoduxNetworking_upvr = require(AppChat.Http.RoduxNetworking)
local Promise_upvr = require(Parent.Promise)
local UserModel_upvr = require(Parent.UserLib).Models.UserModel
local SetUserIsFriend_upvr = require(Parent.UserLib).Actions.SetUserIsFriend
local llama_upvr = require(Parent.LuaSocialLibrariesDeps).llama
local AddUsers_upvr = require(Parent.UserLib).Actions.AddUsers
local NetworkingPresence_upvr = require(AppChat.Http.NetworkingPresence)
local receiveUsersPresence_upvr = require(Parent.UserLib).Utils.receiveUsersPresence
return function(arg1) -- Line 16
	--[[ Upvalues[10]:
		[1]: Players_upvr (readonly)
		[2]: NetworkingFriends_upvr (readonly)
		[3]: RoduxNetworking_upvr (readonly)
		[4]: Promise_upvr (readonly)
		[5]: UserModel_upvr (readonly)
		[6]: SetUserIsFriend_upvr (readonly)
		[7]: llama_upvr (readonly)
		[8]: AddUsers_upvr (readonly)
		[9]: NetworkingPresence_upvr (readonly)
		[10]: receiveUsersPresence_upvr (readonly)
	]]
	return function(arg1_2) -- Line 17
		--[[ Upvalues[11]:
			[1]: Players_upvr (copied, readonly)
			[2]: NetworkingFriends_upvr (copied, readonly)
			[3]: RoduxNetworking_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: UserModel_upvr (copied, readonly)
			[7]: SetUserIsFriend_upvr (copied, readonly)
			[8]: llama_upvr (copied, readonly)
			[9]: AddUsers_upvr (copied, readonly)
			[10]: NetworkingPresence_upvr (copied, readonly)
			[11]: receiveUsersPresence_upvr (copied, readonly)
		]]
		local LocalPlayer = Players_upvr.LocalPlayer
		assert(LocalPlayer, "Local Player not found")
		local UserId = LocalPlayer.UserId
		if NetworkingFriends_upvr.GetFriendsFromUserId.getStatus(arg1_2:getState(), UserId) == RoduxNetworking_upvr.Enum.NetworkStatus.Fetching then
			return Promise_upvr.resolve({})
		end
		return arg1_2:dispatch(NetworkingFriends_upvr.GetFriendsFromUserId.API(UserId)):andThen(function(arg1_3) -- Line 30
			--[[ Upvalues[8]:
				[1]: arg1_2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: UserModel_upvr (copied, readonly)
				[4]: SetUserIsFriend_upvr (copied, readonly)
				[5]: llama_upvr (copied, readonly)
				[6]: AddUsers_upvr (copied, readonly)
				[7]: NetworkingPresence_upvr (copied, readonly)
				[8]: receiveUsersPresence_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var26
			if not arg1_2:getState().Users then
			end
			local tbl = {}
			var26 = nil
			if arg1 then
				var26 = {}
			end
			for _, v in ipairs(arg1_3.responseBody.data) do
				local tostring_result1 = tostring(v.id)
				if arg1 then
					table.insert(var26, tostring_result1)
				end
				if ({})[tostring_result1] == nil then
					tbl[tostring_result1] = UserModel_upvr.fromDataTable({
						id = v.id;
						name = v.name;
						displayName = v.displayName;
						isFriend = true;
					})
				else
					arg1_2:dispatch(SetUserIsFriend_upvr(tostring_result1, true))
				end
			end
			arg1_2:dispatch(AddUsers_upvr(tbl))
			if arg1 then
				arg1_2:dispatch(NetworkingPresence_upvr.GetPresencesFromUserIds.API(var26)):andThen(function(arg1_4) -- Line 67
					--[[ Upvalues[2]:
						[1]: receiveUsersPresence_upvr (copied, readonly)
						[2]: arg1_2 (copied, readonly)
					]]
					receiveUsersPresence_upvr(arg1_4.responseBody.userPresences, arg1_2)
					return arg1_4
				end):catch(function(arg1_5) -- Line 72
					warn("NetworkingPresence failure in getAllFriendsAsync, Status: "..tostring(arg1_5))
				end)
				return arg1_3
			end
			arg1_2:dispatch(NetworkingPresence_upvr.GetPresencesFromUserIds.API(llama_upvr.Dictionary.keys(tbl))):catch(function(arg1_6) -- Line 78
				warn("NetworkingPresence failure in getAllFriendsAsync, Status: "..tostring(arg1_6))
			end)
			return arg1_3
		end):catch(function(arg1_7) -- Line 85
			warn("NetworkingFriends failure in getAllFriendsAsync, Status: "..tostring(arg1_7))
		end)
	end
end