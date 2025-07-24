-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:18
-- Luau version 6, Types version 3
-- Time taken: 0.000593 seconds

local useCancelUserSubscriptionRequestPromptProps_upvr = require(script.Parent.useCancelUserSubscriptionRequestPromptProps)
local React_upvr = require(script:FindFirstAncestor("CancelSubscriptionApp").Parent.React)
local CancelUserSubscriptionRequestPrompt_upvr = require(script.Parent.CancelUserSubscriptionRequestPrompt)
return function() -- Line 8, Named "CancelUserSubscriptionRequestContainer"
	--[[ Upvalues[3]:
		[1]: useCancelUserSubscriptionRequestPromptProps_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CancelUserSubscriptionRequestPrompt_upvr (readonly)
	]]
	return React_upvr.createElement(CancelUserSubscriptionRequestPrompt_upvr, useCancelUserSubscriptionRequestPromptProps_upvr())
end