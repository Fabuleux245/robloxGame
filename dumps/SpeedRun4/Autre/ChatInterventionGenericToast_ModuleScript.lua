-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:40
-- Luau version 6, Types version 3
-- Time taken: 0.002184 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
local Toast_upvr = UIBlox.App.Dialog.Toast
local Images_upvr = UIBlox.App.ImageSet.Images
local game_DefineFastInt_result1_upvr = game:DefineFastInt("InExperienceInterventionToastDuration", 5)
function ChatNudgeToast(arg1) -- Line 24
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: InExperienceInterventionAnalytics_upvr (readonly)
		[4]: Toast_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(DateTime.now().UnixTimestampMillis)
	return React_upvr.createElement("ScreenGui", {
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		ResetOnSpawn = false;
		DisplayOrder = 7;
	}, {
		Toast = React_upvr.createElement(Toast_upvr, {
			toastContent = {
				toastTitle = arg1.toastTitle;
				iconColorStyle = {
					Color = useTokens_upvr().Color.System.Warning.Color3;
					Transparency = 0;
				};
				iconImage = Images_upvr["icons/status/error_large"];
				iconSize = Vector2.new(36, 36);
				onAppeared = function() -- Line 28
					--[[ Upvalues[3]:
						[1]: any_useRef_result1_upvr (readonly)
						[2]: InExperienceInterventionAnalytics_upvr (copied, readonly)
						[3]: arg1 (readonly)
					]]
					any_useRef_result1_upvr.current = DateTime.now().UnixTimestampMillis
					InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(arg1.toastAppearEventName, arg1.interventionType, any_useRef_result1_upvr.current, arg1.eventId, arg1.violatingChatLine, arg1.remainingDurationSec)
				end;
				toastSubtitle = arg1.toastBody;
				sequenceNumber = DateTime.now().UnixTimestamp;
				onTouchSwipeUp = function() -- Line 40
					--[[ Upvalues[3]:
						[1]: InExperienceInterventionAnalytics_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: any_useRef_result1_upvr (readonly)
					]]
					InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(arg1.toastDismissEventName, arg1.interventionType, any_useRef_result1_upvr.current, arg1.eventId, arg1.violatingChatLine, arg1.remainingDurationSec)
				end;
			};
			duration = game_DefineFastInt_result1_upvr;
		});
	})
end
return ChatNudgeToast