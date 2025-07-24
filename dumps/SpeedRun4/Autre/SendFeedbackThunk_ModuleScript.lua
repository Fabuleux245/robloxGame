-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:43
-- Luau version 6, Types version 3
-- Time taken: 0.001220 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local PerformFetch_upvr = require(CorePackages.Workspace.Packages.Http).PerformFetch
local PostFeedback_upvr = require(Parent.Network.PostFeedback)
local IncrementFeedbackSubmissionAttempts_upvr = require(Parent.Actions.IncrementFeedbackSubmissionAttempts)
local Promise_upvr = require(CorePackages.Packages.InGameMenuDependencies).Promise
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 17
	--[[ Upvalues[4]:
		[1]: PerformFetch_upvr (readonly)
		[2]: PostFeedback_upvr (readonly)
		[3]: IncrementFeedbackSubmissionAttempts_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	return PerformFetch_upvr.Single("PostFeedbackRequest", function(arg1_2) -- Line 27
		--[[ Upvalues[10]:
			[1]: PostFeedback_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: arg4 (readonly)
			[6]: arg5 (readonly)
			[7]: arg6 (readonly)
			[8]: IncrementFeedbackSubmissionAttempts_upvr (copied, readonly)
			[9]: arg7 (readonly)
			[10]: Promise_upvr (copied, readonly)
		]]
		return PostFeedback_upvr(arg1, arg2, arg3, arg4, arg5, arg6):andThen(function(arg1_3) -- Line 35
			--[[ Upvalues[4]:
				[1]: arg1_2 (readonly)
				[2]: IncrementFeedbackSubmissionAttempts_upvr (copied, readonly)
				[3]: arg7 (copied, readonly)
				[4]: Promise_upvr (copied, readonly)
			]]
			arg1_2:dispatch(IncrementFeedbackSubmissionAttempts_upvr(arg7))
			return Promise_upvr.resolve(arg1_3)
		end, function(arg1_4) -- Line 38
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.reject(arg1_4)
		end)
	end)
end