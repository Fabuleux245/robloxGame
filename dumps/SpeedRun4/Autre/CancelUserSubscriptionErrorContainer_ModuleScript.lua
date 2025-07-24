-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:16
-- Luau version 6, Types version 3
-- Time taken: 0.000592 seconds

local useCancelUserSubscriptionErrorPromptProps_upvr = require(script.Parent.useCancelUserSubscriptionErrorPromptProps)
local React_upvr = require(script:FindFirstAncestor("CancelSubscriptionApp").Parent.React)
local CancelUserSubscriptionErrorPrompt_upvr = require(script.Parent.CancelUserSubscriptionErrorPrompt)
return function() -- Line 8, Named "CancelUserSubscriptionErrorContainer"
	--[[ Upvalues[3]:
		[1]: useCancelUserSubscriptionErrorPromptProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CancelUserSubscriptionErrorPrompt_upvr (readonly)
	]]
	return React_upvr.createElement(CancelUserSubscriptionErrorPrompt_upvr, useCancelUserSubscriptionErrorPromptProps_upvr())
end