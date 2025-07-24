-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:44
-- Luau version 6, Types version 3
-- Time taken: 0.001226 seconds

local UserLib = script:FindFirstAncestor("UserLib")
local Actions = require(UserLib.Actions)
local Players_upvr = game:GetService("Players")
local UserModel_upvr = require(UserLib.Models).UserModel
local isPlayerVerified_upvr = require(UserLib.Utils.isPlayerVerified)
local AddUser_upvr = Actions.AddUser
local SetLocalUserId_upvr = Actions.SetLocalUserId
local SetUserMembershipType_upvr = Actions.SetUserMembershipType
local SetLocalUserUnder13_upvr = Actions.SetLocalUserUnder13
return function() -- Line 13
	--[[ Upvalues[7]:
		[1]: Players_upvr (readonly)
		[2]: UserModel_upvr (readonly)
		[3]: isPlayerVerified_upvr (readonly)
		[4]: AddUser_upvr (readonly)
		[5]: SetLocalUserId_upvr (readonly)
		[6]: SetUserMembershipType_upvr (readonly)
		[7]: SetLocalUserUnder13_upvr (readonly)
	]]
	return function(arg1) -- Line 14
		--[[ Upvalues[7]:
			[1]: Players_upvr (copied, readonly)
			[2]: UserModel_upvr (copied, readonly)
			[3]: isPlayerVerified_upvr (copied, readonly)
			[4]: AddUser_upvr (copied, readonly)
			[5]: SetLocalUserId_upvr (copied, readonly)
			[6]: SetUserMembershipType_upvr (copied, readonly)
			[7]: SetLocalUserUnder13_upvr (copied, readonly)
		]]
		local LocalPlayer = Players_upvr.LocalPlayer
		local tostring_result1 = tostring(LocalPlayer.UserId)
		arg1:dispatch(AddUser_upvr(UserModel_upvr.fromDataTable({
			id = tostring_result1;
			name = LocalPlayer.Name;
			displayName = LocalPlayer.displayName;
			isFriend = false;
			hasVerifiedBadge = isPlayerVerified_upvr(LocalPlayer);
		})))
		arg1:dispatch(SetLocalUserId_upvr(tostring_result1))
		arg1:dispatch(SetUserMembershipType_upvr(tostring_result1, LocalPlayer.MembershipType))
		arg1:dispatch(SetLocalUserUnder13_upvr(LocalPlayer:GetUnder13()))
	end
end