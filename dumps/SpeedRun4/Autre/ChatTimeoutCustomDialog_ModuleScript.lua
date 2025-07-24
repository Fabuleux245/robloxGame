-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:42
-- Luau version 6, Types version 3
-- Time taken: 0.004855 seconds

local InExperienceIntervention = script:FindFirstAncestor("InExperienceIntervention")
local Parent = InExperienceIntervention.Parent
local UIBlox = require(Parent.UIBlox)
local Foundation = require(Parent.Foundation)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local useLayerCollector_upvr = UIBlox.Core.Layout.LayerCollector.useLayerCollector
local React_upvr = require(Parent.React)
local useTokens_upvr = Foundation.Hooks.useTokens
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(InExperienceIntervention.Utils.Constants)
local InExperienceInterventionAnalytics_upvr = require(InExperienceIntervention.InExperienceInterventionAnalytics)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
local any_new_result1_upvr = ReactFocusNavigation_upvr.FocusNavigationService.new(ReactFocusNavigation_upvr.EngineInterface.CoreGui)
local FFlagCSFocusWrapperRefactor_upvr = require(Parent.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local FillBehavior_upvr = Foundation.Enums.FillBehavior
local InterventionContestFeedbackFooter_upvr = require(InExperienceIntervention.Components.InterventionContestFeedbackFooter)
function ChatTimeoutCustomDialog(arg1) -- Line 41
	--[[ Upvalues[22]:
		[1]: useLayerCollector_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: InExperienceInterventionAnalytics_upvr (readonly)
		[8]: PartialPageModal_upvr (readonly)
		[9]: ScrollView_upvr (readonly)
		[10]: ScrollBarVisibility_upvr (readonly)
		[11]: ReactFocusNavigation_upvr (readonly)
		[12]: any_new_result1_upvr (readonly)
		[13]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[14]: FocusRoot_upvr (readonly)
		[15]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[16]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[17]: View_upvr (readonly)
		[18]: Text_upvr (readonly)
		[19]: Button_upvr (readonly)
		[20]: ButtonVariant_upvr (readonly)
		[21]: FillBehavior_upvr (readonly)
		[22]: InterventionContestFeedbackFooter_upvr (readonly)
	]]
	local var7_result1_upvr = useLayerCollector_upvr()
	local any_useRef_result1_upvr_2 = React_upvr.useRef(DateTime.now().UnixTimestampMillis)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local useLocalization_upvr_result1 = useLocalization_upvr(Constants_upvr.localizationKeys)
	React_upvr.useEffect(function() -- Line 63
		--[[ Upvalues[3]:
			[1]: InExperienceInterventionAnalytics_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.ModalAppeared, InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Timeout, any_useRef_result1_upvr_2.current, arg1.eventId, arg1.violatingChatLine, arg1.duration)
	end, {any_useRef_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 74
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: var7_result1_upvr (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		local var39
		if any_useRef_result1_upvr.current then
			var39 = any_useRef_result1_upvr.current.AbsoluteSize.Y
		else
			var39 = 0
		end
		any_useState_result2_upvr(math.min(var7_result1_upvr.absoluteSize.Y - Constants_upvr.UNIBAR_HEIGHT - Constants_upvr.DIALOG_HEADER_HEIGHT, var39))
	end, {var7_result1_upvr.absoluteSize.Y, any_useRef_result1_upvr.current})
	local var41
	if arg1.duration <= 60 then
		var41 = useLocalization_upvr_result1.CannotSend1MinText
	else
		var41 = useLocalization_upvr({
			value = {
				number = math.ceil(arg1.duration / 60);
				Constants_upvr.localizationKeys.CannotSendText
			};
		}).value
	end
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	local var51 = React_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var51 = FocusRoot_upvr
	else
		var51 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		({
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
			isIsolated = true;
			isAutoFocusRoot = true;
		}).frameProps = {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
		}
	else
	end
	tbl_2.FocusNavigationCoreScriptsWrapper = var51.createElement(var51, {
		selectionGroupName = Constants_upvr.ChatNudgeDialogSelectionGroup;
		focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
		automaticSize = Enum.AutomaticSize.Y;
		size = UDim2.new(1, 0, 0, 0);
	}, {
		InnerContent = React_upvr.createElement(View_upvr, {
			ref = any_useRef_result1_upvr;
			Size = UDim2.new(1, -Constants_upvr.SCROLL_BAR_WIDTH, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			tag = "col gap-large align-x-center align-y-center padding-x-small padding-top-large";
		}, {
			ChatDisabledText = React_upvr.createElement(Text_upvr, {
				LayoutOrder = 1;
				Text = var41;
				textStyle = useStyle_upvr().Theme.TextEmphasis;
				fontStyle = useTokens_upvr().Typography.LabelLarge;
				Size = UDim2.new(1, 0, 0, 0);
				TextXAlignment = Enum.TextXAlignment.Center;
				TextYAlignment = Enum.TextYAlignment.Center;
				AutomaticSize = Enum.AutomaticSize.Y;
				TextWrapped = true;
			});
			WarningTextLabel = React_upvr.createElement(Text_upvr, {
				LayoutOrder = 2;
				Text = useLocalization_upvr_result1.MayLoseAccessText;
				tag = "padding-small size-full-800 text-wrap";
				TextWrapped = true;
				AutomaticSize = Enum.AutomaticSize.Y;
			});
			UnderstandButtonFrame = React_upvr.createElement(View_upvr, {
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				LayoutOrder = 3;
			}, {
				UnderstandButton = React_upvr.createElement(Button_upvr, {
					text = useLocalization_upvr_result1.IUnderstandText;
					variant = ButtonVariant_upvr.Standard;
					onActivated = React_upvr.useCallback(function() -- Line 51
						--[[ Upvalues[3]:
							[1]: InExperienceInterventionAnalytics_upvr (copied, readonly)
							[2]: any_useRef_result1_upvr_2 (readonly)
							[3]: arg1 (readonly)
						]]
						InExperienceInterventionAnalytics_upvr.sendAnalyticsEvent(InExperienceInterventionAnalytics_upvr.Constants.EventTypes.CtaClicked, InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Timeout, any_useRef_result1_upvr_2.current, arg1.eventId, arg1.violatingChatLine, arg1.duration)
						arg1.onDismiss()
					end, {any_useRef_result1_upvr_2});
					fillBehavior = FillBehavior_upvr.Fill;
					FillDirection = Enum.FillDirection.Horizontal;
				});
			});
			FeedbackFrame = React_upvr.createElement(View_upvr, {
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				LayoutOrder = 4;
			}, {
				FeedbackFooter = React_upvr.createElement(InterventionContestFeedbackFooter_upvr, {
					onDismiss = arg1.onDismiss;
					renderTimestamp = any_useRef_result1_upvr_2.current;
					interventionType = InExperienceInterventionAnalytics_upvr.Constants.InterventionTypes.Timeout;
					eventId = arg1.eventId;
					violatingChatLine = arg1.violatingChatLine;
					duration = arg1.duration;
				});
			});
		});
	})
	tbl.FocusNavigationCoreScriptsProvider = React_upvr.createElement(ReactFocusNavigation_upvr.FocusNavigationContext.Provider, {
		value = any_new_result1_upvr;
	}, tbl_2)
	module.ScrollView = React_upvr.createElement(ScrollView_upvr, {
		Size = UDim2.new(1, 0, 0, any_useState_result1);
		scroll = {
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
			CanvasSize = UDim2.new(1, 0, 1, 0);
			scrollBarVisibility = ScrollBarVisibility_upvr.Always;
			ScrollingDirection = Enum.ScrollingDirection.Y;
		};
	}, tbl)
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = useLocalization_upvr_result1.TextChatSuspensionText;
		screenSize = var7_result1_upvr.absoluteSize;
	}, module)
end
return ChatTimeoutCustomDialog