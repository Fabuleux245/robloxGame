-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:27
-- Luau version 6, Types version 3
-- Time taken: 0.002447 seconds

local Parent = script.Parent.Parent
local FFlagCapturesPostEnabledForAll_upvr = require(Parent.Parent.SharedFlags).FFlagCapturesPostEnabledForAll
local getOnPlatformSharingEnabledAsync_upvr = require(Parent.Flags.getOnPlatformSharingEnabledAsync)
local Constants_upvr = require(Parent.Constants)
local getDecodedJSON_upvr = require(Parent.Utils.getDecodedJSON)
local EventNames_upvr = require(Parent.Analytics.EventNames)
local PostCreationNotificationType_upvr = require(Parent.Enums.PostCreationNotificationType)
local CapturesPolicy_upvr = require(Parent.App.CapturesPolicy)
local ToastTriggered_upvr = require(Parent.Actions.ToastTriggered)
local CapturesToastType_upvr = require(Parent.Enums.CapturesToastType)
return function(arg1, arg2, arg3) -- Line 18, Named "makeRobloxEventHandler"
	--[[ Upvalues[9]:
		[1]: FFlagCapturesPostEnabledForAll_upvr (readonly)
		[2]: getOnPlatformSharingEnabledAsync_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: getDecodedJSON_upvr (readonly)
		[5]: EventNames_upvr (readonly)
		[6]: PostCreationNotificationType_upvr (readonly)
		[7]: CapturesPolicy_upvr (readonly)
		[8]: ToastTriggered_upvr (readonly)
		[9]: CapturesToastType_upvr (readonly)
	]]
	local var11_upvw = FFlagCapturesPostEnabledForAll_upvr
	task.spawn(function() -- Line 20
		--[[ Upvalues[3]:
			[1]: var11_upvw (read and write)
			[2]: getOnPlatformSharingEnabledAsync_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		var11_upvw = getOnPlatformSharingEnabledAsync_upvr(arg2)
	end)
	return function(arg1_2) -- Line 24, Named "eventHandler"
		--[[ Upvalues[11]:
			[1]: var11_upvw (read and write)
			[2]: Constants_upvr (copied, readonly)
			[3]: getDecodedJSON_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: EventNames_upvr (copied, readonly)
			[7]: PostCreationNotificationType_upvr (copied, readonly)
			[8]: CapturesPolicy_upvr (copied, readonly)
			[9]: arg1 (readonly)
			[10]: ToastTriggered_upvr (copied, readonly)
			[11]: CapturesToastType_upvr (copied, readonly)
		]]
		if not var11_upvw then
		else
			if arg1_2.namespace ~= Constants_upvr.PostCreationSignalRNamespace then return end
			local var5_result1 = getDecodedJSON_upvr(arg1_2.detail)
			if not var5_result1 then return end
			assert(arg2.RbxAnalyticsService, "RbxAnalyticsService is required")
			arg3(EventNames_upvr.PostConfirmationToastViewed, {
				action = var5_result1.Type;
				sessionId = arg2.RbxAnalyticsService:GetSessionId();
				status = var5_result1.Type;
			})
			if var5_result1.Type == PostCreationNotificationType_upvr.Success then
				local var16 = CapturesPolicy_upvr.PolicyImplementation.read()
				if var16 then
					var16 = CapturesPolicy_upvr.Mapper(CapturesPolicy_upvr.PolicyImplementation.read()).enableShareCaptureCTA()
				end
				if var16 then
					arg1:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostSharedWithShareCTA, {
						postId = var5_result1.PostId;
					}))
				else
					arg1:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostShared))
				end
			end
			if var5_result1.Type == PostCreationNotificationType_upvr.Fail then
				arg1:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostFailedGeneric))
				return
			end
			if var5_result1.Type == PostCreationNotificationType_upvr.Moderated then
				arg1:dispatch(ToastTriggered_upvr(CapturesToastType_upvr.PostFailedModerated))
			end
		end
	end
end