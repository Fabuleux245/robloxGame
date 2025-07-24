-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:55
-- Luau version 6, Types version 3
-- Time taken: 0.001624 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent_4 = Parent_2.Parent
local Parent = Parent_4.Parent
local Roact_upvr = require(Parent.Roact)
local withStyle_upvr = require(Parent_4.Core.Style.withStyle)
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
local makeAppSlider_upvr = require(Parent_3.makeAppSlider)
local t_upvr = require(Parent.t)
local validateStyle_upvr = require(Parent_2.Style.Validator.validateStyle)
return function(arg1) -- Line 28, Named "makeAppTwoKnobSlider"
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: makeAppSlider_upvr (readonly)
		[3]: t_upvr (readonly)
		[4]: validateStyle_upvr (readonly)
		[5]: wrapStyleAndRef_upvr (readonly)
	]]
	local any_extend_result1 = Roact_upvr.PureComponent:extend("TwoKnobAppSliderFor"..arg1)
	any_extend_result1.validateProps = t_upvr.intersection(t_upvr.strictInterface({
		lowerValue = t_upvr.number;
		upperValue = t_upvr.number;
		min = t_upvr.number;
		max = t_upvr.number;
		stepInterval = t_upvr.optional(t_upvr.numberPositive);
		onValueChanged = t_upvr.callback;
		onDragStartLower = t_upvr.optional(t_upvr.callback);
		onDragStartUpper = t_upvr.optional(t_upvr.callback);
		onDragEnd = t_upvr.optional(t_upvr.callback);
		isDisabled = t_upvr.optional(t_upvr.boolean);
		width = t_upvr.optional(t_upvr.UDim);
		position = t_upvr.optional(t_upvr.UDim2);
		anchorPoint = t_upvr.optional(t_upvr.Vector2);
		layoutOrder = t_upvr.optional(t_upvr.integer);
		forwardedRef = t_upvr.optional(t_upvr.table);
		NextSelectionUp = t_upvr.optional(t_upvr.table);
		NextSelectionDown = t_upvr.optional(t_upvr.table);
		focusController = t_upvr.optional(t_upvr.table);
		style = validateStyle_upvr;
	}), function(arg1_4) -- Line 76, Named "valueValidator"
		if arg1_4.upperValue < arg1_4.lowerValue then
			return false, "The upper value must be greater than or equal to the lower"
		end
		return true
	end)
	any_extend_result1.defaultProps = {
		stepInterval = 1;
		width = UDim.new(1, 0);
	}
	local makeAppSlider_upvr_result1_upvr = makeAppSlider_upvr(arg1, true)
	function any_extend_result1.render(arg1_5) -- Line 91
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: makeAppSlider_upvr_result1_upvr (readonly)
		]]
		return Roact_upvr.createElement(makeAppSlider_upvr_result1_upvr, arg1_5.props)
	end
	return wrapStyleAndRef_upvr(any_extend_result1)
end