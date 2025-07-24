-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:59
-- Luau version 6, Types version 3
-- Time taken: 0.000765 seconds

local LegacyFriendsRodux = script:FindFirstAncestor("LegacyFriendsRodux")
local UsersGetFriendCount_upvr = require(LegacyFriendsRodux.Requests).UsersGetFriendCount
local isNewFriendsEndpointsEnabled_upvr = require(LegacyFriendsRodux.Parent.SharedFlags).isNewFriendsEndpointsEnabled
local SetFriendCount_upvr = require(LegacyFriendsRodux.Actions).SetFriendCount
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: UsersGetFriendCount_upvr (readonly)
		[2]: isNewFriendsEndpointsEnabled_upvr (readonly)
		[3]: SetFriendCount_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[4]:
			[1]: UsersGetFriendCount_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: isNewFriendsEndpointsEnabled_upvr (copied, readonly)
			[4]: SetFriendCount_upvr (copied, readonly)
		]]
		return UsersGetFriendCount_upvr(arg1):andThen(function(arg1_3) -- Line 11
			--[[ Upvalues[3]:
				[1]: isNewFriendsEndpointsEnabled_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: SetFriendCount_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
			local responseBody = arg1_3.responseBody
			if isNewFriendsEndpointsEnabled_upvr() then
				if responseBody.count then
					arg1_2:dispatch(SetFriendCount_upvr(responseBody.count))
					-- KONSTANTWARNING: GOTO [31] #24
				end
			elseif responseBody.success and responseBody.count then
				arg1_2:dispatch(SetFriendCount_upvr(responseBody.count))
			end
			-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 24. Error Block 8 start (CF ANALYSIS FAILED)
			do
				return responseBody.count
			end
			-- KONSTANTERROR: [31] 24. Error Block 8 end (CF ANALYSIS FAILED)
		end)
	end
end