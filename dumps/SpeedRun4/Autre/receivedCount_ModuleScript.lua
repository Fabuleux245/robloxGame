-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:56
-- Luau version 6, Types version 3
-- Time taken: 0.000777 seconds

local FriendsRodux = script:FindFirstAncestor("FriendsRodux")
local Rodux_upvr = require(FriendsRodux.Parent.Rodux)
local RequestReceivedCountUpdated_upvr = require(FriendsRodux.Actions.RequestReceivedCountUpdated)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: RequestReceivedCountUpdated_upvr (readonly)
	]]
	return Rodux_upvr.createReducer(0, {
		[RequestReceivedCountUpdated_upvr.name] = function(arg1_2, arg2) -- Line 14
			local var7
			if type(arg2.payload.count) ~= "number" then
				var7 = false
			else
				var7 = true
			end
			assert(var7, "Expected count to be a number")
			var7 = arg2.payload
			return var7.count
		end;
		[arg1.friendsNetworking.GetFriendRequestsCount.Succeeded.name] = function(arg1_3, arg2) -- Line 20
			return arg2.responseBody.count
		end;
	})
end