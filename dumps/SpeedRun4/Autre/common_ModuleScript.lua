-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:40
-- Luau version 6, Types version 3
-- Time taken: 0.001389 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Parent = script.Parent.Parent
return require(CorePackages.Packages.Rodux).createReducer({
	numFeedbackSubmissionAttempts = nil;
	showHelpModal = false;
	showOnboardingModal = true;
}, {
	[require(Parent.Actions.IncrementFeedbackSubmissionAttempts).name] = function(arg1, arg2) -- Line 20
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			numFeedbackSubmissionAttempts = arg2.numFeedbackSubmissionAttempts;
		})
	end;
	[require(Parent.Actions.ShowHelpModal).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			showHelpModal = arg2.helpModalVisible;
		})
	end;
	[require(Parent.Actions.ShowOnboardingModal).name] = function(arg1, arg2) -- Line 30
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			showOnboardingModal = arg2.onboardingModalVisible;
		})
	end;
})