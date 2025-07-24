-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:38
-- Luau version 6, Types version 3
-- Time taken: 0.002258 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Actions = Parent.Actions
local Constants_upvr = require(Parent.Constants)
local HideMenu_upvr = require(Actions.HideMenu)
local any_withEventStream_result1_upvr = require(Parent.Analytics).new():withEventStream(require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream.new(game:GetService("RbxAnalyticsService")))
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local ShowError_upvr = require(Actions.ShowError)
local HideError_upvr = require(Actions.HideError)
local function handlePlayFailure_upvr(arg1, arg2, arg3, arg4) -- Line 29, Named "handlePlayFailure"
	--[[ Upvalues[6]:
		[1]: any_withEventStream_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: RobloxTranslator_upvr (readonly)
		[4]: ShowError_upvr (readonly)
		[5]: HideError_upvr (readonly)
		[6]: HideMenu_upvr (readonly)
	]]
	if arg2 then
		any_withEventStream_result1_upvr:onEmoteFailed(arg3, arg4, arg2)
		arg1:dispatch(ShowError_upvr(RobloxTranslator_upvr:FormatByKeyForLocale(Constants_upvr.LocalizationKeys.ErrorMessages[arg2], arg1:getState().locale)))
		delay(Constants_upvr.ErrorDisplayTimeSeconds, function() -- Line 38
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: HideError_upvr (copied, readonly)
			]]
			arg1:dispatch(HideError_upvr())
		end)
	end
	arg1:dispatch(HideMenu_upvr())
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local MaybeSendEmoteFailureAnalyticsFromPlayer_upvr = require(game:GetService("CoreGui").RobloxGui.Modules.EmotesMenu.Utility.MaybeSendEmoteFailureAnalyticsFromPlayer)
return function(arg1, arg2, arg3, arg4, arg5) -- Line 46, Named "PlayEmote"
	--[[ Upvalues[6]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: MaybeSendEmoteFailureAnalyticsFromPlayer_upvr (readonly)
		[3]: handlePlayFailure_upvr (readonly)
		[4]: HideMenu_upvr (readonly)
		[5]: any_withEventStream_result1_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	return function(arg1_2) -- Line 47
		--[[ Upvalues[8]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: MaybeSendEmoteFailureAnalyticsFromPlayer_upvr (copied, readonly)
			[3]: handlePlayFailure_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: arg3 (readonly)
			[6]: HideMenu_upvr (copied, readonly)
			[7]: any_withEventStream_result1_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
		]]
		local var14 = LocalPlayer_upvr
		if MaybeSendEmoteFailureAnalyticsFromPlayer_upvr(var14, function(arg1_3) -- Line 49
			--[[ Upvalues[4]:
				[1]: handlePlayFailure_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg2 (copied, readonly)
				[4]: arg3 (copied, readonly)
			]]
			handlePlayFailure_upvr(arg1_2, arg1_3, arg2, arg3)
		end) then
		else
			arg1_2:dispatch(HideMenu_upvr())
			local class_Humanoid_upvr = var14.Character:FindFirstChildOfClass("Humanoid")
			local pcall_result1, pcall_result2, pcall_result3 = pcall(function() -- Line 59
				--[[ Upvalues[2]:
					[1]: class_Humanoid_upvr (readonly)
					[2]: arg3 (copied, readonly)
				]]
				return class_Humanoid_upvr:PlayEmoteAndGetAnimTrackById(arg3)
			end)
			if pcall_result1 and pcall_result2 then
				any_withEventStream_result1_upvr:onEmotePlayed(arg2, arg3)
			else
				handlePlayFailure_upvr(arg1_2, Constants_upvr.ErrorTypes.TemporarilyUnavailable, arg2, arg3)
			end
		end
	end
end