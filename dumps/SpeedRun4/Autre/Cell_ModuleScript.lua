-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:10
-- Luau version 6, Types version 3
-- Time taken: 0.009945 seconds

local Parent_2 = script.Parent.Parent
local Parent_3 = Parent_2.Parent
local Core = Parent_3.Core
local Parent = Parent_3.Parent
local t = require(Parent.t)
local Roact_upvr = require(Parent.Roact)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("Cell")
any_extend_result1_upvr.debugProps = require(Parent.enumerate)("debugProps", {"controlState"})
any_extend_result1_upvr.validateProps = t.strictInterface({
	head = t.table;
	tail = t.optional(t.table);
	background = t.optional(t.table);
	layoutOrder = t.optional(t.union(t.integer, require(Core.Utility.bindingValidator)(t.number)));
	size = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	horizontalPadding = t.optional(t.number);
	selectable = t.optional(t.boolean);
	layoutWraps = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	userInteractionEnabled = t.optional(t.boolean);
	onStateChanged = t.optional(t.callback);
	onActivated = t.optional(t.callback);
	onTouchTapped = t.optional(t.callback);
	[any_extend_result1_upvr.debugProps.controlState] = t.optional(ControlState_upvr.isEnumValue);
	[Roact_upvr.Change.AbsolutePosition] = t.optional(t.callback);
	[Roact_upvr.Ref] = t.optional(t.union(t.callback, t.table));
	forwardRef = t.optional(t.union(t.callback, t.table));
})
any_extend_result1_upvr.defaultProps = {
	isDisabled = false;
	userInteractionEnabled = true;
	horizontalPadding = 24;
}
function any_extend_result1_upvr.init(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	arg1:setState({
		controlState = ControlState_upvr.Initialize;
	})
	arg1.stateStyleMap = {
		[ControlState_upvr.Default] = "BackgroundDefault";
		[ControlState_upvr.Hover] = "BackgroundOnHover";
		[ControlState_upvr.Pressed] = "BackgroundOnPress";
	}
	function arg1.getBackgroundStyle(arg1_2, arg2) -- Line 88
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ControlState_upvr (copied, readonly)
		]]
		local var15 = arg1.stateStyleMap[arg1_2]
		if not var15 then
			var15 = arg1.stateStyleMap[ControlState_upvr.Default]
		end
		local module_2 = {
			Color = arg2.Theme[var15].Color;
			Transparency = arg2.Theme[var15].Transparency;
		}
		if arg1_2 == ControlState_upvr.Disabled then
			module_2.Transparency = 1
		end
		return module_2
	end
	function arg1.onStateChanged(arg1_3, arg2) -- Line 104
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_4 = {}
		tbl_4.controlState = arg2
		arg1:setState(tbl_4)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_3, arg2)
		end
	end
end
local withStyle_upvr = require(Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_2.SelectionImage.withSelectionCursorProvider)
function any_extend_result1_upvr.render(arg1) -- Line 114
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 115
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 116
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			return arg1:renderWithProviders(arg1_4, arg1_5)
		end)
	end)
end
local UIBloxConfig_upvr = require(Parent_3.UIBloxConfig)
local Interactable_upvr = require(Core.Control.Interactable)
local CursorKind_upvr = require(Parent_2.SelectionImage.CursorKind)
function any_extend_result1_upvr.renderWithProviders(arg1, arg2, arg3) -- Line 122
	--[[ Upvalues[6]:
		[1]: UIBloxConfig_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Interactable_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
		[6]: ControlState_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var26
	if not var26 then
		var26 = UDim2.fromScale(1, 1)
	end
	local tail = arg1.props.tail
	local var28_upvr
	if tail and arg1.props.userInteractionEnabled then
		var28_upvr = true
	else
		var28_upvr = false
	end
	local var30
	if UIBloxConfig_upvr.useFoundationInteractable and arg1.props.onActivated then
		function var30(...) -- Line 139
			--[[ Upvalues[2]:
				[1]: var28_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			if var28_upvr then
				arg1.props.onActivated(...)
			end
		end
	else
		var30 = arg1.props.onActivated
	end
	local var31 = arg1.props[any_extend_result1_upvr.debugProps.controlState]
	if not var31 then
		var31 = arg1.state.controlState
	end
	local any_getBackgroundStyle_result1 = arg1.getBackgroundStyle(var31, arg2)
	local module = {
		AnchorPoint = arg1.props.anchorPoint;
		LayoutOrder = arg1.props.layoutOrder;
		Position = arg1.props.position;
		Size = var26;
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		AutoButtonColor = false;
		Selectable = arg1.props.selectable;
	}
	local var34 = arg3
	if var34 then
		var34 = arg3(CursorKind_upvr.RoundedRectNoInset)
	end
	module.SelectionImageObject = var34
	module.isDisabled = var30.isDisabled
	var34 = arg1.onStateChanged
	local var35 = var34
	module.onStateChanged = var35
	if not UIBloxConfig_upvr.useFoundationInteractable then
		var35 = var28_upvr
	else
		var35 = nil
	end
	module.userInteractionEnabled = var35
	module[Roact_upvr.Event.Activated] = var30
	module[Roact_upvr.Event.TouchTap] = arg1.props.onTouchTapped
	module[Roact_upvr.Change.AbsolutePosition] = arg1.props[Roact_upvr.Change.AbsolutePosition]
	module[Roact_upvr.Ref] = arg1.props.forwardRef
	local module_4 = {}
	local tbl_5 = {}
	local background = arg1.props.background
	if not background then
		background = Roact_upvr.createElement
		background = background("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = any_getBackgroundStyle_result1.Color;
			BackgroundTransparency = any_getBackgroundStyle_result1.Transparency;
			BorderSizePixel = 0;
		})
	end
	tbl_5.Background = background
	local tbl_2 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween;
			Wraps = arg1.props.layoutWraps;
		});
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg1.props.horizontalPadding);
			PaddingRight = UDim.new(0, arg1.props.horizontalPadding);
		});
		CellHead = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.fromScale(0, 0.5);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AutomaticSize = Enum.AutomaticSize.XY;
			LayoutOrder = 1;
		}, {
			Head = arg1.props.head;
		});
	}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_6.Tail = tail
		local tbl_6 = {}
		tbl.LayoutOrder = 2
		tbl.AutomaticSize = Enum.AutomaticSize.XY
		tbl.BorderSizePixel = 0
		tbl.BackgroundTransparency = 1
		tbl.Position = UDim2.fromScale(1, 0.5)
		tbl.AnchorPoint = Vector2.new(1, 0.5)
		local tbl = {}
		return Roact_upvr.createElement("Frame", tbl, tbl_6)
	end
	if not tail or not INLINED() then
	end
	tbl_2.CellTail = nil
	tbl_5.CellContent = Roact_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = 2;
	}, tbl_2)
	module_4.CellBackground = Roact_upvr.createElement("Frame", {
		Size = var26;
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		ZIndex = -1;
	}, tbl_5)
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl_3.ZIndex = 100
		tbl_3.BackgroundTransparency = 0.5
		tbl_3.BackgroundColor3 = any_getBackgroundStyle_result1.Color
		tbl_3.BorderSizePixel = 0
		tbl_3.Size = UDim2.fromScale(1, 1)
		local tbl_3 = {}
		return Roact_upvr.createElement("Frame", tbl_3)
	end
	if var31 ~= ControlState_upvr.Disabled or not INLINED_2() then
	end
	module_4.DisabledMask = nil
	return Roact_upvr.createElement(Interactable_upvr, module, module_4)
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 231
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_3 = {}
	module_3.forwardRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_3))
end)