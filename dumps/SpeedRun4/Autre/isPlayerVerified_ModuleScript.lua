-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:50
-- Luau version 6, Types version 3
-- Time taken: 0.000747 seconds

local SharedFlags = require(script:FindFirstAncestor("UserLib").Parent.SharedFlags)
local getFFlagOverridePlayerVerifiedBadge_upvr = SharedFlags.getFFlagOverridePlayerVerifiedBadge
local getFStringWhitelistVerifiedUserId_upvr = SharedFlags.getFStringWhitelistVerifiedUserId
return function(arg1) -- Line 27, Named "isPlayerVerified"
	--[[ Upvalues[2]:
		[1]: getFFlagOverridePlayerVerifiedBadge_upvr (readonly)
		[2]: getFStringWhitelistVerifiedUserId_upvr (readonly)
	]]
	if getFFlagOverridePlayerVerifiedBadge_upvr() then
		return true
	end
	if tostring(arg1.UserId) == getFStringWhitelistVerifiedUserId_upvr() then
		return true
	end
	if arg1.HasVerifiedBadge ~= nil then
		return arg1.HasVerifiedBadge
	end
	return false
end