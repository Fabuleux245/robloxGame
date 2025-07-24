-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:07
-- Luau version 6, Types version 3
-- Time taken: 0.000776 seconds

local ProfileShareLinks = script:FindFirstAncestor("ProfileShareLinks")
local useAppPolicy_upvr = require(ProfileShareLinks.Parent.UniversalAppPolicy).useAppPolicy
local ProfileSharePolicyEnum_upvr = require(ProfileShareLinks.Enums.ProfileSharePolicyEnum)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useAppPolicy_upvr (readonly)
		[2]: ProfileSharePolicyEnum_upvr (readonly)
	]]
	return useAppPolicy_upvr(function(arg1) -- Line 8
		--[[ Upvalues[1]:
			[1]: ProfileSharePolicyEnum_upvr (copied, readonly)
		]]
		if arg1.getProfileShareLinkEnabled() then
			return ProfileSharePolicyEnum_upvr.Share
		end
		if arg1.getProfileCopyLinkEnabled() then
			return ProfileSharePolicyEnum_upvr.Copy
		end
		return ProfileSharePolicyEnum_upvr.Disabled
	end)
end