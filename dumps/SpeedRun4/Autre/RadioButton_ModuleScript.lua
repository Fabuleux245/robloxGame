-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:57
-- Luau version 6, Types version 3
-- Time taken: 0.002573 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("RadioButton")
any_extend_result1_upvr.validateProps = t.strictInterface({
	text = t.string;
	isSelected = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	onActivated = t.callback;
	size = t.UDim2;
	layoutOrder = t.optional(t.number);
	id = t.number;
	NextSelectionDown = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	SelectionImageObject = t.optional(t.table);
	forwardRef = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	text = "RadioButton Text";
	isSelected = false;
	isDisabled = false;
	layoutOrder = 0;
}
function any_extend_result1_upvr.init(arg1) -- Line 49
	function arg1.onSetValue() -- Line 50
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.props.isDisabled then
			arg1.props.onActivated(arg1.props.id)
		end
	end
end
local withStyle_upvr = require(Parent.UIBlox.Core.Style.withStyle)
local Images_upvr = require(Parent.UIBlox.App.ImageSet.Images)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local InputButton_upvr = require(Parent.UIBlox.Core.InputButton.InputButton)
function any_extend_result1_upvr.render(arg1) -- Line 57
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: RoactGamepad_upvr (readonly)
		[4]: InputButton_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 58
		--[[ Upvalues[5]:
			[1]: Images_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: RoactGamepad_upvr (copied, readonly)
			[4]: InputButton_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_2.Theme
		local Transparency = Theme.TextDefault.Transparency
		local var15
		if arg1.props.isDisabled then
			Transparency = 0.5
		end
		if arg1.props.isSelected then
			var15 = Theme.SystemPrimaryDefault.Color
		else
		end
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[InputButton_upvr], {
			text = arg1.props.text;
			onActivated = arg1.onSetValue;
			size = arg1.props.size;
			image = Images_upvr["component_assets/circle_24_stroke_1"];
			imageColor = var15;
			fillImage = Images_upvr["component_assets/circle_16"];
			fillImageSize = UDim2.new(0, 0, 0, 0);
			fillImageColor = Theme.SystemPrimaryDefault.Color;
			selectedColor = Theme.SystemPrimaryDefault.Color;
			textColor = Theme.TextDefault.Color;
			transparency = Transparency;
			layoutOrder = arg1.props.layoutOrder;
			isDisabled = arg1.props.isDisabled;
			[Roact_upvr.Ref] = arg1.props.forwardRef;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
			NextSelectionLeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			SelectionImageObject = arg1.props.SelectionImageObject;
		})
	end)
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 112
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)