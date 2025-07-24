-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:13
-- Luau version 6, Types version 3
-- Time taken: 0.007610 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local EmoteThumbnailParameters_upvr = require(script.Parent.EmoteThumbnailParameters)
local tbl_3_upvr = {
	CurveAnimationTimeIncrements = 0.01;
}
local tbl_6_upvr = {
	Rotation = {
		Precision = 0;
		Range = NumberRange.new(0, 360);
		Default = 0;
		Increments = 361;
	};
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("EmoteThumbnailEditor")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	animationClip = t.instanceIsA("AnimationClip");
	initialThumbnailParameters = t.optional(EmoteThumbnailParameters_upvr.validate);
	closePromptCallback = t.callback;
	updateThumbnailCallback = t.callback;
})
function any_extend_result1.init(arg1) -- Line 62
	--[[ Upvalues[2]:
		[1]: EmoteThumbnailParameters_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	local initialThumbnailParameters = arg1.props.initialThumbnailParameters
	if not initialThumbnailParameters then
		initialThumbnailParameters = EmoteThumbnailParameters_upvr.defaultParameters
	end
	arg1:setState({
		thumbnailParameters = initialThumbnailParameters;
	})
	function arg1.onCancelPressed() -- Line 70
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.closePromptCallback()
	end
	function arg1.onUpdatePressed() -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.updateThumbnailCallback(arg1.state.thumbnailParameters)
		arg1.props.closePromptCallback()
	end
	function arg1.onRotateChanged(arg1_2) -- Line 80
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local clone_2 = table.clone(arg1.state.thumbnailParameters)
		clone_2.thumbnailCharacterRotation = arg1_2
		arg1:updateThumbnailParameters(clone_2)
	end
	function arg1.onKeyframeOrTimeChanged(arg1_3) -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local clone = table.clone(arg1.state.thumbnailParameters)
		clone.thumbnailTime = arg1_3
		clone.thumbnailKeyframe = arg1_3
		arg1:updateThumbnailParameters(clone)
	end
	arg1.rotationSliderRef = Roact_upvr.createRef()
	arg1.timeSliderRef = Roact_upvr.createRef()
	arg1:updateSliderValuesForAnimationClip()
end
local EmoteUtility_upvr = require(CorePackages.Packages.Thumbnailing).EmoteUtility
function any_extend_result1.updateSliderValuesForAnimationClip(arg1) -- Line 100
	--[[ Upvalues[2]:
		[1]: EmoteUtility_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	local props_2 = arg1.props
	local var21
	local var22
	local var23
	if props_2.animationClip:IsA("KeyframeSequence") then
		var21 = 1
		var22 = #props_2.animationClip:GetKeyframes()
		var23 = 1
	elseif props_2.animationClip:IsA("CurveAnimation") then
		var21 = 0
		var22 = math.floor(EmoteUtility_upvr.GetCurveAnimationTimeLength(props_2.animationClip) / tbl_3_upvr.CurveAnimationTimeIncrements) * tbl_3_upvr.CurveAnimationTimeIncrements
		var23 = tbl_3_upvr.CurveAnimationTimeIncrements
	else
		error("Unsupported animation type:", props_2.animationClip.ClassName)
	end
	arg1:setState({
		timeSliderMin = var21;
		timeSliderMax = var22;
		timeSliderStepInterval = var23;
	})
end
function any_extend_result1.updateThumbnailParameters(arg1, arg2) -- Line 128
	local tbl_7 = {}
	tbl_7.thumbnailParameters = arg2
	arg1:setState(tbl_7)
end
local withStyle_upvr = UIBlox.Style.withStyle
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local EmoteThumbnailView_upvr = require(script.Parent.EmoteThumbnailView)
local SystemSlider_upvr = UIBlox.App.Slider.SystemSlider
function any_extend_result1.renderMiddle(arg1, arg2) -- Line 134
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
		[4]: EmoteThumbnailView_upvr (readonly)
		[5]: SystemSlider_upvr (readonly)
		[6]: tbl_6_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 135
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RoactGamepad_upvr (copied, readonly)
			[4]: EmoteThumbnailView_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: SystemSlider_upvr (copied, readonly)
			[7]: tbl_6_upvr (copied, readonly)
		]]
		local Font = arg1_4.Font
		local Theme = arg1_4.Theme
		local props = arg1.props
		if 481 >= props.screenSize.Y then
			props = false
		else
			props = true
		end
		local tbl_2 = {}
		if props then
			tbl_2.contentSize = UDim2.new(1, 0, 0, 262)
			tbl_2.thumbnailPosition = UDim2.new(0.5, 0, 0, 0)
			tbl_2.thumbnailAnchorPoint = Vector2.new(0.5, 0)
			tbl_2.leversPosition = UDim2.new(0, 0, 0, 160)
			tbl_2.leversSize = UDim2.new(1, 0, 0, 102)
		else
			tbl_2.contentSize = UDim2.new(1, 0, 0, 150)
			tbl_2.thumbnailPosition = UDim2.new(0, 0, 0, 0)
			tbl_2.thumbnailAnchorPoint = Vector2.new(0, 0)
			tbl_2.leversPosition = UDim2.new(0, 160, 0, 0)
			tbl_2.leversSize = UDim2.new(1, -160, 0, 102)
		end
		local thumbnailParameters = arg1.state.thumbnailParameters
		local function _(arg1_5) -- Line 161, Named "getStepIntervalForOption"
			return (arg1_5.Range.Max - arg1_5.Range.Min) / (arg1_5.Increments - 1)
		end
		local module_2 = {}
		local tbl_4 = {
			ThumbnailViewParent = Roact_upvr.createElement("Frame", {
				LayoutOrder = 0;
				Position = tbl_2.thumbnailPosition;
				AnchorPoint = tbl_2.thumbnailAnchorPoint;
				Size = UDim2.new(0, 150, 0, 150);
				BackgroundColor3 = Color3.new(1, 1, 0);
				BackgroundTransparency = 1;
			}, {
				EmoteThumbnailView = Roact_upvr.createElement(EmoteThumbnailView_upvr, {
					position = UDim2.new(0.5, 0, 0.5, 0);
					anchorPoint = Vector2.new(0.5, 0.5);
					animationClip = arg1.props.animationClip;
					thumbnailParameters = arg1.state.thumbnailParameters;
				});
			});
		}
		local tbl_5 = {
			ListLayout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			FrameDescriptionLabel = Roact_upvr.createElement("TextLabel", {
				LayoutOrder = 0;
				Size = UDim2.new(1, 0, 0, 15);
				Font = Font.Body.Font;
				TextSize = 12;
				Text = arg2.timeLabelText;
				TextColor3 = Theme.TextDefault.Color;
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
			TimeSlider = Roact_upvr.createElement(SystemSlider_upvr, {
				layoutOrder = 1;
				min = arg1.state.timeSliderMin;
				max = arg1.state.timeSliderMax;
				stepInterval = arg1.state.timeSliderStepInterval;
				value = thumbnailParameters.thumbnailKeyframe;
				onValueChanged = arg1.onKeyframeOrTimeChanged;
				width = UDim.new(1, 0);
				position = UDim2.new(0, 0, 0.5, 0);
				anchorPoint = Vector2.new(0, 0.5);
				NextSelectionDown = arg1.rotationSliderRef;
				[Roact_upvr.Ref] = arg1.timeSliderRef;
			});
			RotationDescriptionLabel = Roact_upvr.createElement("TextLabel", {
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, 15);
				Font = Font.Body.Font;
				TextSize = 12;
				Text = arg2.rotationLabelText;
				TextColor3 = Theme.TextDefault.Color;
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
		}
		local tbl = {
			layoutOrder = 3;
			min = tbl_6_upvr.Rotation.Range.Min;
			max = tbl_6_upvr.Rotation.Range.Max;
		}
		local Rotation = tbl_6_upvr.Rotation
		tbl.stepInterval = (Rotation.Range.Max - Rotation.Range.Min) / (Rotation.Increments - 1)
		tbl.value = thumbnailParameters.thumbnailCharacterRotation
		tbl.onValueChanged = arg1.onRotateChanged
		tbl.width = UDim.new(1, 0)
		tbl.position = UDim2.new(0, 0, 0.5, 0)
		tbl.anchorPoint = Vector2.new(0, 0.5)
		tbl.NextSelectionUp = arg1.timeSliderRef
		tbl[Roact_upvr.Ref] = arg1.rotationSliderRef
		tbl_5.RotationSlider = Roact_upvr.createElement(SystemSlider_upvr, tbl)
		tbl_4.Levers = Roact_upvr.createElement("Frame", {
			LayoutOrder = 1;
			Size = tbl_2.leversSize;
			AnchorPoint = Vector2.new(0, 0);
			Position = tbl_2.leversPosition;
			BackgroundColor3 = Color3.new(1, 0, 0);
			BackgroundTransparency = 1;
		}, tbl_5)
		module_2.TopSection = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
		}, tbl_4)
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
			Size = tbl_2.contentSize;
			BackgroundColor3 = Color3.new(1, 0, 1);
			BackgroundTransparency = 1;
			[Roact_upvr.Ref] = arg1.middleContentRef;
		}, module_2)
	end)
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.renderAlertLocalized(arg1, arg2) -- Line 258
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
	]]
	local module = {
		title = arg2.titleText or "";
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.onCancelPressed;
					text = arg2.cancelButtonText;
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.onUpdatePressed;
					text = arg2.updateButtonText;
				};
				isDefaultChild = false;
			}};
		};
	}
	function module.middleContent() -- Line 280
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1:renderMiddle(arg2)
	end
	module.screenSize = arg1.props.screenSize
	module.defaultChildRef = arg1.props.defaultChildRef
	module.isMiddleContentFocusable = true
	return Roact_upvr.createElement(InteractiveAlert_upvr, module)
end
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local function GetLocalizedStrings_upvr() -- Line 289, Named "GetLocalizedStrings"
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	return {
		cancelButtonText = RobloxTranslator_upvr:FormatByKey("CoreScripts.EmoteThumbnailEditor.Action.Cancel");
		updateButtonText = RobloxTranslator_upvr:FormatByKey("CoreScripts.EmoteThumbnailEditor.Action.Update");
		titleText = RobloxTranslator_upvr:FormatByKey("CoreScripts.EmoteThumbnailEditor.Heading.EditThumbnail");
		rotationLabelText = RobloxTranslator_upvr:FormatByKey("CoreScripts.EmoteThumbnailEditor.Label.Rotation");
		timeLabelText = RobloxTranslator_upvr:FormatByKey("CoreScripts.EmoteThumbnailEditor.Label.Time");
	}
end
function any_extend_result1.render(arg1) -- Line 301
	--[[ Upvalues[1]:
		[1]: GetLocalizedStrings_upvr (readonly)
	]]
	return arg1:renderAlertLocalized(GetLocalizedStrings_upvr())
end
return any_extend_result1