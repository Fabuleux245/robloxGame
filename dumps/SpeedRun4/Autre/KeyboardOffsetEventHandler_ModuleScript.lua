-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:57
-- Luau version 6, Types version 3
-- Time taken: 0.001737 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local usePositionOffsetForVirtualKeyboard_upvr = require(AppChat.Hooks.usePositionOffsetForVirtualKeyboard)
local React_upvr = require(Parent.React)
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 16
	--[[ Upvalues[4]:
		[1]: useSelector_upvr (readonly)
		[2]: usePositionOffsetForVirtualKeyboard_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	local function var8_upvr(arg1_2) -- Line 17
		if arg1_2.GlobalGuiInset then
			return arg1_2.GlobalGuiInset.top
		end
		return 0
	end
	local useSelector_upvr_result1_upvr = useSelector_upvr(var8_upvr)
	if arg1.parentViewRef then
		var8_upvr = arg1.parentViewRef.current
	else
		var8_upvr = nil
	end
	local usePositionOffsetForVirtualKeyboard_upvr_result1_upvr = usePositionOffsetForVirtualKeyboard_upvr({
		isNearBottomOfScreen = true;
	})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 23
		--[[ Upvalues[5]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: usePositionOffsetForVirtualKeyboard_upvr_result1_upvr (readonly)
			[3]: var8_upvr (readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: arg1 (readonly)
		]]
		local var13 = 0
		if UserInputService_upvr.OnScreenKeyboardVisible then
			if usePositionOffsetForVirtualKeyboard_upvr_result1_upvr ~= nil then
				var13 = usePositionOffsetForVirtualKeyboard_upvr_result1_upvr
			elseif var8_upvr then
				var13 = (var8_upvr.AbsolutePosition.Y + var8_upvr.AbsoluteSize.Y) - (UserInputService_upvr.OnScreenKeyboardPosition.Y - useSelector_upvr_result1_upvr)
			end
		end
		if arg1.onKeyboardOffsetChanged then
			arg1.onKeyboardOffsetChanged(var13)
		end
	end, {usePositionOffsetForVirtualKeyboard_upvr_result1_upvr, useSelector_upvr_result1_upvr, arg1.onKeyboardOffsetChanged, var8_upvr})
	React_upvr.useEffect(function() -- Line 40
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr (readonly)
			[2]: UserInputService_upvr (copied, readonly)
			[3]: var8_upvr (readonly)
		]]
		any_useCallback_result1_upvr()
		local var17_upvw
		if var8_upvr then
			var17_upvw = var8_upvr:GetPropertyChangedSignal("AbsoluteSize"):Connect(any_useCallback_result1_upvr)
		end
		local any_Connect_result1_upvr = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardVisible"):Connect(any_useCallback_result1_upvr)
		local any_Connect_result1_upvr_2 = UserInputService_upvr:GetPropertyChangedSignal("OnScreenKeyboardPosition"):Connect(any_useCallback_result1_upvr)
		return function() -- Line 53
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvr (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
				[3]: var17_upvw (read and write)
			]]
			if any_Connect_result1_upvr then
				any_Connect_result1_upvr:Disconnect()
			end
			if any_Connect_result1_upvr_2 then
				any_Connect_result1_upvr_2:Disconnect()
			end
			if var17_upvw then
				var17_upvw:Disconnect()
			end
		end
	end, {any_useCallback_result1_upvr, var8_upvr})
	return nil
end