-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:48
-- Luau version 6, Types version 3
-- Time taken: 0.006077 seconds

local RunService_upvr = game:GetService("RunService")
local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Parent_4 = Parent.Parent
local Roact_upvr = require(Parent_4.Roact)
local t_upvr = require(Parent_4.t)
local Cryo_upvr = require(Parent_4.Cryo)
local ControlState_upvr = require(Parent_2.Control.Enum.ControlState)
local StandardButtonSize_upvr = require(Parent_3.Enum.StandardButtonSize)
local validateImage = require(Parent_2.ImageSet.Validator.validateImage)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GenericButton")
function any_extend_result1_upvr.init(arg1) -- Line 45
	--[[ Upvalues[3]:
		[1]: ControlState_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
		absoluteSize = Vector2.new(100, 100);
		targetLoadingProgress = 1;
		isButtonUnfocused = RunService_upvr:GetRobloxGuiFocused();
	})
	function arg1.onStateChanged(arg1_2, arg2) -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.controlState = arg2
		arg1:setState(tbl_2)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_2, arg2)
		end
	end
	function arg1.onAbsoluteSizeChanged(arg1_3) -- Line 62
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		arg1:setState({
			absoluteSize = arg1_3.AbsoluteSize;
		})
		if arg1.props[Roact_upvr.Change.AbsoluteSize] then
			arg1.props[Roact_upvr.Change.AbsoluteSize](arg1_3)
		end
	end
	function arg1.onRobloxGuiFocusedChanged(arg1_4) -- Line 71
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_4 then
			arg1:setState({
				targetLoadingProgress = 1;
				isButtonUnfocused = true;
			})
		else
			arg1:setState({
				isButtonUnfocused = false;
			})
		end
	end
end
local any_interface_result1_upvr = t_upvr.interface({
	[ControlState_upvr.Default] = t_upvr.string;
})
any_extend_result1_upvr.validateProps = t_upvr.interface({
	icon = t_upvr.optional(validateImage);
	text = t_upvr.optional(t_upvr.string);
	inputIcon = t_upvr.optional(validateImage);
	buttonImage = validateImage;
	fontStyle = t_upvr.optional(t_upvr.union(t_upvr.string, require(Parent_2.Style.Validator.validateFontInfo), require(Parent.Core.Style.Validator.validateTypographyInfo)));
	delayedInputImage = t_upvr.optional(validateImage);
	buttonStateColorMap = any_interface_result1_upvr;
	contentStateColorMap = t_upvr.optional(any_interface_result1_upvr);
	textStateColorMap = t_upvr.optional(any_interface_result1_upvr);
	iconStateColorMap = t_upvr.optional(any_interface_result1_upvr);
	inputIconStateColorMap = t_upvr.optional(any_interface_result1_upvr);
	isDisabled = t_upvr.optional(t_upvr.boolean);
	isLoading = t_upvr.optional(t_upvr.boolean);
	isDelayedInput = t_upvr.optional(t_upvr.boolean);
	isHoverBackgroundEnabled = t_upvr.optional(t_upvr.boolean);
	hoverImage = t_upvr.optional(validateImage);
	enableInputDelayed = t_upvr.optional(t_upvr.boolean);
	delayInputSeconds = t_upvr.optional(t_upvr.numberPositive);
	onActivated = t_upvr.callback;
	onStateChanged = t_upvr.optional(t_upvr.callback);
	userInteractionEnabled = t_upvr.optional(t_upvr.boolean);
	standardSize = t_upvr.optional(StandardButtonSize_upvr.isEnumValue);
	maxWidth = t_upvr.optional(t_upvr.numberPositive);
	fitContent = t_upvr.optional(t_upvr.boolean);
	buttonTextOverride = t_upvr.optional(t_upvr.strictInterface({
		RichText = t_upvr.optional(t_upvr.boolean);
		Size = t_upvr.optional(t_upvr.UDim2);
		TextSize = t_upvr.optional(t_upvr.number);
		TextWrapped = t_upvr.optional(t_upvr.boolean);
		TextTruncate = t_upvr.optional(t_upvr.enum(Enum.TextTruncate));
		TextXAlignment = t_upvr.optional(t_upvr.enum(Enum.TextXAlignment));
	}));
	forwardedRef = t_upvr.optional(t_upvr.union(t_upvr.table, t_upvr.callback));
	feedbackType = t_upvr.optional(t_upvr.string);
})
any_extend_result1_upvr.defaultProps = {
	fontStyle = "Header2";
	isDisabled = false;
	isLoading = false;
	isDelayedInput = false;
	enableInputDelayed = false;
	delayInputSeconds = 3;
	SliceCenter = Rect.new(8, 8, 9, 9);
}
function any_extend_result1_upvr.didMount(arg1) -- Line 197
	local tbl_4 = {}
	local var27
	if not arg1.state.isButtonUnfocused and arg1.props.enableInputDelayed then
		var27 = 0
	else
		var27 = 1
	end
	tbl_4.targetLoadingProgress = var27
	arg1:setState(tbl_4)
end
local withAnimation_upvr = require(Parent.Core.Animation.withAnimation)
function any_extend_result1_upvr.render(arg1) -- Line 205
	--[[ Upvalues[1]:
		[1]: withAnimation_upvr (readonly)
	]]
	local isDelayedInput = arg1.props.isDelayedInput
	if isDelayedInput then
		isDelayedInput = not arg1.state.isButtonUnfocused
	end
	if isDelayedInput then
		return withAnimation_upvr({
			loadingProgress = arg1.state.targetLoadingProgress;
		}, function(arg1_5) -- Line 218
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:renderButton(math.clamp(arg1_5.loadingProgress, 0, 1))
		end, {
			frequency = 1 / arg1.props.delayInputSeconds;
			dampingRatio = 0.8;
		})
	end
	if arg1.state.isButtonUnfocused then
		return arg1:renderButton(1)
	end
	return arg1:renderButton()
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local getContentStyle_upvr = require(script.Parent.getContentStyle)
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
local ShimmerPanel_upvr = require(Parent.App.Loading.ShimmerPanel)
local getIconSize_upvr = require(Parent.App.ImageSet.getIconSize)
local IconSize_upvr = require(Parent.App.ImageSet.Enum.IconSize)
local ImageSetComponent_upvr = require(Parent_2.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Parent_2.Text.GenericTextLabel.GenericTextLabel)
local Interactable_upvr = require(Parent_2.Control.Interactable)
local HoverButtonBackground_upvr = require(Parent_2.Button.HoverButtonBackground)
local EventConnection_upvr = require(Parent_4.ReactUtils).EventConnection
function any_extend_result1_upvr.renderButton(arg1, arg2) -- Line 238
	--[[ Upvalues[18]:
		[1]: withStyle_upvr (readonly)
		[2]: t_upvr (readonly)
		[3]: any_interface_result1_upvr (readonly)
		[4]: getContentStyle_upvr (readonly)
		[5]: ControlState_upvr (readonly)
		[6]: StandardButtonSize_upvr (readonly)
		[7]: UIBloxConfig_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: ShimmerPanel_upvr (readonly)
		[10]: getIconSize_upvr (readonly)
		[11]: IconSize_upvr (readonly)
		[12]: ImageSetComponent_upvr (readonly)
		[13]: GenericTextLabel_upvr (readonly)
		[14]: Cryo_upvr (readonly)
		[15]: Interactable_upvr (readonly)
		[16]: HoverButtonBackground_upvr (readonly)
		[17]: EventConnection_upvr (readonly)
		[18]: RunService_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_6) -- Line 239
		--[[ Upvalues[19]:
			[1]: t_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_interface_result1_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: getContentStyle_upvr (copied, readonly)
			[6]: ControlState_upvr (copied, readonly)
			[7]: StandardButtonSize_upvr (copied, readonly)
			[8]: UIBloxConfig_upvr (copied, readonly)
			[9]: Roact_upvr (copied, readonly)
			[10]: ShimmerPanel_upvr (copied, readonly)
			[11]: getIconSize_upvr (copied, readonly)
			[12]: IconSize_upvr (copied, readonly)
			[13]: ImageSetComponent_upvr (copied, readonly)
			[14]: GenericTextLabel_upvr (copied, readonly)
			[15]: Cryo_upvr (copied, readonly)
			[16]: Interactable_upvr (copied, readonly)
			[17]: HoverButtonBackground_upvr (copied, readonly)
			[18]: EventConnection_upvr (copied, readonly)
			[19]: RunService_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		assert(t_upvr.table(arg1_6), "Style provider is missing.")
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [116] 74. Error Block 2 start (CF ANALYSIS FAILED)
		assert(any_interface_result1_upvr(arg1.props.textStateColorMap or arg1.props.contentStateColorMap), "textStateColorMap is missing or invalid.")
		-- KONSTANTERROR: [116] 74. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [125] 81. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [125] 81. Error Block 3 end (CF ANALYSIS FAILED)
	end)
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 518
	local var46
	if arg1.props.enableInputDelayed ~= arg2.enableInputDelayed then
		local tbl = {}
		if arg1.props.enableInputDelayed then
			var46 = 0
		else
			var46 = 1
		end
		tbl.targetLoadingProgress = var46
		arg1:setState(tbl)
	end
	if not arg1.state.isButtonUnfocused and arg3.isButtonUnfocused and arg1.state.targetLoadingProgress == 1 and arg1.props.enableInputDelayed then
		local tbl_3 = {}
		var46 = 0
		tbl_3.targetLoadingProgress = var46
		arg1:setState(tbl_3)
	end
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 536
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardedRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)