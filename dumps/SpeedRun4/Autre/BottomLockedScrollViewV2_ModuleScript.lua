-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:15
-- Luau version 6, Types version 3
-- Time taken: 0.007021 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local React_upvr = require(Parent.React)
local var4_upvr = game:DefineFastInt("ExpChatScrollLockThreshold", 90) / 100
local function _(arg1) -- Line 16, Named "isScrollbarNearBottom"
	--[[ Upvalues[1]:
		[1]: var4_upvr (readonly)
	]]
	local AbsoluteWindowSize_2 = arg1.AbsoluteWindowSize
	local var7
	if var7 <= AbsoluteWindowSize_2.Y then
		var7 = true
		return var7
	end
	if var4_upvr > arg1.CanvasPosition.Y / (arg1.AbsoluteCanvasSize - AbsoluteWindowSize_2).Y then
		var7 = false
	else
		var7 = true
	end
	return var7
end
local function _(arg1) -- Line 31, Named "isMouseMovementOrTouch"
	local var8 = true
	if arg1.UserInputType ~= Enum.UserInputType.MouseMovement then
		if arg1.UserInputType ~= Enum.UserInputType.Touch then
			var8 = false
		else
			var8 = true
		end
	end
	return var8
end
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local VirtualizedList_upvr = require(Parent.VirtualizedList)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ExpChatUseVerticalScrollBarInset", false)
local function BottomLockedScrollViewV2(arg1) -- Line 36
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: VirtualizedList_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: var4_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_2 = React_upvr.useState(true)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_4 = React_upvr.useState(nil)
	React_upvr.useEffect(function() -- Line 47
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr_2.current then
			local class_ScrollingFrame_2 = any_useRef_result1_upvr_2.current:FindFirstChildWhichIsA("ScrollingFrame", true)
			if class_ScrollingFrame_2 then
				any_useRef_result1_upvr.current = class_ScrollingFrame_2
			end
		end
	end, {any_useRef_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 57
		--[[ Upvalues[3]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: any_useState_result1_3_upvr (readonly)
			[3]: any_useRef_result1_upvr (readonly)
		]]
		if any_useState_result1_2_upvr and any_useState_result1_3_upvr == false and any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current.CanvasPosition = Vector2.new(0, 9223372036854776000)
		end
	end, {tostring(arg1.messages), any_useState_result1_2_upvr, any_useState_result1_3_upvr, tostring(any_useRef_result1_upvr), arg1.targetTextChannel})
	React_upvr.useEffect(function() -- Line 65
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
			[4]: any_useState_result2_upvr_2 (readonly)
		]]
		if arg1.targetTextChannel then
			if arg1.targetTextChannel ~= any_useState_result1_4_upvr then
				any_useState_result2_upvr_4(arg1.targetTextChannel)
				if arg1.isChannelBarVisible then
					any_useState_result2_upvr_2(true)
				end
			end
		end
	end, {arg1.targetTextChannel})
	local module = {
		padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 0);
			PaddingBottom = UDim.new(0, 0);
			PaddingLeft = UDim.new(0, 8);
			PaddingRight = UDim.new(0, 8);
		});
	}
	local tbl = {}
	local tbl_3 = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	local Color = useStyle_upvr().Theme.UIEmphasis.Color
	tbl_3.ScrollBarImageColor3 = Color
	if any_useState_result1 then
		Color = 0
	else
		Color = 1
	end
	tbl_3.ScrollBarImageTransparency = Color
	Color = 8
	tbl_3.ScrollBarThickness = Color
	if game_DefineFastFlag_result1_upvr then
		Color = Enum.ScrollBarInset.Always
	else
		Color = nil
	end
	tbl_3.VerticalScrollBarInset = Color
	tbl.style = tbl_3
	local tbl_2 = {}
	Color = 1
	tbl_2.BackgroundTransparency = Color
	tbl.contentContainerStyle = tbl_2
	Color = 1
	tbl.Size = UDim2.fromScale(Color, 1)
	function tbl.onScroll(arg1_4) -- Line 119
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: var4_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 12 start (CF ANALYSIS FAILED)
		local AbsoluteWindowSize = arg1_4.AbsoluteWindowSize
		local AbsoluteCanvasSize = arg1_4.AbsoluteCanvasSize
		local var43
		if AbsoluteCanvasSize.Y <= AbsoluteWindowSize.Y then
			var43 = true
			-- KONSTANTWARNING: GOTO [26] #18
		end
		-- KONSTANTERROR: [0] 1. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 14. Error Block 13 start (CF ANALYSIS FAILED)
		if var4_upvr > arg1_4.CanvasPosition.Y / (AbsoluteCanvasSize - AbsoluteWindowSize).Y then
			var43 = false
		else
			var43 = true
		end
		any_useState_result2_upvr_2(var43)
		-- KONSTANTERROR: [21] 14. Error Block 13 end (CF ANALYSIS FAILED)
	end
	module.scrollView = React_upvr.createElement(VirtualizedList_upvr.ScrollView, tbl, arg1.children)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = arg1.Size;
		ref = any_useRef_result1_upvr_2;
		[React_upvr.Event.InputBegan] = function(arg1_2, arg2) -- Line 79
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: any_useState_result2_upvr_3 (readonly)
			]]
			local var32 = true
			if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
				if arg2.UserInputType ~= Enum.UserInputType.Touch then
					var32 = false
				else
					var32 = true
				end
			end
			if var32 then
				any_useState_result2_upvr(true)
			end
			if arg2.UserInputType == Enum.UserInputType.Touch then
				any_useState_result2_upvr_3(true)
			end
		end;
		[React_upvr.Event.InputEnded] = function(arg1_3, arg2) -- Line 88
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: any_useState_result2_upvr_3 (readonly)
			]]
			local var34 = true
			if arg2.UserInputType ~= Enum.UserInputType.MouseMovement then
				if arg2.UserInputType ~= Enum.UserInputType.Touch then
					var34 = false
				else
					var34 = true
				end
			end
			if var34 then
				any_useState_result2_upvr(false)
			end
			if arg2.UserInputType == Enum.UserInputType.Touch then
				any_useState_result2_upvr_3(false)
			end
		end;
	}, module)
end
if require(ExpChat.Flags.getFFlagEnableChatWindowMemoization)() then
	return React_upvr.memo(BottomLockedScrollViewV2)
end
return BottomLockedScrollViewV2