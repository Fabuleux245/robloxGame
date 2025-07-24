-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:37
-- Luau version 6, Types version 3
-- Time taken: 0.000527 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useDispatch_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local configureRoduxUsers_upvr = require(ProfileQRCode.Networking.configureRoduxUsers)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useDispatch_upvr (readonly)
		[2]: configureRoduxUsers_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return function(arg1) -- Line 10
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: configureRoduxUsers_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(configureRoduxUsers_upvr.GetUserV2FromUserId.API(arg1))
	end
end