-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:13
-- Luau version 6, Types version 3
-- Time taken: 0.006656 seconds

local Parent_2 = script.Parent.Parent.Parent
local React_upvr = require(Parent_2.Parent.React)
local UserInputService_upvr = game:GetService("UserInputService")
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
return function(arg1) -- Line 55, Named "ScrollBar"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 67 start (CF ANALYSIS FAILED)
	local userInteractionEnabled_upvr = arg1.userInteractionEnabled
	local backgroundColor = arg1.backgroundColor
	local paddingStartEnd_upvr = arg1.paddingStartEnd
	local handleWidth_upvr = arg1.handleWidth
	local onDragging_upvr = arg1.onDragging
	local viewSize_upvr = arg1.viewSize
	local canvasSize_upvr = arg1.canvasSize
	local canvasPosition_upvr = arg1.canvasPosition
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useBinding_result1_upvr, any_useBinding_result2_upvr = React_upvr.useBinding(0)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(0)
	local any_useRef_result1_upvr = React_upvr.useRef(0)
	local function _(arg1_2) -- Line 83
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		any_useBinding_result2_upvr(arg1_2.AbsoluteSize.Y)
	end
	local _ = {any_useBinding_result2_upvr}
	local function _(arg1_3) -- Line 87
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		local Parent = arg1_3.Parent
		if Parent ~= nil and math.ceil(arg1_3.AbsoluteSize.Y) < Parent.AbsoluteSize.Y then
			any_useState_result2_upvr(true)
		else
			any_useState_result2_upvr(false)
		end
	end
	local _ = {any_useState_result2_upvr}
	local function _() -- Line 96
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: viewSize_upvr (readonly)
			[3]: canvasSize_upvr (readonly)
			[4]: handleWidth_upvr (readonly)
		]]
		return React_upvr.joinBindings({
			viewSize = viewSize_upvr;
			canvasSize = canvasSize_upvr;
		}):map(function(arg1_4) -- Line 100
			--[[ Upvalues[1]:
				[1]: handleWidth_upvr (copied, readonly)
			]]
			return UDim2.new(0, handleWidth_upvr, math.clamp(arg1_4.viewSize.Y / arg1_4.canvasSize.Y, 0, 1), 0)
		end)
	end
	local _ = {handleWidth_upvr, viewSize_upvr, canvasSize_upvr}
	local function _() -- Line 108
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: canvasPosition_upvr (readonly)
			[3]: canvasSize_upvr (readonly)
		]]
		return React_upvr.joinBindings({
			canvasPosition = canvasPosition_upvr;
			canvasSize = canvasSize_upvr;
		}):map(function(arg1_5) -- Line 112
			return UDim2.fromScale(0.5, arg1_5.canvasPosition.Y / arg1_5.canvasSize.Y)
		end)
	end
	local _ = {canvasSize_upvr, canvasPosition_upvr}
	local function _(arg1_6, arg2) -- Line 120
		--[[ Upvalues[7]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: userInteractionEnabled_upvr (readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: any_useRef_result1_upvr (readonly)
			[6]: canvasPosition_upvr (readonly)
			[7]: any_useState_result2_upvr_2 (readonly)
		]]
		if not any_useState_result1_upvr or not userInteractionEnabled_upvr or any_useState_result1_upvr_2 then
		elseif arg2 and arg2.UserInputType == Enum.UserInputType.MouseButton1 then
			any_useRef_result1_upvr_2.current = arg2.Position.Y
			any_useRef_result1_upvr.current = canvasPosition_upvr:getValue().Y
			any_useState_result2_upvr_2(true)
		end
	end
	local _ = {any_useState_result1_upvr, userInteractionEnabled_upvr, any_useState_result1_upvr_2, any_useRef_result1_upvr_2, any_useRef_result1_upvr, canvasPosition_upvr, any_useState_result2_upvr_2}
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_7) -- Line 141
		--[[ Upvalues[9]:
			[1]: userInteractionEnabled_upvr (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: any_useBinding_result1_upvr (readonly)
			[5]: paddingStartEnd_upvr (readonly)
			[6]: viewSize_upvr (readonly)
			[7]: any_useRef_result1_upvr (readonly)
			[8]: canvasSize_upvr (readonly)
			[9]: onDragging_upvr (readonly)
		]]
		if not userInteractionEnabled_upvr or not any_useState_result1_upvr_2 then
		else
			if arg1_7.UserInputType ~= Enum.UserInputType.MouseMovement then return end
			local Y = canvasSize_upvr:getValue().Y
			onDragging_upvr(math.clamp(any_useRef_result1_upvr.current + (arg1_7.Position.Y - any_useRef_result1_upvr_2.current) / (any_useBinding_result1_upvr:getValue() - paddingStartEnd_upvr) * Y, 0, Y - viewSize_upvr:getValue().Y))
		end
	end, {userInteractionEnabled_upvr, any_useState_result1_upvr_2, any_useRef_result1_upvr_2, any_useBinding_result1_upvr, paddingStartEnd_upvr, viewSize_upvr, any_useRef_result1_upvr, canvasSize_upvr, onDragging_upvr})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_8) -- Line 172
		--[[ Upvalues[3]:
			[1]: userInteractionEnabled_upvr (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if not userInteractionEnabled_upvr or not any_useState_result1_upvr_2 then
		else
			if arg1_8 and arg1_8.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
			any_useState_result2_upvr_2(false)
		end
	end, {userInteractionEnabled_upvr, any_useState_result1_upvr_2, any_useState_result2_upvr_2})
	React_upvr.useEffect(function() -- Line 184
		--[[ Upvalues[5]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: any_useState_result1_upvr_2 (readonly)
			[3]: UserInputService_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr_2 (readonly)
			[5]: any_useCallback_result1_upvr (readonly)
		]]
		if not any_useState_result1_upvr or not any_useState_result1_upvr_2 then
			return function() -- Line 186
			end
		end
		local any_Connect_result1_upvr = UserInputService_upvr.InputChanged:Connect(any_useCallback_result1_upvr_2)
		local any_Connect_result1_upvr_3 = UserInputService_upvr.InputEnded:Connect(any_useCallback_result1_upvr)
		local any_Connect_result1_upvr_2 = UserInputService_upvr.WindowFocusReleased:Connect(any_useCallback_result1_upvr)
		return function() -- Line 193
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_3 (readonly)
				[3]: any_Connect_result1_upvr_2 (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
			any_Connect_result1_upvr_3:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
		end
	end, {any_useState_result1_upvr, any_useState_result1_upvr_2, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr})
	local transparency = arg1.transparency
	if not any_useState_result1_upvr then
		transparency = 1
	elseif any_useState_result1_upvr_2 then
		transparency = 0
	end
	local tbl = {
		Selectable = false;
	}
	local udim2 = UDim2.new(0, arg1.width, 1, 0)
	tbl.Size = udim2
	tbl.AnchorPoint = arg1.anchorPoint
	tbl.Position = arg1.position
	tbl.GroupTransparency = transparency
	if backgroundColor then
		udim2 = backgroundColor.Color
	else
		udim2 = nil
	end
	tbl.BackgroundColor3 = udim2
	if backgroundColor then
		-- KONSTANTWARNING: GOTO [237] #181
	end
	-- KONSTANTERROR: [0] 1. Error Block 67 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [236] 180. Error Block 74 start (CF ANALYSIS FAILED)
	tbl.BackgroundTransparency = 1
	tbl.BorderSizePixel = 0
	tbl.ZIndex = arg1.zIndex
	if paddingStartEnd_upvr then
		local _ = {
			PaddingTop = UDim.new(0, paddingStartEnd_upvr);
			PaddingBottom = UDim.new(0, paddingStartEnd_upvr);
		}
		-- KONSTANTWARNING: GOTO [268] #204
	end
	-- KONSTANTERROR: [236] 180. Error Block 74 end (CF ANALYSIS FAILED)
end