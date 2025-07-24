-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:36
-- Luau version 6, Types version 3
-- Time taken: 0.000719 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useDispatch_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local configureRoduxFriends_upvr = require(ProfileQRCode.Networking.configureRoduxFriends)
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: useDispatch_upvr (readonly)
		[2]: configureRoduxFriends_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return function(arg1, arg2) -- Line 13
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: configureRoduxFriends_upvr (copied, readonly)
		]]
		local module = {}
		module.currentUserId = arg1
		module.targetUserId = arg2
		return useDispatch_upvr_result1_upvr(configureRoduxFriends_upvr.AcceptFriendRequestFromUserId.API(module))
	end
end