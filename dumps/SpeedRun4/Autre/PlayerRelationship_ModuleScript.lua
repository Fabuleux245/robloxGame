-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:37
-- Luau version 6, Types version 3
-- Time taken: 0.001747 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(Actions.AddPlayer).name] = function(arg1, arg2) -- Line 16
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isBlocked = false;
				friendStatus = Enum.FriendStatus.Unknown;
				isFollowing = false;
				isFollower = false;
			};
		})
	end;
	[require(Actions.RemovePlayer).name] = function(arg1, arg2) -- Line 27
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = Cryo_upvr.None;
		})
	end;
	[require(Actions.SetPlayerIsBlocked).name] = function(arg1, arg2) -- Line 33
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isBlocked = arg2.isBlocked;
				friendStatus = arg1[arg2.userId].friendStatus;
				isFollowing = arg1[arg2.userId].isFollowing;
				isFollower = arg1[arg2.userId].isFollower;
			};
		})
	end;
	[require(Actions.SetPlayerFollowRelationship).name] = function(arg1, arg2) -- Line 44
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isBlocked = arg1[arg2.userId].isBlocked;
				friendStatus = arg1[arg2.userId].friendStatus;
				isFollowing = arg2.isFollowing;
				isFollower = arg2.isFollower;
			};
		})
	end;
	[require(Actions.SetPlayerIsFollowing).name] = function(arg1, arg2) -- Line 55
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isBlocked = arg1[arg2.userId].isBlocked;
				friendStatus = arg1[arg2.userId].friendStatus;
				isFollowing = arg2.isFollowing;
				isFollower = arg1[arg2.userId].isFollower;
			};
		})
	end;
	[require(Actions.SetPlayerFriendStatus).name] = function(arg1, arg2) -- Line 66
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isBlocked = arg1[arg2.userId].isBlocked;
				friendStatus = arg2.friendStatus;
				isFollowing = arg1[arg2.userId].isFollowing;
				isFollower = arg1[arg2.userId].isFollower;
			};
		})
	end;
})