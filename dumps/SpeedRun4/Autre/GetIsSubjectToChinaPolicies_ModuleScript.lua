-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:16
-- Luau version 6, Types version 3
-- Time taken: 0.000516 seconds

local ExperienceLoadingScript = script:FindFirstAncestor("ExperienceLoadingScript")
local CachedPolicyService_upvr = require(ExperienceLoadingScript.Parent.CachedPolicyService)
local SetIsSubjectToChinaPolicies_upvr = require(ExperienceLoadingScript.Actions.SetIsSubjectToChinaPolicies)
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: CachedPolicyService_upvr (readonly)
		[2]: SetIsSubjectToChinaPolicies_upvr (readonly)
	]]
	return function(arg1) -- Line 8
		--[[ Upvalues[2]:
			[1]: CachedPolicyService_upvr (copied, readonly)
			[2]: SetIsSubjectToChinaPolicies_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 9
			--[[ Upvalues[3]:
				[1]: CachedPolicyService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: SetIsSubjectToChinaPolicies_upvr (copied, readonly)
			]]
			arg1:dispatch(SetIsSubjectToChinaPolicies_upvr(CachedPolicyService_upvr:IsSubjectToChinaPolicies()))
		end)()
	end
end