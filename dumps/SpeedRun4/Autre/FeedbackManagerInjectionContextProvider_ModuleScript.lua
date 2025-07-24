-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:28
-- Luau version 6, Types version 3
-- Time taken: 0.000667 seconds

local Parent = script:FindFirstAncestor("InteractionFeedback").Parent
local useTriggerFeedback_upvr = require(script.Parent.useTriggerFeedback)
local React_upvr = require(Parent.React)
local FeedbackManagerInjectionContext_upvr = require(Parent.UIBlox).Core.Control.FeedbackManagerInjectionContext
return function(arg1) -- Line 7, Named "FeedbackManagerInjectionContextProvider"
	--[[ Upvalues[3]:
		[1]: useTriggerFeedback_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FeedbackManagerInjectionContext_upvr (readonly)
	]]
	return React_upvr.createElement(FeedbackManagerInjectionContext_upvr.Provider, {
		value = useTriggerFeedback_upvr();
	}, arg1.children)
end