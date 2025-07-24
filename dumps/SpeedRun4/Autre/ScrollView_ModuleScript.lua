-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:51
-- Luau version 6, Types version 3
-- Time taken: 0.046575 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local console_upvr = LuauPolyfill.console
local tbl_5_upvr = {
	Value = {
		new = function(...) -- Line 37, Named "new"
			return {
				setOffset = function(arg1, arg2) -- Line 40, Named "setOffset"
				end;
				interpolate = function(arg1, ...) -- Line 43, Named "interpolate"
				end;
			}
		end;
	};
}
function tbl_5_upvr.attachNativeEvent(...) -- Line 49
	return nil
end
local tbl_14_upvr = {
	get = function(...) -- Line 58, Named "get"
		return {
			height = 100;
		}
	end;
}
local tbl_21 = {
	OS = "roblox";
}
local var14_upvw
function tbl_21.select(arg1) -- Line 68
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	return arg1[var14_upvw.OS]
end
var14_upvw = tbl_21
local var15_upvw = var14_upvw
local React_upvr = require(Parent.React)
local tbl_4_upvr = {
	findNodeHandle = function(...) -- Line 84, Named "findNodeHandle"
		return nil
	end;
}
local StyleSheet_upvr = require(Parent_2.StyleSheet.StyleSheet)
local tbl_upvr = {
	measureLayout = function(...) -- Line 103, Named "measureLayout"
	end;
}
local tbl_9_upvr = {
	addListener = function(...) -- Line 109, Named "addListener"
		return nil
	end;
}
local tbl_11_upvr = {
	beginScroll = function(...) -- Line 116, Named "beginScroll"
		warn("FrameRateLogger.beginScroll not implemented")
	end;
	endScroll = function(...) -- Line 119, Named "endScroll"
		warn("FrameRateLogger.endScroll not implemented")
	end;
}
local tbl_16_upvr = {
	blurTextInput = function(...) -- Line 125, Named "blurTextInput"
		warn("TextInputState.blurTextInput not implemented")
	end;
	currentlyFocusedInput = function(...) -- Line 128, Named "currentlyFocusedInput"
		warn("TextInputState.currentlyFocusedInput not implemented")
		return nil
	end;
	isTextInput = function(...) -- Line 132, Named "isTextInput"
		warn("TextInputState.isTextInput not implemented")
		return nil
	end;
}
local function _() -- Line 138
	warn("dismissKeyboard not implemented")
end
local function _(arg1) -- Line 142
	return arg1
end
local invariant_upvr = require(Parent_2.jsUtils.invariant)
local function _(arg1) -- Line 152
	local module_7 = {}
	module_7.outer = arg1
	module_7.inner = arg1
	return module_7
end
local ScrollViewContext = require(script.Parent.ScrollViewContext)
local default_upvr_2 = ScrollViewContext.default
local ScrollContentViewNativeComponent = require(script.Parent.ScrollContentViewNativeComponent)
local ScrollViewNativeComponent = require(script.Parent.ScrollViewNativeComponent)
if var15_upvw.OS == "android" then
	local tbl_7 = {
		NativeHorizontalScrollViewTuple = {"Frame", "Frame"};
		NativeVerticalScrollViewTuple = {ScrollViewNativeComponent, require(script.Parent.Parent.View.View)};
	}
else
	local tbl_8 = {
		NativeHorizontalScrollViewTuple = {ScrollViewNativeComponent, ScrollContentViewNativeComponent};
		NativeVerticalScrollViewTuple = {ScrollViewNativeComponent, ScrollContentViewNativeComponent};
	}
end
local any_extend_result1_upvr = React_upvr.Component:extend("ScrollView")
any_extend_result1_upvr.Context = default_upvr_2
local Map_upvr = LuauPolyfill.Map
local setAndForwardRef_upvr = require(script.Parent.Parent.Parent.Utilities.setAndForwardRef)
local default_upvr = require(script.Parent.ScrollViewCommands).default
local setTimeout_upvr = LuauPolyfill.setTimeout
function any_extend_result1_upvr.init(arg1, arg2) -- Line 953
	--[[ Upvalues[17]:
		[1]: Map_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: setAndForwardRef_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: default_upvr (readonly)
		[6]: Boolean_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: invariant_upvr (readonly)
		[9]: var15_upvw (read and write)
		[10]: Array_upvr (readonly)
		[11]: Object_upvr (readonly)
		[12]: console_upvr (readonly)
		[13]: tbl_14_upvr (readonly)
		[14]: setTimeout_upvr (readonly)
		[15]: tbl_11_upvr (readonly)
		[16]: tbl_16_upvr (readonly)
		[17]: tbl_5_upvr (readonly)
	]]
	arg1.props = arg2
	arg1._scrollAnimatedValueAttachment = nil
	arg1._stickyHeaderRefs = Map_upvr.new()
	arg1._headerLayoutYs = Map_upvr.new()
	arg1._keyboardWillOpenTo = nil
	arg1._additionalScrollOffset = 0
	arg1._isTouching = false
	arg1._lastMomentumScrollBeginTime = 0
	arg1._lastMomentumScrollEndTime = 0
	arg1._observedScrollSinceBecomingResponder = false
	arg1._becameResponderWhileAnimating = false
	arg1._preventNegativeScrollOffset = nil
	arg1._animated = nil
	arg1._subscriptionKeyboardWillShow = nil
	arg1._subscriptionKeyboardWillHide = nil
	arg1._subscriptionKeyboardDidShow = nil
	arg1._subscriptionKeyboardDidHide = nil
	arg1.state = {
		layoutHeight = nil;
	}
	arg1._listLayoutRef = React_upvr.createRef()
	local tbl = {}
	local function getForwardedRef() -- Line 986
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.scrollViewRef
	end
	tbl.getForwardedRef = getForwardedRef
	local function setLocalRef(arg1_2) -- Line 989
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._scrollViewRef = arg1_2
		if arg1_2 ~= nil then
			arg1_2.getScrollResponder = arg1.getScrollResponder
			arg1_2.getScrollableNode = arg1.getScrollableNode
			arg1_2.getInnerViewNode = arg1.getInnerViewNode
			arg1_2.getInnerViewRef = arg1.getInnerViewRef
			arg1_2.getNativeScrollRef = arg1.getNativeScrollRef
			arg1_2.scrollTo = arg1.scrollTo
			arg1_2.scrollToEnd = arg1.scrollToEnd
			arg1_2.flashScrollIndicators = arg1.flashScrollIndicators
			arg1_2.scrollResponderZoomTo = arg1.scrollResponderZoomTo
			arg1_2.scrollResponderScrollNativeHandleToKeyboard = arg1.scrollResponderScrollNativeHandleToKeyboard
		end
		return nil
	end
	tbl.setLocalRef = setLocalRef
	arg1._setNativeRef = setAndForwardRef_upvr(tbl)
	function arg1.getScrollResponder() -- Line 1023
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1
	end
	function arg1.getScrollableNode() -- Line 1028
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return tbl_4_upvr:findNodeHandle(arg1._scrollViewRef)
	end
	function arg1.getInnerViewNode() -- Line 1032
		--[[ Upvalues[2]:
			[1]: tbl_4_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return tbl_4_upvr:findNodeHandle(arg1._innerViewRef)
	end
	function arg1.getInnerViewRef() -- Line 1036
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1._innerViewRef
	end
	function arg1.getNativeScrollRef() -- Line 1040
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1._scrollViewRef
	end
	function arg1.scrollTo(arg1_3) -- Line 1055
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: default_upvr (copied, readonly)
			[3]: Boolean_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var51
		local var52
		local var53
		if arg1_3 ~= nil then
			var52 = arg1_3.y
			var51 = arg1_3.x
			var53 = arg1_3.animated
		end
		if arg1._scrollViewRef == nil or arg1._scrollViewRef._nativeRef.current == nil then
		else
			if not Boolean_upvr.toJSBoolean(var51) or not var51 then
			end
			if not Boolean_upvr.toJSBoolean(var52) or not var52 then
			end
			default_upvr.scrollTo(arg1._scrollViewRef, 0, 0, not not var53)
		end
	end
	function arg1.scrollToEnd(arg1_4) -- Line 1103
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: default_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var55 = false
		if arg1_4 ~= nil then
			var55 = arg1_4.animated
		end
		if var55 == false then
		else
		end
		if arg1._scrollViewRef == nil then
		else
			default_upvr.scrollToEnd(arg1._scrollViewRef, true)
		end
	end
	function arg1.flashScrollIndicators() -- Line 1119
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: default_upvr (copied, readonly)
		]]
		if arg1._scrollViewRef == nil then
		else
			default_upvr.flashScrollIndicators(arg1._scrollViewRef)
		end
	end
	function arg1.scrollResponderScrollNativeHandleToKeyboard(arg1_5, arg2_2, arg3) -- Line 1136
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: tbl_4_upvr (copied, readonly)
		]]
		local var58
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var58 = arg2_2
			return var58
		end
		if not Boolean_upvr.toJSBoolean(arg2_2) or not INLINED() then
			var58 = 0
		end
		arg1._additionalScrollOffset = var58
		var58 = Boolean_upvr.toJSBoolean(arg3)
		arg1._preventNegativeScrollOffset = var58
		var58 = arg1
		if var58._innerViewRef == nil then
		else
			var58 = arg1_5
			if typeof(var58) == "number" then
				tbl_upvr:measureLayout(arg1_5, tbl_4_upvr:findNodeHandle(arg1), arg1._textInputFocusError, arg1._inputMeasureAndScrollToKeyboard)
				return
			end
			arg1_5:measureLayout(arg1._innerViewRef, arg1._inputMeasureAndScrollToKeyboard, arg1._textInputFocusError)
		end
	end
	function arg1.scrollResponderZoomTo(arg1_6, arg2_3) -- Line 1172
		--[[ Upvalues[7]:
			[1]: invariant_upvr (copied, readonly)
			[2]: var15_upvw (copied, read and write)
			[3]: Array_upvr (copied, readonly)
			[4]: Object_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: console_upvr (copied, readonly)
			[7]: default_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var60
		if var15_upvw.OS ~= "ios" then
			var60 = false
		else
			var60 = true
		end
		invariant_upvr(var60, "zoomToRect is not implemented")
		var60 = Array_upvr
		var60 = Object_upvr.keys(arg1_6)
		if var60.indexOf(var60, "animated") ~= -1 then
			var60 = arg1_6.animated
			arg1._animated = var60
			arg1_6.animated = nil
		else
			var60 = arg2_3
			if typeof(var60) ~= "nil" then
				var60 = console_upvr
				var60 = "`scrollResponderZoomTo` `animated` argument is deprecated. Use `options.animated` instead"
				var60.warn(var60)
			end
		end
		var60 = arg1
		if var60._scrollViewRef == nil then
		else
			var60 = default_upvr
			var60 = arg1._scrollViewRef
			if arg2_3 == false then
			else
			end
			var60.zoomToRect(var60, arg1_6, true)
		end
	end
	function arg1._inputMeasureAndScrollToKeyboard(arg1_7, arg2_4, arg3, arg4) -- Line 1206
		--[[ Upvalues[3]:
			[1]: tbl_14_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: setTimeout_upvr (copied, readonly)
		]]
		local height_upvw = tbl_14_upvr:get("window").height
		local function scrollTextInputIntoVisibleRect_upvr() -- Line 1208, Named "scrollTextInputIntoVisibleRect"
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: height_upvw (read and write)
				[3]: arg2_4 (readonly)
				[4]: arg4 (readonly)
			]]
			if arg1._keyboardWillOpenTo ~= nil then
				height_upvw = arg1._keyboardWillOpenTo.endCoordinates.screenY
			end
			local var63 = arg2_4 - height_upvw + arg4 + arg1._additionalScrollOffset
			if arg1._preventNegativeScrollOffset == true then
				var63 = math.max(0, var63)
			end
			arg1.scrollTo({
				x = 0;
				y = var63;
				animated = true;
			})
			arg1._additionalScrollOffset = 0
			arg1._preventNegativeScrollOffset = false
		end
		if arg1._keyboardWillOpenTo == nil then
			setTimeout_upvr(function() -- Line 1234
				--[[ Upvalues[1]:
					[1]: scrollTextInputIntoVisibleRect_upvr (readonly)
				]]
				scrollTextInputIntoVisibleRect_upvr()
			end, 0)
		else
			scrollTextInputIntoVisibleRect_upvr()
		end
	end
	function arg1._handleScroll(arg1_8) -- Line 1242
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var15_upvw (copied, read and write)
			[3]: console_upvr (copied, readonly)
		]]
		if _G.__DEV__ and arg1.props.onScroll and arg1.props.scrollEventThrottle == nil and var15_upvw.OS == "ios" then
			console_upvr.log("You specified `onScroll` on a <ScrollView> but not ".."`scrollEventThrottle`. You will only receive one event. ".."Using `16` you get all the events but be aware that it may ".."cause frame drops, use a bigger number if you don't need as ".."much precision.")
		end
		arg1._observedScrollSinceBecomingResponder = true
		if arg1.props.onScroll then
			arg1.props.onScroll(arg1_8)
		end
	end
	function arg1._handleLayout(arg1_9) -- Line 1261
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.invertStickyHeaders == true then
			arg1:setState({
				layoutHeight = arg1_9.AbsoluteWindowSize.Y;
			})
		end
		if arg1.props.onLayout then
			arg1.props.onLayout(arg1_9)
		end
	end
	function arg1._overrideAutomaticCanvasSize(arg1_10, arg2_5) -- Line 1275
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._scrollViewRef == nil then
		else
			local current = arg1._scrollViewRef._nativeRef.current
			if current == nil then return end
			if arg1.props.AutomaticCanvasSize == Enum.AutomaticSize.XY or arg1.props.AutomaticCanvasSize == nil then
				current.CanvasSize = UDim2.new(0, arg1_10, 0, arg2_5)
				return
			end
			if arg1.props.AutomaticCanvasSize == Enum.AutomaticSize.X then
				current.CanvasSize = UDim2.new(0, arg1_10, 0, current.AbsoluteCanvasSize.Y)
				return
			end
			if arg1.props.AutomaticCanvasSize == Enum.AutomaticSize.Y then
				current.CanvasSize = UDim2.new(0, current.AbsoluteCanvasSize.X, 0, arg2_5)
			end
		end
	end
	function arg1._handleContentOnLayout(arg1_11) -- Line 1294
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local X = arg1_11.AbsoluteSize.X
		local Y = arg1_11.AbsoluteSize.Y
		if arg1.props.overrideAutomaticCanvasSize then
			arg1._overrideAutomaticCanvasSize(X, Y)
		end
		if arg1.props.onContentSizeChange then
			arg1.props.onContentSizeChange(X, Y)
		end
	end
	arg1._scrollViewRef = nil
	arg1._innerViewRef = nil
	arg1._setInnerViewRef = setAndForwardRef_upvr({
		getForwardedRef = function() -- Line 1309, Named "getForwardedRef"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.props.innerViewRef
		end;
		setLocalRef = function(arg1_12) -- Line 1312, Named "setLocalRef"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1._innerViewRef = arg1_12
			return nil
		end;
	})
	function arg1.scrollResponderKeyboardWillShow(arg1_13) -- Line 1348
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._keyboardWillOpenTo = arg1_13
		if arg1.props.onKeyboardWillShow then
			arg1.props.onKeyboardWillShow(arg1_13)
		end
	end
	function arg1.scrollResponderKeyboardWillHide(arg1_14) -- Line 1355
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._keyboardWillOpenTo = nil
		if arg1.props.onKeyboardWillHide then
			arg1.props.onKeyboardWillHide(arg1_14)
		end
	end
	function arg1.scrollResponderKeyboardDidShow(arg1_15) -- Line 1362
		--[[ Upvalues[2]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if Boolean_upvr.toJSBoolean(arg1_15) then
			arg1._keyboardWillOpenTo = arg1_15
		end
		if arg1.props.onKeyboardDidShow then
			arg1.props.onKeyboardDidShow(arg1_15)
		end
	end
	function arg1.scrollResponderKeyboardDidHide(arg1_16) -- Line 1373
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._keyboardWillOpenTo = nil
		if arg1.props.onKeyboardDidHide then
			arg1.props.onKeyboardDidHide(arg1_16)
		end
	end
	function arg1._handleMomentumScrollBegin(arg1_17) -- Line 1383
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._lastMomentumScrollBeginTime = os.clock() * 1000
		if arg1.props.onMomentumScrollBegin then
			arg1.props.onMomentumScrollBegin(arg1_17)
		end
	end
	function arg1._handleMomentumScrollEnd(arg1_18) -- Line 1393
		--[[ Upvalues[2]:
			[1]: tbl_11_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		tbl_11_upvr:endScroll()
		arg1._lastMomentumScrollEndTime = os.clock() * 1000
		if arg1.props.onMomentumScrollEnd then
			arg1.props.onMomentumScrollEnd(arg1_18)
		end
	end
	function arg1._handleScrollBeginDrag(arg1_19) -- Line 1408
		--[[ Upvalues[3]:
			[1]: tbl_11_upvr (copied, readonly)
			[2]: var15_upvw (copied, read and write)
			[3]: arg1 (readonly)
		]]
		tbl_11_upvr:beginScroll()
		if var15_upvw.OS == "android" and arg1.props.keyboardDismissMode == "on-drag" then
			warn("dismissKeyboard not implemented")
		end
		if arg1.props.onScrollBeginDrag then
			arg1.props.onScrollBeginDrag(arg1_19)
		end
	end
	function arg1._handleScrollEndDrag(arg1_20, arg2_6) -- Line 1421
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: tbl_11_upvr (copied, readonly)
		]]
		if not arg1:_isAnimating() and (not Boolean_upvr.toJSBoolean(nil) or nil.x == 0 and nil.y == 0) then
			tbl_11_upvr:endScroll()
		end
		if arg1.props.onScrollEndDrag then
			arg1.props.onScrollEndDrag(arg1_20, arg2_6)
		end
	end
	function arg1._isAnimating() -- Line 1441
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local _lastMomentumScrollEndTime = arg1._lastMomentumScrollEndTime
		if os.clock() * 1000 - _lastMomentumScrollEndTime >= 16 then
			_lastMomentumScrollEndTime = false
		else
			_lastMomentumScrollEndTime = true
		end
		return _lastMomentumScrollEndTime
	end
	function arg1._handleResponderGrant(arg1_21) -- Line 1451
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._observedScrollSinceBecomingResponder = false
		if arg1.props.onResponderGrant then
			arg1.props.onResponderGrant(arg1_21)
		end
		arg1._becameResponderWhileAnimating = arg1:_isAnimating()
	end
	function arg1._handleResponderReject() -- Line 1469
	end
	function arg1._handleResponderRelease(arg1_22) -- Line 1474
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: console_upvr (copied, readonly)
			[3]: tbl_16_upvr (copied, readonly)
		]]
		local var89
		if #arg1_22.nativeEvent.touches == 0 then
			var89 = false
		else
			var89 = true
		end
		arg1._isTouching = var89
		var89 = arg1.props
		if var89.onResponderRelease then
			var89 = arg1.props
			var89 = arg1_22
			var89.onResponderRelease(var89)
		end
		var89 = arg1_22.target
		if typeof(var89) == "number" then
			var89 = _G
			if var89.__DEV__ then
				var89 = console_upvr
				var89 = "Did not expect event target to be a number. Should have been a native component"
				var89.error(var89)
			end
		else
			local any_currentlyFocusedInput_result1_2 = tbl_16_upvr:currentlyFocusedInput()
			var89 = arg1.props.keyboardShouldPersistTaps
			if var89 ~= true then
				var89 = arg1.props.keyboardShouldPersistTaps
				if var89 ~= "always" then
					var89 = arg1:_keyboardIsDismissible()
					if var89 then
						var89 = arg1_22.target
						if var89 ~= any_currentlyFocusedInput_result1_2 then
							var89 = arg1._observedScrollSinceBecomingResponder
							if not var89 then
								var89 = arg1._becameResponderWhileAnimating
								if not var89 then
									var89 = tbl_16_upvr:blurTextInput
									var89(any_currentlyFocusedInput_result1_2)
								end
							end
						end
					end
				end
			end
		end
	end
	function arg1._handleResponderTerminationRequest() -- Line 1517
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return not arg1._observedScrollSinceBecomingResponder
	end
	function arg1._handleScrollShouldSetResponder() -- Line 1524
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.disableScrollViewPanResponder == true then
			return false
		end
		return arg1._isTouching
	end
	function arg1._handleStartShouldSetResponder(arg1_23) -- Line 1557
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_16_upvr (copied, readonly)
		]]
		if arg1.props.disableScrollViewPanResponder == true then
			return false
		end
		if arg1.props.keyboardShouldPersistTaps == "handled" and arg1:_keyboardIsDismissible() and arg1_23.target ~= tbl_16_upvr:currentlyFocusedInput() then
			return true
		end
		return false
	end
	function arg1._handleStartShouldSetResponderCapture(arg1_24) -- Line 1586
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: console_upvr (copied, readonly)
			[4]: tbl_16_upvr (copied, readonly)
		]]
		if arg1:_isAnimating() then
			return true
		end
		if arg1.props.disableScrollViewPanResponder == true then
			return false
		end
		local keyboardShouldPersistTaps = arg1.props.keyboardShouldPersistTaps
		local var96 = not Boolean_upvr.toJSBoolean(keyboardShouldPersistTaps)
		if not var96 then
			if keyboardShouldPersistTaps ~= "never" then
				var96 = false
			else
				var96 = true
			end
		end
		if typeof(arg1_24.target) == "number" then
			if _G.__DEV__ then
				console_upvr.error("Did not expect event target to be a number. Should have been a native component")
			end
			return false
		end
		if var96 and arg1:_keyboardIsDismissible() and arg1_24.target ~= nil then
			if not Boolean_upvr.toJSBoolean(tbl_16_upvr:isTextInput(arg1_24.target)) then
				return true
			end
		end
		return false
	end
	function arg1._keyboardIsDismissible() -- Line 1629
		--[[ Upvalues[3]:
			[1]: tbl_16_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var15_upvw (copied, read and write)
		]]
		local any_currentlyFocusedInput_result1 = tbl_16_upvr:currentlyFocusedInput()
		local var99 = false
		if any_currentlyFocusedInput_result1 ~= nil then
			var99 = tbl_16_upvr:isTextInput(any_currentlyFocusedInput_result1)
		end
		local var100 = true
		if arg1._keyboardWillOpenTo == nil then
			if var15_upvw.OS ~= "android" then
				var100 = false
			else
				var100 = true
			end
		end
		return var99 and var100
	end
	function arg1._handleTouchEnd(arg1_25, arg2_7) -- Line 1652
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._isTouching = false
		if arg1.props.onTouchEnd then
			arg1.props.onTouchEnd(arg1_25, arg2_7)
		end
	end
	function arg1._handleTouchCancel(arg1_26, arg2_8) -- Line 1668
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._isTouching = false
		if arg1.props.onTouchCancel then
			arg1.props.onTouchCancel(arg1_26, arg2_8)
		end
	end
	function arg1._handleTouchStart(arg1_27, arg2_9) -- Line 1687
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._isTouching = true
		if arg1.props.onTouchStart then
			arg1.props.onTouchStart(arg1_27, arg2_9)
		end
	end
	function arg1._handleTouchMove(arg1_28, arg2_10) -- Line 1705
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onTouchMove then
			arg1.props.onTouchMove(arg1_28, arg2_10)
		end
	end
	local var105
	if arg1.props.contentOffset and Boolean_upvr.toJSBoolean(arg1.props.contentOffset.y) then
		var105 = arg1.props.contentOffset.y
	else
		var105 = 0
	end
	local var106
	arg1._scrollAnimatedValue = tbl_5_upvr.Value.new(var105)
	if arg1.props.contentInset and Boolean_upvr.toJSBoolean(arg1.props.contentInset.top) then
		var106 = arg1.props.contentInset.top
	else
		var106 = 0
	end
	arg1._scrollAnimatedValue:setOffset(var106)
end
function any_extend_result1_upvr.componentDidMount(arg1) -- Line 1723
	--[[ Upvalues[3]:
		[1]: console_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: tbl_9_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var107
	if typeof(arg1.props.keyboardShouldPersistTaps) == "boolean" then
		if arg1.props.keyboardShouldPersistTaps == true then
			var107 = "true"
		else
			var107 = "false"
		end
		var107 = Boolean_upvr.toJSBoolean(arg1.props.keyboardShouldPersistTaps)
		if var107 then
		else
		end
		console_upvr.warn("'keyboardShouldPersistTaps={%s}' is deprecated. ":format(var107).."Use 'keyboardShouldPersistTaps=\"%s\"' instead":format("never"))
	end
	arg1._keyboardWillOpenTo = nil
	arg1._additionalScrollOffset = 0
	arg1._subscriptionKeyboardWillShow = tbl_9_upvr:addListener("keyboardWillShow", arg1.scrollResponderKeyboardWillShow)
	arg1._subscriptionKeyboardWillHide = tbl_9_upvr:addListener("keyboardWillHide", arg1.scrollResponderKeyboardWillHide)
	arg1._subscriptionKeyboardDidShow = tbl_9_upvr:addListener("keyboardDidShow", arg1.scrollResponderKeyboardDidShow)
	arg1._subscriptionKeyboardDidHide = tbl_9_upvr:addListener("keyboardDidHide", arg1.scrollResponderKeyboardDidHide)
	arg1:_updateAnimatedNodeAttachment()
end
function any_extend_result1_upvr.componentDidUpdate(arg1, arg2) -- Line 1745
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var108
	if arg2.contentInset then
		var108 = arg2.contentInset.top
	else
		var108 = 0
	end
	if arg1.props.contentInset then
		local _ = arg1.props.contentInset.top
	else
		local var110
	end
	if var108 ~= 0 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var110 = 0
			return var110
		end
		if not Boolean_upvr.toJSBoolean(0) or not INLINED_2() then
			var110 = 0
		end
		arg1._scrollAnimatedValue:setOffset(var110)
	end
	arg1:_updateAnimatedNodeAttachment()
end
function any_extend_result1_upvr.componentWillUnmount(arg1) -- Line 1755
	if arg1._subscriptionKeyboardWillShow ~= nil then
		arg1._subscriptionKeyboardWillShow:remove()
	end
	if arg1._subscriptionKeyboardWillHide ~= nil then
		arg1._subscriptionKeyboardWillHide:remove()
	end
	if arg1._subscriptionKeyboardDidShow ~= nil then
		arg1._subscriptionKeyboardDidShow:remove()
	end
	if arg1._subscriptionKeyboardDidHide ~= nil then
		arg1._subscriptionKeyboardDidHide:remove()
	end
	if arg1._scrollAnimatedValueAttachment then
		arg1._scrollAnimatedValueAttachment:detach()
	end
end
function any_extend_result1_upvr._textInputFocusError() -- Line 1774
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	console_upvr.warn("Error measuring text field.")
end
function any_extend_result1_upvr._getKeyForIndex(arg1, arg2) -- Line 1778
	local var111 = arg2[arg1]
	if var111 then
		return var111.key
	end
	return var111
end
function any_extend_result1_upvr._updateAnimatedNodeAttachment(arg1) -- Line 1783
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	if arg1._scrollAnimatedValueAttachment then
		arg1._scrollAnimatedValueAttachment:detach()
	end
	if arg1.props.stickyHeaderIndices and 0 < #arg1.props.stickyHeaderIndices then
		arg1._scrollAnimatedValueAttachment = tbl_5_upvr:attachNativeEvent(arg1._scrollViewRef, "onScroll", {{
			nativeEvent = {
				contentOffset = {
					y = arg1._scrollAnimatedValue;
				};
			};
		}})
	end
end
function any_extend_result1_upvr._setStickyHeaderRef(arg1, arg2, arg3) -- Line 1796
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg3) then
		arg1._stickyHeaderRefs:set(arg2, arg3)
	else
		arg1._stickyHeaderRefs:delete(arg2)
	end
end
function any_extend_result1_upvr._onStickyHeaderLayout(arg1, arg2, arg3, arg4) -- Line 1804
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	local stickyHeaderIndices_3 = arg1.props.stickyHeaderIndices
	if not stickyHeaderIndices_3 then
	else
		local any_toArray_result1 = React_upvr.Children.toArray(arg1.props.children)
		if arg4 ~= arg1._getKeyForIndex(arg2, any_toArray_result1) then return end
		local y = arg3.nativeEvent.layout.y
		arg1._headerLayoutYs:set(arg4, y)
		local var124 = stickyHeaderIndices_3[Array_upvr.indexOf(stickyHeaderIndices_3, arg2) - 1]
		if var124 ~= nil then
			local any_get_result1 = arg1._stickyHeaderRefs:get(arg1._getKeyForIndex(var124, any_toArray_result1))
			if Boolean_upvr.toJSBoolean(any_get_result1) and any_get_result1.setNextHeaderY then
				any_get_result1:setNextHeaderY(y)
			end
		end
	end
end
local NativeHorizontalScrollViewTuple_upvw = tbl_8.NativeHorizontalScrollViewTuple
local NativeVerticalScrollViewTuple_upvw = tbl_8.NativeVerticalScrollViewTuple
local HttpService_upvr = game:GetService("HttpService")
local ScrollViewStickyHeader_upvr = require(script.Parent.ScrollViewStickyHeader)
local HORIZONTAL_upvr = ScrollViewContext.HORIZONTAL
local VERTICAL_upvr = ScrollViewContext.VERTICAL
local var132_upvw
local processDecelerationRate_upvr = require(script.Parent.processDecelerationRate)
function any_extend_result1_upvr.render(arg1) -- Line 1827
	--[[ Upvalues[16]:
		[1]: NativeHorizontalScrollViewTuple_upvw (read and write)
		[2]: NativeVerticalScrollViewTuple_upvw (read and write)
		[3]: Array_upvr (readonly)
		[4]: invariant_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: Boolean_upvr (readonly)
		[8]: ScrollViewStickyHeader_upvr (readonly)
		[9]: default_upvr_2 (readonly)
		[10]: HORIZONTAL_upvr (readonly)
		[11]: VERTICAL_upvr (readonly)
		[12]: Object_upvr (readonly)
		[13]: var15_upvw (read and write)
		[14]: var132_upvw (read and write)
		[15]: StyleSheet_upvr (readonly)
		[16]: processDecelerationRate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 199 start (CF ANALYSIS FAILED)
	local var167
	if arg1.props.horizontal == true then
		var167 = NativeHorizontalScrollViewTuple_upvw
	else
		var167 = NativeVerticalScrollViewTuple_upvw
	end
	local unpacked_value_1, unpacked_value_2_2 = table.unpack(var167, 1, 2)
	if _G.__DEV__ and arg1.props.style ~= nil then
		local style_upvr_2 = arg1.props.style
		local function var171(arg1_33) -- Line 1839
			--[[ Upvalues[1]:
				[1]: style_upvr_2 (readonly)
			]]
			local var173 = false
			if type(style_upvr_2) == "table" then
				if style_upvr_2[arg1_33] == nil then
					var173 = false
				else
					var173 = true
				end
			end
			return var173
		end
		local any_filter_result1_2 = Array_upvr.filter({"alignItems", "justifyContent"}, var171)
		if #any_filter_result1_2 ~= 0 then
			var171 = false
		else
			var171 = true
		end
		invariant_upvr(var171, "ScrollView child layout ("..HttpService_upvr:JSONEncode(any_filter_result1_2)..") must be applied through the contentContainerStyle prop.")
	end
	if arg1.props.onContentSizeChange == nil then
		style_upvr_2 = nil
	else
		style_upvr_2 = {}
		style_upvr_2.onLayout = arg1._handleContentOnLayout
	end
	local stickyHeaderIndices_upvr = arg1.props.stickyHeaderIndices
	local var178
	if stickyHeaderIndices_upvr ~= nil and 0 < #stickyHeaderIndices_upvr then
		local any_toArray_result1_3_upvr = React_upvr.Children.toArray(arg1.props.children)
		function var178(arg1_34, arg2) -- Line 1863
			--[[ Upvalues[7]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: stickyHeaderIndices_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: ScrollViewStickyHeader_upvr (copied, readonly)
				[6]: React_upvr (copied, readonly)
				[7]: any_toArray_result1_3_upvr (readonly)
			]]
			local var179
			if Boolean_upvr.toJSBoolean(arg1_34) then
				var179 = Array_upvr.indexOf(stickyHeaderIndices_upvr, arg2)
			else
				var179 = -1
			end
			if -1 < var179 then
				local key_upvr = arg1_34.key
				local var181 = stickyHeaderIndices_upvr
				if arg1.props.StickyHeaderComponent then
					var181 = arg1.props.StickyHeaderComponent
				else
					var181 = ScrollViewStickyHeader_upvr
				end
				return React_upvr.createElement(var181, {
					Name = "StickyHeaderComponent";
					key = key_upvr;
					nativeID = "StickyHeader-"..tostring(key_upvr);
					ref = function(arg1_35) -- Line 1875, Named "ref"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: key_upvr (readonly)
						]]
						return arg1:_setStickyHeaderRef(key_upvr, arg1_35)
					end;
					nextHeaderLayoutY = arg1._headerLayoutYs:get(arg1._getKeyForIndex(var181[var179 + 1], any_toArray_result1_3_upvr));
					onLayout = function(arg1_36) -- Line 1879, Named "onLayout"
						--[[ Upvalues[3]:
							[1]: arg1 (copied, readonly)
							[2]: arg2 (readonly)
							[3]: key_upvr (readonly)
						]]
						return arg1:_onStickyHeaderLayout(arg2, arg1_36, key_upvr)
					end;
					scrollAnimatedValue = arg1._scrollAnimatedValue;
					inverted = arg1.props.invertStickyHeaders;
					hiddenOnScroll = arg1.props.stickyHeaderHiddenOnScroll;
					scrollViewHeight = arg1.state.layoutHeight;
				}, arg1_34)
			end
			return arg1_34
		end
	end
	any_toArray_result1_3_upvr = React_upvr.createElement
	if arg1.props.horizontal == true then
		var178 = HORIZONTAL_upvr
	else
		var178 = VERTICAL_upvr
	end
	;({}).value = var178
	var178 = React_upvr.createElement
	local tbl_12 = {
		ref = arg1._listLayoutRef;
		key = "layout";
	}
	if arg1.props.horizontal then
		-- KONSTANTWARNING: GOTO [152] #107
	end
	tbl_12.Name = "VerticalLayout"
	if arg1.props.horizontal then
	else
	end
	tbl_12.FillDirection = Enum.FillDirection.Vertical
	if arg1.props.horizontal then
		-- KONSTANTWARNING: GOTO [188] #128
	end
	-- KONSTANTERROR: [0] 1. Error Block 199 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [174] 120. Error Block 201 start (CF ANALYSIS FAILED)
	if arg1.props.layoutStyle then
	else
	end
	tbl_12.VerticalAlignment = Enum.VerticalAlignment.Top
	if arg1.props.horizontal then
		if arg1.props.layoutStyle then
		else
		end
	else
	end
	tbl_12.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tbl_12.SortOrder = Enum.SortOrder.LayoutOrder
	any_toArray_result1_3_upvr = any_toArray_result1_3_upvr(default_upvr_2.Provider, {}, var178("UIListLayout", tbl_12), Array_upvr.map(any_toArray_result1_3_upvr, var178))
	any_toArray_result1_3_upvr = Array_upvr.isArray(stickyHeaderIndices_upvr)
	if any_toArray_result1_3_upvr then
		if 0 >= #stickyHeaderIndices_upvr then
			any_toArray_result1_3_upvr = false
		else
			any_toArray_result1_3_upvr = true
		end
	end
	local tbl_17 = {
		style = arg1.props.contentContainerStyle;
	}
	if arg1.props.horizontal then
		-- KONSTANTWARNING: GOTO [272] #187
	end
	tbl_17.Size = UDim2.new(1, 0, 0, 0)
	if arg1.props.horizontal then
	else
	end
	tbl_17.AutomaticSize = Enum.AutomaticSize.Y
	local var187
	if var15_upvw.OS == "android" and any_toArray_result1_3_upvr then
		var187 = false
	else
		var187 = arg1.props.removeClippedSubviews
	end
	tbl_17.removeClippedSubviews = var187
	var187 = false
	tbl_17.collapsable = var187
	local any_createElement_result1_2 = React_upvr.createElement(unpacked_value_2_2, Object_upvr.assign({}, style_upvr_2, {
		ref = arg1._setInnerViewRef;
	}, tbl_17), any_toArray_result1_3_upvr)
	if arg1.props.alwaysBounceHorizontal ~= nil then
	else
	end
	if arg1.props.alwaysBounceVertical ~= nil then
	else
	end
	if arg1.props.horizontal == true then
		local _ = var132_upvw.baseHorizontal
	else
	end
	local tbl_10 = {
		alwaysBounceHorizontal = arg1.props.horizontal;
		alwaysBounceVertical = not arg1.props.horizontal;
	}
	var187 = StyleSheet_upvr.compose(var132_upvw.baseVertical, arg1.props.style)
	tbl_10.style = var187
	var187 = Object_upvr.None
	tbl_10.onContentSizeChange = var187
	var187 = arg1._handleLayout
	tbl_10.onLayout = var187
	var187 = arg1._handleMomentumScrollBegin
	tbl_10.onMomentumScrollBegin = var187
	var187 = arg1._handleMomentumScrollEnd
	tbl_10.onMomentumScrollEnd = var187
	var187 = arg1._handleResponderGrant
	tbl_10.onResponderGrant = var187
	var187 = arg1._handleResponderReject
	tbl_10.onResponderReject = var187
	var187 = arg1._handleResponderRelease
	tbl_10.onResponderRelease = var187
	var187 = arg1._handleResponderTerminationRequest
	tbl_10.onResponderTerminationRequest = var187
	var187 = arg1._handleScrollBeginDrag
	tbl_10.onScrollBeginDrag = var187
	var187 = arg1._handleScrollEndDrag
	tbl_10.onScrollEndDrag = var187
	var187 = arg1._handleScrollShouldSetResponder
	tbl_10.onScrollShouldSetResponder = var187
	var187 = arg1._handleStartShouldSetResponder
	tbl_10.onStartShouldSetResponder = var187
	var187 = arg1._handleStartShouldSetResponderCapture
	tbl_10.onStartShouldSetResponderCapture = var187
	var187 = arg1._handleTouchEnd
	tbl_10.onTouchEnd = var187
	var187 = arg1._handleTouchMove
	tbl_10.onTouchMove = var187
	var187 = arg1._handleTouchStart
	tbl_10.onTouchStart = var187
	var187 = arg1._handleTouchCancel
	tbl_10.onTouchCancel = var187
	var187 = arg1._handleScroll
	tbl_10.onScroll = var187
	if any_toArray_result1_3_upvr then
		var187 = 1
	else
		var187 = arg1.props.scrollEventThrottle
	end
	tbl_10.scrollEventThrottle = var187
	if arg1.props.onMomentumScrollBegin or arg1.props.onMomentumScrollEnd then
	else
	end
	tbl_10.sendMomentumEvents = false
	if arg1.props.snapToStart == false then
		-- KONSTANTWARNING: GOTO [479] #307
	end
	tbl_10.snapToStart = true
	if arg1.props.snapToEnd == false then
	else
	end
	tbl_10.snapToEnd = true
	local tbl_6 = {}
	if arg1.props.pagingEnabled == true then
		if arg1.props.snapToInterval == nil then
			if arg1.props.snapToOffsets ~= nil then
			else
			end
		end
	end
	tbl_6.ios = true
	if arg1.props.pagingEnabled ~= true then
		if arg1.props.snapToInterval == nil then
			if arg1.props.snapToOffsets == nil then
			else
			end
		end
	end
	tbl_6.android = true
	tbl_10.pagingEnabled = var15_upvw.select(tbl_6)
	if arg1.props.overrideAutomaticCanvasSize then
	else
	end
	tbl_10.AutomaticCanvasSize = nil
	local any_assign_result1 = Object_upvr.assign(table.clone(arg1.props), tbl_10)
	local decelerationRate = arg1.props.decelerationRate
	if decelerationRate ~= nil then
		any_assign_result1.decelerationRate = processDecelerationRate_upvr(decelerationRate)
	end
	local refreshControl = arg1.props.refreshControl
	if Boolean_upvr.toJSBoolean(refreshControl) then
		if var15_upvw.OS == "ios" or var15_upvw.OS == "roblox" then
			return React_upvr.createElement(unpacked_value_1, Object_upvr.assign(table.clone(any_assign_result1), {
				ref = arg1._setNativeRef;
			}), refreshControl, any_createElement_result1_2)
		end
		if var15_upvw.OS == "android" then
			local style = any_assign_result1.style
			local tbl_13 = {
				outer = style;
				inner = style;
			}
			local module_6 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_6.style = StyleSheet_upvr.compose(var132_upvw.baseVertical, tbl_13.outer)
			local module_2 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_2.style = StyleSheet_upvr.compose(var132_upvw.baseVertical, tbl_13.inner)
			module_2.ref = arg1._setNativeRef
			return React_upvr.cloneElement(refreshControl, Object_upvr.assign(module_6), React_upvr.createElement(unpacked_value_1, Object_upvr.assign({}, any_assign_result1, module_2), any_createElement_result1_2))
		end
	end
	any_assign_result1.ref = arg1._setNativeRef
	do
		return React_upvr.createElement(unpacked_value_1, any_assign_result1, any_createElement_result1_2)
	end
	-- KONSTANTERROR: [174] 120. Error Block 201 end (CF ANALYSIS FAILED)
end
var132_upvw = StyleSheet_upvr.create({
	baseVertical = {
		ScrollingDirection = Enum.ScrollingDirection.Y;
	};
	baseHorizontal = {
		ScrollingDirection = Enum.ScrollingDirection.X;
	};
})
local any_forwardRef_result1 = React_upvr.forwardRef(function(arg1, arg2) -- Line 2058, Named "Wrapper"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local module = {}
	module.scrollViewRef = arg2
	return React_upvr.createElement(any_extend_result1_upvr, Object_upvr.assign(table.clone(arg1), module))
end)
any_forwardRef_result1.Context = default_upvr_2
any_forwardRef_result1.displayName = "ScrollView"
return any_forwardRef_result1