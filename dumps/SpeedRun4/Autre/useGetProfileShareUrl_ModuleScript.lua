-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:36
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useDispatch_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local createOrGetProfileShareUrl_upvr = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useDispatch_upvr (readonly)
		[2]: createOrGetProfileShareUrl_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return function() -- Line 10
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: createOrGetProfileShareUrl_upvr (copied, readonly)
		]]
		return useDispatch_upvr_result1_upvr(createOrGetProfileShareUrl_upvr.API()):catch(function() -- Line 11
		end)
	end
end