-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:11
-- Luau version 6, Types version 3
-- Time taken: 0.000679 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useCallback_upvr = require(Parent.React).useCallback
local getDeepValue_upvr = require(AppChat.Utils.getDeepValue)
local getNeedsPhoneVerificationUnfilteredThreads_upvr = require(AppChat.Utils.getNeedsPhoneVerificationUnfilteredThreads)
return function() -- Line 12
	--[[ Upvalues[5]:
		[1]: useIsInExperience_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: useCallback_upvr (readonly)
		[4]: getDeepValue_upvr (readonly)
		[5]: getNeedsPhoneVerificationUnfilteredThreads_upvr (readonly)
	]]
	if useIsInExperience_upvr() then
		return false
	end
	return getNeedsPhoneVerificationUnfilteredThreads_upvr(useSelector_upvr(useCallback_upvr(function(arg1) -- Line 15
		--[[ Upvalues[1]:
			[1]: getDeepValue_upvr (copied, readonly)
		]]
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1, "ChatAppReducer.UnfilteredThreads.eligibility")
		if not getDeepValue_upvr_result1 then
			getDeepValue_upvr_result1 = {}
		end
		return getDeepValue_upvr_result1
	end, {})))
end