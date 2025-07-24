-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:33
-- Luau version 6, Types version 3
-- Time taken: 0.010549 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local GetFFlagEnableFeedbackReportDialogAdjustments_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.GetFFlagEnableFeedbackReportDialogAdjustments)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("EnableFeedbackSelectionUpdate", false)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FeedbackReportDialog")
any_extend_result1.validateProps = t.strictInterface({
	isReportDialogOpen = t.boolean;
	screenSize = t.Vector2;
	closeDialog = t.optional(t.callback);
	reportCategory = t.optional(t.string);
})
local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
function any_extend_result1.init(arg1) -- Line 62
	--[[ Upvalues[3]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: ExperienceStateCaptureService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		arg1.state = {
			feedbackText = "";
			feedbackOriginalText = "";
			feedbackIdentifier = "";
			correctTranslationText = "";
			additionalCommentsText = "";
			numFeedbackSubmissionAttempts = 0;
			isGenericSelection = false;
		}
	else
		arg1.state = {
			feedbackText = "";
			feedbackOriginalText = "";
			feedbackIdentifier = "";
			correctTranslationText = "";
			additionalCommentsText = "";
			numFeedbackSubmissionAttempts = 0;
		}
	end
	function arg1.calculateFieldHeight(arg1_2, arg2, arg3) -- Line 85
		if arg1_2 < 180 and arg3 then
			return arg2 * 5
		end
		return arg2 * (arg1_2 / 45 + 2)
	end
	function arg1.resetLocalState() -- Line 94
		--[[ Upvalues[3]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ExperienceStateCaptureService_upvr (copied, readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			arg1:setState({
				isGenericSelection = false;
			})
		end
		arg1:setState({
			correctTranslationText = "";
			additionalCommentsText = "";
			feedbackText = "";
			feedbackOriginalText = "";
			feedbackIdentifier = "";
		})
		arg1.props.setFeedbackReason(0)
		ExperienceStateCaptureService_upvr:ResetHighlight()
	end
	function arg1.setInstanceRelatedReportDialogState(arg1_3) -- Line 113
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 17. Error Block 3 start (CF ANALYSIS FAILED)
		arg1:setState({
			isGenericSelection = false;
		})
		do
			return
		end
		-- KONSTANTERROR: [24] 17. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 24. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [33] 24. Error Block 4 end (CF ANALYSIS FAILED)
	end
	ExperienceStateCaptureService_upvr.ItemSelectedInCaptureMode:Connect(function(arg1_4) -- Line 151
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		arg1.resetLocalState()
		arg1.setInstanceRelatedReportDialogState(arg1_4)
		arg1.props.setFeedbackFlowState(Constants_upvr.State.CurrentlyLeavingFeedback)
	end)
	function arg1.onCorrectTranslationTextChanged(arg1_5) -- Line 158
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.correctTranslationText = arg1_5
		arg1:setState(tbl)
	end
	function arg1.onAdditionalCommentsTextChanged(arg1_6) -- Line 164
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_8 = {}
		tbl_8.additionalCommentsText = arg1_6
		arg1:setState(tbl_8)
	end
	function arg1.onSubmitFeedback() -- Line 170
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		arg1:setState({
			numFeedbackSubmissionAttempts = arg1.state.numFeedbackSubmissionAttempts + 1;
		})
		arg1.props.sendFeedback(arg1.state.feedbackOriginalText, arg1.state.feedbackText, arg1.state.feedbackIdentifier, arg1.state.correctTranslationText, arg1.state.additionalCommentsText, arg1.props.feedbackReason, arg1.state.numFeedbackSubmissionAttempts)
		arg1.resetLocalState()
		arg1.props.setFeedbackFlowState(Constants_upvr.State.Default)
	end
	function arg1.onCancel() -- Line 190
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		arg1.resetLocalState()
		arg1.props.setFeedbackFlowState(Constants_upvr.State.Default)
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local ThemedTextLabel_upvr = require(Parent.Components.PortedComponents.ThemedTextLabel)
local RadioButtonList_upvr = UIBlox.App.InputButton.RadioButtonList
local TextEntryField_upvr = require(Parent.Components.TextEntryField)
function any_extend_result1.renderContents(arg1, arg2) -- Line 196
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: GetFFlagEnableFeedbackReportDialogAdjustments_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: StyledTextLabel_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: RadioButtonList_upvr (readonly)
		[8]: TextEntryField_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_7) -- Line 197
		--[[ Upvalues[9]:
			[1]: arg2 (readonly)
			[2]: GetFFlagEnableFeedbackReportDialogAdjustments_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: StyledTextLabel_upvr (copied, readonly)
			[5]: ThemedTextLabel_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[8]: RadioButtonList_upvr (copied, readonly)
			[9]: TextEntryField_upvr (copied, readonly)
		]]
		local Theme = arg1_7.Theme
		local Font = arg1_7.Font
		local tbl_6 = {arg2.untranslated, arg2.accuracyIssue, arg2.spellingOrGrammarIssue, arg2.inappropriateOrDerogatory}
		if GetFFlagEnableFeedbackReportDialogAdjustments_upvr() then
			local module_2 = {
				Layout = Roact_upvr.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Top;
				});
				SelectedTextHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
					text = arg2.textSelectionHeader;
					size = UDim2.new(1, 0, 0, 72);
					textTruncate = Enum.TextTruncate.AtEnd;
					textXAlignment = Enum.TextXAlignment.Left;
					textYAlignment = Enum.TextYAlignment.Center;
					fontStyle = Font.Header2;
					colorStyle = Theme.TextEmphasis;
					richText = true;
					layoutOrder = 1;
					fluidSizing = true;
					automaticSize = Enum.AutomaticSize.X;
				});
			}
			local tbl_4 = {
				LayoutOrder = 2;
				fontKey = "Body";
				themeKey = "TextDefault";
			}
			local udim2 = UDim2.new(1, 0, 0, arg1.calculateFieldHeight(string.len(arg1.state.feedbackText), 14, false))
			tbl_4.Size = udim2
			local var42
			if var42 then
				if arg1.state.isGenericSelection then
					var42 = arg2.genericSelectionWrapper
				else
					var42 = arg1.state.feedbackText
				end
				udim2 = var42 or ""
			else
				var42 = arg1.state.feedbackText
				udim2 = var42 or ""
			end
			tbl_4.Text = udim2
			tbl_4.TextWrapped = true
			tbl_4.TextXAlignment = Enum.TextXAlignment.Left
			module_2.SelectedTextLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_4)
			module_2.TranslationProblemsHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
				text = arg2.problemDropdownSelectionHeader;
				size = UDim2.new(1, 0, 0, 72);
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Center;
				fontStyle = Font.Header2;
				colorStyle = Theme.TextEmphasis;
				richText = true;
				layoutOrder = 3;
				fluidSizing = true;
				automaticSize = Enum.AutomaticSize.X;
			})
			local tbl_3 = {}
			local tbl_2 = {
				radioButtons = tbl_6;
			}
			local function onActivated(arg1_8) -- Line 266
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.props.setFeedbackReason(arg1_8)
			end
			tbl_2.onActivated = onActivated
			tbl_2.currentValue = arg1.props.feedbackReason
			tbl_2.elementSize = UDim2.new(1, 0, 0, 40)
			tbl_3.RadioButtonList = Roact_upvr.createElement(RadioButtonList_upvr, tbl_2)
			module_2.TranslationProblemsListFrame = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 160);
				BackgroundTransparency = 1;
				LayoutOrder = 4;
			}, tbl_3)
			module_2.CorrectTranslationHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
				text = arg2.correctTranslationHeader;
				size = UDim2.new(1, 0, 0, 72);
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Center;
				fontStyle = Font.Header2;
				colorStyle = Theme.TextEmphasis;
				richText = true;
				layoutOrder = 5;
				fluidSizing = true;
				automaticSize = Enum.AutomaticSize.X;
			})
			module_2.CorrectTranslationTextEntryField = Roact_upvr.createElement(TextEntryField_upvr, {
				LayoutOrder = 6;
				enabled = true;
				text = arg1.state.correctTranslationText;
				textChanged = arg1.onCorrectTranslationTextChanged;
				maxTextLength = math.max(string.len(arg1.state.correctTranslationText), 180);
				autoFocusOnEnabled = false;
				PlaceholderText = arg2.correctTranslationPlaceholder;
				Size = UDim2.new(1, 0, 0, arg1.calculateFieldHeight(string.len(arg1.state.correctTranslationText), 14, true));
			})
			module_2.AdditionalCommentsHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
				text = arg2.additionalCommentsHeader;
				size = UDim2.new(1, 0, 0, 72);
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Center;
				fontStyle = Font.Header2;
				colorStyle = Theme.TextEmphasis;
				richText = true;
				layoutOrder = 7;
				fluidSizing = true;
				automaticSize = Enum.AutomaticSize.X;
			})
			module_2.AdditionalCommentsTextEntryField = Roact_upvr.createElement(TextEntryField_upvr, {
				LayoutOrder = 8;
				enabled = true;
				text = arg1.state.additionalCommentsText;
				textChanged = arg1.onAdditionalCommentsTextChanged;
				maxTextLength = 180;
				autoFocusOnEnabled = false;
				PlaceholderText = arg2.additionalCommentsPlaceholder;
				Size = UDim2.new(1, 0, 0, 90);
			})
			return Roact_upvr.createFragment(module_2)
		end
		local module = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
			SelectedTextHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
				text = arg2.textSelectionHeader;
				size = UDim2.new(1, 0, 0, 72);
				textTruncate = Enum.TextTruncate.AtEnd;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Center;
				fontStyle = Font.Header2;
				colorStyle = Theme.TextEmphasis;
				richText = true;
				layoutOrder = 1;
				fluidSizing = true;
				automaticSize = Enum.AutomaticSize.X;
			});
		}
		local tbl_7 = {
			LayoutOrder = 2;
			fontKey = "Body";
			themeKey = "TextDefault";
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 76, 0.5, 0);
		}
		local udim2_2 = UDim2.new(1, 0, 0, arg1.calculateFieldHeight(string.len(arg1.state.feedbackText), 18, false))
		tbl_7.Size = udim2_2
		local var56
		if var56 then
			if arg1.state.isGenericSelection then
				var56 = arg2.genericSelectionWrapper
			else
				var56 = arg1.state.feedbackText
			end
			udim2_2 = var56 or ""
		else
			var56 = arg1.state.feedbackText
			udim2_2 = var56 or ""
		end
		tbl_7.Text = udim2_2
		tbl_7.TextWrapped = true
		tbl_7.TextXAlignment = Enum.TextXAlignment.Left
		module.SelectedTextLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_7)
		module.CorrectTranslationHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
			text = arg2.correctTranslationHeader;
			size = UDim2.new(1, 0, 0, 72);
			textTruncate = Enum.TextTruncate.AtEnd;
			textXAlignment = Enum.TextXAlignment.Left;
			textYAlignment = Enum.TextYAlignment.Center;
			fontStyle = Font.Header2;
			colorStyle = Theme.TextEmphasis;
			richText = true;
			layoutOrder = 3;
			fluidSizing = true;
			automaticSize = Enum.AutomaticSize.X;
		})
		module.CorrectTranslationTextEntryField = Roact_upvr.createElement(TextEntryField_upvr, {
			LayoutOrder = 4;
			enabled = true;
			text = arg1.state.correctTranslationText;
			textChanged = arg1.onCorrectTranslationTextChanged;
			maxTextLength = math.max(string.len(arg1.state.correctTranslationText), 180);
			autoFocusOnEnabled = false;
			PlaceholderText = arg2.correctTranslationPlaceholder;
			Size = UDim2.new(1, 0, 0, arg1.calculateFieldHeight(string.len(arg1.state.correctTranslationText), 18, true));
		})
		module.AdditionalCommentsHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
			text = arg2.additionalCommentsHeader;
			size = UDim2.new(1, 0, 0, 72);
			textTruncate = Enum.TextTruncate.AtEnd;
			textXAlignment = Enum.TextXAlignment.Left;
			textYAlignment = Enum.TextYAlignment.Center;
			fontStyle = Font.Header2;
			colorStyle = Theme.TextEmphasis;
			richText = true;
			layoutOrder = 5;
			fluidSizing = true;
			automaticSize = Enum.AutomaticSize.X;
		})
		module.AdditionalCommentsTextEntryField = Roact_upvr.createElement(TextEntryField_upvr, {
			LayoutOrder = 6;
			enabled = true;
			text = arg1.state.additionalCommentsText;
			textChanged = arg1.onAdditionalCommentsTextChanged;
			maxTextLength = 180;
			autoFocusOnEnabled = false;
			PlaceholderText = arg2.additionalCommentsPlaceholder;
			Size = UDim2.new(1, 0, 0, 90);
		})
		module.TranslationProblemsHeader = Roact_upvr.createElement(StyledTextLabel_upvr, {
			text = arg2.problemDropdownSelectionHeader;
			size = UDim2.new(1, 0, 0, 72);
			textTruncate = Enum.TextTruncate.AtEnd;
			textXAlignment = Enum.TextXAlignment.Left;
			textYAlignment = Enum.TextYAlignment.Center;
			fontStyle = Font.Header2;
			colorStyle = Theme.TextEmphasis;
			richText = true;
			layoutOrder = 7;
			fluidSizing = true;
			automaticSize = Enum.AutomaticSize.X;
		})
		module.RadioButtonList = Roact_upvr.createElement(RadioButtonList_upvr, {
			radioButtons = tbl_6;
			onActivated = function(arg1_9) -- Line 435, Named "onActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1.props.setFeedbackReason(arg1_9)
			end;
			currentValue = arg1.props.feedbackReason;
			elementSize = UDim2.new(1, 0, 0, 40);
			layoutOrder = 8;
		})
		return Roact_upvr.createFragment(module)
	end)
end
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local ModalDialog_upvr = require(Parent.Components.ModalDialog)
local VerticalScrollView_upvr = UIBlox.App.Container.VerticalScrollView
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 447
	--[[ Upvalues[8]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ModalDialog_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: GetFFlagEnableFeedbackReportDialogAdjustments_upvr (readonly)
		[6]: VerticalScrollView_upvr (readonly)
		[7]: ButtonStack_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
	]]
	return withLocalization_upvr({
		mainHeader = "CoreScripts.Feedback.FeedbackReportDialog.MainHeader";
		cancel = "CoreScripts.Feedback.FeedbackReportDialog.Cancel";
		submitFeedback = "CoreScripts.Feedback.FeedbackReportDialog.SubmitFeedback";
		untranslated = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.Untranslated";
		accuracyIssue = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.AccuracyIssue";
		spellingOrGrammarIssue = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.SpellingOrGrammarIssue";
		inappropriateOrDerogatory = "CoreScripts.Feedback.FeedbackReportDialog.ProblemOption.InappropriateOrDerogatory";
		textSelectionHeader = "CoreScripts.Feedback.FeedbackReportDialog.TextSelectionHeader";
		correctTranslationHeader = "CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationHeader";
		correctTranslationPlaceholder = "CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationPlaceholder";
		additionalCommentsHeader = "CoreScripts.Feedback.FeedbackReportDialog.AdditionalCommentsHeader";
		additionalCommentsPlaceholder = "CoreScripts.Feedback.FeedbackReportDialog.AdditionalCommentsPlaceholder";
		problemDropdownSelectionHeader = "CoreScripts.Feedback.FeedbackReportDialog.ProblemDropdownSelectionHeader";
		genericSelectionWrapper = {
			ObjectType = arg1.state.feedbackText;
			"CoreScripts.Feedback.FeedbackReportDialog.CorrectTranslationObjectPlaceholder"
		};
	})(function(arg1_10) -- Line 466
		--[[ Upvalues[8]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ModalDialog_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Constants_upvr (copied, readonly)
			[5]: GetFFlagEnableFeedbackReportDialogAdjustments_upvr (copied, readonly)
			[6]: VerticalScrollView_upvr (copied, readonly)
			[7]: ButtonStack_upvr (copied, readonly)
			[8]: ButtonType_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl_5 = {}
		local var72
		if arg1.props.feedbackFlowState ~= Constants_upvr.State.CurrentlyLeavingFeedback then
			var72 = false
		else
			var72 = true
		end
		tbl_5.visible = var72
		var72 = arg1.props.screenSize
		tbl_5.screenSize = var72
		var72 = arg1_10.mainHeader
		tbl_5.titleText = var72
		if GetFFlagEnableFeedbackReportDialogAdjustments_upvr() then
			var72 = true
			-- KONSTANTWARNING: GOTO [38] #27
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [37] 26. Error Block 28 start (CF ANALYSIS FAILED)
		var72 = false
		tbl_5.showCloseButton = var72
		var72 = Roact_upvr.createElement
		;({}).useAutomaticCanvasSize = false
		if GetFFlagEnableFeedbackReportDialogAdjustments_upvr() then
			-- KONSTANTWARNING: GOTO [79] #59
		end
		-- KONSTANTERROR: [37] 26. Error Block 28 end (CF ANALYSIS FAILED)
	end)
end
local SendFeedbackThunk_upvr = require(Parent.Thunks.SendFeedbackThunk)
local SetFeedbackFlowState_upvr = require(Parent.Actions.SetFeedbackFlowState)
local SetFeedbackReason_upvr = require(Parent.Actions.SetFeedbackReason)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 524
	return {
		screenSize = arg1.displayOptions.screenSize;
		feedbackFlowState = arg1.feedbackFlowState.feedbackFlowState;
		feedbackReason = arg1.feedbackFlowState.feedbackReason;
	}
end, function(arg1) -- Line 530
	--[[ Upvalues[3]:
		[1]: SendFeedbackThunk_upvr (readonly)
		[2]: SetFeedbackFlowState_upvr (readonly)
		[3]: SetFeedbackReason_upvr (readonly)
	]]
	return {
		sendFeedback = function(arg1_11, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 532, Named "sendFeedback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SendFeedbackThunk_upvr (copied, readonly)
			]]
			arg1(SendFeedbackThunk_upvr(arg1_11, arg2, arg3, arg4, arg5, arg6, arg7))
		end;
		setFeedbackFlowState = function(arg1_12) -- Line 553, Named "setFeedbackFlowState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetFeedbackFlowState_upvr (copied, readonly)
			]]
			arg1(function(arg1_13) -- Line 554
				--[[ Upvalues[2]:
					[1]: SetFeedbackFlowState_upvr (copied, readonly)
					[2]: arg1_12 (readonly)
				]]
				arg1_13:dispatch(SetFeedbackFlowState_upvr(arg1_12))
			end)
		end;
		setFeedbackReason = function(arg1_14) -- Line 558, Named "setFeedbackReason"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetFeedbackReason_upvr (copied, readonly)
			]]
			arg1(function(arg1_15) -- Line 559
				--[[ Upvalues[2]:
					[1]: SetFeedbackReason_upvr (copied, readonly)
					[2]: arg1_14 (readonly)
				]]
				arg1_15:dispatch(SetFeedbackReason_upvr(arg1_14))
			end)
		end;
	}
end)(any_extend_result1)