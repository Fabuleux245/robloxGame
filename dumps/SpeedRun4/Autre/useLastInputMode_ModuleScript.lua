-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:06:00
-- Luau version 6, Types version 3
-- Time taken: 0.001935 seconds

local Parent = script:FindFirstAncestor("FocusNavigationUtils").Parent
local tbl_upvr = {
	Keyboard = "Focus";
	Gamepad = "Focus";
	Mouse = "Cursor";
	Touch = "Cursor";
	None = "None";
}
local tbl_upvr_2 = {
	[Enum.KeyCode.Up] = true;
	[Enum.KeyCode.Down] = true;
	[Enum.KeyCode.Left] = true;
	[Enum.KeyCode.Right] = true;
	[Enum.KeyCode.W] = true;
	[Enum.KeyCode.A] = true;
	[Enum.KeyCode.S] = true;
	[Enum.KeyCode.D] = true;
	[Enum.KeyCode.Escape] = true;
}
local useLastInputMethod_upvr = require(script.Parent.useLastInputMethod)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("VariableKeyboardFocusMode", false)
local useFocusedTextBox_upvr = require(script.Parent.useFocusedTextBox)
local React_upvr = require(Parent.React)
local UserInputService_upvr = game:GetService("UserInputService")
local VRService_upvr = require(Parent.MockableProxyServices).VRService
return function() -- Line 36
	--[[ Upvalues[8]:
		[1]: useLastInputMethod_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: useFocusedTextBox_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: UserInputService_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: VRService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useLastInputMethod_upvr_result1 = useLastInputMethod_upvr()
	if game_DefineFastFlag_result1_upvr then
		local var12 = tbl_upvr[useLastInputMethod_upvr_result1]
		local var7_result1_upvr = useFocusedTextBox_upvr()
		local var14 = React_upvr
		if var12 ~= "Focus" then
			var14 = false
		else
			var14 = true
		end
		local any_useState_result1, any_useState_result2_upvr = var14.useState(var14)
		React_upvr.useEffect(function() -- Line 46
			--[[ Upvalues[4]:
				[1]: UserInputService_upvr (copied, readonly)
				[2]: tbl_upvr_2 (copied, readonly)
				[3]: var7_result1_upvr (readonly)
				[4]: any_useState_result2_upvr (readonly)
			]]
			local any_Connect_result1_upvr = UserInputService_upvr.InputBegan:Connect(function(arg1) -- Line 47
				--[[ Upvalues[3]:
					[1]: tbl_upvr_2 (copied, readonly)
					[2]: var7_result1_upvr (copied, readonly)
					[3]: any_useState_result2_upvr (copied, readonly)
				]]
				if tbl_upvr_2[arg1.KeyCode] and var7_result1_upvr == nil then
					any_useState_result2_upvr(true)
				else
					any_useState_result2_upvr(false)
				end
			end)
			return function() -- Line 55
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end
		end, {var7_result1_upvr})
		if VRService_upvr.VREnabled then
		elseif useLastInputMethod_upvr_result1 == "Keyboard" then
			if any_useState_result1 or React_upvr.useRef(var12).current == "Focus" then
			else
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		React_upvr.useRef(var12).current = "Cursor"
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return "Cursor"
	end
	var7_result1_upvr = VRService_upvr
	if var7_result1_upvr.VREnabled then
		return "Cursor"
	end
	var7_result1_upvr = tbl_upvr
	return var7_result1_upvr[useLastInputMethod_upvr_result1]
end