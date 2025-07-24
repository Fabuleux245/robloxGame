-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:12
-- Luau version 6, Types version 3
-- Time taken: 0.001733 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local UserLib = require(Parent.UserLib)
local UserService_upvr = game:GetService("UserService")
local UserModel_upvr = UserLib.Models.UserModel
local UpdateUsers_upvr = UserLib.Thunks.UpdateUsers
local PreloadUsersThumbnail_upvr = UserLib.Thunks.PreloadUsersThumbnail
local USER_CAROUSEL_HEAD_SHOT_upvr = UserLib.Utils.AvatarThumbnailRequests.USER_CAROUSEL_HEAD_SHOT
local NetworkingPresence_upvr = require(AppChat.Http.NetworkingPresence)
local receiveUsersPresence_upvr = UserLib.Utils.receiveUsersPresence
local GetConversationMetadata_upvr = require(Parent.AppChatNetworking).rodux.GetConversationMetadata
local Promise_upvr = require(Parent.Promise)
local function AddNewFriend_upvr(arg1, arg2, arg3) -- Line 23, Named "AddNewFriend"
	--[[ Upvalues[9]:
		[1]: UserService_upvr (readonly)
		[2]: UserModel_upvr (readonly)
		[3]: UpdateUsers_upvr (readonly)
		[4]: PreloadUsersThumbnail_upvr (readonly)
		[5]: USER_CAROUSEL_HEAD_SHOT_upvr (readonly)
		[6]: NetworkingPresence_upvr (readonly)
		[7]: receiveUsersPresence_upvr (readonly)
		[8]: GetConversationMetadata_upvr (readonly)
		[9]: Promise_upvr (readonly)
	]]
	if not arg3 or not arg3.UserService then
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 27
		--[[ Upvalues[2]:
			[1]: UserService_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		return UserService_upvr:GetUserInfosByUserIdsAsync({tonumber(arg2)})[1]
	end)
	if not pcall_result1 then
	else
		if not pcall_result2 or not pcall_result2.Username or not pcall_result2.DisplayName then return end
		local tbl_2 = {}
		tbl_2.id = arg2
		tbl_2.isFriend = true
		tbl_2.friendRank = 0
		tbl_2.name = pcall_result2.Username
		tbl_2.displayName = pcall_result2.DisplayName
		tbl_2.hasVerifiedBadge = pcall_result2.HasVerifiedBadge
		arg1:dispatch(UpdateUsers_upvr({UserModel_upvr.fromDataTable(tbl_2)}))
		local tbl = {}
		tbl[1] = arg2
		arg1:dispatch(GetConversationMetadata_upvr.API())
		Promise_upvr.all({arg1:dispatch(NetworkingPresence_upvr.GetPresencesFromUserIds.API(tbl)):andThen(function(arg1_2) -- Line 60
			--[[ Upvalues[2]:
				[1]: receiveUsersPresence_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			receiveUsersPresence_upvr(arg1_2.responseBody.userPresences, arg1)
			return arg1_2
		end):catch(function(arg1_3) -- Line 65
			warn("NetworkingPresence failure in ChatFriendshipCreated, Status: "..tostring(arg1_3))
		end), arg1:dispatch(PreloadUsersThumbnail_upvr(tbl, USER_CAROUSEL_HEAD_SHOT_upvr, nil))})
	end
end
return function(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: AddNewFriend_upvr (readonly)
	]]
	return function(arg1_4, arg2) -- Line 78
		--[[ Upvalues[2]:
			[1]: AddNewFriend_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		AddNewFriend_upvr(arg1_4, arg1, arg2)
	end
end