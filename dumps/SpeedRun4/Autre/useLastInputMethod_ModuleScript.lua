-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:59
-- Luau version 6, Types version 3
-- Time taken: 0.001605 seconds

local tbl_upvr = {
	[Enum.UserInputType.MouseButton1] = "Mouse";
	[Enum.UserInputType.MouseButton2] = "Mouse";
	[Enum.UserInputType.MouseButton3] = "Mouse";
	[Enum.UserInputType.MouseWheel] = "Mouse";
	[Enum.UserInputType.MouseMovement] = "Mouse";
	[Enum.UserInputType.Touch] = "Touch";
	[Enum.UserInputType.Keyboard] = "Keyboard";
	[Enum.UserInputType.Focus] = nil;
	[Enum.UserInputType.Accelerometer] = nil;
	[Enum.UserInputType.Gyro] = nil;
	[Enum.UserInputType.Gamepad1] = "Gamepad";
	[Enum.UserInputType.Gamepad2] = "Gamepad";
	[Enum.UserInputType.Gamepad3] = "Gamepad";
	[Enum.UserInputType.Gamepad4] = "Gamepad";
	[Enum.UserInputType.Gamepad5] = "Gamepad";
	[Enum.UserInputType.Gamepad6] = "Gamepad";
	[Enum.UserInputType.Gamepad7] = "Gamepad";
	[Enum.UserInputType.Gamepad8] = "Gamepad";
	[Enum.UserInputType.TextInput] = nil;
	[Enum.UserInputType.InputMethod] = nil;
	[Enum.UserInputType.None] = nil;
}
local UserInputService_upvr = game:GetService("UserInputService")
local React_upvr = require(script.Parent.Parent.React)
return function() -- Line 43, Named "useLastInputMethod"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(tbl_upvr[UserInputService_upvr:GetLastInputType()] or "None")
	React_upvr.useEffect(function() -- Line 46
		--[[ Upvalues[3]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr = UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1) -- Line 47
			--[[ Upvalues[2]:
				[1]: tbl_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			local var8 = tbl_upvr[arg1]
			if var8 then
				any_useState_result2_upvr(var8)
			end
		end)
		return function() -- Line 54
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return any_useState_result1
end