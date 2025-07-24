-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:31
-- Luau version 6, Types version 3
-- Time taken: 0.000735 seconds

local Parent = script:FindFirstAncestor("InteractionFeedback").Parent
local useTriggerFeedback_upvr = require(script.Parent.useTriggerFeedback)
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
return function(arg1) -- Line 8, Named "withTriggerFeedback"
	--[[ Upvalues[3]:
		[1]: useTriggerFeedback_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	return function(arg1_2) -- Line 9
		--[[ Upvalues[4]:
			[1]: useTriggerFeedback_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: React_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return React_upvr.createElement(arg1, Cryo_upvr.Dictionary.join(arg1_2, {
			triggerFeedback = useTriggerFeedback_upvr();
		}))
	end
end