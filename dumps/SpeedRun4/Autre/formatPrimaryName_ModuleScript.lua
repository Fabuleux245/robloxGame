-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:06
-- Luau version 6, Types version 3
-- Time taken: 0.000444 seconds

local VerifiedBadges_upvr = require(script:FindFirstAncestor("UserProfiles").Parent.VerifiedBadges)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: VerifiedBadges_upvr (readonly)
	]]
	if arg2.hasVerifiedBadge then
		return `{arg1}{VerifiedBadges_upvr.emoji.verified}`
	end
	if arg2.hasPremiumMembership then
		return `{arg1}{VerifiedBadges_upvr.emoji.premium}`
	end
	return arg1
end