-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:33
-- Luau version 6, Types version 3
-- Time taken: 0.000270 seconds

local constants_upvr = require(script:FindFirstAncestor("VerifiedBadges").constants)
return function(arg1) -- Line 10, Named "appendVerifiedBadge"
	--[[ Upvalues[1]:
		[1]: constants_upvr (readonly)
	]]
	return arg1..constants_upvr.VERIFIED_EMOJI
end