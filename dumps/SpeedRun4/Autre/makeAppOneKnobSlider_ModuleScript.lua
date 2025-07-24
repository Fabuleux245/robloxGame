-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:54
-- Luau version 6, Types version 3
-- Time taken: 0.002540 seconds

local Parent_4 = script.Parent
local Parent_2 = Parent_4.Parent
local Parent_3 = Parent_2.Parent
local Parent = Parent_3.Parent
local Roact_upvr = require(Parent.Roact)
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local Cryo_upvr = require(Parent.Cryo)
local function wrapStyleAndRef_upvr(arg1) -- Line 15, Named "wrapStyleAndRef"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return Roact_upvr.forwardRef(function(arg1_2, arg2) -- Line 16
		--[[ Upvalues[4]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 17
			--[[ Upvalues[5]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg2 (readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			local module = {}
			module.style = arg1_3
			module.forwardedRef = arg2
			return Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.join(arg1_2, module))
		end)
	end)
end
local makeAppSlider_upvr = require(Parent_4.makeAppSlider)
local t_upvr = require(Parent.t)
local validateStyle_upvr = require(Parent_2.Style.Validator.validateStyle)
local SliderTextInput_upvr = require(Parent_4.SliderTextInput)
return function(arg1) -- Line 28, Named "makeAppOneKnobSlider"
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: makeAppSlider_upvr (readonly)
		[3]: t_upvr (readonly)
		[4]: validateStyle_upvr (readonly)
		[5]: SliderTextInput_upvr (readonly)
		[6]: wrapStyleAndRef_upvr (readonly)
	]]
	local any_extend_result1 = Roact_upvr.PureComponent:extend("OneKnobAppSliderFor"..arg1)
	any_extend_result1.validateProps = t_upvr.strictInterface({
		value = t_upvr.number;
		min = t_upvr.number;
		max = t_upvr.number;
		onValueChanged = t_upvr.callback;
		onDragStart = t_upvr.optional(t_upvr.callback);
		onDragEnd = t_upvr.optional(t_upvr.callback);
		stepInterval = t_upvr.optional(t_upvr.numberPositive);
		textInputEnabled = t_upvr.optional(t_upvr.boolean);
		isDisabled = t_upvr.optional(t_upvr.boolean);
		width = t_upvr.optional(t_upvr.UDim);
		position = t_upvr.optional(t_upvr.UDim2);
		anchorPoint = t_upvr.optional(t_upvr.Vector2);
		layoutOrder = t_upvr.optional(t_upvr.integer);
		forwardedRef = t_upvr.optional(t_upvr.table);
		NextSelectionUp = t_upvr.optional(t_upvr.table);
		NextSelectionDown = t_upvr.optional(t_upvr.table);
		customTrack = t_upvr.optional(t_upvr.table);
		customKnobColorLower = t_upvr.optional(t_upvr.Color3);
		customPressedKnobShadowTransparencyLower = t_upvr.optional(t_upvr.number);
		customKnobHeight = t_upvr.optional(t_upvr.number);
		customKnobBorderSize = t_upvr.optional(t_upvr.number);
		customKnobBorderColor = t_upvr.optional(t_upvr.Color3);
		style = validateStyle_upvr;
		containerRef = t_upvr.optional(t_upvr.table);
	})
	any_extend_result1.defaultProps = {
		stepInterval = 1;
		width = UDim.new(1, 0);
		textInputEnabled = false;
	}
	local makeAppSlider_upvr_result1_upvr = makeAppSlider_upvr(arg1, false)
	function any_extend_result1.render(arg1_4) -- Line 86
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: makeAppSlider_upvr_result1_upvr (readonly)
			[3]: SliderTextInput_upvr (copied, readonly)
		]]
		local props = arg1_4.props
		local tbl = {
			value = props.value;
			min = props.min;
			max = props.max;
			stepInterval = props.stepInterval;
			isDisabled = props.isDisabled;
			onValueChanged = props.onValueChanged;
			onDragStartLower = props.onDragStart;
			onDragEnd = props.onDragEnd;
			style = props.style;
			forwardedRef = props.forwardedRef;
			NextSelectionUp = props.NextSelectionUp;
			NextSelectionDown = props.NextSelectionDown;
			customTrack = props.customTrack;
			customKnobHeight = props.customKnobHeight;
			customKnobBorderColor = props.customKnobBorderColor;
			customKnobBorderSize = props.customKnobBorderSize;
			customKnobColorLower = props.customKnobColorLower;
			customPressedKnobShadowTransparencyLower = props.customPressedKnobShadowTransparencyLower;
			containerRef = props.containerRef;
		}
		if not props.textInputEnabled then
			tbl.width = props.width
			tbl.position = props.position
			tbl.anchorPoint = props.anchorPoint
			tbl.layoutOrder = props.layoutOrder
			return Roact_upvr.createElement(makeAppSlider_upvr_result1_upvr, tbl)
		end
		tbl.width = UDim.new(1, -68)
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(props.width.Scale, props.width.Offset, 0, 44);
			AnchorPoint = props.anchorPoint;
			LayoutOrder = props.layoutOrder;
			Position = props.position;
		}, {
			Slider = Roact_upvr.createElement(makeAppSlider_upvr_result1_upvr, tbl);
			TextInput = Roact_upvr.createElement(SliderTextInput_upvr, {
				position = UDim2.new(1, 0, 0.5, 0);
				anchorPoint = Vector2.new(1, 0.5);
				value = props.value;
				min = props.min;
				max = props.max;
				disabled = props.isDisabled;
				stepInterval = props.stepInterval;
				onValueChanged = props.onValueChanged;
			});
		})
	end
	return wrapStyleAndRef_upvr(any_extend_result1)
end