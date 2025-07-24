-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:54
-- Luau version 6, Types version 3
-- Time taken: 0.004589 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local tbl_upvr = {}
local function new(...) -- Line 29
	return nil
end
tbl_upvr.new = new
local tbl_3_upvr = {
	new = function(...) -- Line 35, Named "new"
		return nil
	end;
}
local React_upvr = require(Parent_2.React)
local tbl_4_upvr = {
	OS = "roblox";
}
local any_extend_result1 = React_upvr.Component:extend("ScrollViewStickyHeader")
function any_extend_result1.init(arg1, arg2) -- Line 108
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	warn("ScrollViewStickyHeader not fully implemented")
	arg1.props = arg2
	arg1.state = {
		measured = false;
		layoutY = 0;
		layoutHeight = 0;
		nextHeaderLayoutY = arg1.props.nextHeaderLayoutY;
		translateY = nil;
	}
	arg1._translateY = nil
	arg1._shouldRecreateTranslateY = true
	local var12 = true
	arg1._haveReceivedInitialZeroTranslateY = var12
	if tbl_4_upvr.OS == "android" then
		var12 = 15
	else
		var12 = 64
	end
	arg1._debounceTimeout = var12
	function arg1.setNextHeaderY(arg1_2, arg2_2) -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._shouldRecreateTranslateY = true
		local tbl = {}
		tbl.nextHeaderLayoutY = arg2_2
		arg1.setState(tbl)
	end
	function arg1._onLayout(arg1_3, arg2_3) -- Line 135
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
		]]
		local y = arg2_3.nativeEvent.layout.y
		local height = arg2_3.nativeEvent.layout.height
		if y ~= arg1.state.layoutY or height ~= arg1.state.layoutHeight or arg1.state.measured ~= true then
			arg1._shouldRecreateTranslateY = true
		end
		arg1:setState({
			measured = true;
			layoutY = y;
			layoutHeight = height;
		})
		arg1.props:onLayout(arg2_3)
		local any_only_result1 = React_upvr.Children.only(arg1.props.children)
		if any_only_result1.props.onLayout then
			any_only_result1.props:onLayout(arg2_3)
		end
	end
	function arg1._setComponentRef(arg1_4, arg2_4) -- Line 154
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._ref = arg2_4
	end
end
function any_extend_result1.componentWillUnmount(arg1) -- Line 159
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: clearTimeout_upvr (readonly)
	]]
	if arg1._translateY ~= nil and arg1._animatedValueListenerId ~= nil then
		arg1._translateY:removeListener(arg1._animatedValueListenerId)
	end
	if Boolean_upvr.toJSBoolean(arg1._timer) then
		clearTimeout_upvr(arg1._timer)
	end
end
function any_extend_result1.UNSAFE_componentWillReceiveProps(arg1, arg2) -- Line 168
	if arg2.scrollViewHeight ~= arg1.props.scrollViewHeight or arg2.scrollAnimatedValue ~= arg1.props.scrollAnimatedValue or arg2.inverted ~= arg1.props.inverted then
		arg1._shouldRecreateTranslateY = true
	end
end
local setTimeout_upvr = LuauPolyfill.setTimeout
function any_extend_result1.updateTranslateListener(arg1, arg2, arg3, arg4) -- Line 178
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: clearTimeout_upvr (readonly)
		[4]: setTimeout_upvr (readonly)
	]]
	local var28
	if var28 ~= nil then
		var28 = arg1._animatedValueListenerId
		if var28 ~= nil then
			var28 = arg1._translateY:removeListener
			var28(arg1._animatedValueListenerId)
		end
	end
	if Boolean_upvr.toJSBoolean(arg4) then
		var28 = tbl_upvr.new(arg2, arg4)
	else
		var28 = arg2
	end
	arg1.translateY = var28
	var28 = false
	arg1._shouldRecreateTranslateY = var28
	if not arg3 then
	else
		var28 = arg1._animatedValueListener
		if not var28 then
			function var28(arg1_6) -- Line 209
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: Boolean_upvr (copied, readonly)
					[3]: clearTimeout_upvr (copied, readonly)
					[4]: setTimeout_upvr (copied, readonly)
				]]
				local value_upvr = arg1_6.value
				if value_upvr == 0 then
					if not arg1._haveReceivedInitialZeroTranslateY then
						arg1._haveReceivedInitialZeroTranslateY = true
						return
					end
				end
				if Boolean_upvr.toJSBoolean(arg1._timer) then
					clearTimeout_upvr(arg1._timer)
				end
				arg1._timer = setTimeout_upvr(function() -- Line 220
					--[[ Upvalues[2]:
						[1]: value_upvr (readonly)
						[2]: arg1 (copied, readonly)
					]]
					if value_upvr ~= arg1.state.translateY then
						arg1:setState({
							translateY = value_upvr;
						})
					end
				end, arg1._debounceTimeout)
			end
			arg1._animatedValueListener = var28
		end
		var28 = arg1.state.translateY
		if var28 ~= 0 then
			var28 = arg1.state.translateY
			if var28 ~= nil then
				var28 = false
				arg1._haveReceivedInitialZeroTranslateY = var28
			end
		end
		var28 = arg2:addListener(arg1._animatedValueListener)
		arg1._animatedValueListenerId = var28
	end
end
local var32_upvw
function any_extend_result1.render(arg1) -- Line 233
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: var32_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 17. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 17. Error Block 5 end (CF ANALYSIS FAILED)
end
var32_upvw = require(Parent.StyleSheet.StyleSheet).create({
	header = {
		zIndex = 10;
		position = "relative";
	};
	fill = {
		flex = 1;
	};
})
return any_extend_result1