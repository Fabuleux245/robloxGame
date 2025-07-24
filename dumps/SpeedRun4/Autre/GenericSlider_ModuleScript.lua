-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:13
-- Luau version 6, Types version 3
-- Time taken: 0.023256 seconds

local Parent_3 = script.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local ImageSetComponent_upvr = require(Parent_3.ImageSet.ImageSetComponent)
local CursorKind_upvr = require(Parent_2.App.SelectionImage.CursorKind)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("GenericSlider")
any_extend_result1_upvr.validateProps = t.strictInterface({
	lowerValue = t.number;
	upperValue = t.optional(t.number);
	min = t.number;
	max = t.number;
	stepInterval = t.numberPositive;
	isDisabled = t.optional(t.boolean);
	onValueChanged = t.callback;
	onDragStartLower = t.optional(t.callback);
	onDragStartUpper = t.optional(t.callback);
	onDragEnd = t.optional(t.callback);
	trackImage = t.union(t.string, t.table);
	trackColor = t.union(t.Color3, t.table);
	trackTransparency = t.union(t.number, t.table);
	trackSliceCenter = t.optional(t.Rect);
	trackFillImage = t.union(t.string, t.table);
	trackFillColor = t.union(t.Color3, t.table);
	trackFillTransparency = t.union(t.number, t.table);
	trackFillSliceCenter = t.optional(t.Rect);
	knobImage = t.union(t.string, t.table);
	knobColorLower = t.union(t.Color3, t.table);
	knobColorUpper = t.optional(t.union(t.Color3, t.table));
	knobTransparency = t.union(t.number, t.table);
	knobImagePadding = t.optional(t.numberMin(0));
	knobShadowImage = t.union(t.string, t.table);
	knobShadowTransparencyLower = t.union(t.number, t.table);
	knobShadowTransparencyUpper = t.optional(t.union(t.number, t.table));
	width = t.optional(t.UDim);
	position = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	layoutOrder = t.optional(t.integer);
	imageButtonRef = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	focusController = t.optional(t.table);
	containerRef = t.optional(t.table);
	customTrack = t.optional(t.table);
	customKnobHeight = t.optional(t.number);
	customKnobBorderColor = t.optional(t.Color3);
	customKnobBorderSize = t.optional(t.number);
})
any_extend_result1_upvr.defaultProps = {
	width = UDim.new(1, 0);
	knobImagePadding = 0;
	customKnobBorderColor = Color3.new(0, 0, 0);
}
function any_extend_result1_upvr.init(arg1) -- Line 98
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local imageButtonRef = arg1.props.imageButtonRef
	if not imageButtonRef then
		imageButtonRef = Roact_upvr.createRef()
	end
	arg1.rootRef = imageButtonRef
	arg1.lowerKnobRef = Roact_upvr.createRef()
	arg1.upperKnobRef = Roact_upvr.createRef()
	arg1.moveDirection = 0
	arg1.lowerKnobDrag = false
	arg1.upperKnobDrag = false
	arg1.totalMoveTime = 0
	arg1.isFirstMove = true
	arg1.unhandledTime = 0
	arg1.state = {
		lowerKnobIsSelected = false;
		upperKnobIsSelected = false;
	}
end
function any_extend_result1_upvr.getKnobVisibleHeight(arg1) -- Line 116
	if arg1.props.customKnobHeight then
		return (44 - arg1.props.knobImagePadding * 2) / 44 * arg1.props.customKnobHeight
	end
	return 44 - arg1.props.knobImagePadding * 2
end
function any_extend_result1_upvr.getKnobHeight(arg1) -- Line 125
	if arg1.props.customKnobHeight then
		return 44 / (44 - arg1.props.knobImagePadding * 2) * arg1.props.customKnobHeight
	end
	return 44
end
function any_extend_result1_upvr.onMoveStep(arg1, arg2, arg3) -- Line 135
	-- KONSTANTERROR: [0] 1. Error Block 58 start (CF ANALYSIS FAILED)
	local var14
	if not arg1.state.lowerKnobIsSelected and not arg1.state.upperKnobIsSelected then return end
	local var15 = arg2[Enum.KeyCode.Thumbstick1]
	local Position = var15.Position
	if 0.2 >= Position.Magnitude then
		var15 = false
	else
		var15 = true
	end
	var14 = arg1.totalMoveTime + arg3
	arg1.totalMoveTime = var14
	if var15 then
		if 0 < Position.x then
			var14 = 1
		else
			var14 = -1
		end
		-- KONSTANTWARNING: GOTO [72] #53
	end
	-- KONSTANTERROR: [0] 1. Error Block 58 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 34. Error Block 47 start (CF ANALYSIS FAILED)
	if arg2[Enum.KeyCode.DPadLeft].UserInputState == Enum.UserInputState.Begin then
		var14 = -1
		-- KONSTANTWARNING: GOTO [57] #42
	end
	-- KONSTANTERROR: [45] 34. Error Block 47 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.processGamepadInput(arg1, arg2, arg3) -- Line 189
	if arg1:hasTwoKnobs() then
		arg1:processTwoKnobGamepadInput(arg2, arg3)
	else
		arg1:processOneKnobGamepadInput(arg2, arg3)
	end
end
function any_extend_result1_upvr.processTwoKnobGamepadInput(arg1, arg2, arg3) -- Line 197
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local lowerValue_2 = arg1.props.lowerValue
	local var18
	if lowerValue_2 == var18 and not arg1.state.processingGamepad then
		if arg1.state.lowerKnobIsSelected and arg2 == 1 and lowerValue_2 ~= arg1.props.max then
			arg1:setState({
				lowerKnobIsSelected = false;
				upperKnobIsSelected = true;
				processingGamepad = true;
			})
			arg1.props.focusController.moveFocusTo(arg1.upperKnobRef)
		elseif arg1.state.upperKnobIsSelected and arg2 == -1 and var18 ~= arg1.props.min then
			arg1:setState({
				lowerKnobIsSelected = true;
				upperKnobIsSelected = false;
				processingGamepad = true;
			})
			arg1.props.focusController.moveFocusTo(arg1.lowerKnobRef)
			-- KONSTANTWARNING: GOTO [104] #64
		end
	elseif not arg1.state.processingGamepad then
		arg1:setState({
			processingGamepad = true;
		})
	end
	if arg1.state.lowerKnobIsSelected then
		local maximum = math.max(math.min(lowerValue_2 + arg1.props.stepInterval * arg2 * arg3, arg1.props.max), arg1.props.min)
		if maximum <= var18 then
			local _ = maximum
		else
		end
	elseif arg1.state.upperKnobIsSelected then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local maximum_2 = math.max(math.min(var18 + arg1.props.stepInterval * arg2 * arg3, arg1.props.max), arg1.props.min)
		if var18 <= maximum_2 then
			var18 = maximum_2
		else
			var18 = var18
		end
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return var18 ~= arg1.props.lowerValue
	end
	if var18 ~= arg1.props.upperValue or INLINED() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.props.onValueChanged(var18, var18)
	end
end
function any_extend_result1_upvr.processOneKnobGamepadInput(arg1, arg2, arg3) -- Line 251
	local lowerValue = arg1.props.lowerValue
	if arg1.state.lowerKnobIsSelected then
		lowerValue = math.max(math.min(lowerValue + arg1.props.stepInterval * arg2 * arg3, arg1.props.max), arg1.props.min)
	end
	if lowerValue ~= arg1.props.lowerValue then
		arg1.props.onValueChanged(lowerValue)
	end
end
function any_extend_result1_upvr.renderTrack(arg1, arg2, arg3, arg4) -- Line 264
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetComponent_upvr (readonly)
	]]
	local var26
	if arg1.props.customTrack then
		return arg1.props.customTrack
	end
	local module_6 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		ImageColor3 = arg1.props.trackColor;
		ImageTransparency = arg1.props.trackTransparency;
		Image = arg1.props.trackImage;
	}
	var26 = 4
	module_6.Size = UDim2.new(1, 0, 0, var26)
	module_6.Position = UDim2.fromScale(0.5, 0.5)
	module_6.ScaleType = Enum.ScaleType.Slice
	module_6.SliceCenter = arg1.props.trackSliceCenter
	local module_4 = {}
	local tbl_2 = {}
	var26 = 1
	tbl_2.BackgroundTransparency = var26
	var26 = arg1.props.trackFillColor
	tbl_2.ImageColor3 = var26
	var26 = arg1.props.trackFillTransparency
	tbl_2.ImageTransparency = var26
	var26 = arg1.props.trackFillImage
	tbl_2.Image = var26
	tbl_2.Size = arg2
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var26 = UDim2.new(arg4, 0, 0, 0)
		return var26
	end
	if not arg3 or not INLINED_2() then
		var26 = UDim2.new(0, 0, 0, 0)
	end
	tbl_2.Position = var26
	var26 = Enum.ScaleType.Slice
	tbl_2.ScaleType = var26
	var26 = arg1.props.trackFillSliceCenter
	tbl_2.SliceCenter = var26
	module_4.TrackFill = Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_2)
	return Roact_upvr.createElement(ImageSetComponent_upvr.Label, module_6, module_4)
end
function any_extend_result1_upvr.wrapKnobWithBorder(arg1, arg2, arg3) -- Line 293
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var30
	if arg1.props.customKnobHeight then
		var30 = arg1.props.customKnobHeight
	else
		var30 = arg1:getKnobVisibleHeight()
	end
	local module_3 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.fromOffset(var30, var30);
	}
	module_3.Position = arg3
	module_3.BackgroundColor3 = arg1.props.customKnobBorderColor
	module_3.ZIndex = 3
	local module_7 = {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0);
		});
	}
	module_7.KnobContent = arg2
	return Roact_upvr.createElement("Frame", module_3, module_7)
end
function any_extend_result1_upvr.renderUpperKnob(arg1, arg2, arg3, arg4, arg5) -- Line 310
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
	]]
	if not arg4 then
		return nil
	end
	local var34
	if arg1.props.customKnobBorderSize and 0 < arg1.props.customKnobBorderSize then
		var34 -= 2 * (arg1.props.customKnobBorderSize + 2)
	end
	local tbl_4 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		ImageColor3 = arg1.props.knobColorUpper;
		ImageTransparency = arg1.props.knobTransparency;
		Image = arg1.props.knobImage;
		Size = UDim2.fromOffset(var34, var34);
		Position = UDim2.fromScale(0.5, 0.5);
		ZIndex = 3;
	}
	if arg3 or arg1.props.upperValue == arg1.props.lowerValue or not arg1.lowerKnobRef then
	end
	tbl_4.NextSelectionLeft = nil
	if not arg3 or not arg1.upperKnobRef then
	end
	tbl_4.NextSelectionRight = nil
	if not arg3 or not arg1.upperKnobRef then
	end
	tbl_4.NextSelectionUp = nil
	if not arg3 or not arg1.upperKnobRef then
	end
	tbl_4.NextSelectionDown = nil
	if not arg3 or not arg5(CursorKind_upvr.SelectedKnob) then
	end
	tbl_4.SelectionImageObject = arg5(CursorKind_upvr.UnselectedKnob)
	tbl_4[Roact_upvr.Ref] = arg1.upperKnobRef
	tbl_4[Roact_upvr.Event.InputBegan] = function(arg1_2, arg2_2) -- Line 341
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isDisabled then
		else
			arg1:onInputBegan(arg2_2, true)
		end
	end
	local tbl_5 = {
		OnMoveStep = RoactGamepad_upvr.Input.onMoveStep(function(arg1_3, arg2_3) -- Line 349
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onMoveStep(arg1_3, arg2_3)
		end);
		SelectUpperKnob = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, function() -- Line 352
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState(function(arg1_4) -- Line 353
				return {
					upperKnobIsSelected = not arg1_4.upperKnobIsSelected;
					processingGamepad = false;
				}
			end)
		end);
	}
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		return RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonB, function() -- Line 360
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				upperKnobIsSelected = false;
				processingGamepad = false;
			})
		end)
	end
	if not arg3 or not INLINED_3() then
	end
	tbl_5.UnselectUpperKnob = nil
	tbl_4.inputBindings = tbl_5
	local any_createElement_result1_2 = Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ImageSetComponent_upvr.Button], tbl_4)
	if arg1.props.customKnobBorderSize and 0 < arg1.props.customKnobBorderSize then
		return arg1:wrapKnobWithBorder(any_createElement_result1_2, arg2)
	end
	return any_createElement_result1_2
end
function any_extend_result1_upvr.renderLowerKnob(arg1, arg2, arg3, arg4, arg5) -- Line 376
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: RoactGamepad_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: CursorKind_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var45
	if arg1.props.customKnobBorderSize and 0 < arg1.props.customKnobBorderSize then
		var45 -= 2 * (arg1.props.customKnobBorderSize + 2)
	end
	local tbl = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		ImageColor3 = arg1.props.knobColorLower;
		ImageTransparency = arg1.props.knobTransparency;
		Image = arg1.props.knobImage;
		Size = UDim2.fromOffset(var45, var45);
		Position = UDim2.fromScale(0.5, 0.5);
		ZIndex = 3;
	}
	local tbl_3 = {
		OnMoveStep = RoactGamepad_upvr.Input.onMoveStep(function(arg1_5, arg2_4) -- Line 394
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onMoveStep(arg1_5, arg2_4)
		end);
		SelectLowerKnob = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, function() -- Line 397
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState(function(arg1_6) -- Line 398
				return {
					lowerKnobIsSelected = not arg1_6.lowerKnobIsSelected;
					processingGamepad = false;
				}
			end)
		end);
	}
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		return RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonB, function() -- Line 405
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				lowerKnobIsSelected = false;
				processingGamepad = false;
			})
		end)
	end
	if not arg3 or not INLINED_4() then
	end
	tbl_3.UnselectLowerKnob = nil
	tbl.inputBindings = tbl_3
	if not arg3 or not arg1.lowerKnobRef then
	end
	tbl.NextSelectionLeft = nil
	if not arg4 or arg3 or arg1.props.upperValue == arg1.props.lowerValue or not arg1.upperKnobRef then
	end
	tbl.NextSelectionRight = nil
	if not arg3 or not arg1.lowerKnobRef then
	end
	tbl.NextSelectionUp = nil
	if not arg3 or not arg1.lowerKnobRef then
	end
	tbl.NextSelectionDown = nil
	if not arg3 or not arg5(CursorKind_upvr.SelectedKnob) then
	end
	tbl.SelectionImageObject = arg5(CursorKind_upvr.UnselectedKnob)
	tbl[Roact_upvr.Ref] = arg1.lowerKnobRef
	tbl[Roact_upvr.Event.InputBegan] = function(arg1_7, arg2_5) -- Line 421
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.isDisabled then
		else
			arg1:onInputBegan(arg2_5, true)
		end
	end
	local any_createElement_result1 = Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ImageSetComponent_upvr.Button], tbl)
	if arg1.props.customKnobBorderSize and 0 < arg1.props.customKnobBorderSize then
		return arg1:wrapKnobWithBorder(any_createElement_result1, arg2)
	end
	return any_createElement_result1
end
function any_extend_result1_upvr.renderKnobShadow(arg1, arg2, arg3) -- Line 437
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetComponent_upvr (readonly)
	]]
	local module = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
	}
	module.ImageTransparency = arg2
	module.Image = arg1.props.knobShadowImage
	module.Size = UDim2.fromOffset(arg1:getKnobHeight(), arg1:getKnobHeight())
	module.Position = arg3
	module.ZIndex = 2
	return Roact_upvr.createElement(ImageSetComponent_upvr.Label, module)
end
local lerp_upvr = require(Parent_2.Utility.lerp)
local withSelectionCursorProvider_upvr = require(Parent_2.App.SelectionImage.withSelectionCursorProvider)
function any_extend_result1_upvr.render(arg1) -- Line 449
	--[[ Upvalues[5]:
		[1]: lerp_upvr (readonly)
		[2]: withSelectionCursorProvider_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RoactGamepad_upvr (readonly)
		[5]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var59
	if not arg1.state.lowerKnobIsSelected then
	end
	local any_hasTwoKnobs_result1_upvr = arg1:hasTwoKnobs()
	var59 = arg1.props.lowerValue - arg1.props.min
	local var61_upvr = var59 / (arg1.props.max - arg1.props.min)
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var59 = (arg1.props.upperValue - arg1.props.min) / (arg1.props.max - arg1.props.min)
		return var59
	end
	if not any_hasTwoKnobs_result1_upvr or not INLINED_5() then
		var59 = nil
	end
	local any_getKnobVisibleHeight_result1 = arg1:getKnobVisibleHeight()
	if not any_hasTwoKnobs_result1_upvr or not lerp_upvr(any_getKnobVisibleHeight_result1 / 2, -any_getKnobVisibleHeight_result1 / 2, var59) then
	end
	if not any_hasTwoKnobs_result1_upvr or not UDim2.new(var59, nil, 0.5, 0) then
	end
	if not any_hasTwoKnobs_result1_upvr or not UDim2.fromScale(var59 - var61_upvr, 1) then
	end
	local lowerKnobIsSelected_upvr = arg1.state.lowerKnobIsSelected
	if not lowerKnobIsSelected_upvr then
		lowerKnobIsSelected_upvr = arg1.state.upperKnobIsSelected
	end
	local udim2_upvr = UDim2.fromScale(var61_upvr, 1)
	local udim2_upvr_2 = UDim2.new(var61_upvr, lerp_upvr(any_getKnobVisibleHeight_result1 / 2, -any_getKnobVisibleHeight_result1 / 2, var61_upvr), 0.5, 0)
	local upperKnobIsSelected_upvr = arg1.state.upperKnobIsSelected
	local var68_upvr
	return withSelectionCursorProvider_upvr(function(arg1_8) -- Line 464
		--[[ Upvalues[11]:
			[1]: Roact_upvr (copied, readonly)
			[2]: RoactGamepad_upvr (copied, readonly)
			[3]: ImageSetComponent_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: lowerKnobIsSelected_upvr (readonly)
			[6]: udim2_upvr (readonly)
			[7]: any_hasTwoKnobs_result1_upvr (readonly)
			[8]: var61_upvr (readonly)
			[9]: udim2_upvr_2 (readonly)
			[10]: upperKnobIsSelected_upvr (readonly)
			[11]: var68_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_2 = {
			BackgroundTransparency = 1;
			AnchorPoint = arg1.props.anchorPoint;
			Size = UDim2.new(arg1.props.width.Scale, arg1.props.width.Offset, 0, 36);
			LayoutOrder = arg1.props.layoutOrder;
			Position = arg1.props.position;
			[Roact_upvr.Event.InputBegan] = function(arg1_9, arg2) -- Line 471
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.props.isDisabled then
				else
					arg1:onInputBegan(arg2, false)
				end
			end;
			[Roact_upvr.Ref] = arg1.rootRef;
		}
		local onFocusLost
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			onFocusLost = arg1.rootRef
			return onFocusLost
		end
		if not lowerKnobIsSelected_upvr or not INLINED_6() then
			onFocusLost = nil
		end
		module_2.NextSelectionLeft = onFocusLost
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			onFocusLost = arg1.rootRef
			return onFocusLost
		end
		if not lowerKnobIsSelected_upvr or not INLINED_7() then
			onFocusLost = nil
		end
		module_2.NextSelectionRight = onFocusLost
		local function INLINED_8() -- Internal function, doesn't exist in bytecode
			onFocusLost = arg1.props.NextSelectionUp
			return onFocusLost
		end
		if lowerKnobIsSelected_upvr or not INLINED_8() then
			onFocusLost = arg1.rootRef
		end
		module_2.NextSelectionUp = onFocusLost
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			onFocusLost = arg1.props.NextSelectionDown
			return onFocusLost
		end
		if lowerKnobIsSelected_upvr or not INLINED_9() then
			onFocusLost = arg1.rootRef
		end
		module_2.NextSelectionDown = onFocusLost
		local function INLINED_10() -- Internal function, doesn't exist in bytecode
			onFocusLost = arg1.lowerKnobRef
			return onFocusLost
		end
		if arg1.props.upperValue == arg1.props.min or not INLINED_10() then
			onFocusLost = arg1.upperKnobRef
			if not onFocusLost then
				onFocusLost = nil
			end
		end
		module_2.defaultChild = onFocusLost
		function onFocusLost() -- Line 488
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1.state.lowerKnobIsSelected or arg1.state.upperKnobIsSelected then
				arg1:setState({
					lowerKnobIsSelected = false;
					upperKnobIsSelected = false;
				})
			end
		end
		module_2.onFocusLost = onFocusLost
		onFocusLost = {}
		onFocusLost.Track = arg1:renderTrack(udim2_upvr, any_hasTwoKnobs_result1_upvr, var61_upvr)
		onFocusLost.LowerKnob = arg1:renderLowerKnob(udim2_upvr_2, upperKnobIsSelected_upvr, any_hasTwoKnobs_result1_upvr, arg1_8)
		onFocusLost.LowerKnobShadow = arg1:renderKnobShadow(arg1.props.knobShadowTransparencyLower, udim2_upvr_2)
		onFocusLost.UpperKnob = arg1:renderUpperKnob(var68_upvr, upperKnobIsSelected_upvr, any_hasTwoKnobs_result1_upvr, arg1_8)
		if not any_hasTwoKnobs_result1_upvr or not arg1:renderKnobShadow(arg1.props.knobShadowTransparencyUpper, var68_upvr) then
		end
		onFocusLost.UpperKnobShadow = nil
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[ImageSetComponent_upvr.Button], module_2, onFocusLost)
	end)
end
function any_extend_result1_upvr.didMount(arg1) -- Line 508
	-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
	local current_upvr = arg1.rootRef.current
	local var74_upvw
	var74_upvw = current_upvr.AncestryChanged:Connect(function() -- Line 516, Named "checkAncestry"
		--[[ Upvalues[3]:
			[1]: current_upvr (readonly)
			[2]: var74_upvw (read and write)
			[3]: arg1 (readonly)
		]]
		local var75
		if not current_upvr:IsDescendantOf(game) then
		else
			var74_upvw:Disconnect()
			if current_upvr:FindFirstAncestorWhichIsA("PluginGui") ~= nil then
				var75 = false
			else
				var75 = true
			end
			arg1.canUseUserInputService = var75
		end
	end)
	local var76
	if not var76 then
		-- KONSTANTWARNING: GOTO [36] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 14 start (CF ANALYSIS FAILED)
	var76 = var74_upvw:Disconnect
	var76()
	if current_upvr:FindFirstAncestorWhichIsA("PluginGui") ~= nil then
		var76 = false
	else
		var76 = true
	end
	arg1.canUseUserInputService = var76
	-- KONSTANTERROR: [23] 18. Error Block 14 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 534
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var77
	if var77 then
		var77 = arg1:stopListeningForDrag
		var77()
	end
	var77 = arg3.lowerKnobIsSelected
	if var77 then
		var77 = not arg1.state.lowerKnobIsSelected
	end
	if arg3.upperKnobIsSelected then
	end
	if arg1.props.onDragEnd ~= nil and (var77 or not arg1.state.upperKnobIsSelected) then
		arg1.props.onDragEnd()
	else
		if arg1.props.onDragStartLower ~= nil and not arg3.lowerKnobIsSelected and arg1.state.lowerKnobIsSelected then
			arg1.props.onDragStartLower()
			return
		end
		if arg1.props.onDragStartUpper ~= nil and not arg3.upperKnobIsSelected and arg1.state.upperKnobIsSelected then
			arg1.props.onDragStartUpper()
		end
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 557
	arg1:stopListeningForDrag()
end
function any_extend_result1_upvr.onInputBegan(arg1, arg2, arg3) -- Line 561
	if arg1.props.disabled then
	else
		if arg2.UserInputState ~= Enum.UserInputState.Begin then return end
		local UserInputType_3 = arg2.UserInputType
		if UserInputType_3 ~= Enum.UserInputType.MouseButton1 and UserInputType_3 ~= Enum.UserInputType.Touch then return end
		if UserInputType_3 == Enum.UserInputType.Touch and not arg3 then return end
		arg1:processDrag(arg2.Position.X)
		arg1:startListeningForDrag()
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1_upvr.startListeningForDrag(arg1) -- Line 585
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	local current_2 = arg1.rootRef.current
	if current_2 == nil then
	else
		if arg1.dragging then return end
		if arg1.canUseUserInputService then
			local function var81(arg1_10) -- Line 600
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if not arg1.dragging then
				else
					local UserInputType_2 = arg1_10.UserInputType
					if UserInputType_2 ~= Enum.UserInputType.MouseMovement and UserInputType_2 ~= Enum.UserInputType.Touch then return end
					if arg1_10.UserInputState ~= Enum.UserInputState.Change then return end
					arg1:processDrag(arg1_10.Position.X)
				end
			end
			if arg1.props.containerRef then
				arg1.moveConnection = arg1.props.containerRef.current.InputChanged:Connect(var81)
			else
				arg1.moveConnection = UserInputService_upvr.InputChanged:Connect(var81)
			end
			arg1.releaseConnection = UserInputService_upvr.InputEnded:Connect(function(arg1_11) -- Line 629
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local UserInputType = arg1_11.UserInputType
				if UserInputType ~= Enum.UserInputType.MouseButton1 and UserInputType ~= Enum.UserInputType.Touch then
				else
					arg1:stopListeningForDrag()
					if not arg1.props.containerRef then
						arg1:processOneKnobDrag(arg1_11.Position.X)
					end
				end
			end)
			arg1.focusLostConnection = UserInputService_upvr.WindowFocusReleased:Connect(function() -- Line 652
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:stopListeningForDrag()
			end)
		else
			local ImageButton = Instance.new("ImageButton")
			ImageButton.BackgroundTransparency = 1
			ImageButton.Image = ""
			ImageButton.Name = "SliderPluginGuiInputCapturer"
			ImageButton.Size = UDim2.new(1, 0, 1, 0)
			ImageButton.ZIndex = 100000
			arg1.moveConnection = ImageButton.MouseMoved:Connect(function(arg1_12) -- Line 672
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:processDrag(arg1_12)
			end)
			arg1.releaseConnection = ImageButton.MouseButton1Up:Connect(function(arg1_13) -- Line 676
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:stopListeningForDrag()
				arg1:processOneKnobDrag(arg1_13)
			end)
			arg1.focusLostConnection = ImageButton.MouseLeave:Connect(function(arg1_14) -- Line 681
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:stopListeningForDrag()
				arg1:processOneKnobDrag(arg1_14)
			end)
			ImageButton.Parent = current_2:FindFirstAncestorWhichIsA("PluginGui")
			arg1.inputCapturerButton = ImageButton
		end
		arg1.dragging = true
		if arg1.lowerKnobDrag and arg1.props.onDragStartLower ~= nil then
			arg1.props.onDragStartLower()
		end
		if arg1.upperKnobDrag and arg1.props.onDragStartUpper ~= nil then
			arg1.props.onDragStartUpper()
		end
	end
end
function any_extend_result1_upvr.getSteppedValue(arg1, arg2) -- Line 701
	local current = arg1.rootRef.current
	if current == nil then
		return 0
	end
	local min = arg1.props.min
	local stepInterval = arg1.props.stepInterval
	local X = current.AbsoluteSize.X
	return math.floor((math.clamp(arg2 - current.AbsolutePosition.X, 0, X) / X * (arg1.props.max - min) + min) / stepInterval + 0.5) * stepInterval
end
function any_extend_result1_upvr.processDrag(arg1, arg2) -- Line 719
	if arg1:hasTwoKnobs() then
		arg1:processTwoKnobDrag(arg2)
	else
		arg1:processOneKnobDrag(arg2)
	end
end
function any_extend_result1_upvr.processOneKnobDrag(arg1, arg2) -- Line 727
	if arg1:hasTwoKnobs() then
	else
		local any_getSteppedValue_result1 = arg1:getSteppedValue(arg2)
		arg1.lowerKnobDrag = true
		if any_getSteppedValue_result1 ~= arg1.props.lowerValue then
			arg1.props.onValueChanged(any_getSteppedValue_result1)
		end
	end
end
function any_extend_result1_upvr.processTwoKnobDrag(arg1, arg2) -- Line 740
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local any_getSteppedValue_result1_2 = arg1:getSteppedValue(arg2)
	if not arg1.lowerKnobDrag and not arg1.upperKnobDrag then
		if any_getSteppedValue_result1_2 == arg1.props.lowerValue then
			arg1.lowerKnobDrag = true
		end
		if any_getSteppedValue_result1_2 == arg1.props.upperValue then
			arg1.upperKnobDrag = true
			-- KONSTANTWARNING: GOTO [78] #52
		end
		-- KONSTANTWARNING: GOTO [78] #52
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 19. Error Block 45 start (CF ANALYSIS FAILED)
	local var96
	if arg1.lowerKnobDrag and arg1.upperKnobDrag then
		if var96 <= any_getSteppedValue_result1_2 - arg1.props.stepInterval then
			arg1.upperKnobDrag = true
			arg1.lowerKnobDrag = false
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if any_getSteppedValue_result1_2 + arg1.props.stepInterval <= arg1.props.lowerValue then
				arg1.upperKnobDrag = false
				arg1.lowerKnobDrag = true
				local _ = any_getSteppedValue_result1_2
				-- KONSTANTWARNING: GOTO [78] #52
			end
		end
	elseif arg1.lowerKnobDrag then
		if any_getSteppedValue_result1_2 <= any_getSteppedValue_result1_2 then
			-- KONSTANTWARNING: GOTO [78] #52
		end
	elseif arg1.upperKnobDrag and any_getSteppedValue_result1_2 <= any_getSteppedValue_result1_2 then
	end
	local function INLINED_11() -- Internal function, doesn't exist in bytecode
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return any_getSteppedValue_result1_2 ~= arg1.props.lowerValue
	end
	if any_getSteppedValue_result1_2 ~= arg1.props.upperValue or INLINED_11() then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		arg1.props.onValueChanged(any_getSteppedValue_result1_2, any_getSteppedValue_result1_2)
	end
	-- KONSTANTERROR: [29] 19. Error Block 45 end (CF ANALYSIS FAILED)
end
function any_extend_result1_upvr.stopListeningForDrag(arg1) -- Line 781
	if arg1.moveConnection ~= nil then
		arg1.moveConnection:Disconnect()
		arg1.moveConnection = nil
	end
	if arg1.releaseConnection ~= nil then
		arg1.releaseConnection:Disconnect()
		arg1.releaseConnection = nil
	end
	if arg1.focusLostConnection ~= nil then
		arg1.focusLostConnection:Disconnect()
		arg1.focusLostConnection = nil
	end
	if arg1.inputCapturerButton ~= nil then
		arg1.inputCapturerButton:Destroy()
		arg1.inputCapturerButton = nil
	end
	arg1.dragging = false
	arg1.lowerKnobDrag = false
	arg1.upperKnobDrag = false
	if arg1.props.onDragEnd ~= nil then
		arg1.props.onDragEnd()
	end
end
function any_extend_result1_upvr.hasTwoKnobs(arg1) -- Line 811
	local var98
	if arg1.props.upperValue == nil then
		var98 = false
	else
		var98 = true
	end
	return var98
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 815
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_5 = {}
	module_5.imageButtonRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_5))
end)