-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:19
-- Luau version 6, Types version 3
-- Time taken: 0.004406 seconds

local Parent = script.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local ControlState_upvr = require(Parent_3.Core.Control.Enum.ControlState)
local validateColorInfo = require(Parent_3.Core.Style.Validator.validateColorInfo)
local any_extend_result1 = Roact_upvr.Component:extend("BaseKnob")
local tbl_5_upvr = {
	[ControlState_upvr.Default] = {
		Color = Color3.fromRGB(0, 0, 0);
		Transparency = 0.7;
	};
	[ControlState_upvr.Hover] = {
		Color = Color3.fromRGB(0, 0, 0);
		Transparency = 0.5;
	};
}
local tbl_2_upvr = {
	[ControlState_upvr.Default] = UDim2.fromOffset(48, 48);
	[ControlState_upvr.Hover] = UDim2.fromOffset(48, 48);
	[ControlState_upvr.Pressed] = UDim2.fromOffset(0, 0);
	[ControlState_upvr.Disabled] = UDim2.fromOffset(0, 0);
	[ControlState_upvr.Selected] = UDim2.fromOffset(52, 52);
	[ControlState_upvr.SelectedPressed] = UDim2.fromOffset(42, 42);
}
local tbl_3_upvr = {
	[ControlState_upvr.Default] = "component_assets/dropshadow_28";
	[ControlState_upvr.Hover] = "component_assets/dropshadow_28";
	[ControlState_upvr.Selected] = "component_assets/circle_52_stroke_3";
	[ControlState_upvr.SelectedPressed] = "component_assets/circle_42_stroke_3";
}
any_extend_result1.validateProps = t.interface({
	onStateChanged = t.optional(t.callback);
	isDisabled = t.optional(t.boolean);
	userInteractionEnabled = t.optional(t.boolean);
	onActivated = t.optional(t.callback);
	anchorPoint = t.optional(t.Vector2);
	layoutOrder = t.optional(t.number);
	position = t.optional(t.UDim2);
	colorMap = t.strictInterface({
		[ControlState_upvr.Default] = validateColorInfo;
		[ControlState_upvr.Hover] = validateColorInfo;
		[ControlState_upvr.Pressed] = validateColorInfo;
		[ControlState_upvr.Disabled] = validateColorInfo;
		[ControlState_upvr.Selected] = validateColorInfo;
		[ControlState_upvr.SelectedPressed] = validateColorInfo;
	});
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	controlRef = t.optional(t.table);
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	userInteractionEnabled = true;
	isDisabled = false;
}
function any_extend_result1.init(arg1) -- Line 95
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
	})
	function arg1.onStateChanged(arg1_2, arg2) -- Line 100
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.controlState = arg2
		arg1:setState(tbl_4)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_2, arg2)
		end
	end
end
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent.ImageSet.Images)
local RoactGamepad_upvr = require(Parent_2.RoactGamepad)
local Interactable_upvr = require(Parent_3.Core.Control.Interactable)
function any_extend_result1.render(arg1) -- Line 110
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: Images_upvr (readonly)
		[9]: RoactGamepad_upvr (readonly)
		[10]: Interactable_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 111
		--[[ Upvalues[10]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
			[3]: tbl_2_upvr (copied, readonly)
			[4]: tbl_3_upvr (copied, readonly)
			[5]: tbl_5_upvr (copied, readonly)
			[6]: Roact_upvr (copied, readonly)
			[7]: ImageSetComponent_upvr (copied, readonly)
			[8]: Images_upvr (copied, readonly)
			[9]: RoactGamepad_upvr (copied, readonly)
			[10]: Interactable_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var26
		if not arg1.props.colorMap[arg1.state.controlState] then
			local var27 = arg1.props.colorMap[ControlState_upvr.Default]
		end
		local var28 = tbl_2_upvr[arg1.state.controlState]
		if not var28 then
			var28 = tbl_2_upvr[ControlState_upvr.Default]
		end
		local var29 = tbl_3_upvr[arg1.state.controlState]
		if not var29 then
			var29 = tbl_3_upvr[ControlState_upvr.Default]
		end
		local var30 = true
		if arg1.state.controlState ~= ControlState_upvr.Selected then
			if arg1.state.controlState ~= ControlState_upvr.SelectedPressed then
				var30 = false
			else
				var30 = true
			end
		end
		if not tbl_5_upvr[arg1.state.controlState] then
		end
		if var30 then
			local SelectionCursor = arg1_3.Theme.SelectionCursor
		end
		local module = {}
		local tbl = {
			Size = var28;
		}
		if not var30 then
			var26 = 2
		else
			var26 = 0
		end
		tbl.Position = UDim2.new(0.5, 0, 0.5, var26)
		tbl.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl.Image = Images_upvr[var29]
		tbl.ImageColor3 = SelectionCursor.Color
		tbl.ImageTransparency = SelectionCursor.Transparency
		tbl.Active = true
		tbl.BackgroundTransparency = 1
		module.KnobShadow = Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl)
		module.KnobButton = Roact_upvr.createElement(RoactGamepad_upvr.Focusable[Interactable_upvr], {
			Size = UDim2.fromScale(1, 1);
			isDisabled = arg1.props.isDisabled;
			onStateChanged = arg1.onStateChanged;
			userInteractionEnabled = arg1.props.userInteractionEnabled;
			BackgroundTransparency = 1;
			Image = Images_upvr["component_assets/circle_29"];
			ImageColor3 = var27.Color;
			ImageTransparency = var27.Transparency;
			[Roact_upvr.Ref] = arg1.props.forwardedRef;
			[Roact_upvr.Event.Activated] = arg1.props.onActivated;
			NextSelectionLeft = arg1.props.NextSelectionLeft;
			NextSelectionRight = arg1.props.NextSelectionRight;
			NextSelectionUp = arg1.props.NextSelectionUp;
			NextSelectionDown = arg1.props.NextSelectionDown;
		})
		return Roact_upvr.createElement("Frame", {
			AnchorPoint = arg1.props.anchorPoint;
			LayoutOrder = arg1.props.layoutOrder;
			Position = arg1.props.position;
			BackgroundTransparency = 1;
			Size = UDim2.fromOffset(28, 28);
		}, module)
	end)
end
return any_extend_result1