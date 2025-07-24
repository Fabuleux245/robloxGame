-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:18
-- Luau version 6, Types version 3
-- Time taken: 0.003405 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent.Parent
local useIsMouseAndKeyboard_upvr = require(Parent.Utility.useIsMouseAndKeyboard)
local React_upvr = require(Parent.Parent.React)
local Utils_upvr = require(Parent_2.HorizontalNav.Utils)
local GradientFrame_upvr = require(Parent_2.HorizontalNav.GradientFrame)
local ArrowFrame_upvr = require(Parent_2.HorizontalNav.ArrowFrame)
local IntroScroll_upvr = require(Parent_2.HorizontalNav.IntroScroll)
return function(arg1) -- Line 56, Named "ScrollingListWithArrowsAndGradient"
	--[[ Upvalues[6]:
		[1]: useIsMouseAndKeyboard_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: GradientFrame_upvr (readonly)
		[5]: ArrowFrame_upvr (readonly)
		[6]: IntroScroll_upvr (readonly)
	]]
	local useIsMouseAndKeyboard_upvr_result1_upvr = useIsMouseAndKeyboard_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useBinding_result1, any_useBinding_result2_upvr_3 = React_upvr.useBinding(false)
	local any_useBinding_result1_3, any_useBinding_result2_upvr_2 = React_upvr.useBinding(false)
	local any_useBinding_result1_2, any_useBinding_result2_upvr = React_upvr.useBinding(Vector2.new(0, 0))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2) -- Line 70
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: Utils_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: useIsMouseAndKeyboard_upvr_result1_upvr (readonly)
			[5]: any_useBinding_result2_upvr_3 (readonly)
			[6]: any_useBinding_result2_upvr_2 (readonly)
		]]
		local any_getValue_result1_3 = any_useRef_result1_upvr:getValue()
		local var25
		if not any_getValue_result1_3 then
		else
			local any_shouldShowGradientsForScrollingFrame_result1, any_shouldShowGradientsForScrollingFrame_result2, any_shouldShowGradientsForScrollingFrame_result3_2 = Utils_upvr.shouldShowGradientsForScrollingFrame(arg1_2)
			var25 = any_shouldShowGradientsForScrollingFrame_result1
			if var25 then
				var25 = not arg1.hideGradient
				if not var25 then
					var25 = useIsMouseAndKeyboard_upvr_result1_upvr
				end
			end
			any_getValue_result1_3.Visible = var25
			var25 = any_getValue_result1_3:FindFirstChild("Left")
			local Right = any_getValue_result1_3:FindFirstChild("Right")
			if var25 and Right then
				var25.Visible = any_shouldShowGradientsForScrollingFrame_result2
				Right.Visible = any_shouldShowGradientsForScrollingFrame_result3_2
			end
			any_useBinding_result2_upvr_3(any_shouldShowGradientsForScrollingFrame_result2)
			any_useBinding_result2_upvr_2(any_shouldShowGradientsForScrollingFrame_result3_2)
		end
	end, {any_useRef_result1_upvr, any_useBinding_result2_upvr_3, any_useBinding_result2_upvr_2})
	React_upvr.useEffect(function() -- Line 99
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		local any_getValue_result1 = arg1.scrollingFrameRef:getValue()
		if any_getValue_result1 then
			any_useCallback_result1_upvr(any_getValue_result1)
		end
	end)
	local module = {
		ScrollingList = React_upvr.createElement("ScrollingFrame", {
			ClipsDescendants = arg1.clipsDescendants;
			Size = UDim2.new(1, 0, 1, 0);
			CanvasSize = UDim2.new(0, arg1.canvasWidth or 0, 1, 0);
			CanvasPosition = any_useBinding_result1_2;
			ScrollBarThickness = 0;
			BackgroundTransparency = 1;
			ElasticBehavior = Enum.ElasticBehavior.Always;
			ScrollingDirection = Enum.ScrollingDirection.X;
			ZIndex = 2;
			[React_upvr.Change.AbsoluteSize] = any_useCallback_result1_upvr;
			[React_upvr.Change.CanvasSize] = any_useCallback_result1_upvr;
			[React_upvr.Change.CanvasPosition] = React_upvr.useCallback(function(arg1_3) -- Line 92
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (readonly)
					[2]: any_useBinding_result2_upvr (readonly)
				]]
				any_useCallback_result1_upvr(arg1_3)
				any_useBinding_result2_upvr(arg1_3.CanvasPosition)
			end, {any_useCallback_result1_upvr, any_useBinding_result2_upvr});
			ref = arg1.scrollingFrameRef;
		}, arg1.getScollingListContent());
		GradientFrame = React_upvr.createElement(GradientFrame_upvr, {
			height = arg1.listHeight;
			frameRef = any_useRef_result1_upvr;
			ZIndex = 3;
		});
	}
	local var39
	if var39 then
		var39 = React_upvr.createElement
		var39 = var39(ArrowFrame_upvr, {
			isVisibleLeft = any_useBinding_result1;
			isVisibleRight = any_useBinding_result1_3;
			defaultUseProps = {
				scrollingFrameRef = arg1.scrollingFrameRef;
				buttonRefs = arg1.buttonRefs;
				buttonWidth = arg1.buttonWidth;
				padOutsideEdges = arg1.padOutsideEdges;
				numButtons = arg1.numButtons;
				buttonPadding = arg1.buttonPadding;
				updateCanvasPosition = any_useBinding_result2_upvr;
			};
			ZIndex = 4;
		})
	end
	module.ArrowFrame = var39
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var39 = var39(IntroScroll_upvr, tbl)
		tbl.updateCanvasPosition = any_useBinding_result2_upvr
		tbl.scrollingFrameRef = arg1.scrollingFrameRef
		tbl.childWidgetIndex = arg1.childWidgetIndex
		local tbl = {}
		var39 = React_upvr.createElement
		return var39
	end
	if not arg1.useIntroScroll or not INLINED() then
		var39 = nil
	end
	module.IntroScroll = var39
	return React_upvr.createElement(React_upvr.Fragment, {}, module)
end