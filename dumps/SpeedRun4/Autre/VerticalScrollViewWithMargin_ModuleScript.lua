-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:14
-- Luau version 6, Types version 3
-- Time taken: 0.006604 seconds

local Parent = script.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Cryo_upvr = require(Parent_2.Cryo)
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local tbl_4_upvr = {
	frequency = 3;
	dampingRatio = 1.5;
}
local any_extend_result1_upvr = Roact_upvr.Component:extend("VerticalScrollView")
any_extend_result1_upvr.validateProps = t.strictInterface({
	size = t.optional(t.UDim2);
	position = t.optional(t.UDim2);
	elasticBehavior = t.optional(t.EnumItem);
	canvasSizeY = t.optional(t.UDim);
	useAutomaticCanvasSize = t.optional(t.boolean);
	paddingHorizontal = t.optional(t.number);
	paddingTop = t.optional(t.number);
	isGamepadFocusable = t.optional(t.boolean);
	Selectable = t.optional(t.boolean);
	[Roact_upvr.Change.CanvasPosition] = t.optional(t.callback);
	[Roact_upvr.Change.CanvasSize] = t.optional(t.callback);
	scrollingFrameRef = t.optional(t.table);
	onSelectionChanged = t.optional(t.callback);
	CanvasPosition = t.optional(t.union(t.table, t.Vector2));
	ScrollingEnabled = t.optional(t.boolean);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	[Roact_upvr.Children] = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	size = UDim2.new(1, 0, 1, 0);
	canvasSizeY = UDim.new(2, 0);
	useAutomaticCanvasSize = false;
	isGamepadFocusable = false;
	Selectable = true;
}
local Otter_upvr = require(Parent_2.Otter)
local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local getPageMargin_upvr = require(Parent_3.App.Container.getPageMargin)
function any_extend_result1_upvr.init(arg1) -- Line 89
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: getPageMargin_upvr (readonly)
	]]
	arg1:setState({
		scrollBarThickness = 0;
		scrollingWithTouch = false;
	})
	local any_createBinding_result1, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.scrollBarImageTransparency = any_createBinding_result1
	arg1.updateScrollBarImageTransparency = any_createBinding_result2_2
	arg1.scrollBarImageTransparencyMotor = Otter_upvr.createSingleMotor(0)
	arg1.scrollBarImageTransparencyMotor:onStep(arg1.updateScrollBarImageTransparency)
	arg1.lastTimeCanvasPositionChanged = tick()
	arg1.waitToHideSidebarConnection = nil
	function arg1.waitToHideSidebar() -- Line 102
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_4_upvr (copied, readonly)
		]]
		if 0.7 < tick() - arg1.lastTimeCanvasPositionChanged then
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_4_upvr))
			arg1.disconnectWaitToHideSidebar()
		end
	end
	function arg1.disconnectWaitToHideSidebar() -- Line 110
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.waitToHideSidebarConnection then
			arg1.waitToHideSidebarConnection:Disconnect()
			arg1.waitToHideSidebarConnection = nil
		end
	end
	function arg1.inputBegan(arg1_2, arg2) -- Line 116
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseMovement then
			arg1.disconnectWaitToHideSidebar()
			arg1:setState({
				scrollBarThickness = 8;
			})
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(0))
		end
	end
	function arg1.inputEnded(arg1_3, arg2) -- Line 125
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseMovement then
			arg1.disconnectWaitToHideSidebar()
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(1))
		end
	end
	function arg1.canvasPosition(arg1_4) -- Line 131
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: Otter_upvr (copied, readonly)
			[4]: RunService_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
		]]
		arg1.lastTimeCanvasPositionChanged = tick()
		if not arg1.waitToHideSidebarConnection and UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Touch then
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(0))
			arg1:setState({
				scrollBarThickness = 2;
			})
			arg1.waitToHideSidebarConnection = RunService_upvr.Heartbeat:Connect(arg1.waitToHideSidebar)
		end
		if arg1.props[Roact_upvr.Change.CanvasPosition] then
			arg1.props[Roact_upvr.Change.CanvasPosition](arg1_4)
		end
	end
	function arg1.onGamepadFocused() -- Line 146
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(0))
		arg1:setState({
			scrollBarThickness = 2;
		})
	end
	function arg1.onGamepadFocusLost() -- Line 153
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(1))
	end
	arg1.parentFrameRef = Roact_upvr.createRef()
	local any_createBinding_result1_2, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.paddingBinding = any_createBinding_result1_2
	arg1.updatePaddingBinding = any_createBinding_result2
	function arg1.getPadding(arg1_5) -- Line 160
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: getPageMargin_upvr (copied, readonly)
		]]
		local var31_upvw = arg1_5 or 0
		if arg1.props.paddingHorizontal then
			return UDim.new(0, math.max(0, arg1.props.paddingHorizontal - var31_upvw))
		end
		return arg1.paddingBinding:map(function(arg1_6) -- Line 166
			--[[ Upvalues[2]:
				[1]: getPageMargin_upvr (copied, readonly)
				[2]: var31_upvw (read and write)
			]]
			return UDim.new(0, getPageMargin_upvr(arg1_6) - var31_upvw)
		end)
	end
end
local Focusable_upvr = require(Parent_2.RoactGamepad).Focusable
local udim_upvr = UDim.new(0, 0)
local CursorKind_upvr = require(Parent.SelectionImage.CursorKind)
function any_extend_result1_upvr.renderWithProviders(arg1, arg2, arg3, arg4) -- Line 173
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Focusable_upvr (readonly)
		[4]: udim_upvr (readonly)
		[5]: CursorKind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var41
	if not arg1.props[Roact_upvr.Children] then
	end
	local isGamepadFocusable = arg1.props.isGamepadFocusable
	local tbl_2 = {}
	local tbl_3 = {}
	if arg1.props.paddingTop ~= nil then
		var41 = UDim.new(0, arg1.props.paddingTop)
	else
		var41 = nil
	end
	tbl_3.PaddingTop = var41
	var41 = arg1.getPadding()
	tbl_3.PaddingLeft = var41
	var41 = arg1.getPadding(4)
	tbl_3.PaddingRight = var41
	tbl_2.scrollingFrameInnerMargin = Roact_upvr.createElement("UIPadding", tbl_3)
	local module_2 = {
		BackgroundTransparency = 1;
		Position = arg1.props.position;
		Size = arg1.props.size;
	}
	var41 = Roact_upvr.Change
	function var41(arg1_7) -- Line 197
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updatePaddingBinding(arg1_7.AbsoluteSize.X)
	end
	module_2[var41.AbsoluteSize] = var41
	var41 = Roact_upvr
	var41 = arg1.parentFrameRef
	module_2[var41.Ref] = var41
	local module = {}
	var41 = Roact_upvr.createElement
	var41 = var41("UIPadding", {
		PaddingRight = UDim.new(0, 4);
	})
	module.scrollingFrameOuterMargins = var41
	var41 = Roact_upvr.createElement
	if not isGamepadFocusable or not Focusable_upvr.ScrollingFrame then
	end
	local tbl = {
		Active = true;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		ElasticBehavior = arg1.props.elasticBehavior;
		CanvasSize = UDim2.new(udim_upvr, arg1.props.canvasSizeY);
	}
	if not arg1.props.useAutomaticCanvasSize or not Enum.AutomaticSize.Y then
	end
	tbl.AutomaticCanvasSize = nil
	tbl.ScrollBarImageColor3 = arg2.Theme.UIEmphasis.Color
	tbl.ScrollBarImageTransparency = arg1.scrollBarImageTransparency
	tbl.ScrollBarThickness = arg1.state.scrollBarThickness
	tbl.ScrollingDirection = Enum.ScrollingDirection.Y
	tbl.ScrollingEnabled = arg1.props.ScrollingEnabled
	tbl.CanvasPosition = arg1.props.CanvasPosition
	tbl.SelectionImageObject = arg3(CursorKind_upvr.RoundedRect)
	if not isGamepadFocusable or not arg1.onGamepadFocused then
	end
	tbl.onFocusGained = nil
	if not isGamepadFocusable or not arg1.onGamepadFocusLost then
	end
	tbl.onFocusLost = nil
	tbl.Selectable = arg1.props.Selectable
	tbl.NextSelectionLeft = arg1.props.NextSelectionLeft
	tbl.NextSelectionRight = arg1.props.NextSelectionRight
	tbl.NextSelectionUp = arg1.props.NextSelectionUp
	tbl.NextSelectionDown = arg1.props.NextSelectionDown
	tbl[Roact_upvr.Event.InputBegan] = arg1.inputBegan
	tbl[Roact_upvr.Event.InputEnded] = arg1.inputEnded
	tbl[Roact_upvr.Change.CanvasPosition] = arg1.canvasPosition
	tbl[Roact_upvr.Change.CanvasSize] = arg1.props[Roact_upvr.Change.CanvasSize]
	tbl[Roact_upvr.Event.SelectionChanged] = arg1.props.onSelectionChanged
	tbl[Roact_upvr.Ref] = arg1.props.scrollingFrameRef
	var41 = var41("ScrollingFrame", tbl, Cryo_upvr.Dictionary.join(tbl_2, {}))
	module.scrollingFrame = var41
	return Roact_upvr.createElement("Frame", module_2, module)
end
local withStyle_upvr = require(Parent_2.UIBlox.Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent.SelectionImage.withSelectionCursorProvider)
function any_extend_result1_upvr.render(arg1) -- Line 248
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_8) -- Line 249
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_9) -- Line 250
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_8 (readonly)
			]]
			return arg1:renderWithProviders(arg1_8, arg1_9)
		end)
	end)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 256
	local any_getValue_result1 = arg1.parentFrameRef:getValue()
	if any_getValue_result1 then
		arg1.updatePaddingBinding(any_getValue_result1.AbsoluteSize.X)
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 263
	arg1.disconnectWaitToHideSidebar()
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 267
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_3 = {}
	module_3.scrollingFrameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_3))
end)