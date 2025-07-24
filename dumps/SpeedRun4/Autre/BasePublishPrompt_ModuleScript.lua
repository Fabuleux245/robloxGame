-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:08
-- Luau version 6, Types version 3
-- Time taken: 0.016664 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withStyle_upvr = UIBlox.Style.withStyle
local MouseIconOverrideService_upvr = require(CorePackages.InGameServices.MouseIconOverrideService)
local InputType_upvr = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup_upvr = require(CorePackages.Workspace.Packages.InputType).getInputGroup
local Parent = script.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("BasePublishPrompt")
local function _(arg1) -- Line 67, Named "isGamepadInput"
	--[[ Upvalues[2]:
		[1]: getInputGroup_upvr (readonly)
		[2]: InputType_upvr (readonly)
	]]
	local var15 = arg1
	if getInputGroup_upvr(var15) ~= InputType_upvr.InputTypeConstants.Gamepad then
		var15 = false
	else
		var15 = true
	end
	return var15
end
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	nameLabel = t.string;
	defaultName = t.string;
	promptBody = t.any;
	titleText = t.string;
	showingPreviewView = t.boolean;
	closePreviewView = t.callback;
	asset = t.optional(t.union(t.instanceOf("Model"), t.instanceIsA("AnimationClip")));
	onNameUpdated = t.callback;
	canSubmit = t.callback;
	onSubmit = t.callback;
	enableInputDelayed = t.optional(t.boolean);
	isDelayedInput = t.optional(t.boolean);
	delayInputSeconds = t.optional(t.number);
	priceInRobux = t.optional(t.number);
	showTopScrim = t.optional(t.boolean);
	guid = t.any;
	scopes = t.any;
	errorMessage = t.optional(t.string);
	promptVisible = t.optional(t.boolean);
	closePrompt = t.callback;
	SetPromptVisibility = t.callback;
})
local PublishAssetAnalytics_upvr = require(RobloxGui.Modules.PurchasePrompt).PublishAssetAnalytics
local ExperienceAuthService_upvr = game:GetService("ExperienceAuthService")
function any_extend_result1.init(arg1) -- Line 105
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: getInputGroup_upvr (readonly)
		[4]: InputType_upvr (readonly)
		[5]: PublishAssetAnalytics_upvr (readonly)
		[6]: ExperienceAuthService_upvr (readonly)
	]]
	arg1.swipeScrollingFrameRef = Roact_upvr.createRef()
	arg1.inputState = nil
	arg1.inputObject = nil
	arg1.connection = nil
	function arg1.storeInput(arg1_2, arg2, arg3) -- Line 111
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.inputState = arg2
		arg1.inputObject = arg3
		return Enum.ContextActionResult.Sink
	end
	local tbl_11 = {}
	local var21 = false
	tbl_11.showUnsavedDataWarning = var21
	if getInputGroup_upvr(UserInputService_upvr:GetLastInputType()) ~= InputType_upvr.InputTypeConstants.Gamepad then
		var21 = false
	else
		var21 = true
	end
	tbl_11.isGamepad = var21
	arg1:setState(tbl_11)
	function arg1.closePrompt() -- Line 125
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.closePrompt()
		arg1.props.SetPromptVisibility(false)
	end
	function arg1.showUnsavedDataWarning() -- Line 130
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PublishAssetAnalytics_upvr (copied, readonly)
		]]
		arg1:setState({
			showUnsavedDataWarning = true;
		})
		PublishAssetAnalytics_upvr.sendButtonClicked(PublishAssetAnalytics_upvr.Section.BuyCreationPage, PublishAssetAnalytics_upvr.Element.X)
	end
	function arg1.cancelClosePrompt() -- Line 138
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showUnsavedDataWarning = false;
		})
	end
	function arg1.denyAndClose() -- Line 144
		--[[ Upvalues[2]:
			[1]: ExperienceAuthService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		ExperienceAuthService_upvr:ScopeCheckUIComplete(arg1.props.guid, arg1.props.scopes, Enum.ScopeCheckResult.ConsentDenied, {})
		arg1.closePrompt()
	end
	function arg1.confirmAndUpload() -- Line 155
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.canSubmit() then
			arg1.props.onSubmit()
		end
	end
end
local RunService_upvr = game:GetService("RunService")
local GamepadUtils_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Utils.GamepadUtils
local udim_upvr = UDim.new(1.5, 0)
function any_extend_result1.setUpGamepad(arg1) -- Line 162
	--[[ Upvalues[5]:
		[1]: UserInputService_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: GamepadUtils_upvr (readonly)
		[5]: udim_upvr (readonly)
	]]
	if UserInputService_upvr.GamepadEnabled then
		ContextActionService_upvr:UnbindCoreAction("ScrollPrompt")
		ContextActionService_upvr:BindCoreAction("ScrollPrompt", arg1.storeInput, false, Enum.KeyCode.Thumbstick2)
		arg1.connection = RunService_upvr.RenderStepped:Connect(function(arg1_3) -- Line 166
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: GamepadUtils_upvr (copied, readonly)
				[3]: udim_upvr (copied, readonly)
			]]
			if arg1.inputState == Enum.UserInputState.Change then
				if arg1.inputObject then
					local current = arg1.swipeScrollingFrameRef.current
					local var35 = current.CanvasPosition.Y + arg1_3 * -GamepadUtils_upvr.normalizeStickByDeadzone(arg1.inputObject.Position).Y * 1000
					if var35 <= current.AbsoluteSize.Y * udim_upvr.Scale + udim_upvr.Offset then
						current.CanvasPosition = Vector2.new(0, var35)
					end
				end
			end
		end)
		ContextActionService_upvr:UnbindCoreAction("ClosePrompt")
		ContextActionService_upvr:BindCoreAction("ClosePrompt", arg1.storeInput, false, Enum.KeyCode.ButtonB)
	end
end
function any_extend_result1.cleanupGamepad(arg1) -- Line 186
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("ClosePrompt")
	ContextActionService_upvr:UnbindCoreAction("ScrollPrompt")
	if arg1.connection then
		arg1.connection:Disconnect()
	end
end
function any_extend_result1.overrideMouseIconBehavior(arg1) -- Line 194
	--[[ Upvalues[1]:
		[1]: MouseIconOverrideService_upvr (readonly)
	]]
	local var36
	if arg1.state.isGamepad then
		var36 = Enum.OverrideMouseIconBehavior.ForceHide
	else
		var36 = Enum.OverrideMouseIconBehavior.ForceShow
	end
	MouseIconOverrideService_upvr.push("BasePublishPromptOverrideKey", var36)
end
function any_extend_result1.removeMouseIconBehaviorOverride(arg1) -- Line 202
	--[[ Upvalues[1]:
		[1]: MouseIconOverrideService_upvr (readonly)
	]]
	MouseIconOverrideService_upvr.pop("BasePublishPromptOverrideKey")
end
function any_extend_result1.didMount(arg1) -- Line 206
	arg1:setUpGamepad()
	arg1.props.SetPromptVisibility(true)
	arg1:overrideMouseIconBehavior()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 215
	if arg2.promptVisible ~= arg1.props.promptVisible then
		if arg1.props.promptVisible == false then
			arg1.closePrompt()
		end
	end
	if arg1.state.isGamepad ~= arg3.isGamepad then
		arg1:overrideMouseIconBehavior()
	end
end
local Constants_upvr = require(script.Parent.Parent.Constants)
local LabeledTextBox_upvr = require(Parent.Common.LabeledTextBox)
function any_extend_result1.renderMiddle(arg1, arg2) -- Line 229
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: LabeledTextBox_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 230
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: LabeledTextBox_upvr (copied, readonly)
			[5]: arg2 (readonly)
		]]
		local Font = arg1_4.Font
		local Theme_3 = arg1_4.Theme
		local Footer = Font.Footer
		return Roact_upvr.createFragment({
			ScrollingFrame = Roact_upvr.createElement("ScrollingFrame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, -50);
				CanvasSize = UDim2.new(1, 0, 0, 0);
				ScrollBarThickness = 0;
				ScrollingDirection = Enum.ScrollingDirection.Y;
				AutomaticCanvasSize = Enum.AutomaticSize.Y;
				Selectable = false;
				[Roact_upvr.Ref] = arg1.swipeScrollingFrameRef;
			}, {
				layout = Roact_upvr.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
				});
				padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants_upvr.PromptSidePadding);
					PaddingRight = UDim.new(0, Constants_upvr.PromptSidePadding);
				});
				NameInput = Roact_upvr.createElement(LabeledTextBox_upvr, {
					LayoutOrder = 1;
					labelText = arg1.props.nameLabel;
					topPadding = 24;
					defaultText = arg1.props.defaultName;
					onTextUpdated = arg1.props.onNameUpdated;
					textBoxHeight = 30;
				});
				PromptBody = Roact_upvr.createElement("Frame", {
					Size = UDim2.fromScale(1, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					BackgroundTransparency = 1;
					LayoutOrder = 2;
				}, arg1.props.promptBody);
			});
			BottomGradient = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 5);
				AnchorPoint = Vector2.new(0, 1);
				Position = UDim2.new(0, 0, 1, -50);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				ZIndex = 2;
			}, {
				gradient = Roact_upvr.createElement("UIGradient", {
					Rotation = 270;
					Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Theme_3.BackgroundUIDefault.Color), ColorSequenceKeypoint.new(1, Theme_3.BackgroundUIDefault.Color)});
					Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, Theme_3.BackgroundUIDefault.Transparency), NumberSequenceKeypoint.new(0.5, Theme_3.BackgroundUIDefault.Transparency), NumberSequenceKeypoint.new(1, 1)});
				});
			});
			DisclaimerContainer = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 50);
				Position = UDim2.new(0, 0, 1, -50);
			}, {
				padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, Constants_upvr.PromptSidePadding);
					PaddingRight = UDim.new(0, Constants_upvr.PromptSidePadding);
				});
				Disclaimer = Roact_upvr.createElement("TextLabel", {
					Size = UDim2.fromScale(1, 1);
					Text = arg2.disclaimer;
					Font = Footer.Font;
					TextSize = Font.BaseSize * Footer.RelativeSize;
					TextColor3 = Theme_3.TextDefault.Color;
					BackgroundTransparency = 1;
					TextWrapped = true;
				});
			});
		})
	end)
end
local GuiService_upvr = game:GetService("GuiService")
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local Overlay_upvr = UIBlox.App.Dialog.Overlay
local TopBarHeight_upvr = require(RobloxGui.Modules.TopBar.Constants).TopBarHeight
local FullPageModal_upvr = UIBlox.App.Dialog.Modal.FullPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local LeaveCreationAlert_upvr = require(script.Parent.LeaveCreationAlert)
local ValidationErrorModal_upvr = require(Parent.ValidationErrorModal)
local PreviewViewport_upvr = require(Parent.Common.PreviewViewport)
function any_extend_result1.renderAlertLocalized(arg1, arg2) -- Line 321
	--[[ Upvalues[14]:
		[1]: GuiService_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ExternalEventConnection_upvr (readonly)
		[5]: UserInputService_upvr (readonly)
		[6]: getInputGroup_upvr (readonly)
		[7]: InputType_upvr (readonly)
		[8]: Overlay_upvr (readonly)
		[9]: TopBarHeight_upvr (readonly)
		[10]: FullPageModal_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: LeaveCreationAlert_upvr (readonly)
		[13]: ValidationErrorModal_upvr (readonly)
		[14]: PreviewViewport_upvr (readonly)
	]]
	local any_GetGuiInset_result1, _ = GuiService_upvr:GetGuiInset()
	local udim2_upvr_2 = UDim2.new(0, 0, 0, -any_GetGuiInset_result1.Y)
	local udim2_upvr = UDim2.new(1, 0, 1, any_GetGuiInset_result1.Y)
	return withStyle_upvr(function(arg1_5) -- Line 326
		--[[ Upvalues[16]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ExternalEventConnection_upvr (copied, readonly)
			[5]: UserInputService_upvr (copied, readonly)
			[6]: getInputGroup_upvr (copied, readonly)
			[7]: InputType_upvr (copied, readonly)
			[8]: udim2_upvr_2 (readonly)
			[9]: udim2_upvr (readonly)
			[10]: Overlay_upvr (copied, readonly)
			[11]: TopBarHeight_upvr (copied, readonly)
			[12]: FullPageModal_upvr (copied, readonly)
			[13]: ButtonType_upvr (copied, readonly)
			[14]: LeaveCreationAlert_upvr (copied, readonly)
			[15]: ValidationErrorModal_upvr (copied, readonly)
			[16]: PreviewViewport_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme_2 = arg1_5.Theme
		local var102
		if arg1.props.priceInRobux and 0 < arg1.props.priceInRobux then
			var102 = string.format("%s %i", "", arg1.props.priceInRobux)
		else
			var102 = arg2.submit
		end
		local module = {
			LastInputTypeConnection = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.LastInputTypeChanged;
				callback = function(arg1_7) -- Line 336, Named "callback"
					--[[ Upvalues[3]:
						[1]: arg1 (copied, readonly)
						[2]: getInputGroup_upvr (copied, readonly)
						[3]: InputType_upvr (copied, readonly)
					]]
					local tbl_26 = {}
					local var106
					if getInputGroup_upvr(arg1_7) ~= InputType_upvr.InputTypeConstants.Gamepad then
						var106 = false
					else
						var106 = true
					end
					tbl_26.isGamepad = var106
					arg1:setState(tbl_26)
				end;
			});
			BottomScrim = Roact_upvr.createElement("Frame", {
				Position = udim2_upvr_2;
				Size = udim2_upvr;
				ZIndex = -1;
				BackgroundTransparency = 1;
			}, {
				Overlay = Roact_upvr.createElement(Overlay_upvr, {
					showGradient = false;
				});
				InputSink = Roact_upvr.createElement("TextButton", {
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					Text = "";
					Modal = true;
				});
			});
		}
		local tbl_29 = {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, -TopBarHeight_upvr);
			Position = UDim2.fromOffset(0, TopBarHeight_upvr);
		}
		local var112 = not arg1.state.showUnsavedDataWarning
		if var112 then
			var112 = not arg1.props.showingPreviewView
			if var112 then
				var112 = not arg1.props.showTopScrim
			end
		end
		tbl_29.Visible = var112
		module.PublishPrompt = Roact_upvr.createElement("Frame", tbl_29, {
			FullPageModal = Roact_upvr.createElement(FullPageModal_upvr, {
				title = arg1.props.titleText;
				onCloseClicked = arg1.showUnsavedDataWarning;
				distanceFromTop = 4;
				marginSize = 0;
				screenSize = arg1.props.screenSize;
				buttonStackProps = {
					buttons = {{
						buttonType = ButtonType_upvr.PrimarySystem;
						props = {
							isDisabled = not arg1.props.canSubmit();
							isDelayedInput = arg1.props.isDelayedInput;
							enableInputDelayed = arg1.props.enableInputDelayed;
							delayInputSeconds = arg1.props.delayInputSeconds;
							onActivated = arg1.confirmAndUpload;
							text = var102;
							isLoading = not arg1.props.priceInRobux;
						};
					}};
					disableRoactGamepadButtonSelection = true;
				};
			}, {
				middleContent = arg1:renderMiddle(arg2);
			});
		})
		if arg1.state.showUnsavedDataWarning then
			local _ = {
				screenSize = arg1.props.screenSize;
				closePrompt = arg1.denyAndClose;
				cancelClosePrompt = arg1.cancelClosePrompt;
			}
		else
		end
		module.LeaveCreationAlert = nil
		if arg1.props.errorMessage then
			local tbl_12 = {
				screenSize = arg1.props.screenSize;
				closePrompt = arg1.closePrompt;
			}
		else
		end
		module.ValidationErrorAlert = nil
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			tbl_7.PreviewViewport = Roact_upvr.createElement(PreviewViewport_upvr, tbl_3)
			tbl_3.closePreviewView = arg1.props.closePreviewView
			tbl_3.asset = arg1.props.asset
			local tbl_3 = {}
			local tbl_7 = {}
			tbl_21.BackgroundTransparency = Theme_2.BackgroundUIDefault.Transparency
			tbl_21.Position = UDim2.fromScale(0.5, 0.5)
			tbl_21.AnchorPoint = Vector2.new(0.5, 0.5)
			tbl_21.BackgroundColor3 = Theme_2.BackgroundUIDefault.Color
			tbl_21.Size = UDim2.new(1, 0, 1, 0)
			local tbl_21 = {}
			return Roact_upvr.createElement("Frame", tbl_21, tbl_7)
		end
		if not arg1.props.showingPreviewView or not INLINED_2() then
		end
		module.PreviewFrame = nil
		module.TopScrim = Roact_upvr.createElement("Frame", {
			Position = udim2_upvr_2;
			Size = udim2_upvr;
			ZIndex = 2;
			BackgroundTransparency = 1;
			Visible = arg1.props.showTopScrim;
		}, {
			InputSink = Roact_upvr.createElement("TextButton", {
				Size = UDim2.fromScale(1, 1);
				BackgroundTransparency = 1;
				Text = "";
			});
		})
		return Roact_upvr.createFragment(module)
	end)
end
local function _() -- Line 441, Named "GetLocalizedStrings"
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	return {
		submit = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Submit");
		disclaimer = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishCommon.Disclaimer");
	}
end
function any_extend_result1.render(arg1) -- Line 449
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	return arg1:renderAlertLocalized({
		submit = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Submit");
		disclaimer = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishCommon.Disclaimer");
	})
end
function any_extend_result1.willUnmount(arg1) -- Line 454
	arg1:removeMouseIconBehaviorOverride()
	arg1:cleanupGamepad()
	arg1.props.SetPromptVisibility(false)
end
local CloseOpenPrompt_upvr = require(script.Parent.Parent.Actions.CloseOpenPrompt)
local SetPromptVisibility_upvr = require(script.Parent.Parent.Actions.SetPromptVisibility)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 463, Named "mapStateToProps"
	return {
		guid = arg1.promptRequest.promptInfo.guid;
		scopes = arg1.promptRequest.promptInfo.scopes;
		errorMessage = arg1.promptRequest.promptInfo.errorMessage;
		promptVisible = arg1.promptRequest.promptInfo.promptVisible;
	}
end, function(arg1) -- Line 472, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: CloseOpenPrompt_upvr (readonly)
		[2]: SetPromptVisibility_upvr (readonly)
	]]
	return {
		closePrompt = function() -- Line 474, Named "closePrompt"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseOpenPrompt_upvr (copied, readonly)
			]]
			return arg1(CloseOpenPrompt_upvr())
		end;
		SetPromptVisibility = function(arg1_8) -- Line 477, Named "SetPromptVisibility"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPromptVisibility_upvr (copied, readonly)
			]]
			return arg1(SetPromptVisibility_upvr(arg1_8))
		end;
	}
end)(any_extend_result1)