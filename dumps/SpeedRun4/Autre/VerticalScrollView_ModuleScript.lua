-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:13
-- Luau version 6, Types version 3
-- Time taken: 0.009247 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ScrollBarType_upvr = require(script.Parent.Enum.ScrollBarType)
local tbl_upvr = {
	frequency = 3;
	dampingRatio = 1.5;
}
local any_extend_result1_upvr = Roact_upvr.Component:extend("VerticalScrollView")
any_extend_result1_upvr.validateProps = t.strictInterface({
	size = t.optional(t.UDim2);
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.number);
	elasticBehavior = t.optional(t.EnumItem);
	canvasSizeY = t.optional(t.UDim);
	automaticSize = t.optional(t.enum(Enum.AutomaticSize));
	useAutomaticCanvasSize = t.optional(t.boolean);
	isGamepadFocusable = t.optional(t.boolean);
	scrollingEnabled = t.optional(t.boolean);
	selectable = t.optional(t.boolean);
	[Roact_upvr.Change.CanvasPosition] = t.optional(t.callback);
	[Roact_upvr.Change.CanvasSize] = t.optional(t.callback);
	scrollingFrameRef = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	[Roact_upvr.Children] = t.optional(t.table);
	scrollBarType = t.optional(t.string);
})
any_extend_result1_upvr.defaultProps = {
	size = UDim2.new(1, 0, 1, 0);
	canvasSizeY = UDim.new(2, 0);
	automaticSize = Enum.AutomaticSize.None;
	useAutomaticCanvasSize = false;
	isGamepadFocusable = false;
	selectable = nil;
	scrollingEnabled = true;
	scrollBarType = ScrollBarType_upvr.Compact;
}
local Otter_upvr = require(Parent.Otter)
local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
function any_extend_result1_upvr.init(arg1) -- Line 87
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	arg1.parentFrameRef = Roact_upvr.createRef()
	arg1.mainCanvasRef = Roact_upvr.createRef()
	local any_createBinding_result1_3, any_createBinding_result2_5 = Roact_upvr.createBinding(0)
	arg1.scrollPosition = any_createBinding_result1_3
	arg1.updateScroll = any_createBinding_result2_5
	local any_createBinding_result1_4, any_createBinding_result2_4 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.mainCanvasSize = any_createBinding_result1_4
	arg1.updateCanvasSize = any_createBinding_result2_4
	arg1:setState({
		scrollingWithTouch = false;
	})
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(1)
	arg1.scrollBarImageTransparency = any_createBinding_result1_2
	arg1.updateScrollBarImageTransparency = any_createBinding_result2_2
	arg1.scrollBarImageTransparencyMotor = Otter_upvr.createSingleMotor(0)
	arg1.scrollBarImageTransparencyMotor:onStep(arg1.updateScrollBarImageTransparency)
	arg1.lastTimeCanvasPositionChanged = tick()
	arg1.waitToHideSidebarConnection = nil
	function arg1.waitToHideSidebar() -- Line 105
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		if 0.7 < tick() - arg1.lastTimeCanvasPositionChanged then
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.spring(1, tbl_upvr))
			arg1.disconnectWaitToHideSidebar()
		end
	end
	function arg1.disconnectWaitToHideSidebar() -- Line 113
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.waitToHideSidebarConnection then
			arg1.waitToHideSidebarConnection:Disconnect()
			arg1.waitToHideSidebarConnection = nil
		end
	end
	function arg1.inputBegan(arg1_2, arg2) -- Line 119
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		if not arg1.props.scrollingEnabled then
		elseif arg2.UserInputType == Enum.UserInputType.MouseMovement then
			arg1.disconnectWaitToHideSidebar()
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(0))
		end
	end
	function arg1.inputEnded(arg1_3, arg2) -- Line 129
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		if not arg1.props.scrollingEnabled then
		elseif arg2.UserInputType == Enum.UserInputType.MouseMovement then
			arg1.disconnectWaitToHideSidebar()
			arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(1))
		end
	end
	function arg1.canvasPosition(arg1_4) -- Line 139
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
			arg1.waitToHideSidebarConnection = RunService_upvr.Heartbeat:Connect(arg1.waitToHideSidebar)
		end
		arg1.updateScroll(arg1_4.CanvasPosition.Y)
		if arg1.props[Roact_upvr.Change.CanvasPosition] then
			arg1.props[Roact_upvr.Change.CanvasPosition](arg1_4)
		end
	end
	function arg1.onGamepadFocused() -- Line 153
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(0))
	end
	function arg1.onGamepadFocusLost() -- Line 157
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
		]]
		arg1.scrollBarImageTransparencyMotor:setGoal(Otter_upvr.instant(1))
	end
	function arg1.getMainCanvasPosition() -- Line 161
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.scrollPosition:map(function(arg1_5) -- Line 162
			return Vector2.new(0, arg1_5)
		end)
	end
	function arg1.onMainCanvasSizeChange(arg1_6) -- Line 167
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateCanvasSize(arg1_6.AbsoluteCanvasSize)
	end
	function arg1.getMainCanvasSize() -- Line 171
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.mainCanvasSize:map(function(arg1_7) -- Line 172
			return UDim2.new(0, 2, 0, arg1_7.Y)
		end)
	end
	local any_createBinding_result1_5, any_createBinding_result2_3 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.viewSize = any_createBinding_result1_5
	arg1.updateViewSize = any_createBinding_result2_3
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.mainCanvasPosition = any_createBinding_result1
	arg1.updateMainCanvasPosition = any_createBinding_result2
	function arg1.onScrollBarDragging(arg1_8) -- Line 180
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateMainCanvasPosition(Vector2.new(0, arg1_8))
	end
	function arg1.onViewSizeChange(arg1_9) -- Line 184
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateViewSize(arg1_9.AbsoluteSize)
	end
	function arg1.onSelectionChanged(arg1_10, arg2, arg3, arg4) -- Line 188
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg2 and arg4 == nil then
			arg1.onGamepadFocusLost()
		else
			if arg2 or arg4:IsDescendantOf(arg1_10) then
				arg1.onGamepadFocused()
				return
			end
			arg1.onGamepadFocusLost()
		end
	end
end
local Images_upvr = require(Parent.UIBlox.App.ImageSet.Images)
function any_extend_result1_upvr.getScrollBarStyleProps(arg1, arg2, arg3) -- Line 202
	--[[ Upvalues[2]:
		[1]: ScrollBarType_upvr (readonly)
		[2]: Images_upvr (readonly)
	]]
	local Tokens_2 = arg2.Tokens
	if arg3 == ScrollBarType_upvr.Wide then
		return {
			userInteractionEnabled = true;
			width = Tokens_2.Global.Size_200;
			handleWidth = Tokens_2.Global.Size_100;
			paddingStartEnd = Tokens_2.Global.Space_50;
			marginRight = 0;
		}
	end
	if arg3 == ScrollBarType_upvr.Gamepad then
		return {
			userInteractionEnabled = false;
			width = Tokens_2.Global.Space_200;
			handleWidth = Tokens_2.Global.Space_100;
			handleIcon = Images_upvr["icons/controls/keys/xboxRSVertical"];
			handleIconSize = Tokens_2.Semantic.Icon.Size.Medium;
			handleIconColor = {
				Color = Tokens_2.Semantic.Color.Icon.Emphasis.Color3;
				Transparency = Tokens_2.Semantic.Color.Icon.Emphasis.Transparency;
			};
			paddingStartEnd = Tokens_2.Global.Space_300;
			marginRight = Tokens_2.Global.Space_300;
		}
	end
	return {
		userInteractionEnabled = false;
		width = Tokens_2.Global.Space_150;
		handleWidth = Tokens_2.Global.Size_25;
		paddingStartEnd = Tokens_2.Global.Space_50;
		marginRight = 0;
	}
end
local ScrollBar_upvr = require(script.Parent.ScrollBar)
function any_extend_result1_upvr.renderScrollBar(arg1, arg2) -- Line 239
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ScrollBar_upvr (readonly)
	]]
	local Tokens = arg2.Tokens
	local any_getScrollBarStyleProps_result1 = arg1:getScrollBarStyleProps(arg2, arg1.props.scrollBarType)
	return Roact_upvr.createElement(ScrollBar_upvr, {
		userInteractionEnabled = any_getScrollBarStyleProps_result1.userInteractionEnabled;
		width = any_getScrollBarStyleProps_result1.width;
		anchorPoint = Vector2.new(1, 0);
		position = UDim2.new(1, -any_getScrollBarStyleProps_result1.marginRight, 0, 0);
		zIndex = 2;
		transparency = arg1.scrollBarImageTransparency;
		backgroundColor = any_getScrollBarStyleProps_result1.backgroundColor;
		paddingStartEnd = any_getScrollBarStyleProps_result1.paddingStartEnd;
		handleWidth = any_getScrollBarStyleProps_result1.handleWidth;
		handleColor = {
			Color = Tokens.Semantic.Color.Ui.Emphasis.Color3;
			Transparency = Tokens.Semantic.Color.Ui.Emphasis.Transparency;
		};
		handleCornerRadius = Tokens.Semantic.Radius.Circle;
		handleIcon = any_getScrollBarStyleProps_result1.handleIcon;
		handleIconColor = any_getScrollBarStyleProps_result1.handleIconColor;
		handleIconSize = any_getScrollBarStyleProps_result1.handleIconSize;
		onDragging = arg1.onScrollBarDragging;
		viewSize = arg1.viewSize;
		canvasSize = arg1.mainCanvasSize;
		canvasPosition = arg1.getMainCanvasPosition();
	})
end
local Focusable_upvr = require(Parent.RoactGamepad).Focusable
local CursorKind_upvr = require(Parent_2.SelectionImage.CursorKind)
function any_extend_result1_upvr.renderWithProviders(arg1, arg2, arg3, arg4) -- Line 271
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Focusable_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local automaticSize = arg1.props.automaticSize
	local var53
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var53 = Enum.AutomaticSize.Y
		return var53
	end
	if not arg1.props.useAutomaticCanvasSize or not INLINED() then
		var53 = nil
	end
	local isGamepadFocusable = arg1.props.isGamepadFocusable
	local module_2 = {}
	if not isGamepadFocusable or not Focusable_upvr.ScrollingFrame then
	end
	local tbl = {
		Active = false;
		AutomaticSize = automaticSize;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		ElasticBehavior = arg1.props.elasticBehavior;
		CanvasSize = UDim2.new(UDim.new(1, 0), arg1.props.canvasSizeY);
		AutomaticCanvasSize = var53;
		CanvasPosition = arg1.mainCanvasPosition;
		ScrollingEnabled = arg1.props.scrollingEnabled;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		ScrollBarImageTransparency = 1;
		ScrollBarThickness = 0;
		Selectable = arg1.props.selectable;
		SelectionImageObject = arg3(CursorKind_upvr.RoundedRect);
	}
	if not isGamepadFocusable or not arg1.onGamepadFocused then
	end
	tbl.onFocusGained = nil
	if not isGamepadFocusable or not arg1.onGamepadFocusLost then
	end
	tbl.onFocusLost = nil
	tbl.NextSelectionLeft = arg1.props.NextSelectionLeft
	tbl.NextSelectionRight = arg1.props.NextSelectionRight
	tbl.NextSelectionUp = arg1.props.NextSelectionUp
	tbl.NextSelectionDown = arg1.props.NextSelectionDown
	tbl[Roact_upvr.Event.InputBegan] = arg1.inputBegan
	tbl[Roact_upvr.Event.InputEnded] = arg1.inputEnded
	tbl[Roact_upvr.Change.CanvasPosition] = arg1.canvasPosition
	tbl[Roact_upvr.Change.AbsoluteCanvasSize] = arg1.onMainCanvasSizeChange
	tbl[Roact_upvr.Change.CanvasSize] = arg1.props[Roact_upvr.Change.CanvasSize]
	tbl[Roact_upvr.Ref] = arg1.props.scrollingFrameRef
	tbl[Roact_upvr.Change.AbsoluteSize] = arg1.onViewSizeChange
	if isGamepadFocusable then
	else
	end
	tbl[Roact_upvr.Event.SelectionChanged] = nil
	module_2.MainCanvas = Roact_upvr.createElement("ScrollingFrame", tbl, arg1.props[Roact_upvr.Children])
	module_2.ScrollBar = arg1:renderScrollBar(arg2)
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Position = arg1.props.position;
		Size = arg1.props.size;
		AutomaticSize = automaticSize;
		LayoutOrder = arg1.props.layoutOrder;
		ClipsDescendants = true;
		[Roact_upvr.Ref] = arg1.parentFrameRef;
	}, module_2)
end
local withStyle_upvr = require(Parent.UIBlox.Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_2.SelectionImage.withSelectionCursorProvider)
function any_extend_result1_upvr.render(arg1) -- Line 342
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_11) -- Line 343
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_12) -- Line 344
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_11 (readonly)
			]]
			return arg1:renderWithProviders(arg1_11, arg1_12)
		end)
	end)
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 350
	arg1.disconnectWaitToHideSidebar()
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 354
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.scrollingFrameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)