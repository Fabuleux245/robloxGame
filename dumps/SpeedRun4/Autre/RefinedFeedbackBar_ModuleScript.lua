-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:37
-- Luau version 6, Types version 3
-- Time taken: 0.008636 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("RefinedFeedbackBar")
local TextService_upvr = game:GetService("TextService")
local function GetTextSize_upvr(...) -- Line 41, Named "GetTextSize"
	--[[ Upvalues[1]:
		[1]: TextService_upvr (readonly)
	]]
	return TextService_upvr:GetTextSize(...) + Vector2.new(2, 2)
end
any_extend_result1_upvr.validateProps = t.strictInterface({
	leftHint = t.strictInterface({
		text = t.string;
	});
})
local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
function any_extend_result1_upvr.init(arg1) -- Line 55
	--[[ Upvalues[1]:
		[1]: ExperienceStateCaptureService_upvr (readonly)
	]]
	arg1.state = {
		barWidth = 0;
		hintStringsConcat = nil;
		requiredSpace = nil;
		hintRatios = nil;
	}
	function arg1.onExitFeedbackMode() -- Line 63
		--[[ Upvalues[1]:
			[1]: ExperienceStateCaptureService_upvr (copied, readonly)
		]]
		ExperienceStateCaptureService_upvr:ToggleCaptureMode()
	end
	function arg1.openHelpModal() -- Line 67
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.showHelpModal(true)
	end
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
function any_extend_result1_upvr.calculateHintRatios(arg1) -- Line 73
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var30 = 84
	local var31 = ""
	local module = {}
	local var33 = 0
	local tbl = {}
	tbl[1] = arg1
	local any_join_result1 = Cryo_upvr.List.join(tbl, {})
	for _, v in ipairs(any_join_result1) do
		module[v.text] = GetTextSize_upvr(v.text, 17, 2, Vector2.new(10000, 10000)).X
		var33 += module[v.text]
		var30 = var30 + 36 + 8
		var31 = var31..v.text
	end
	for i_2, v_2 in pairs(module) do
		module[i_2] = v_2 / var33
	end
	return module, var30 + math.max(#any_join_result1 - 2, 0) * 40, var31
end
function any_extend_result1_upvr.getDerivedStateFromProps(arg1) -- Line 105
	--[[ Upvalues[1]:
		[1]: any_extend_result1_upvr (readonly)
	]]
	local any_calculateHintRatios_result1, any_calculateHintRatios_result2, any_calculateHintRatios_result3 = any_extend_result1_upvr.calculateHintRatios(arg1.leftHint)
	return {
		hintRatios = any_calculateHintRatios_result1;
		requiredSpace = any_calculateHintRatios_result2;
		hintStringsConcat = any_calculateHintRatios_result3;
	}
end
function any_extend_result1_upvr.calculateHintSize(arg1, arg2, arg3) -- Line 116
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	local var50 = arg2 - arg1.state.requiredSpace
	local var51 = arg3.Header2.RelativeSize * arg3.BaseSize
	local var52 = arg3.Header2.RelativeMinSize * arg3.BaseSize
	local X_2 = GetTextSize_upvr(arg1.state.hintStringsConcat, var52, arg3.Header2.Font, Vector2.new(10000, 10000)).X
	if X_2 <= var50 then
		local X = GetTextSize_upvr(arg1.state.hintStringsConcat, var51, arg3.Header2.Font, Vector2.new(10000, 10000)).X
		local var55 = (var51 - var52) / (X - X_2)
		return nil, math.clamp((var50 * var55) + (var51 - var55 * X), var52, var51)
	end
	for i_3, v_3 in pairs(arg1.state.hintRatios) do
		({})[i_3] = v_3 * var50
		local var60
	end
	return var60
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local FeedbackBarHint_upvr = require(script.Parent.FeedbackBarHint)
local withLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).withLocalization
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1_upvr.render(arg1) -- Line 155
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FeedbackBarHint_upvr (readonly)
		[4]: withLocalization_upvr (readonly)
		[5]: ButtonStack_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 156
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FeedbackBarHint_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: withLocalization_upvr (copied, readonly)
			[5]: ButtonStack_upvr (copied, readonly)
			[6]: ButtonType_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		return Roact_upvr.createElement("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = Theme.BackgroundUIContrast.Transparency;
			BackgroundColor3 = Theme.BackgroundUIContrast.Color;
			Size = UDim2.new(1, 0, 0, 72);
			Position = UDim2.fromScale(0, 1);
			AnchorPoint = Vector2.new(0, 1);
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 169
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					barWidth = arg1_4.AbsoluteSize.X;
				})
			end;
			[Roact_upvr.Event.AncestryChanged] = function(arg1_5) -- Line 174
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					barWidth = arg1_5.AbsoluteSize.X;
				})
			end;
		}, {
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 24);
				PaddingRight = UDim.new(0, 24);
			});
			LeftFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0.5, 1);
			}, {Roact_upvr.createElement("UIListLayout", {
				key = "Layout";
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 40);
			}), (function(arg1_3) -- Line 158, Named "makeHint"
				--[[ Upvalues[2]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FeedbackBarHint_upvr (copied, readonly)
				]]
				return Roact_upvr.createElement(FeedbackBarHint_upvr, arg1_3)
			end)(arg1.props.leftHint)});
			RightFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(0.35, 1);
				Position = UDim2.fromScale(1, 0);
				AnchorPoint = Vector2.new(1, 0);
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = UDim.new(0, 40);
				});
				Buttons = withLocalization_upvr({
					helpButtonText = "CoreScripts.Feedback.FeedbackBar.HelpButton";
					exitFeedbackButtonText = "CoreScripts.Feedback.FeedbackBar.ExitFeedbackButton";
				})(function(arg1_6) -- Line 217
					--[[ Upvalues[4]:
						[1]: Roact_upvr (copied, readonly)
						[2]: ButtonStack_upvr (copied, readonly)
						[3]: ButtonType_upvr (copied, readonly)
						[4]: arg1 (copied, readonly)
					]]
					return Roact_upvr.createElement(ButtonStack_upvr, {
						buttonHeight = 50;
						buttons = {{
							buttonType = ButtonType_upvr.Secondary;
							props = {
								onActivated = arg1.openHelpModal;
								text = arg1_6.helpButtonText;
							};
						}, {
							buttonType = ButtonType_upvr.PrimarySystem;
							props = {
								isDisabled = false;
								onActivated = arg1.onExitFeedbackMode;
								text = arg1_6.exitFeedbackButtonText;
							};
						}};
						forcedFillDirection = Enum.FillDirection.Horizontal;
					})
				end);
			});
		})
	end)
end
local ShowHelpModalThunk_upvr = require(script.Parent.Parent.Thunks.ShowHelpModalThunk)
return require(CorePackages.Packages.RoactRodux).connect(function() -- Line 245
	return {}
end, function(arg1) -- Line 247
	--[[ Upvalues[1]:
		[1]: ShowHelpModalThunk_upvr (readonly)
	]]
	return {
		showHelpModal = function(arg1_7) -- Line 249, Named "showHelpModal"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ShowHelpModalThunk_upvr (copied, readonly)
			]]
			arg1(ShowHelpModalThunk_upvr(arg1_7))
		end;
	}
end)(any_extend_result1_upvr)