-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:41
-- Luau version 6, Types version 3
-- Time taken: 0.000686 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Parent = script.Parent.Parent
return require(CorePackages.Packages.Rodux).createReducer({
	feedbackFlowState = require(Parent.Resources.Constants).State.Default;
	feedbackReason = 0;
}, {
	[require(Parent.Actions.SetFeedbackFlowState).name] = function(arg1, arg2) -- Line 21
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			feedbackFlowState = arg2.feedbackFlowState;
		})
	end;
	[require(Parent.Actions.SetFeedbackReason).name] = function(arg1, arg2) -- Line 26
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			feedbackReason = arg2.feedbackReason;
		})
	end;
})