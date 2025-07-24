-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:24
-- Luau version 6, Types version 3
-- Time taken: 0.003415 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local React_upvr = require(GenericAbuseReporting.Parent.React)
local Foundation = require(Parent.Foundation)
local useLayerCollector_upvr = require(Parent.UIBlox).Core.Layout.LayerCollector.useLayerCollector
local View_upvr = Foundation.View
local ScrollView_upvr = Foundation.ScrollView
local ScrollBarVisibility_upvr = Foundation.Enums.ScrollBarVisibility
return React_upvr.forwardRef(function(arg1, arg2) -- Line 21
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: useLayerCollector_upvr (readonly)
		[3]: View_upvr (readonly)
		[4]: ScrollView_upvr (readonly)
		[5]: ScrollBarVisibility_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.zero)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.zero)
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(true)
	local any_useState_result1, any_useState_result2_upvr_4 = React_upvr.useState(false)
	local absoluteSize = useLayerCollector_upvr().absoluteSize
	React_upvr.useLayoutEffect(function() -- Line 30
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_upvr_3 (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useState_result2_upvr_3(any_useRef_result1_upvr.current.AbsoluteCanvasSize)
			any_useState_result2_upvr_2(any_useRef_result1_upvr.current.AbsoluteWindowSize)
			local any_Connect_result1_upvr = any_useRef_result1_upvr.current:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function() -- Line 37
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_3 (copied, readonly)
					[2]: any_useRef_result1_upvr (copied, readonly)
				]]
				any_useState_result2_upvr_3(any_useRef_result1_upvr.current.AbsoluteCanvasSize)
			end)
			local any_Connect_result1_upvr_3 = any_useRef_result1_upvr.current:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 42
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
					[2]: any_useRef_result1_upvr (copied, readonly)
				]]
				any_useState_result2_upvr_2(any_useRef_result1_upvr.current.AbsoluteWindowSize)
			end)
			return function() -- Line 46
				--[[ Upvalues[2]:
					[1]: any_Connect_result1_upvr (readonly)
					[2]: any_Connect_result1_upvr_3 (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
				any_Connect_result1_upvr_3:Disconnect()
			end
		end
		function any_Connect_result1_upvr() -- Line 51
		end
		return any_Connect_result1_upvr
	end, {any_useRef_result1_upvr.current, absoluteSize})
	React_upvr.useEffect(function() -- Line 54
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: any_useState_result1_3_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: any_useState_result2_upvr_4 (readonly)
		]]
		if any_useRef_result1_upvr.current then
			local any_Connect_result1_upvr_2 = any_useRef_result1_upvr.current:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 56
				--[[ Upvalues[5]:
					[1]: any_useRef_result1_upvr (copied, readonly)
					[2]: any_useState_result1_4_upvr (copied, readonly)
					[3]: any_useState_result1_3_upvr (copied, readonly)
					[4]: any_useState_result2_upvr (copied, readonly)
					[5]: any_useState_result2_upvr_4 (copied, readonly)
				]]
				local CanvasPosition = any_useRef_result1_upvr.current.CanvasPosition
				if any_useState_result1_4_upvr.Y == any_useState_result1_3_upvr.Y then
					any_useState_result2_upvr(true)
					any_useState_result2_upvr_4(true)
				else
					if CanvasPosition.Y <= 0 then
						any_useState_result2_upvr(true)
						return
					end
					if any_useState_result1_4_upvr.Y - any_useState_result1_3_upvr.Y <= CanvasPosition.Y then
						any_useState_result2_upvr_4(true)
						return
					end
					any_useState_result2_upvr(false)
					any_useState_result2_upvr_4(false)
				end
			end)
			return function() -- Line 71
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr_2 (readonly)
				]]
				any_Connect_result1_upvr_2:Disconnect()
			end
		end
		function any_Connect_result1_upvr_2() -- Line 75
		end
		return any_Connect_result1_upvr_2
	end, {any_useRef_result1_upvr.current, absoluteSize, any_useState_result1_4_upvr, any_useState_result1_3_upvr})
	local module = {}
	local tbl = {}
	local udim2 = UDim2.new(1, -15, 0, arg1.gradientHeight)
	tbl.Size = udim2
	if not any_useState_result1_2 then
		udim2 = "bg-surface-300"
	else
		udim2 = nil
	end
	tbl.tag = udim2
	udim2 = 2
	tbl.ZIndex = udim2
	udim2 = {}
	udim2.UIGradient = React_upvr.createElement("UIGradient", {
		Rotation = 90;
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)});
	})
	module.TopGradient = React_upvr.createElement(View_upvr, tbl, udim2)
	local tbl_3 = {}
	udim2 = UDim2.new(0, 0, 1, -arg1.gradientHeight)
	tbl_3.Position = udim2
	udim2 = UDim2.new(1, -15, 0, arg1.gradientHeight)
	tbl_3.Size = udim2
	if not any_useState_result1 then
		udim2 = "bg-surface-300"
	else
		udim2 = nil
	end
	tbl_3.tag = udim2
	udim2 = 2
	tbl_3.ZIndex = udim2
	udim2 = {}
	udim2.UIGradient = React_upvr.createElement("UIGradient", {
		Rotation = 270;
		Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(1, 1)});
	})
	module.BottomGradient = React_upvr.createElement(View_upvr, tbl_3, udim2)
	local tbl_2 = {}
	udim2 = arg1.Size
	if not udim2 then
		udim2 = UDim2.new(1, 0, 1, 0)
	end
	tbl_2.Size = udim2
	tbl_2.ZIndex = arg1.ZIndex
	;({}).AutomaticCanvasSize = Enum.AutomaticSize.Y
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).CanvasSize = UDim2.fromOffset(0, 0)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).scrollBarVisibility = ScrollBarVisibility_upvr.Always
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).ScrollingDirection = Enum.ScrollingDirection.Y
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.scroll = {}
	tbl_2.scrollingFrameRef = any_useRef_result1_upvr
	tbl_2.ref = arg2
	module.ScrollView = React_upvr.createElement(ScrollView_upvr, tbl_2, arg1.children)
	return React_upvr.createElement(View_upvr, {
		tag = "size-full";
	}, module)
end)