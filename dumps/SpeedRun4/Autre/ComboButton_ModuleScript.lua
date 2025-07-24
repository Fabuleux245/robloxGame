-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:00
-- Luau version 6, Types version 3
-- Time taken: 0.003268 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent
local Core = Parent_2.Core
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local validateImage = require(Core.ImageSet.Validator.validateImage)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ComboButton")
local tbl_2_upvr = {
	[ControlState_upvr.Default] = "ContextualPrimaryDefault";
	[ControlState_upvr.Hover] = "ContextualPrimaryOnHover";
}
local tbl_upvr = {
	[ControlState_upvr.Default] = "ContextualPrimaryContent";
}
any_extend_result1.validateProps = t.strictInterface({
	button = t.strictInterface({
		icon = t.optional(validateImage);
		text = t.optional(t.string);
		isDisabled = t.optional(t.boolean);
		onActivated = t.callback;
	});
	overflow = t.strictInterface({
		icon = t.optional(validateImage);
		isDisabled = t.optional(t.boolean);
		onActivated = t.callback;
	});
	position = t.optional(t.UDim2);
	size = t.optional(t.UDim2);
	layoutOrder = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	size = UDim2.fromScale(1, 1);
}
function any_extend_result1.init(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		buttonControlState = ControlState_upvr.Initialize;
		overflowControlState = ControlState_upvr.Initialize;
	})
	function arg1.onButtonStateChanged(arg1_2, arg2) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.buttonControlState = arg2
		arg1:setState(tbl_4)
	end
	function arg1.onOverflowStateChanged(arg1_3, arg2) -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_5 = {}
		tbl_5.overflowControlState = arg2
		arg1:setState(tbl_5)
	end
end
local withStyle_upvr = require(Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_3.SelectionImage.withSelectionCursorProvider)
local withCursor_upvr = require(Parent_3.SelectionCursor.withCursor)
function any_extend_result1.render(arg1) -- Line 83
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
		[3]: withCursor_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 84
		--[[ Upvalues[3]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: withCursor_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 85
			--[[ Upvalues[3]:
				[1]: withCursor_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_4 (readonly)
			]]
			return withCursor_upvr(function(arg1_6) -- Line 86
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_4 (copied, readonly)
				]]
				return arg1:renderWithProviders(arg1_4, nil, arg1_6.getCursor)
			end)
		end)
	end)
end
local GenericButton_upvr = require(Core.Button.GenericButton)
local Images_upvr = require(Parent_3.ImageSet.Images)
local udim_upvr = UDim.new(0, 8)
local CursorKind_upvr = require(Parent_3.SelectionImage.CursorKind)
function any_extend_result1.renderWithProviders(arg1, arg2, arg3, arg4) -- Line 93
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: GenericButton_upvr (readonly)
		[3]: Images_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: udim_upvr (readonly)
		[7]: CursorKind_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.new(1, -40, 1, 0);
		buttonImage = Images_upvr["component_assets/bulletLeft_17"];
		buttonStateColorMap = tbl_2_upvr;
		contentStateColorMap = tbl_upvr;
		hoverImage = Images_upvr["component_assets/bulletLeft_17"];
		icon = arg1.props.button.icon;
		isDisabled = arg1.props.button.isDisabled;
		isHoverBackgroundEnabled = true;
		onActivated = arg1.props.button.onActivated;
	}
	local onButtonStateChanged_2 = arg1.onButtonStateChanged
	tbl.onStateChanged = onButtonStateChanged_2
	if arg4 then
		onButtonStateChanged_2 = arg4(udim_upvr)
	else
		onButtonStateChanged_2 = arg3(CursorKind_upvr.RoundedRectNoInset)
	end
	tbl.SelectionImageObject = onButtonStateChanged_2
	tbl.text = arg1.props.button.text
	tbl.ZIndex = 0
	module.Button = Roact_upvr.createElement(GenericButton_upvr, tbl)
	local tbl_3 = {
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.fromScale(1, 0);
		Size = UDim2.new(0, 39, 1, 0);
		ZIndex = 0;
		buttonImage = Images_upvr["component_assets/bulletRight_17"];
		buttonStateColorMap = tbl_2_upvr;
		contentStateColorMap = tbl_upvr;
		hoverImage = Images_upvr["component_assets/bulletRight_17"];
	}
	local icon = arg1.props.overflow.icon
	if not icon then
		icon = Images_upvr["icons/actions/truncationExpand"]
	end
	tbl_3.icon = icon
	tbl_3.isDisabled = arg1.props.overflow.isDisabled
	tbl_3.isHoverBackgroundEnabled = true
	tbl_3.onActivated = arg1.props.overflow.onActivated
	local onOverflowStateChanged_2 = arg1.onOverflowStateChanged
	tbl_3.onStateChanged = onOverflowStateChanged_2
	if arg4 then
		onOverflowStateChanged_2 = arg4(udim_upvr)
	else
		onOverflowStateChanged_2 = arg3(CursorKind_upvr.RoundedRectNoInset)
	end
	tbl_3.SelectionImageObject = onOverflowStateChanged_2
	module.Overflow = Roact_upvr.createElement(GenericButton_upvr, tbl_3)
	return Roact_upvr.createElement("Frame", {
		LayoutOrder = arg1.props.layoutOrder;
		Position = arg1.props.position;
		Size = arg1.props.size;
		BackgroundTransparency = 1;
	}, module)
end
return any_extend_result1