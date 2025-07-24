-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:20
-- Luau version 6, Types version 3
-- Time taken: 0.000352 seconds

local useCancelUserSubscriptionSuccessPromptProps_upvr = require(script.Parent.useCancelUserSubscriptionSuccessPromptProps)
local React_upvr = require(script:FindFirstAncestor("CancelSubscriptionApp").Parent.React)
local CancelUserSubscriptionSuccessPrompt_upvr = require(script.Parent.CancelUserSubscriptionSuccessPrompt)
return function() -- Line 8, Named "CancelUserSubscriptionSuccessContainer"
	--[[ Upvalues[3]:
		[1]: useCancelUserSubscriptionSuccessPromptProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CancelUserSubscriptionSuccessPrompt_upvr (readonly)
	]]
	return React_upvr.createElement(CancelUserSubscriptionSuccessPrompt_upvr, useCancelUserSubscriptionSuccessPromptProps_upvr())
end