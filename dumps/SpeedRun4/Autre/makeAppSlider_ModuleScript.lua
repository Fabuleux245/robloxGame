-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:55
-- Luau version 6, Types version 3
-- Time taken: 0.005524 seconds

local Parent = script.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local tbl_upvr = {
	frequency = 5;
}
local Roact_upvr = require(Parent_2.Roact)
local divideTransparency_upvr = require(Parent_3.Utility.divideTransparency)
local Colors_upvr = require(Parent.Style.Colors)
local lerp_upvr = require(Parent_3.Utility.lerp)
local Otter_upvr = require(Parent_2.Otter)
local Images_upvr = require(Parent.ImageSet.Images)
local GenericSlider_upvr = require(Parent_3.Core.Slider.GenericSlider)
return function(arg1, arg2) -- Line 21, Named "makeAppSlider"
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: divideTransparency_upvr (readonly)
		[3]: Colors_upvr (readonly)
		[4]: lerp_upvr (readonly)
		[5]: Otter_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: GenericSlider_upvr (readonly)
	]]
	local any_extend_result1 = Roact_upvr.PureComponent:extend("AppSliderFor"..arg1)
	any_extend_result1.defaultProps = {
		textInputEnabled = false;
		stepInterval = 1;
		width = UDim.new(1, 0);
		customPressedKnobShadowTransparencyLower = 1;
	}
	function any_extend_result1.init(arg1_2) -- Line 32
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: divideTransparency_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Colors_upvr (copied, readonly)
			[5]: lerp_upvr (copied, readonly)
			[6]: Otter_upvr (copied, readonly)
			[7]: tbl_upvr (copied, readonly)
		]]
		local any_createBinding_result1_3, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
		arg1_2.pressedProgressLower = any_createBinding_result1_3
		local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
		arg1_2.pressedProgressUpper = any_createBinding_result1
		local any_createBinding_result1_2, any_createBinding_result2_3 = Roact_upvr.createBinding(arg1_2.props.isDisabled)
		arg1_2.disabled = any_createBinding_result1_2
		arg1_2.setDisabled = any_createBinding_result2_3
		local any_createBinding_result1_4, any_createBinding_result2_4 = Roact_upvr.createBinding(arg1_2.props.style)
		arg1_2.style = any_createBinding_result1_4
		arg1_2.setStyle = any_createBinding_result2_4
		arg1_2.wasUnmounted = false
		local any_joinBindings_result1 = Roact_upvr.joinBindings({
			disabled = arg1_2.disabled;
			pressedProgressLower = arg1_2.pressedProgressLower;
			pressedProgressUpper = arg1_2.pressedProgressUpper;
			style = arg1_2.style;
		})
		arg1_2.trackColor = any_joinBindings_result1:map(function(arg1_3) -- Line 48
			return arg1_3.style.Theme.UIMuted.Color
		end)
		arg1_2.trackTransparency = any_joinBindings_result1:map(function(arg1_4) -- Line 52
			--[[ Upvalues[1]:
				[1]: divideTransparency_upvr (copied, readonly)
			]]
			local UIMuted = arg1_4.style.Theme.UIMuted
			if arg1_4.disabled then
				UIMuted = 2
			else
				UIMuted = 1
			end
			return divideTransparency_upvr(UIMuted.Transparency, UIMuted)
		end)
		arg1_2.trackFillColor = any_joinBindings_result1:map(function(arg1_5) -- Line 56
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			return arg1_5.style.Theme[arg1].Color
		end)
		arg1_2.trackFillTransparency = any_joinBindings_result1:map(function(arg1_6) -- Line 60
			--[[ Upvalues[2]:
				[1]: divideTransparency_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local var29 = arg1_6.style.Theme[arg1]
			if arg1_6.disabled then
				var29 = 2
			else
				var29 = 1
			end
			return divideTransparency_upvr(var29.Transparency, var29)
		end)
		arg1_2.knobColorLower = any_joinBindings_result1:map(function(arg1_7) -- Line 64
			--[[ Upvalues[2]:
				[1]: Colors_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			if arg1_7.disabled then
				return Colors_upvr.Pumice
			end
			local Pumice_2 = Colors_upvr.Pumice
			if arg1 ~= "SystemPrimaryDefault" then
				Pumice_2 = arg1_7.style.Theme[arg1].Color
			end
			return Color3.new(1, 1, 1):lerp(Pumice_2, arg1_7.pressedProgressLower)
		end)
		arg1_2.knobColorUpper = any_joinBindings_result1:map(function(arg1_8) -- Line 79
			--[[ Upvalues[2]:
				[1]: Colors_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			if arg1_8.disabled then
				return Colors_upvr.Pumice
			end
			local Pumice = Colors_upvr.Pumice
			if arg1 ~= "SystemPrimaryDefault" then
				Pumice = arg1_8.style.Theme[arg1].Color
			end
			return Color3.new(1, 1, 1):lerp(Pumice, arg1_8.pressedProgressUpper)
		end)
		arg1_2.knobTransparency = any_joinBindings_result1:map(function(arg1_9) -- Line 94
			--[[ Upvalues[2]:
				[1]: divideTransparency_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			local var35 = arg1_9.style.Theme[arg1]
			if arg1_9.disabled then
				var35 = 2
			else
				var35 = 1
			end
			return divideTransparency_upvr(var35.Transparency, var35)
		end)
		arg1_2.knobShadowTransparencyLower = any_joinBindings_result1:map(function(arg1_10) -- Line 98
			--[[ Upvalues[2]:
				[1]: arg1_2 (readonly)
				[2]: lerp_upvr (copied, readonly)
			]]
			if arg1_10.disabled then
				return 1
			end
			return lerp_upvr(arg1_10.style.Theme.DropShadow.Transparency, arg1_2.props.customPressedKnobShadowTransparencyLower, arg1_10.pressedProgressLower)
		end)
		arg1_2.knobShadowTransparencyUpper = any_joinBindings_result1:map(function(arg1_11) -- Line 107
			--[[ Upvalues[1]:
				[1]: lerp_upvr (copied, readonly)
			]]
			if arg1_11.disabled then
				return 1
			end
			return lerp_upvr(arg1_11.style.Theme.DropShadow.Transparency, 1, arg1_11.pressedProgressUpper)
		end)
		arg1_2.pressedMotorLower = Otter_upvr.createSingleMotor(0)
		arg1_2.pressedMotorLower:onStep(any_createBinding_result2_2)
		arg1_2.pressedMotorUpper = Otter_upvr.createSingleMotor(0)
		arg1_2.pressedMotorUpper:onStep(any_createBinding_result2)
		function arg1_2.onDragStartLower() -- Line 121
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: Otter_upvr (copied, readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			if arg1_2.props.onDragStartLower then
				arg1_2.props.onDragStartLower()
			end
			if not arg1_2.wasUnmounted then
				arg1_2.pressedMotorLower:setGoal(Otter_upvr.spring(1, tbl_upvr))
			end
		end
		function arg1_2.onDragStartUpper() -- Line 131
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: Otter_upvr (copied, readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			if arg1_2.props.onDragStartUpper then
				arg1_2.props.onDragStartUpper()
			end
			if not arg1_2.wasUnmounted then
				arg1_2.pressedMotorUpper:setGoal(Otter_upvr.spring(1, tbl_upvr))
			end
		end
		function arg1_2.onDragEnd() -- Line 141
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: Otter_upvr (copied, readonly)
				[3]: tbl_upvr (copied, readonly)
			]]
			if arg1_2.props.onDragEnd then
				arg1_2.props.onDragEnd()
			end
			if not arg1_2.wasUnmounted then
				arg1_2.pressedMotorLower:setGoal(Otter_upvr.spring(0, tbl_upvr))
				arg1_2.pressedMotorUpper:setGoal(Otter_upvr.spring(0, tbl_upvr))
			end
		end
	end
	function any_extend_result1.render(arg1_12) -- Line 153
		--[[ Upvalues[4]:
			[1]: Images_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: GenericSlider_upvr (copied, readonly)
		]]
		local props = arg1_12.props
		local customKnobColorLower = props.customKnobColorLower
		if not customKnobColorLower then
			customKnobColorLower = arg1_12.knobColorLower
		end
		local module = {
			min = props.min;
			max = props.max;
			stepInterval = props.stepInterval;
			isDisabled = props.isDisabled;
			width = props.width;
			position = props.position;
			anchorPoint = props.anchorPoint;
			layoutOrder = props.layoutOrder;
			onValueChanged = props.onValueChanged;
			onDragStartLower = arg1_12.onDragStartLower;
			onDragStartUpper = arg1_12.onDragStartUpper;
			onDragEnd = arg1_12.onDragEnd;
			trackImage = Images_upvr["component_assets/circle_16"];
			trackColor = arg1_12.trackColor;
			trackTransparency = arg1_12.trackTransparency;
			trackSliceCenter = Rect.new(8, 8, 8, 8);
			trackFillImage = Images_upvr["component_assets/circle_16"];
			trackFillColor = arg1_12.trackFillColor;
			trackFillTransparency = arg1_12.trackFillTransparency;
			trackFillSliceCenter = Rect.new(8, 8, 8, 8);
			knobImage = Images_upvr["component_assets/circle_28_padding_10"];
			knobColorLower = customKnobColorLower;
			knobColorUpper = arg1_12.knobColorUpper;
			knobTransparency = arg1_12.knobTransparency;
			knobImagePadding = 10;
			knobShadowImage = Images_upvr["component_assets/dropshadow_28"];
			knobShadowTransparencyLower = arg1_12.knobShadowTransparencyLower;
			knobShadowTransparencyUpper = arg1_12.knobShadowTransparencyUpper;
			[Roact_upvr.Ref] = props.forwardedRef;
			NextSelectionUp = props.NextSelectionUp;
			NextSelectionDown = props.NextSelectionDown;
			focusController = props.focusController;
			customTrack = props.customTrack;
			customKnobHeight = props.customKnobHeight;
			customKnobBorderSize = props.customKnobBorderSize;
			customKnobBorderColor = props.customKnobBorderColor;
			containerRef = props.containerRef;
		}
		if arg2 then
			module.upperValue = props.upperValue
			module.lowerValue = props.lowerValue
		else
			module.lowerValue = props.value
		end
		return Roact_upvr.createElement(GenericSlider_upvr, module)
	end
	function any_extend_result1.didMount(arg1_13) -- Line 217
		arg1_13.pressedMotorLower:start()
		arg1_13.pressedMotorUpper:start()
	end
	function any_extend_result1.didUpdate(arg1_14, arg2_2) -- Line 222
		--[[ Upvalues[2]:
			[1]: Otter_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
		]]
		if arg2_2.style ~= arg1_14.props.style then
			arg1_14.setStyle(arg1_14.props.style)
		end
		if arg2_2.isDisabled ~= arg1_14.props.isDisabled then
			arg1_14.setDisabled(arg1_14.props.isDisabled)
			if arg1_14.props.isDisabled then
				arg1_14.pressedMotorLower:setGoal(Otter_upvr.spring(0, tbl_upvr))
				arg1_14.pressedMotorUpper:setGoal(Otter_upvr.spring(0, tbl_upvr))
			end
		end
	end
	function any_extend_result1.willUnmount(arg1_15) -- Line 237
		arg1_15.wasUnmounted = true
		arg1_15.pressedMotorLower:destroy()
		arg1_15.pressedMotorUpper:destroy()
	end
	return any_extend_result1
end