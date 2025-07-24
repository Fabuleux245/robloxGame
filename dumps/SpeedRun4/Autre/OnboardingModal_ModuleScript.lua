-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:36
-- Luau version 6, Types version 3
-- Time taken: 0.002667 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("OnboardingModal")
local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
function any_extend_result1.init(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: ExperienceStateCaptureService_upvr (readonly)
	]]
	function arg1.onDismiss() -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.showOnboardingModal(false)
	end
	function arg1.onCancel() -- Line 35
		--[[ Upvalues[1]:
			[1]: ExperienceStateCaptureService_upvr (copied, readonly)
		]]
		ExperienceStateCaptureService_upvr:ToggleCaptureMode()
	end
end
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local ModalDialog_upvr = require(Parent.Components.ModalDialog)
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ThemedTextLabel_upvr = require(Parent.Components.PortedComponents.ThemedTextLabel)
function any_extend_result1.render(arg1) -- Line 40
	--[[ Upvalues[6]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ModalDialog_upvr (readonly)
		[4]: ButtonStack_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
	]]
	return withLocalization_upvr({
		mainHeader = "CoreScripts.Feedback.Onboarding.MainHeader";
		instructionLabel = "CoreScripts.Feedback.Onboarding.Instructions";
		cancel = "CoreScripts.Feedback.Onboarding.Cancel";
		start = "CoreScripts.Feedback.Onboarding.Start";
	})(function(arg1_2) -- Line 46
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ModalDialog_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: ButtonStack_upvr (copied, readonly)
			[5]: ButtonType_upvr (copied, readonly)
			[6]: ThemedTextLabel_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ModalDialog_upvr, {
			visible = arg1.props.visible;
			screenSize = arg1.props.screenSize;
			titleText = arg1_2.mainHeader;
			maxHeight = 200;
			maxWidth = 540;
			showCloseButton = true;
			actionButtons = Roact_upvr.createElement(ButtonStack_upvr, {
				buttonHeight = 36;
				buttons = {{
					buttonType = ButtonType_upvr.Secondary;
					props = {
						onActivated = arg1.onCancel;
						text = arg1_2.cancel;
					};
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						isDisabled = false;
						onActivated = arg1.onDismiss;
						text = arg1_2.start;
					};
				}};
			});
			contents = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
			}, {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 24);
					PaddingRight = UDim.new(0, 24);
					PaddingBottom = UDim.new(0, 24);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Top;
				});
				InstructionLabel = Roact_upvr.createElement(ThemedTextLabel_upvr, {
					LayoutOrder = 1;
					fontKey = "Body";
					themeKey = "TextDefault";
					AnchorPoint = Vector2.new(0, 0.5);
					Position = UDim2.new(0, 76, 0.5, 0);
					Size = UDim2.new(1, 0, 0.4, 36);
					Text = arg1_2.instructionLabel;
					TextWrapped = true;
					TextXAlignment = Enum.TextXAlignment.Left;
				});
			});
			onDismiss = arg1.onDismiss;
		})
	end)
end
local ShowOnboardingModalThunk_upvr = require(Parent.Thunks.ShowOnboardingModalThunk)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 105
	return {
		screenSize = arg1.displayOptions.screenSize;
		visible = arg1.common.showOnboardingModal;
	}
end, function(arg1) -- Line 110
	--[[ Upvalues[1]:
		[1]: ShowOnboardingModalThunk_upvr (readonly)
	]]
	return {
		showOnboardingModal = function(arg1_3) -- Line 112, Named "showOnboardingModal"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ShowOnboardingModalThunk_upvr (copied, readonly)
			]]
			arg1(ShowOnboardingModalThunk_upvr(arg1_3))
		end;
	}
end)(any_extend_result1)