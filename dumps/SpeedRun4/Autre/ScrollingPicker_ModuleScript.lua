-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:24
-- Luau version 6, Types version 3
-- Time taken: 0.014019 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local ScrollingPickerDirection_upvr = require(AuthCommon.Enums.ScrollingPickerDirection)
local Otter_upvr = require(Parent.Otter)
local tbl_12_upvr = {
	[ScrollingPickerDirection_upvr.Horizontal] = 'X';
	[ScrollingPickerDirection_upvr.Vertical] = 'Y';
}
local tbl_10_upvr = {
	[ScrollingPickerDirection_upvr.Horizontal] = 'Y';
	[ScrollingPickerDirection_upvr.Vertical] = 'X';
}
local tbl_9_upvr = {
	spring = "spring";
	instant = "instant";
}
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ScrollingPicker")
any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD = 0.1
any_extend_result1_upvr.defaultProps = {
	layoutOrder = 0;
	parentSpecifiedTarget = 1;
	entries = {};
	entrySizeOnScrollingAxis = 10;
	scrollDirection = ScrollingPickerDirection_upvr.Vertical;
	clipsDescendants = true;
	shouldExpandTapTarget = false;
	tapTargetExpansionSize = 0;
}
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("ExpandScrollPickerTapTarget", false)
local setmetatable_result1_upvr = setmetatable({
	[Enum.UserInputType.MouseButton1] = true;
	[Enum.UserInputType.Touch] = true;
}, {
	__index = function(arg1, arg2) -- Line 82, Named "__index"
		return false
	end;
})
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("ScrollingPickerMaximumPickerChangePerInput", 1)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("ScrollingPickerSmallInputDecayFactor", 3)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("UseAccumulationStepperForMouseWheelScrollPicker", false)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ScrollingPickerSlowScrollStepWaitMs", 100)
function any_extend_result1_upvr.init(arg1) -- Line 87
	--[[ Upvalues[12]:
		[1]: tbl_12_upvr (readonly)
		[2]: tbl_10_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[5]: tbl_9_upvr (readonly)
		[6]: Otter_upvr (readonly)
		[7]: setmetatable_result1_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr_3 (readonly)
		[9]: any_extend_result1_upvr (readonly)
		[10]: game_DefineFastInt_result1_upvr_2 (readonly)
		[11]: game_DefineFastFlag_result1_upvr (readonly)
		[12]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local scrollDirection = arg1.props.scrollDirection
	arg1.state = {
		scrollDirection = scrollDirection;
		scrollingAxis = tbl_12_upvr[scrollDirection];
		subAxis = tbl_10_upvr[scrollDirection];
	}
	arg1.isMounted = false
	arg1.currentIndex = 1
	arg1.targetEntryRef = Roact_upvr.createRef()
	arg1.targetIndex = arg1.props.parentSpecifiedTarget
	arg1.isEntrySelected = false
	arg1.isTargetIndexSetByUserInput = false
	arg1.timeInputBegan = tick()
	arg1.recognizedInputBegan = false
	arg1.inputChanged = false
	arg1.inputPositionAtInputBegan = 0
	arg1.inputPreviousPositionScrollingAxis = 0
	arg1.scrollRef = Roact_upvr.createRef()
	arg1.shouldExpandTapTarget = game_DefineFastFlag_result1_upvr_2 and arg1.props.shouldExpandTapTarget
	arg1.tapTargetExpansionSize = arg1.props.tapTargetExpansionSize
	arg1.scrollDeltaAccumulator = 0
	function arg1.getCenterIndexByPosition(arg1_2) -- Line 136
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return math.floor(-arg1_2 / arg1.props.entrySizeOnScrollingAxis) + 1
	end
	function arg1.getCenterIndexByScrollPosition(arg1_3) -- Line 142
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.getCenterIndexByPosition(arg1_3 - arg1.props.entrySizeOnScrollingAxis / 2)
	end
	function arg1.updateParent() -- Line 153
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local onCurrentIndexChanged = arg1.props.onCurrentIndexChanged
		local onSelectedIndexChanged = arg1.props.onSelectedIndexChanged
		if onCurrentIndexChanged then
			onCurrentIndexChanged(arg1.currentIndex)
		end
		if onSelectedIndexChanged and arg1.currentIndex == arg1.targetIndex then
			onSelectedIndexChanged(arg1.currentIndex, arg1.isTargetIndexSetByUserInput)
		end
	end
	function arg1.onScrollPositionChanged() -- Line 166
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.scrollRef.current then
			local any_getCenterIndexByScrollPosition_result1 = arg1.getCenterIndexByScrollPosition(arg1.scrollRef.current.Position[arg1.state.scrollingAxis].Offset)
			if any_getCenterIndexByScrollPosition_result1 ~= arg1.currentIndex then
				arg1.currentIndex = any_getCenterIndexByScrollPosition_result1
				arg1.updateParent()
			end
		end
	end
	function arg1.updateTargetIndex(arg1_4) -- Line 181
		--[[ Upvalues[3]:
			[1]: tbl_9_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Otter_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var30
		if arg1_4.otterAnimationType == nil then
		end
		local entries = arg1.props.entries
		if #entries < 1 then
			var30 = 0
		else
			var30 = math.clamp(var30, 1, #entries)
		end
		arg1.targetIndex = var30
		arg1.isTargetIndexSetByUserInput = arg1_4.isSetByUserInput
		arg1.motor:setGoal(Otter_upvr[tbl_9_upvr.spring](-(arg1.props.entrySizeOnScrollingAxis * (arg1.targetIndex - 1)), {
			frequency = 2;
		}))
		if arg1.currentIndex == arg1.targetIndex then
			arg1.updateParent()
		end
	end
	function arg1.updateIndexByInputPosition(arg1_5) -- Line 215
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.scrollRef.current then
			local scrollingAxis = arg1.state.scrollingAxis
			local AbsolutePosition = arg1.scrollRef.current.AbsolutePosition
			local AbsoluteSize = arg1.scrollRef.current.AbsoluteSize
			if AbsolutePosition.X < arg1_5.X and arg1_5.X < AbsolutePosition.X + AbsoluteSize.X and AbsolutePosition.Y < arg1_5.Y and arg1_5.Y < AbsolutePosition.Y + AbsoluteSize.Y then
				arg1.updateTargetIndex({
					newTargetIndex = arg1.getCenterIndexByPosition(AbsolutePosition[scrollingAxis] - arg1_5[scrollingAxis]);
					isSetByUserInput = true;
				})
			end
		end
	end
	function arg1.updateIndexByScrollPositionAndOffset(arg1_6) -- Line 240
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.scrollRef.current then
			arg1.updateTargetIndex({
				newTargetIndex = arg1.getCenterIndexByScrollPosition(arg1.scrollRef.current.Position[arg1.state.scrollingAxis].Offset + (arg1_6 or 0));
				isSetByUserInput = true;
			})
		end
	end
	function arg1.onInputBegan(arg1_7, arg2) -- Line 259
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: setmetatable_result1_upvr (copied, readonly)
		]]
		local scrollingAxis_4 = arg1.state.scrollingAxis
		if arg1.isMounted and setmetatable_result1_upvr[arg2.UserInputType] and 0 < #arg1.props.entries and arg2.UserInputState == Enum.UserInputState.Begin then
			arg1.recognizedInputBegan = true
			arg1.timeInputBegan = tick()
			arg1.inputPositionAtInputBegan = arg2.Position[scrollingAxis_4]
			arg1.inputPreviousPositionScrollingAxis = arg2.Position[scrollingAxis_4]
			arg1.motor:stop()
		end
	end
	function any_extend_result1_upvr.restrictInputChangeDelta(arg1_8, arg2) -- Line 285
		--[[ Upvalues[3]:
			[1]: game_DefineFastInt_result1_upvr_3 (copied, readonly)
			[2]: any_extend_result1_upvr (copied, readonly)
			[3]: game_DefineFastInt_result1_upvr_2 (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var42
		if 0 < arg2 then
		else
		end
		var42 = math.abs(arg2)
		local minimum = math.min(var42, game_DefineFastInt_result1_upvr_3 * any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD)
		if minimum >= any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD then
			var42 = false
		else
			var42 = true
		end
		if var42 then
			return math.pow(minimum / any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD, game_DefineFastInt_result1_upvr_2) * any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD
		end
		return minimum * -1
	end
	function arg1.onInputChanged(arg1_9, arg2) -- Line 306
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[3]: any_extend_result1_upvr (copied, readonly)
			[4]: tbl_9_upvr (copied, readonly)
			[5]: game_DefineFastInt_result1_upvr (copied, readonly)
			[6]: Otter_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local scrollingAxis_3 = arg1.state.scrollingAxis
		local var46
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 12. Error Block 2 start (CF ANALYSIS FAILED)
		local MouseWheel = Enum.UserInputType.MouseWheel
		-- KONSTANTERROR: [17] 12. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [44] 30. Error Block 49 start (CF ANALYSIS FAILED)
		if var46 ~= true then
			var46 = arg1
			var46.scrollDeltaAccumulator = 0
		end
		var46 = arg1
		var46.scrollDeltaAccumulator = arg1.scrollDeltaAccumulator + MouseWheel
		if math.abs(arg1.scrollDeltaAccumulator) > 4 * any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD then
			var46 = false
		else
			var46 = true
		end
		while true do
			local var48
			var48 = math.abs(arg1.scrollDeltaAccumulator)
			if any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD > var48 then break end
			if 0 < arg1.scrollDeltaAccumulator then
				var48 = 1
			else
				var48 = -1
			end
			arg1.updateTargetIndex({
				newTargetIndex = arg1.targetIndex - var48;
				isSetByUserInput = true;
				OtterAnimationType = tbl_9_upvr.spring;
			})
			arg1.scrollDeltaAccumulator -= any_extend_result1_upvr.MOUSE_WHEEL_STEP_THRESHOLD * var48
			if var46 then
				task.wait(game_DefineFastInt_result1_upvr)
			end
		end
		do
			return
		end
		-- KONSTANTERROR: [44] 30. Error Block 49 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [132] 94. Error Block 40 start (CF ANALYSIS FAILED)
		if arg1.recognizedInputBegan then
			var46 = arg2.Position
			var48 = arg1
			var46 = var48.inputPreviousPositionScrollingAxis
			var48 = arg1
			var46 = var48.scrollRef
			if var46.current then
				var48 = arg1.scrollRef
				var46 = var48.current
				var48 = var46.Position[scrollingAxis_3].Offset
				var46 = (var48) + (var46[scrollingAxis_3] - var46)
				var48 = math.min(0, var46)
				var46 = var48
				var48 = math.max(var46, -(arg1.props.entrySizeOnScrollingAxis * (#arg1.props.entries - 1)))
				var46 = var48
				var48 = arg1.motor:setGoal
				var48(Otter_upvr.instant(var46))
			end
			var46 = true
			arg1.inputChanged = var46
			var48 = arg2.Position
			var46 = var48[scrollingAxis_3]
			arg1.inputPreviousPositionScrollingAxis = var46
		end
		-- KONSTANTERROR: [132] 94. Error Block 40 end (CF ANALYSIS FAILED)
	end
	function arg1.onInputEnded(arg1_10, arg2) -- Line 364
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local scrollingAxis_2 = arg1.state.scrollingAxis
		if arg1.recognizedInputBegan then
			if arg1.inputChanged and 1.5 < math.abs(arg2.Position[scrollingAxis_2] - arg1.inputPositionAtInputBegan) then
				local var52 = tick() - arg1.timeInputBegan
				if var52 < 0.3 then
					arg1.updateIndexByScrollPositionAndOffset(arg2.Delta[scrollingAxis_2] / var52)
				else
					arg1.updateIndexByScrollPositionAndOffset(0)
				end
			else
				arg1.updateIndexByInputPosition(arg2.Position)
			end
		end
		arg1.recognizedInputBegan = false
		arg1.inputChanged = false
	end
	function arg1.onMouseWheelForward() -- Line 390
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if not game_DefineFastFlag_result1_upvr then
			arg1.updateTargetIndex({
				newTargetIndex = arg1.targetIndex - 1;
				isSetByUserInput = true;
			})
		end
	end
	function arg1.onMouseWheelBackward() -- Line 399
		--[[ Upvalues[2]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if not game_DefineFastFlag_result1_upvr then
			arg1.updateTargetIndex({
				newTargetIndex = arg1.targetIndex + 1;
				isSetByUserInput = true;
			})
		end
	end
	function arg1.onSelectionGained(arg1_11) -- Line 408
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_9_upvr (copied, readonly)
		]]
		arg1.isEntrySelected = true
		local tbl_3 = {}
		tbl_3.newTargetIndex = arg1_11
		tbl_3.isSetByUserInput = true
		tbl_3.otterAnimationType = tbl_9_upvr.instant
		arg1.updateTargetIndex(tbl_3)
	end
	function arg1.onSelectionLost() -- Line 417
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.isEntrySelected = false
	end
end
function any_extend_result1_upvr.didMount(arg1) -- Line 422
	--[[ Upvalues[3]:
		[1]: Otter_upvr (readonly)
		[2]: ScrollingPickerDirection_upvr (readonly)
		[3]: tbl_9_upvr (readonly)
	]]
	arg1.updateParent()
	arg1.motor = Otter_upvr.createSingleMotor(0)
	arg1.motor:onStep(function(arg1_12) -- Line 426
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ScrollingPickerDirection_upvr (copied, readonly)
		]]
		if arg1.scrollRef.current then
			local Position = arg1.scrollRef.current.Position
			if arg1.state.scrollDirection == ScrollingPickerDirection_upvr.Horizontal then
				Position = UDim2.new(UDim.new(Position[arg1.state.scrollingAxis].Scale, arg1_12), Position[arg1.state.subAxis])
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				Position = UDim2.new(Position[arg1.state.subAxis], UDim.new(Position[arg1.state.scrollingAxis].Scale, arg1_12))
			end
			arg1.scrollRef.current.Position = Position
		end
	end)
	arg1.motor:onComplete(function() -- Line 444
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onAnimationComplete then
			arg1.props.onAnimationComplete()
		end
	end)
	arg1.updateTargetIndex({
		newTargetIndex = arg1.targetIndex;
		isSetByUserInput = false;
		otterAnimationType = tbl_9_upvr.instant;
	})
	arg1.isMounted = true
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 459
	arg1.isMounted = false
	arg1.motor:destroy()
end
function any_extend_result1_upvr.didUpdate(arg1, arg2) -- Line 464
	local parentSpecifiedTarget_2 = arg1.props.parentSpecifiedTarget
	local var69 = true
	if arg1.props.entrySizeOnScrollingAxis == arg2.entrySizeOnScrollingAxis then
		var69 = false
		if parentSpecifiedTarget_2 ~= arg1.targetIndex then
			if parentSpecifiedTarget_2 == arg2.parentSpecifiedTarget then
				var69 = false
			else
				var69 = true
			end
		end
	end
	if var69 then
		local var70
		if parentSpecifiedTarget_2 then
			var70 = parentSpecifiedTarget_2
		else
			var70 = arg1.targetIndex
		end
		arg1.updateTargetIndex({
			newTargetIndex = var70;
			isSetByUserInput = false;
		})
	end
end
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local FitChildren_upvr = require(AuthCommon.Components.FitChildren)
local Cryo_upvr = require(Parent.Cryo)
function any_extend_result1_upvr.render(arg1) -- Line 486
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: ScrollingPickerDirection_upvr (readonly)
		[3]: FitChildren_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Cryo_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_13) -- Line 487
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: ScrollingPickerDirection_upvr (copied, readonly)
			[3]: FitChildren_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local size = arg1.props.size
		local entrySizeOnScrollingAxis = arg1.props.entrySizeOnScrollingAxis
		local getEntryWrapperProps = arg1.props.getEntryWrapperProps
		local var87
		local var88
		if arg1.state.scrollDirection == ScrollingPickerDirection_upvr.Horizontal then
			var87 = Enum.FillDirection.Horizontal
			var88 = UDim2.new(0, entrySizeOnScrollingAxis, 1, 0)
			local _ = UDim2.new(0, 0, 1, 0)
		else
			var87 = Enum.FillDirection.Vertical
			var88 = UDim2.new(1, 0, 0, entrySizeOnScrollingAxis)
		end
		local tbl = {}
		for i_upvr, v in ipairs(arg1.props.entries) do
			local tbl_5 = {}
			local var95 = false
			local var98
			if i_upvr == var98 then
				var98 = arg1
				var95 = var98.isEntrySelected
			end
			tbl_5.Interactable = var95
			tbl_5.BackgroundTransparency = 1
			tbl_5.BorderSizePixel = 0
			local var97 = ""
			tbl_5.Text = var97
			var98 = math.abs(arg1.targetIndex - i_upvr)
			if var98 >= 2 then
				var97 = false
			else
				var97 = true
			end
			tbl_5.Selectable = var97
			var98 = Roact_upvr
			if i_upvr == arg1.targetIndex then
				var98 = arg1.targetEntryRef
			else
				var98 = nil
			end
			tbl_5[var98.Ref] = var98
			var98 = Roact_upvr.Event
			function var98() -- Line 527
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: i_upvr (readonly)
				]]
				arg1.onSelectionGained(i_upvr)
			end
			tbl_5[var98.SelectionGained] = var98
			var98 = Roact_upvr.Event
			var98 = arg1.onSelectionLost
			tbl_5[var98.SelectionLost] = var98
			var98 = Roact_upvr.Event
			var98 = arg1.props.onEntryActivated
			tbl_5[var98.Activated] = var98
			if getEntryWrapperProps then
				var98 = Cryo_upvr.Dictionary
				var98 = tbl_5
			end
			var98 = Cryo_upvr.Dictionary
			var98 = var98.join(var98, getEntryWrapperProps(v))
			var98 = tbl
			table.insert(var98, Roact_upvr.createElement("TextButton", var98.join(var98, {
				Size = var88;
				LayoutOrder = i_upvr;
			}), {arg1.props.renderEntry(v)}))
		end
		local const_string = "UIListLayout"
		table.insert(tbl, Roact_upvr.createElement(const_string, {
			FillDirection = var87;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		}))
		local module_2 = {
			LayoutOrder = arg1.props.layoutOrder;
		}
		if arg1.shouldExpandTapTarget then
			var98 = 0
		else
		end
		module_2.Size = size
		module_2.BorderSizePixel = 0
		module_2.BackgroundTransparency = 1
		module_2.ClipsDescendants = arg1.props.clipsDescendants
		module_2.SelectionGroup = true
		module_2.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
		module_2.SelectionBehaviorDown = Enum.SelectionBehavior.Stop
		module_2[Roact_upvr.Event.InputBegan] = arg1.onInputBegan
		module_2[Roact_upvr.Event.InputChanged] = arg1.onInputChanged
		module_2[Roact_upvr.Event.InputEnded] = arg1.onInputEnded
		module_2[Roact_upvr.Event.MouseWheelForward] = arg1.onMouseWheelForward
		module_2[Roact_upvr.Event.MouseWheelBackward] = arg1.onMouseWheelBackward
		local module = {}
		if arg1.shouldExpandTapTarget then
			local tbl_8 = {
				Size = size;
			}
			var98 = Enum.AutomaticSize.X
			tbl_8.AutomaticSize = var98
			var98 = true
			tbl_8.ClipsDescendants = var98
			var98 = 0
			tbl_8.BorderSizePixel = var98
			var98 = 1
			tbl_8.BackgroundTransparency = var98
			var98 = {}
			local tbl_2 = {}
			local tbl_4 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_4.Size = UDim2.new(1, 0, 0, 0)
			tbl_4.fitAxis = FitChildren_upvr.FitAxis.Height
			tbl_4.BorderSizePixel = 0
			tbl_4.BackgroundTransparency = 1
			tbl_4[Roact_upvr.Ref] = arg1.scrollRef
			tbl_4[Roact_upvr.Change.AbsolutePosition] = arg1.onScrollPositionChanged
			tbl_2.AnimatedSlidingList = Roact_upvr.createElement(FitChildren_upvr.FitFrame, tbl_4, tbl)
			var98.CenterPosition = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0);
				Position = UDim2.new(0, 0, 0.5, -entrySizeOnScrollingAxis / 2);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
			}, tbl_2)
			local _ = Roact_upvr.createElement("Frame", tbl_8, var98)
		else
			local tbl_7 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_7.Size = UDim2.new(1, 0, 0, 0)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_7.Position = UDim2.new(0, 0, 0.5, -entrySizeOnScrollingAxis / 2)
			var98 = 0
			tbl_7.BorderSizePixel = var98
			var98 = 1
			tbl_7.BackgroundTransparency = var98
			var98 = {}
			local tbl_11 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_11.Size = UDim2.new(1, 0, 0, 0)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_11.fitAxis = FitChildren_upvr.FitAxis.Height
			tbl_11.BorderSizePixel = 0
			tbl_11.BackgroundTransparency = 1
			tbl_11[Roact_upvr.Ref] = arg1.scrollRef
			tbl_11[Roact_upvr.Change.AbsolutePosition] = arg1.onScrollPositionChanged
			var98.AnimatedSlidingList = Roact_upvr.createElement(FitChildren_upvr.FitFrame, tbl_11, tbl)
		end
		module.CenterPosition = Roact_upvr.createElement("Frame", tbl_7, var98)
		return Roact_upvr.createElement("Frame", module_2, module)
	end)
end
return any_extend_result1_upvr