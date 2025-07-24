-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:44
-- Luau version 6, Types version 3
-- Time taken: 0.002216 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
function getDynamicViewTagForTranslatedText(arg1, arg2, arg3) -- Line 33
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var6 = string.len(arg1) + string.len(arg2)
	local var7
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 9 start (CF ANALYSIS FAILED)
	if Constants_upvr.MAX_CHARACTERS_IN_LONG_LINE <= var6 then
		-- KONSTANTERROR: [27] 20. Error Block 5 start (CF ANALYSIS FAILED)
		var7 = "align-x-center align-y-center col flex-fill"
		-- KONSTANTERROR: [27] 20. Error Block 5 end (CF ANALYSIS FAILED)
	end
	do
		return var7
	end
	-- KONSTANTERROR: [22] 17. Error Block 9 end (CF ANALYSIS FAILED)
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useStyle_upvr = UIBlox.Core.Style.useStyle
local NotificationModalsManager_upvr = require(Parent.NotificationModalsManager)
local icons_actions_accept_upvr = UIBlox.App.ImageSet.Images["icons/actions/accept"]
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
local React_upvr = require(Parent.React)
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local ButtonSize_upvr = Foundation.Enums.ButtonSize
local FillBehavior_upvr = Foundation.Enums.FillBehavior
function InterventionFeedbackFooter(arg1) -- Line 45
	--[[ Upvalues[14]:
		[1]: useLocalization_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: useLayerCollector_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: NotificationModalsManager_upvr (readonly)
		[6]: icons_actions_accept_upvr (readonly)
		[7]: InExperienceInterventionAnalytics_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: View_upvr (readonly)
		[10]: Text_upvr (readonly)
		[11]: Button_upvr (readonly)
		[12]: ButtonVariant_upvr (readonly)
		[13]: ButtonSize_upvr (readonly)
		[14]: FillBehavior_upvr (readonly)
	]]
	local var8_result1_upvr = useLocalization_upvr(Constants_upvr.localizationKeys)
	local var10_result1_upvr = useStyle_upvr()
	return React_upvr.createElement(View_upvr, {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		tag = getDynamicViewTagForTranslatedText(var8_result1_upvr.MistakeText, var8_result1_upvr.LetUsKnowLinkText, useLayerCollector_upvr().absoluteSize.X);
		Wraps = true;
	}, {
		MistakeTextLabelFrame = React_upvr.createElement(View_upvr, {
			LayoutOrder = 1;
			Size = UDim2.new(0.5, 0, 0, Constants_upvr.TIMEOUT_INLINE_HEIGHT);
			AutomaticSize = Enum.AutomaticSize.X;
			BackgroundTransparency = 1;
		}, {
			MistakeTextLabel = React_upvr.createElement(Text_upvr, {
				Text = var8_result1_upvr.MistakeText;
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				tag = "padding-small text-align-x-center size-1200-900";
				AutomaticSize = Enum.AutomaticSize.X;
			});
		});
		LinkFrame = React_upvr.createElement(View_upvr, {
			LayoutOrder = 2;
			Size = UDim2.new(0.5, 0, 0, Constants_upvr.TIMEOUT_INLINE_HEIGHT);
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.X;
		}, {
			Button = React_upvr.createElement(Button_upvr, {
				text = var8_result1_upvr.LetUsKnowLinkText;
				variant = ButtonVariant_upvr.Text;
				onActivated = function() -- Line 55, Named "handleMistakeActivated"
					--[[ Upvalues[6]:
						[1]: arg1 (readonly)
						[2]: NotificationModalsManager_upvr (copied, readonly)
						[3]: icons_actions_accept_upvr (copied, readonly)
						[4]: var8_result1_upvr (readonly)
						[5]: var10_result1_upvr (readonly)
						[6]: InExperienceInterventionAnalytics_upvr (copied, readonly)
					]]
					arg1.onDismiss()
					NotificationModalsManager_upvr.SetUIBloxToast({
						iconImage = icons_actions_accept_upvr;
						toastTitle = var8_result1_upvr.TakeALookText;
						toastSubtitle = var8_result1_upvr.FeedbackHelpsText;
						sequenceNumber = DateTime.now().UnixTimestamp;
						iconColorStyle = {
							Color = var10_result1_upvr.Tokens.Semantic.Color.Common.Success.Color3;
							Transparency = 0;
						};
					})
					InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.AppealClicked, arg1.interventionType, arg1.renderTimestamp, arg1.eventId, arg1.violatingChatLine, arg1.duration)
				end;
				size = ButtonSize_upvr.Small;
				fillBehavior = FillBehavior_upvr.Fill;
			});
		});
	})
end
return InterventionFeedbackFooter