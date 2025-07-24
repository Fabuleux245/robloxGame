-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:32
-- Luau version 6, Types version 3
-- Time taken: 0.002571 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("FeedbackApp")
any_extend_result1.validateProps = t.strictInterface({
	setScreenGuiSize = t.callback;
})
local FFlagInExperienceUseAppStyleProvider_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperienceUseAppStyleProvider
local AppStyleProvider_upvr = UIBlox_upvr.App.Style.AppStyleProvider
local Dark_upvr = UIBlox_upvr.App.Style.Constants.ThemeName.Dark
local FeedbackSubmissionToast_upvr = require(Parent.Components.FeedbackSubmissionToast)
local HelpModal_upvr = require(Parent.Components.HelpModal)
local OnboardingModal_upvr = require(Parent.Components.OnboardingModal)
local FeedbackReportDialog_upvr = require(Parent.Components.FeedbackReportDialog)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local withStyle_upvr = UIBlox_upvr.Core.Style.withStyle
local RefinedFeedbackBar_upvr = require(Parent.Components.RefinedFeedbackBar)
local Assets_upvr = require(Parent.Resources.Assets)
function any_extend_result1.render(arg1) -- Line 46
	--[[ Upvalues[13]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagInExperienceUseAppStyleProvider_upvr (readonly)
		[3]: AppStyleProvider_upvr (readonly)
		[4]: UIBlox_upvr (readonly)
		[5]: Dark_upvr (readonly)
		[6]: FeedbackSubmissionToast_upvr (readonly)
		[7]: HelpModal_upvr (readonly)
		[8]: OnboardingModal_upvr (readonly)
		[9]: FeedbackReportDialog_upvr (readonly)
		[10]: withLocalization_upvr (readonly)
		[11]: withStyle_upvr (readonly)
		[12]: RefinedFeedbackBar_upvr (readonly)
		[13]: Assets_upvr (readonly)
	]]
	local var19 = Roact_upvr
	local var20
	if var20 then
		var19 = AppStyleProvider_upvr
	else
		var20 = UIBlox_upvr.Core.Style
		var19 = var20.Provider
	end
	if FFlagInExperienceUseAppStyleProvider_upvr then
		var20 = {}
		var20.style = {
			themeName = Dark_upvr;
		}
	else
		var20 = {}
	end
	return var19.createElement(var19, var20, {
		Gui = Roact_upvr.createElement("ScreenGui", {
			AutoLocalize = false;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = true;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			[Roact_upvr.Change.AbsoluteSize] = arg1.props.setScreenGuiSize;
		}, {
			ScreenFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
				ZIndex = 10;
			}, {
				FeedbackSubmissionToast = Roact_upvr.createElement(FeedbackSubmissionToast_upvr);
				HelpModal = Roact_upvr.createElement(HelpModal_upvr);
				OnboardingModal = Roact_upvr.createElement(OnboardingModal_upvr);
				FeedbackReportDialog = Roact_upvr.createElement(FeedbackReportDialog_upvr);
			});
			RefinedFeedbackBar = withLocalization_upvr({
				feedbackBarText = "CoreScripts.Feedback.FeedbackBar.MainLabel";
			})(function(arg1_2) -- Line 78
				--[[ Upvalues[4]:
					[1]: withStyle_upvr (copied, readonly)
					[2]: Roact_upvr (copied, readonly)
					[3]: RefinedFeedbackBar_upvr (copied, readonly)
					[4]: Assets_upvr (copied, readonly)
				]]
				return withStyle_upvr(function(arg1_3) -- Line 79
					--[[ Upvalues[4]:
						[1]: Roact_upvr (copied, readonly)
						[2]: RefinedFeedbackBar_upvr (copied, readonly)
						[3]: arg1_2 (readonly)
						[4]: Assets_upvr (copied, readonly)
					]]
					local Font = arg1_3.Font
					return Roact_upvr.createElement(RefinedFeedbackBar_upvr, {
						leftHint = {
							text = arg1_2.feedbackBarText;
							hintTextSize = Font.BaseSize * Font.Body.RelativeSize;
							maxWidth = 200;
							icon = Assets_upvr.Images.FeedbackBarHintIcon;
						};
					}, {})
				end)
			end);
		});
	})
end
local SetScreenSize_upvr = require(Parent.Actions.SetScreenSize)
local SetFeedbackFlowState_upvr = require(Parent.Actions.SetFeedbackFlowState)
return require(CorePackages.Packages.RoactRodux).connect(function() -- Line 96
end, function(arg1) -- Line 96
	--[[ Upvalues[2]:
		[1]: SetScreenSize_upvr (readonly)
		[2]: SetFeedbackFlowState_upvr (readonly)
	]]
	return {
		setScreenGuiSize = function(arg1_4) -- Line 98, Named "setScreenGuiSize"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScreenSize_upvr (copied, readonly)
			]]
			arg1(SetScreenSize_upvr(arg1_4.AbsoluteSize))
		end;
		setFeedbackFlowState = function(arg1_5) -- Line 101, Named "setFeedbackFlowState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetFeedbackFlowState_upvr (copied, readonly)
			]]
			arg1(function(arg1_6) -- Line 102
				--[[ Upvalues[2]:
					[1]: SetFeedbackFlowState_upvr (copied, readonly)
					[2]: arg1_5 (readonly)
				]]
				arg1_6:dispatch(SetFeedbackFlowState_upvr(arg1_5))
			end)
		end;
	}
end)(any_extend_result1)