-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:46
-- Luau version 6, Types version 3
-- Time taken: 0.000993 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local module = {}
local llama_upvr = dependencies.llama
module[require(FriendsLanding.AddFriends.Networking.FriendsNetworking).GetFollowingExists.Succeeded.name] = function(arg1, arg2) -- Line 14
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	local module_2_upvr = {}
	llama_upvr.List.every(arg2.responseBody.followings, function(arg1_2) -- Line 16
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr[tostring(arg1_2.userId)] = {
			isFollowing = arg1_2.isFollowing;
			isFollowed = arg1_2.isFollowed;
		}
		return true
	end)
	return llama_upvr.Dictionary.join(arg1, module_2_upvr)
end
return dependencies.Rodux.createReducer({}, module)