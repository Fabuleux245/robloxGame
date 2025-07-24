-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:37
-- Luau version 6, Types version 3
-- Time taken: 0.000652 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useSelector_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local createOrGetProfileShareUrl_upvr = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useSelector_upvr (readonly)
		[2]: createOrGetProfileShareUrl_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 8
		--[[ Upvalues[1]:
			[1]: createOrGetProfileShareUrl_upvr (copied, readonly)
		]]
		return createOrGetProfileShareUrl_upvr.getStatus(arg1)
	end)
end