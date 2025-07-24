-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:07
-- Luau version 6, Types version 3
-- Time taken: 0.002087 seconds

local Parent = script.Parent.Parent
local ComposerClosed_upvr = require(Parent.Actions.ComposerClosed)
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
local FireEvent_upvr = require(Parent.Analytics.FireEvent)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local CaptureType_upvr = require(Parent.Enums.CaptureType)
local CaptureService_upvr = game:GetService("CaptureService")
local Constants_upvr = require(Parent.Constants)
return function(arg1, arg2) -- Line 15
	--[[ Upvalues[9]:
		[1]: ComposerClosed_upvr (readonly)
		[2]: ToastTriggered_upvr (readonly)
		[3]: CapturesToastType_upvr (readonly)
		[4]: FireEvent_upvr (readonly)
		[5]: EventNames_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
		[7]: CaptureType_upvr (readonly)
		[8]: CaptureService_upvr (readonly)
		[9]: Constants_upvr (readonly)
	]]
	return function(arg1_2) -- Line 16
		--[[ Upvalues[11]:
			[1]: ComposerClosed_upvr (copied, readonly)
			[2]: ToastTriggered_upvr (copied, readonly)
			[3]: CapturesToastType_upvr (copied, readonly)
			[4]: FireEvent_upvr (copied, readonly)
			[5]: EventNames_upvr (copied, readonly)
			[6]: RbxAnalyticsService_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: CaptureType_upvr (copied, readonly)
			[9]: CaptureService_upvr (copied, readonly)
			[10]: arg2 (readonly)
			[11]: Constants_upvr (copied, readonly)
		]]
		arg1_2:dispatch(ComposerClosed_upvr())
		arg1_2:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostUploading))
		FireEvent_upvr(EventNames_upvr.PostPendingToastViewed, {
			sessionId = RbxAnalyticsService_upvr:GetSessionId();
		})
		if not pcall(function() -- Line 23
			--[[ Upvalues[11]:
				[1]: arg1 (copied, readonly)
				[2]: CaptureType_upvr (copied, readonly)
				[3]: CaptureService_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: Constants_upvr (copied, readonly)
				[6]: arg1_2 (readonly)
				[7]: ToastTriggered_upvr (copied, readonly)
				[8]: CapturesToastType_upvr (copied, readonly)
				[9]: FireEvent_upvr (copied, readonly)
				[10]: EventNames_upvr (copied, readonly)
				[11]: RbxAnalyticsService_upvr (copied, readonly)
			]]
			local var15
			if arg1.type == CaptureType_upvr.Video then
				var15 = arg1.thumbnailKey
			else
				var15 = arg1.filePath
			end
			if CaptureService_upvr:CreatePostAsync({var15}, arg2).statusCode ~= Constants_upvr.StatusCodes.OK then
				arg1_2:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostFailedGeneric))
				FireEvent_upvr(EventNames_upvr.PostPendingUnsuccessfulToastViewed, {
					sessionId = RbxAnalyticsService_upvr:GetSessionId();
				})
			end
		end) then
			arg1_2:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostFailedGeneric))
			FireEvent_upvr(EventNames_upvr.PostPendingUnsuccessfulToastViewed, {
				sessionId = RbxAnalyticsService_upvr:GetSessionId();
			})
		end
	end
end