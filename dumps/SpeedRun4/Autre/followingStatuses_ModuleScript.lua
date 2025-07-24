-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:48
-- Luau version 6, Types version 3
-- Time taken: 0.000914 seconds

local Parent = script:FindFirstAncestor("FriendsRodux").Parent
local Rodux_upvr = require(Parent.Rodux)
local module_upvr = {}
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Dash_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(module_upvr, {
		[arg1.friendsNetworking.GetFollowingExists.Succeeded.name] = function(arg1_2, arg2) -- Line 25
			--[[ Upvalues[1]:
				[1]: Dash_upvr (copied, readonly)
			]]
			local module_upvr_2 = {}
			Dash_upvr.forEach(arg2.responseBody.followings, function(arg1_3) -- Line 27
				--[[ Upvalues[1]:
					[1]: module_upvr_2 (readonly)
				]]
				module_upvr_2[tostring(arg1_3.userId)] = {
					isFollowed = arg1_3.isFollowed;
					isFollowing = arg1_3.isFollowing;
				}
			end)
			return Dash_upvr.join(arg1_2, module_upvr_2)
		end;
		[arg1.userBlockingNetworking.BlockUserById.Succeeded.name] = function(arg1_4, arg2) -- Line 36
			--[[ Upvalues[1]:
				[1]: Dash_upvr (copied, readonly)
			]]
			return Dash_upvr.join(arg1_4, {
				[tostring(arg2.namedIds.users)] = {
					isFollowed = false;
					isFollowing = false;
				};
			})
		end;
	})
end