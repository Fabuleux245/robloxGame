-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:04
-- Luau version 6, Types version 3
-- Time taken: 0.002685 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Images = require(Parent.UIBlox.App.ImageSet.Images)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("SmallRadioButtonCell")
any_extend_result1_upvr.validateProps = t.strictInterface({
	id = t.string;
	text = t.optional(t.string);
	onActivated = t.optional(t.callback);
	isSelected = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	useDefaultControlState = t.optional(t.boolean);
	layoutOrder = t.optional(t.number);
	controlRef = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	SelectionImageObject = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	text = "";
	isSelected = false;
}
function any_extend_result1_upvr.init(arg1) -- Line 59
	function arg1.onSetValue() -- Line 60
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.onActivated(arg1.props.id)
	end
end
local GenericSelectionCell_upvr = require(Parent.UIBlox.Core.Cell.GenericSelectionCell)
local component_assets_circle_24_stroke_1_upvr = Images["component_assets/circle_24_stroke_1"]
local component_assets_circle_16_upvr = Images["component_assets/circle_16"]
function any_extend_result1_upvr.render(arg1) -- Line 65
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: GenericSelectionCell_upvr (readonly)
		[3]: component_assets_circle_24_stroke_1_upvr (readonly)
		[4]: component_assets_circle_16_upvr (readonly)
	]]
	assert(arg1.validateProps(arg1.props))
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 56);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
	}, {
		GenericSelectionCell = Roact_upvr.createElement(GenericSelectionCell_upvr, {
			isSelected = arg1.props.isSelected;
			isDisabled = arg1.props.isDisabled;
			defaultImage = component_assets_circle_24_stroke_1_upvr;
			selectedImage = component_assets_circle_16_upvr;
			defaultImageSize = 24;
			selectedImageSize = 16;
			text = arg1.props.text;
			onActivated = arg1.onSetValue;
			useDefaultControlState = arg1.props.useDefaultControlState;
			[Roact_upvr.Ref] = arg1.props.controlRef;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
			NextSelectionLeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			SelectionImageObject = arg1.props.SelectionImageObject;
		});
	})
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 95
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.controlRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)