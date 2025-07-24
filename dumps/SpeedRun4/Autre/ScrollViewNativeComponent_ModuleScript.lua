-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:53
-- Luau version 6, Types version 3
-- Time taken: 0.009914 seconds

local Parent = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local React_upvr = require(Parent.React)
local Otter_upvr = require(Parent.Otter)
local tbl_2_upvr = {
	restingPositionLimit = 1;
	restingVelocityLimit = 10;
}
local any_extend_result1 = React_upvr.Component:extend("ScrollViewNativeComponent")
function any_extend_result1.init(arg1, arg2) -- Line 62
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: Otter_upvr (readonly)
	]]
	arg1.props = arg2
	arg1._nativeRef = React_upvr.createRef()
	local var7 = 0
	arg1.lastScrollEventTime = var7
	if arg1.props.animationConfig then
		var7 = arg1.props.animationConfig
	else
		var7 = tbl_2_upvr
	end
	arg1.animationConfig = var7
	arg1.motor = Otter_upvr.createGroupMotor({
		x = 0;
		y = 0;
	})
	arg1.motorStepDisconnect = arg1.motor:onStep(function(arg1_2) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._nativeRef.current.CanvasPosition = Vector2.new(arg1_2.x, arg1_2.y)
	end)
	arg1._nativeRef.animateScrollTo = function(arg1_3, arg2_2) -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_startAnimatedScroll(arg1_3, arg2_2)
	end
end
local console_upvr = LuauPolyfill.console
function any_extend_result1._validateAnimatedScrollInputs(arg1, arg2, arg3) -- Line 83
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	console_upvr.error("scrollTo animation failed: ScrollViewNativeComponent._nativeRef instance is undefined")
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 3 end (CF ANALYSIS FAILED)
end
function any_extend_result1._startAnimatedScroll(arg1, arg2, arg3) -- Line 113
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	if _G.__DEV__ then
		arg1:_validateAnimatedScrollInputs(arg2, arg3)
	end
	local CanvasPosition = arg1._nativeRef.current.CanvasPosition
	arg1.motor:setGoal({
		x = Otter_upvr.instant(CanvasPosition.X);
		y = Otter_upvr.instant(CanvasPosition.Y);
	})
	arg1.motor:step(0)
	arg1.motor:setGoal({
		x = Otter_upvr.spring(arg2, arg1.animationConfig);
		y = Otter_upvr.spring(arg3, arg1.animationConfig);
	})
end
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Change_upvr = React_upvr.Change
local Event_upvr = React_upvr.Event
function any_extend_result1.render(arg1) -- Line 136
	--[[ Upvalues[5]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Change_upvr (readonly)
		[4]: Event_upvr (readonly)
		[5]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 56 start (CF ANALYSIS FAILED)
	local var31
	if Array_upvr.isArray(arg1.props.style) then
		local function _(arg1_10, arg2) -- Line 138
			--[[ Upvalues[1]:
				[1]: Object_upvr (copied, readonly)
			]]
			return Object_upvr.assign(arg1_10, arg2)
		end
		var31 = {}
	else
	end
	local tbl = {}
	var31 = "RCTScrollView"
	tbl.Name = var31
	if arg1.props.scrollEnabled ~= nil then
		var31 = arg1.props.scrollEnabled
	else
		var31 = true
	end
	tbl.ScrollingEnabled = var31
	tbl.Size = UDim2.new(1, 0, 1, 0)
	tbl.CanvasPosition = arg1.props.CanvasPosition
	-- KONSTANTERROR: [0] 1. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 44. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 44. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 50. Error Block 57 start (CF ANALYSIS FAILED)
	tbl.CanvasSize = UDim2.new(0, 0, 0, 0)
	if not arg1.props.AutomaticCanvasSize then
	end
	tbl.AutomaticCanvasSize = Enum.AutomaticSize.XY
	if arg1.props.horizontal and arg1.props.showsHorizontalScrollIndicator == false or not arg1.props.horizontal and arg1.props.showsVerticalScrollIndicator == false then
	else
	end
	tbl.ScrollBarThickness = nil
	tbl.ref = arg1._nativeRef
	tbl[Change_upvr.AbsoluteWindowSize] = arg1.props.onLayout
	tbl[Change_upvr.CanvasPosition] = function(arg1_11) -- Line 157
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var35 = os.clock() * 1000
		if (arg1.props.scrollEventThrottle or 0) < var35 - arg1.lastScrollEventTime then
			arg1.props.onScroll(arg1_11)
			arg1.lastScrollEventTime = var35
		end
	end
	tbl[Event_upvr.InputBegan] = function(arg1_12, arg2) -- Line 165
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.MouseWheel or arg2.UserInputType == Enum.UserInputType.Touch then
			if arg1.motor ~= nil then
				arg1.motor:stop()
			end
		end
		if arg2.UserInputType == Enum.UserInputType.Touch then
			arg1.props.onTouchStart(arg1_12, arg2)
		end
	end
	tbl[Event_upvr.InputEnded] = function(arg1_13, arg2) -- Line 179
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.Touch then
			arg1.props.onTouchEnd(arg1_13, arg2)
		end
	end
	tbl[Event_upvr.InputChanged] = function(arg1_14, arg2) -- Line 184
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputType == Enum.UserInputType.Touch then
			arg1.props.onTouchMove(arg1_14, arg2)
		end
	end
	if arg1.props.onSelectionChanged then
		local function _(arg1_15, arg2, arg3, arg4) -- Line 190
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.onSelectionChanged(arg1_15, arg2, arg3, arg4)
		end
	else
	end
	tbl[Event_upvr.SelectionChanged] = nil
	-- KONSTANTERROR: [75] 50. Error Block 57 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 212
	if arg1.motor ~= nil then
		arg1.motor:destroy()
	end
	if arg1.motorStepDisconnect ~= nil then
		arg1.motorStepDisconnect()
	end
end
return any_extend_result1