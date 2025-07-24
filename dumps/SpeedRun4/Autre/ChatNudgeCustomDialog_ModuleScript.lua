-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:41
-- Luau version 6, Types version 3
-- Time taken: 0.004304 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local React_upvr = require(Parent.React)
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local useTokens_upvr = Foundation.Hooks.useTokens
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local FFlagCSFocusWrapperRefactor_upvr = require(Parent.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local FillBehavior_upvr = Foundation.Enums.FillBehavior
local InterventionContestFeedbackFooter_upvr = require(InExperienceIntervention.Components.InterventionContestFeedbackFooter)
function ChatNudgeCustomDialog(arg1) -- Line 43
	--[[ Upvalues[23]:
		[1]: React_upvr (readonly)
		[2]: InExperienceInterventionAnalytics_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useLayerCollector_upvr (readonly)
		[7]: useTokens_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: View_upvr (readonly)
		[10]: Text_upvr (readonly)
		[11]: PartialPageModal_upvr (readonly)
		[12]: ScrollView_upvr (readonly)
		[13]: ScrollBarVisibility_upvr (readonly)
		[14]: ReactFocusNavigation_upvr (readonly)
		[15]: any_new_result1_upvr (readonly)
		[16]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[17]: FocusRoot_upvr (readonly)
		[18]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[19]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[20]: Button_upvr (readonly)
		[21]: ButtonVariant_upvr (readonly)
		[22]: FillBehavior_upvr (readonly)
		[23]: InterventionContestFeedbackFooter_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local any_useRef_result1_upvr = React_upvr.useRef(DateTime.now().UnixTimestampMillis)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	React_upvr.useEffect(function() -- Line 47
		--[[ Upvalues[3]:
			[1]: InExperienceInterventionAnalytics_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.ModalAppeared, InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Nudge, any_useRef_result1_upvr.current, arg1.eventId, arg1.violatingChatLine, nil)
	end, {any_useRef_result1_upvr})
	local var9_result1 = useLocalization_upvr(Constants_upvr.localizationKeys)
	local useStyle_upvr_result1 = useStyle_upvr()
	local var12_result1_upvr = useLayerCollector_upvr()
	React_upvr.useEffect(function() -- Line 62
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: var12_result1_upvr (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		local var39
		if any_useRef_result1_upvr_2.current then
			var39 = any_useRef_result1_upvr_2.current.AbsoluteSize.Y
		else
			var39 = 0
		end
		any_useState_result2_upvr(math.min(var12_result1_upvr.absoluteSize.Y - Constants_upvr.UNIBAR_HEIGHT - Constants_upvr.DIALOG_HEADER_HEIGHT, var39))
	end, {var12_result1_upvr.absoluteSize.Y, any_useRef_result1_upvr_2.current})
	local var41
	if LocalPlayer_upvr then
		var41 = `{LocalPlayer_upvr.DisplayName}: {arg1.violatingChatLine}`
	else
		var41 = arg1.violatingChatLine
	end
	local function _() -- Line 79
		--[[ Upvalues[3]:
			[1]: InExperienceInterventionAnalytics_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.CtaClicked, InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Nudge, any_useRef_result1_upvr.current, arg1.eventId, arg1.violatingChatLine, nil)
		arg1.onDismiss()
	end
	local _ = {any_useRef_result1_upvr}
	if arg1.violatingChatLine then
		local _ = {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 1;
		}
		local tbl = {
			Layout = React_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, Constants_upvr.STANDARD_PADDING / 2);
			});
			ChatIncludesTextFrame = React_upvr.createElement(View_upvr, {
				Size = UDim2.new(1, 0, 0, 0);
				LayoutOrder = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
			}, {
				ChatIncludesText = React_upvr.createElement(Text_upvr, {
					Text = var9_result1.ChatIncludesText;
					fontStyle = useTokens_upvr().Typography.BodySmall;
					TextXAlignment = Enum.TextXAlignment.Left;
					AnchorPoint = Vector2.new(0, 0);
					AutomaticSize = Enum.AutomaticSize.XY;
				});
			});
			ViolatingTextFrame = React_upvr.createElement(View_upvr, {
				Size = UDim2.new(1, 0, 0, Constants_upvr.VIOLATION_HEIGHT);
				LayoutOrder = 2;
				BackgroundTransparency = 0;
				BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundUIDefault.Color;
				tag = "col gap-small align-x-center align-y-center padding-x-large radius-medium stroke-default";
			}, {
				ViolationText = React_upvr.createElement(Text_upvr, {
					LayoutOrder = 2;
					Text = var41;
					textStyle = useStyle_upvr_result1.Theme.TextMuted;
					fontStyle = useStyle_upvr_result1.Font.Body;
					Size = UDim2.new(1, 0, 0, 0);
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					AutomaticSize = Enum.AutomaticSize.Y;
					TextWrapped = true;
					TextTruncate = Enum.TextTruncate.AtEnd;
				});
			});
		}
		-- KONSTANTWARNING: GOTO [296] #204
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [295] 203. Error Block 29 start (CF ANALYSIS FAILED)
	local _ = {
		title = var9_result1.ChatBreaksRulesText;
		screenSize = var12_result1_upvr.absoluteSize;
	}
	;({
		Size = UDim2.new(1, 0, 0, any_useState_result1);
	}).scroll = {
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		CanvasSize = UDim2.new(1, 0, 1, 0);
		scrollBarVisibility = ScrollBarVisibility_upvr.Always;
		ScrollingDirection = Enum.ScrollingDirection.Y;
	}
	;({}).value = any_new_result1_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		-- KONSTANTWARNING: GOTO [371] #257
	end
	-- KONSTANTERROR: [295] 203. Error Block 29 end (CF ANALYSIS FAILED)
end
return ChatNudgeCustomDialog