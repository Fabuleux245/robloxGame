-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:16
-- Luau version 6, Types version 3
-- Time taken: 0.006129 seconds

local Parent_2 = script.Parent.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Core = Parent_2.Core
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Otter_upvr = require(Parent.Otter)
local NavigationDirection_upvr = require(script.Parent.NavigationDirection)
local module_2_upvr = {
	dampingRatio = 1;
	frequency = 3.5;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ArrowNav")
any_extend_result1.validateProps = t.intersection(t.strictInterface({
	AnchorPoint = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	Image = t.table;
	Visible = t.optional(t.union(t.boolean, t.table));
	navDirection = t.optional(t.userdata);
	onPressHoldInputBegan = t.optional(t.callback);
	onPressHoldInputEnded = t.optional(t.callback);
	defaultUseProps = t.optional(t.strictInterface({
		scrollingFrameRef = t.table;
		buttonRefs = t.optional(t.table);
		buttonWidth = t.optional(t.number);
		numButtons = t.optional(t.number);
		padOutsideEdges = t.optional(t.boolean);
		buttonPadding = t.number;
		updateCanvasPosition = t.callback;
	}));
}), function(arg1) -- Line 63
	if arg1.defaultUseProps then
		if arg1.defaultUseProps.buttonRefs ~= nil then
			if arg1.defaultUseProps.buttonWidth ~= nil then
				return false, "Cannot set both buttonWidth and buttonRefs"
			end
			if arg1.defaultUseProps.numButtons ~= nil then
				return false, "Cannot set both numButtons and buttonRefs"
			end
		end
		if arg1.defaultUseProps.buttonWidth ~= nil and arg1.defaultUseProps.numButtons == nil then
			return false, "If setting buttonWidth must also set numButtons"
		end
		if arg1.defaultUseProps.buttonWidth == nil and arg1.defaultUseProps.numButtons ~= nil then
			return false, "If setting numButtons must also set buttonWidth"
		end
		if arg1.defaultUseProps.buttonRefs == nil and arg1.defaultUseProps.buttonWidth == nil and arg1.defaultUseProps.numButtons == nil then
			return false, "Must set either buttonRefs or (buttonWidth and numButtons)"
		end
	end
	return true
end)
any_extend_result1.defaultProps = {
	AnchorPoint = Vector2.new(0, 0);
	Position = UDim2.new(0, 0, 0, 0);
	Visible = true;
}
function any_extend_result1.init(arg1) -- Line 97
	arg1.holdConn = nil
	arg1.timeOfInputBegan = 0
	function arg1.handleInputBegan(arg1_2, arg2) -- Line 101
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local navDirection_2 = arg1.props.navDirection
		if arg1.props.onPressHoldInputBegan then
			arg1.props.onPressHoldInputBegan(arg2, navDirection_2)
		else
			arg1:onPressHoldInputBegan(arg2, navDirection_2)
		end
	end
	function arg1.handleInputEnded(arg1_3, arg2) -- Line 110
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local navDirection = arg1.props.navDirection
		if arg1.props.onPressHoldInputEnded then
			arg1.props.onPressHoldInputEnded(arg2, navDirection)
		else
			arg1:onPressHoldInputEnded(arg2, navDirection)
		end
	end
end
function any_extend_result1.getGoal(arg1, arg2) -- Line 120
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return Otter_upvr.spring(arg1:getScrollToLocation(arg2), module_2_upvr)
end
function any_extend_result1.didMount(arg1) -- Line 124
	arg1:setMotor(0)
end
function any_extend_result1.setMotor(arg1, arg2) -- Line 128
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1.motor = Otter_upvr.createSingleMotor(arg2)
	arg1.motor:onStep(function(arg1_4) -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.defaultUseProps.updateCanvasPosition(Vector2.new(arg1_4, 0))
	end)
	arg1.motor:onComplete(function(arg1_5) -- Line 133
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.defaultUseProps.updateCanvasPosition(Vector2.new(arg1_5, 0))
	end)
end
local withStyle_upvr = require(Core.Style.withStyle)
local Button_upvr = require(Core.ImageSet.ImageSetComponent).Button
function any_extend_result1.render(arg1) -- Line 138
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Button_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_6) -- Line 139
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Button_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(Button_upvr, {
			AnchorPoint = arg1.props.AnchorPoint;
			Position = arg1.props.Position;
			Image = arg1.props.Image;
			Visible = arg1.props.Visible;
			BackgroundTransparency = 1;
			ImageColor3 = arg1_6.Theme.IconEmphasis.Color;
			Size = UDim2.fromOffset(36, 36);
			[Roact_upvr.Event.InputBegan] = arg1.handleInputBegan;
			[Roact_upvr.Event.InputEnded] = arg1.handleInputEnded;
		})
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 155
	arg1:disconnectHoldConn()
	if arg1.motor then
		arg1.motor:destroy()
		arg1.motor = nil
	end
end
function any_extend_result1.getNewCanvasPosition(arg1, arg2) -- Line 163
	return arg1.props.defaultUseProps.scrollingFrameRef.current.CanvasPosition + Vector2.new(arg2, 0)
end
function any_extend_result1.disconnectHoldConn(arg1) -- Line 168
	if arg1.holdConn == nil then
	else
		arg1.holdConn:Disconnect()
		arg1.holdConn = nil
	end
end
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.onPressHoldInputBegan(arg1, arg2, arg3) -- Line 176
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: NavigationDirection_upvr (readonly)
	]]
	if arg2.UserInputState ~= Enum.UserInputState.Begin then
	else
		arg1.timeOfInputBegan = tick()
		arg1:disconnectHoldConn()
		arg1.holdConn = RunService_upvr.RenderStepped:connect(function(arg1_7) -- Line 182
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: NavigationDirection_upvr (copied, readonly)
				[3]: arg3 (readonly)
			]]
			local var26 = NavigationDirection_upvr
			if arg3 == var26.IsLeft then
				var26 = -1
			else
				var26 = 1
			end
			arg1.props.defaultUseProps.updateCanvasPosition(arg1:getNewCanvasPosition(var26 * 500 * arg1_7 * (tick() - arg1.timeOfInputBegan) ^ 2))
		end)
	end
end
function any_extend_result1.onPressHoldInputEnded(arg1, arg2, arg3) -- Line 191
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	if arg2.UserInputState ~= Enum.UserInputState.End then
	else
		if tick() - arg1.timeOfInputBegan <= 0.5 then
			if arg1.motor then
				arg1.motor:destroy()
			end
			arg1:setMotor(arg1.props.defaultUseProps.scrollingFrameRef.current.CanvasPosition.X)
			arg1.motor:setGoal(arg1:getGoal(arg3))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1.motor:setGoal(Otter_upvr.instant(arg1.props.defaultUseProps.scrollingFrameRef.current.CanvasPosition.X))
		end
		arg1:disconnectHoldConn()
	end
end
function any_extend_result1.getScrollToLocation(arg1, arg2) -- Line 209
	--[[ Upvalues[1]:
		[1]: NavigationDirection_upvr (readonly)
	]]
	local any_getButtonSizes_result1 = arg1:getButtonSizes()
	if arg2 == NavigationDirection_upvr.IsLeft then
		return arg1:getScrollToLeftLocation(any_getButtonSizes_result1)
	end
	return arg1:getScrollToRightLocation(any_getButtonSizes_result1)
end
function any_extend_result1.getButtonSizes(arg1) -- Line 219
	local buttonWidth = arg1.props.defaultUseProps.buttonWidth
	local numButtons = arg1.props.defaultUseProps.numButtons
	if buttonWidth and numButtons then
		return table.create(numButtons, buttonWidth)
	end
	local module = {}
	for _, v in ipairs(arg1.props.defaultUseProps.buttonRefs) do
		local var38
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var38 = v.current.AbsoluteSize.X
			return var38
		end
		if not v.current or not INLINED() then
			var38 = 0
		end
		table.insert(module, var38)
	end
	return module
end
function any_extend_result1.getScrollToLeftLocation(arg1, arg2) -- Line 236
	local current_2 = arg1.props.defaultUseProps.scrollingFrameRef.current
	local buttonPadding = arg1.props.defaultUseProps.buttonPadding
	local var48
	for _, v_2 in ipairs(arg2) do
		if current_2.CanvasPosition.X - current_2.AbsoluteSize.X * 0.4 <= var48 + v_2 + buttonPadding then
			return var48
		end
		var48 += v_2 + buttonPadding
	end
	return var48
end
function any_extend_result1.getScrollToRightLocation(arg1, arg2) -- Line 253
	local current = arg1.props.defaultUseProps.scrollingFrameRef.current
	local var54
	if arg1.props.defaultUseProps.padOutsideEdges then
		var54 += arg1.props.defaultUseProps.buttonPadding
	end
	for _, v_3 in ipairs(arg2) do
		if current.CanvasPosition.X + current.AbsoluteSize.X * 0.4 < var54 then
			return var54
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var54 += v_3 + arg1.props.defaultUseProps.buttonPadding
	end
	return var54
end
return any_extend_result1